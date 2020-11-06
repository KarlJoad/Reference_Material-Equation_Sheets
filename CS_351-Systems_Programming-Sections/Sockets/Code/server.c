/* Server side C/C++ program to demonstrate socket programming. */
#include <unistd.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#define PORT 8080
int main(int argc, char const *argv[]) {
	int server_fd, new_socket, valread;
	struct sockaddr_in address;
	int opt = 1;
	int addrlen = sizeof(address);
	char buffer[1024] = {0};
	char *hello = "Hello from Server";

	/* Create socket file descriptor. */
	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
		perror("socket failed");
		exit(EXIT_FAILURE);
	}

	/* Forcefully attach socket to the PORT port. */
	/* Use TCP/IP */
	if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT< &opt, sizeof(opt))) {
		perror("setsockopt");
		exit(EXIT_FAILURE);
	}
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = INADDR_ANY; /* Allow this port to listen on ALL IP Addresses */
	address.sin_port = htons(PORT);

	/* Forcefully attach socket to the PORT port. */
	if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
		perror("bind failure");
		exit(EXIT_FAILURE);
	}
	/* fork here, child continues through this, and parent will stay on listen. */
	if (listen(server_fd, 3) < 0) {
		perror("listen");
		exit(EXIT_FAILURE);
	}
	/* Socket accepts from client. */
	if ((new_socket = accept(server_fd, (struct sockaddr*)&address, (socklen_t*)&addrlen)) < 0) {
		perror("accept");
		exit(EXIT_FAILURE);
	}
	/* Socket Receives data. */
	valread = recv(new_socket, buffer, 1024, 0);
	printf("%s\n", buffer);
	/* Socket sends some data back. */
	/* Have to be careful of architectural differences between 2 communicating machines. */
	send(new_socket, hello, strlen(hello), 0);
	printf("Hello message sent\n");
	return 0;
}
