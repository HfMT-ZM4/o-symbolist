
#include "o.udp.receive.hpp"

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "omax_util.h"

#include <string>
#include <thread>

#include <errno.h>
#include <unistd.h>
#include <netdb.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>


#define MAXSLIPBUF 2048
#define MAX_UDP_RECEIVE 65536L // longer than data in maximum UDP packet


t_class *o_udp_receive_class;

typedef struct _o_udp_receive
{
    t_object ob;
    void* outlet;
    void* other_outlet;
    
    int port;
    std::thread listenLoop;
    bool closing;
    int recv_fd;
    
} t_o_udp_receive;


void o_udp_poll_loop(t_o_udp_receive *x)
{
    if( x->recv_fd < 0 )
    {
      object_error((t_object *)x, "no open port!");
      return;
    }


    char buf[MAX_UDP_RECEIVE];

    object_post((t_object *)x, "starting loop");

    fd_set readfds;
    struct timeval timeout;
    timeout.tv_sec = 0;
    timeout.tv_usec = 1000;

    int selectN = x->recv_fd + 1;


    while( !x->closing && x->recv_fd > -1 )
    {
      
      FD_ZERO(&readfds);
      FD_SET(x->recv_fd, &readfds);
      
      if( select(selectN, &readfds, NULL, NULL, &timeout) )
      {
          /*
          if( FD_ISSET(m_recv_fd, &readfds) )
              cout << "set selected" << endl;
          */
          
          size_t read = recvfrom(x->recv_fd, buf, MAX_UDP_RECEIVE, 0, NULL, NULL);
          post( " read %ld", read );
          
          if( read )
          {

              post("%s", buf);
            //  omax_util_outletOSC(x->outlet, read, buf);
           //   OSC_MEM_INVALIDATE(buf);
              //oudp_sendData(x, t, x->slipibuf);
           
          }
      }
      
    }
    object_post((t_object *)x, "exited loop");
}

void o_recv_open(t_o_udp_receive *x)
{
    struct addrinfo hints;
    struct addrinfo *result, *rp;
    int sockfd = -1;
    char buf[INET_ADDRSTRLEN];


    if (x->recv_fd >= 0)
    {
        object_post((t_object *)x, "already connected" );
        return;
    }

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_UNSPEC; // could be ipv6 also
    hints.ai_socktype = SOCK_DGRAM;

    char portStr[100];
    sprintf(portStr, "%d", x->port);
    object_post((t_object *)x, "trying to connect to 0.0.0.0 at port %s", portStr );

    int s = getaddrinfo("0.0.0.0", portStr, &hints, &result);
    if (s != 0)
    {
        object_error((t_object *)x, "getaddrinfo error: %s\n", gai_strerror(s));
        return;
    }

    for (rp = result; rp != NULL; rp = rp->ai_next)
    {
        void *addr;
        char *ipver;
        
        // get the pointer to the address itself,
        // different fields in IPv4 and IPv6:
        if (rp->ai_family == AF_INET) { // IPv4
            struct sockaddr_in *ipv4 = (struct sockaddr_in *)rp->ai_addr;
            addr = &(ipv4->sin_addr);
            ipver = (char *)"IPv4";
        } else { // IPv6
            struct sockaddr_in6 *ipv6 = (struct sockaddr_in6 *)rp->ai_addr;
            addr = &(ipv6->sin6_addr);
            ipver = (char *)"IPv6";
        }
        
        // convert the IP to a string and print it:
        inet_ntop(rp->ai_family, addr, buf, sizeof buf);
        object_post((t_object *)x,"  Receive %s: %s\n  Receive Port: %s \n", ipver, buf, portStr);
        
        sockfd = socket( rp->ai_family, rp->ai_socktype, rp->ai_protocol );
        if ( sockfd == -1 )
            continue;
        
        if ( ::bind(sockfd, rp->ai_addr, rp->ai_addrlen) != -1 )
            break;
        
        ::close(sockfd);
    }

    if ( rp == NULL )
    {
        object_error((t_object *)x, "Could not connect");
        return;
    }

    freeaddrinfo(result);
    x->recv_fd = sockfd;

    object_post((t_object *)x, "receiving on socket %d", x->recv_fd );


}


void o_udp_receive_start(t_o_udp_receive *x)
{
    if( !x->closing )
        return;
    
    x->closing = false;
    
    x->listenLoop = std::thread(o_udp_poll_loop, x);
    
}

void o_udp_receive_stop(t_o_udp_receive *x)
{
    x->closing = true;
       
   if( x->listenLoop.joinable() )
       x->listenLoop.join();
    
    
}


void o_udp_receive_free(t_o_udp_receive *x)
{
    o_udp_receive_stop(x);
}

void *o_udp_receive_new(t_symbol *s,  int argc, t_atom *argv)
{
    t_o_udp_receive *x = NULL;
    if ((x = (t_o_udp_receive *)object_alloc(o_udp_receive_class)))
    {
        if( argc && atom_gettype(argv) == A_LONG )
            x->port = (int)atom_getlong(argv);

        x->closing = false;
        
        x->outlet = outlet_new(&x->ob, "FullPacket"); // << output received bundle
        x->other_outlet = outlet_new((t_object *)x, "FullPacket");
        
        x->recv_fd = -1;
        o_recv_open(x);
    }
    return (x);
}

BEGIN_USING_C_LINKAGE
int C74_EXPORT main(void)
{
    t_class *c;
    c = class_new("o.udp.receive", (method)o_udp_receive_new, (method)o_udp_receive_free, (long)sizeof(t_o_udp_receive),
                  0L /* leave NULL!! */, A_GIMME, 0);

    class_addmethod(c, (method)o_udp_receive_start, "start", 0);
    class_addmethod(c, (method)o_udp_receive_stop,  "stop", 0);
    class_register(CLASS_BOX, c); /* CLASS_NOBOX */
    o_udp_receive_class = c;
}
END_USING_C_LINKAGE
