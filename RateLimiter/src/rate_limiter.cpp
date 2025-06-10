#include"../include/rate_limiter/rate_limiter.hpp"

long long RateLimiter::getCurrentTime(){
    return duration_cast<seconds>(system_clock::now().time_since_epoch()).count();
}

bool RateLimiter::allowRequest(const string& userIP){
    long long now = getCurrentTime();
    auto& qu = user_map[userIP];
    while (!qu.empty() && now - qu.front() > timeSeconds) {
        qu.pop();
    }

    if (qu.size() < maxRequests) {
        qu.push(now);
        return true;
    }
    return false;
}
