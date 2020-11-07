#include <stdbool.h>
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
    int fileNum = argc - 1;
    char **filename = argv + 1;
    /* send number of files */
    sendInt(argc - 1, clientSocket);

    /* send each file name one by one */
    for (int i = 1; i < argc; i++) {
        sendString(argv[i], clientSocket);
        long long int ack = getInt(clientSocket);
        if (ack != 1LL) {
            perror("Error sending name");
        }
    }
    long long int fileSize[argc - 1];
    for (int i = 0; i < argc - 1; i++) {
        fileSize[i] = getInt(clientSocket);
        if (fileSize[i] == -1) {
            printf("%s does not exist on server\n", argv[i + 1]);
        } else {
            printf("%s has size %lld\n", filename[i], fileSize[i]);
        }
    }
    for (int i = 0; i < fileNum; i++) {
        if (fileSize[i] >= 0)
            getFile(argv[i + 1], fileSize[i], clientSocket);
    }
    close(clientSocket);

    return 0;
}