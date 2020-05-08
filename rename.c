#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

char str1[100];
char *name1, *name2,*ekstensi;
char level;

// char * mystrstr(const char * ,const char *);

// char * mystrstr(const char * src,const char * find){
// 	if(NULL==src || NULL == find)
// 		return NULL;
	
// 	char * cp =  (char *)src;
// 	char * s1, * s2;
	
// 	while(*cp){
// 		s1 = cp;
// 		s2 = (char *) find;
// 		while(*s1 && *s2 && (*s1 == *s2))
// 			s1++,s2++;
// 		if(!*s2)
// 			return cp;

// 		cp ++;	
// 	}
	
// 	return NULL;
// }



// char * ganti(char *dd){
//     int j = 0,jlh = strlen(name1);
//     char *pch=strchr(dd,'.');
//     if(strcmp(pch+1,ekstensi)==0){
//         int i;
//         // for(i = 0 ; i < strlen(dd) ; i++){
            
//         //     if(dd[i] == name1[j])
//         //       while(j != jlh - 1){
//         //         i++;
//         //         j++;
//         //     }

//         //         // for(j = 0 ; j < strlen(name1) ; j ++){
//         //         //     if(dd[i] == name1[j])
//         //         // }
//         // }

//     }
//     return dd;
// }

char * strcat(char * x,char * y){
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
            dst = strcat(dst,"/");
      }
	  fname = getfname(src);
      fname = strcat(dst,fname);
	  strcpy(dst,fname);
  }
  }
  
  close(fd);
  strcpy(dst,src);
  dst = ganti(dst);
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
	strcpy(dst,baf);
	printf(1,"Copied : %s to %s\n",baf,dst);

        moveFile(baf,dst);
      }
    }
    break;
  }
  close(fd);
}

int main (int argc, char *argv[]){
    char input[3][100];
    int i,j = 0,k=0;
    // memset(input[])

    for(i = 0 ; i < strlen(argv[1]) ; i++){
        if(argv[1][i] == '/'){
            j+=1;
            k=0;
        }
        input[j][k++] = argv[1][i];
        // printf(2,"ar %s\n",input[j]);
    }
    printf(2,"ar %s\n%s\n%s\n",input[0]+1,input[1]+1,input[2]+1);

    if(argc <= 2){
        printf(2, "Need 2 Arguments!\n");
        exit();
    }
    else if(argv[2][0] != '*' && argv[2][1] != '.' ){
        printf(2, "error!\n");
        exit();
    }
    else if(argv[1][0] != '\'' && argv[1][strlen(argv[1])-1] != '\'' ){
        printf(2, "error2!\n");
        exit();
    }
    else if(argv[1][1] == 's' || argv[1][1] == 'y' ){

        // if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
        printf(1,"%c %c %c\n",argv[1][0],argv[1][1],argv[1][strlen(argv[1])-1] );
        char *pch=strchr(argv[2],'.');
        printf(1,"%s\n",pch);
        strcpy(name1,input[1]+1);
        strcpy(name2,input[2]+1);
        strcpy(ekstensi,pch);
        level = argv[1][1];
        // moveAll(argv[1],argv[1]);
        // moveFile(argv[1],argv[2]);
    }
    else {
        printf(2, "error!\n");
        exit();
    }

    exit();
}