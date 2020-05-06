#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

char str1[100];


char * strgabung(char * x,char * y){
    int i,j;
    char str2[100];
	strcpy(str1,x); strcpy(str2,y);
    for(i=0; str1[i]!='\0'; ++i);

   for(j=0; str2[j]!='\0'; ++j, ++i)
   {
      str1[i]=str2[j];
   }
   str1[i]='\0';
   return str1;
}

char * getfname(char * path){
    char * id;
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
    id++;
    return id;
}

char * nostar(char * inp){
	strcpy(str1,".");
	if(strlen(inp)==1) return str1;
	strcpy(str1,inp);
	str1[strlen(str1)-2]='\0';
	return str1;
}
void moveFile(char * src, char * dst){

  char *p;
  int fd;
  struct stat st;
  if((fd = open(dst, 0)) < 0);
  else {
	  if(fstat(fd, &st) < 0){
	      printf(2,"mv: can't stat");
	      close(fd);
  	      return;
      }
      if(st.type == T_DIR){
	        char * fname;

            p = dst+strlen(dst)-1;

            if(*p != '/'){
            dst = strgabung(dst,"/");
      }
	  fname = getfname(src);
      fname = strgabung(dst,fname);
	  strcpy(dst,fname);
  }
  }
  
  close(fd);
    if ((link(src, dst) < 0) || (unlink(src) < 0))
    printf(2, "mv %s to %s failed\n", src, dst);

}

void
moveAll(char *path, char *dst) {
  char tempcpa[100];
	strcpy(tempcpa,dst);
  char *p, baf[100];
  int fd;
  struct dirent de;
  struct stat st;

  if((fd = open(path, 0)) < 0){
    printf(2, "ls: cannot open %s\n", path);
    return;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "ls: cannot stat %s\n", path);
    close(fd);
    return;
  }

  switch(st.type){
  case T_FILE:
    printf(1,"Fail\n");
    break;
  case T_DIR:
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
      printf(1, "ls: path too long\n");
      break;
    }
    strcpy(baf, path);
    p = baf+strlen(baf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0){
      continue;
    }
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(baf, &st) < 0){
        printf(1, "ls: cannot stat %s\n", baf);
        continue;
      }
      if(st.type == T_FILE){
	strcpy(dst,tempcpa);
	//printf(1,"Copied : %s to %s\n",baf,dst);

        moveFile(baf,dst);
      }
    }
    break;
  }
  close(fd);
}

int main (int argc, char *argv[]){
  if(argc <= 2){
    printf(2, "Need 2 Arguments!\n");
    exit();
  }else {
    if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
    else moveFile(argv[1],argv[2]);
  }
  
  exit();
}