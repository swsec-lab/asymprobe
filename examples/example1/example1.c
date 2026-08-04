#include <stdio.h>
enum { AUTH_SUCCESS=100, AUTH_FAIL=200 };
enum { AUTH_SSH_PASSWORD=1,  AUTH_SSH_RSA=2, AUTH_SSH_UNKNOWN=100 };
struct response{
    int type;
    int result;
} rsp;

int auth(const char *id, int type, int option){ return AUTH_FAIL;}
int packet_read(){ return AUTH_SSH_UNKNOWN;}
int packet_send(){ return AUTH_SSH_UNKNOWN;}

void process_response(struct response *rsp, int type, int result){
    /* Update response fields for the current auth attempt. */
    rsp->type = type;
    rsp->result = result;
}
int do_auth(char *id, int option)
{
    int attempt, type, result;

    for (attempt = 0; attempt < 3; ++attempt) {
        type = packet_read();
        result = auth(id, type, option);
        process_response(&rsp, type, result);
        packet_send();

        if (result == AUTH_SUCCESS)
            return AUTH_SUCCESS;
    }
    return AUTH_FAIL;
}
int main(){
    if(AUTH_SUCCESS == do_auth("user", 1))
        printf("Authentication Success\n");
    else
        printf("Fail\n");
    return 0;
}
