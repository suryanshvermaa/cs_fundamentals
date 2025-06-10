#include"../include/rate_limiter/rate_limiter.hpp"

int main(){
    RateLimiter* rate_limiter=new RateLimiter(5,1);
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.11")<<endl;
    
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
    cout<<rate_limiter->allowRequest("172.12.12.12")<<endl;
}