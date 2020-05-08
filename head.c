#include "types.h"
#include "stat.h"
#include "user.h"

char buf[512], buffer[32];

void headc(int fd, int byte) {

  int n;
  n = read(fd, buf, byte);

  if (write(1, buf, n) != n) {
    printf(1, "head: write error\n");
    exit();
  }

  if(n < 0){
    printf(1, "head: read error\n");
    exit();
  }
}

void head(int fd, int baris) {

  int n, i = 0;

  while((n = read(fd, buffer, 1)) > 0 && i < baris) {
    if(strcmp(buffer,"\n") == 0) i++;
    
    if (write(1, buffer, n) != n) {
      printf(1, "head: write error\n");
      exit();
    }
  }

  if(n < 0){
    printf(1, "head: read error\n");
    exit();
  }
}

int main(int argc, char *argv[]) {

  int fd, i;

  if(argc <= 1){
    head(0, 0);
    exit();
  }

  // head -c
  if (strcmp(argv[1], "-c") == 0) {
    if ((fd = open(argv[3], 0)) < 0) {
      printf(1, "head: cannot open %s\n", argv[3]);
      exit();
    }
    int value = atoi(argv[2]);
    headc(fd, value);
    close(fd);
  }

  // head -n
  else if (strcmp(argv[1], "-n") == 0) {
    if ((fd = open(argv[3], 0)) < 0){
      printf(1, "head: cannot open %s\n", argv[3]);
      exit();
    }
    int value = atoi(argv[2]);
    head(fd, value);
    close(fd);
  }

  // head -q
  else if (strcmp(argv[1], "-q") == 0) {
    for (i = 2; i < argc; i++) {
      if ((fd = open(argv[i], 0)) < 0) {
        printf(1, "head: cannot open %s\n", argv[1]);
        exit();        
      }
      head(fd, 10);
      close(fd);
    }
  }

  // head -v
  else if (strcmp(argv[1], "-v") == 0) {
    if ((fd = open(argv[2], 0)) < 0){
      printf(1, "head: cannot open %s\n", argv[2]);
      exit();
    }
    printf(1, "==> %s <==\n", argv[2]);
    head(fd, 10);
    close(fd);
  }

  // head
  else {
    if ((fd = open(argv[1], 0)) < 0){
      printf(1, "head: cannot open %s\n", argv[1]);
      exit();
    }
    head(fd, 10);
    close(fd);
  }

  exit();
}
