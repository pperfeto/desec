#include <stdio.h>

int main(void) {

  int porta;
  char ip[16];

  printf("DESEC SECURITY\n");

  printf("Digite o IP: \n");
  scanf("%s", ip);

  printf("Digite a Porta: \n");
  scanf("%i", &porta);

  printf("Varrendo Host: %s na porta %i \n", ip, porta);

  return 0;
}
