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


int main(int argc, const char * argv[]) {


    using namespace std;
    
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
