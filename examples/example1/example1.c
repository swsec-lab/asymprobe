#include <stdio.h>
enum { AUTH_SUCCESS = 0, AUTH_FAIL = -1,
       AUTH_UNSUPPORTED = -2, AUTH_ERROR = -3 /*...*/ };
enum { AUTH_SSH_PASSWORD, AUTH_SSH_RSA /*...*/ };
struct response{
    int auth_type;
    //...
} rsp;

int auth(int status, int option){ return AUTH_FAIL; }
int packet_read(){ return AUTH_SSH_PASSWORD; }

void process_error_response(struct response *rsp,
                            int auth_type, int auth_result){
    rsp->auth_type = auth_type;
    // Prepare the error response ...
}
int do_auth(int option){
    int attempt, auth_type, auth_result = AUTH_FAIL;

    for (attempt = 0; attempt < 3; ++attempt) {
        auth_type = packet_read();

        auth_result = auth(auth_type, option);

        if (auth_result == AUTH_SUCCESS)
            break;

        process_error_response(&rsp, auth_type, auth_result);
    }
    // Handle the authentication result.
    // ...
    return auth_result;
}
int main(){
    if(AUTH_SUCCESS == do_auth(1))
        printf("Authentication Success\n");
    else
        printf("Fail\n");
    return 0;
}
