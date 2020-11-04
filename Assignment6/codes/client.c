#include "header.h"


int createClient() {
    // create the socket
    int clientSocket = socket(AF_INET, SOCK_STREAM, 0);

    // configure the address struct
    struct sockaddr_in address;
    address.sin_family = AF_INET;
    address.sin_port = htons(PORT);
    address.sin_addr.s_addr = INADDR_ANY;


    if (connect(clientSocket, (struct sockaddr *) &address, sizeof(address)) != 0) {
        fprintf(stderr, "Cannot connect to a server \n");
        _exit(1);
    }
    return clientSocket;
}


int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "at least one argument required\n");
        _exit(1);
    }
    int clientSocket = createClient();

    /* send number of files */
    sendInt(argc - 1, clientSocket);

    /* send each file name one by one */
    for (int i = 1; i < argc; i++) {
        sendString(argv[i], clientSocket);
        int ack = getInt(clientSocket);
        if (ack == 1) {
            fprintf(stderr, "Sent name %d\n", i);
        }
    }
    printf("Sent all names\n");
    close(clientSocket);
    return 0;
}