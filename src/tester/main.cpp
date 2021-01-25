//
//  main.cpp
//  tester
//
//  Created by Rama Gottfried on 06.05.20.
//  Copyright © 2020 hfmt-hamburg. All rights reserved.
//

#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>
#include <queue>

int main(int argc, const char * argv[]) {


    using namespace std;

    long n = 0;
    while( n < 5 ){
        cout << n << " ";
        n++;
    }
    cout << endl;
    
    n = 0;
    while( n < 5 )
    {
        int i = 0;
        while( i < 10 )
        {
            n++;
            i++;
        }
    }

    cout << n << " <<";
    
    cout << endl;
    queue< pair<float, float> >  inlet_queue;
    
    cout << "size " << inlet_queue.size() << endl;
    
    inlet_queue.emplace(0,0);
    inlet_queue.emplace(1,1);
    inlet_queue.emplace(2,3);
    inlet_queue.emplace(2,4);
    
    
    while (!inlet_queue.empty()) {
        auto front = inlet_queue.front();
        cout << "q " << front.first << " " << front.second << endl;
        inlet_queue.pop();
    }
    
    vector<double> x({ 4., 0., 5., 1., 2., 3., 1., 4., 1., 4., 1. });
    vector<size_t> idx(x.size());
    iota(idx.begin(), idx.end(), 0);
    
    // sort indexes based on comparing values in v
    sort( idx.begin(), idx.end(),
         [&](size_t i1, size_t i2) { return x[i1] < x[i2]; } );
    
    
    for( auto& i : idx )
        cout << i << " " << x[i] << endl;
    
    return 0;
    
    vector<double> foo({0,1,2});
    
    double search;
    
    search = 0.5;
    cout << search << endl;
    cout << "lower_bound " << *(lower_bound(foo.begin(), foo.end(), search)) << endl;
    cout << "upper_bound " << *(upper_bound(foo.begin(), foo.end(), search)) << endl;
    
    search = 1;
    cout << search << endl;
    cout << "lower_bound " << *(lower_bound(foo.begin(), foo.end(), search)) << endl;
    cout << "upper_bound " << *(upper_bound(foo.begin(), foo.end(), search)) << endl;
    
    search = 2;
    cout << search << endl;
    cout << "lower_bound " << *(lower_bound(foo.begin(), foo.end(), search)) << endl;
    cout << "upper_bound " << *(upper_bound(foo.begin(), foo.end(), search)) << endl;
    
    search = 3;
    cout << search << endl;
    cout << "lower_bound " << *(lower_bound(foo.begin(), foo.end(), search)) << endl;
    cout << "upper_bound " << *(upper_bound(foo.begin(), foo.end(), search)) << endl;

    search = 0;
    cout << search << endl;
    cout << "lower_bound " << *(lower_bound(foo.begin(), foo.end(), search)) << endl;
    cout << "upper_bound " << *(upper_bound(foo.begin(), foo.end(), search)) << endl;


    return 0;
}
