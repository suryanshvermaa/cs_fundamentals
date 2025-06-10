#include <iostream>
#include <unordered_map>
#include <queue>
#include <chrono>
using namespace std;
using namespace std::chrono;
#pragma once

class RateLimiter{
    int maxRequests;
    int timeSeconds;
    unordered_map<string,queue<long long>> user_map;
public:
    RateLimiter(int maxRequests,int timesSeconds):maxRequests(maxRequests),timeSeconds(timeSeconds){}

    long long getCurrentTime();
    bool allowRequest(const string& userIP);
};