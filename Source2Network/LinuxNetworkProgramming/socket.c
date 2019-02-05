#include <sys/socket.h>

sockfd = socket(
  int socket_family, // アドレスファミリ
  int socket_type, //ソケットタイプ
  int protocol  //プロトコル
);
