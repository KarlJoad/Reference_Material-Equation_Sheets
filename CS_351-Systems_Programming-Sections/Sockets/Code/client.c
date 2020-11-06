/* Client side C/C++ program to demonstrate socket programming. */
#include <stdio.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#define PORT 8080

int main(int argc, char const *argv[]) {
	int sock = 0, valread;
	struct sockaddr_in serv_addr;
	char *hello = "Hello from client";
	char buffer[1024] = {0};
	if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
	}
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(PORT);

	// Convert IPv4 and IPv6 from text to binary.
	if(inet_pton(AF_NET, "127.0.0.1", &serv_addr.sin_addr) <= 0) {
		perror("\nInvalid address/Address not supported.\n");
		return -1;
	}

	/* connect does eventually timeout. */
	if(connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0) {
		perror("\nConnection Failed \n");
		return -1;
	}

	send(sock, hello, strlen(hello), 0);
	printf("Hello message sent\n");
	valread = recv(sock, buffer, 1024);
	printf("%s\n", buffer);
	return 0;
}
