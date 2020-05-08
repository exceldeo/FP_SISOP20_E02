
_mv:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    break;
  }
  close(fd);
}

int main (int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
  if(argc <= 2){
  13:	83 39 02             	cmpl   $0x2,(%ecx)
int main (int argc, char *argv[]){
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc <= 2){
  19:	7f 13                	jg     2e <main+0x2e>
    printf(2, "Need 2 Arguments!\n");
  1b:	51                   	push   %ecx
  1c:	51                   	push   %ecx
  1d:	68 b1 0c 00 00       	push   $0xcb1
  22:	6a 02                	push   $0x2
  24:	e8 a7 08 00 00       	call   8d0 <printf>
    exit();
  29:	e8 54 07 00 00       	call   782 <exit>
    // if(i != '\0'){
    // printf(1, "%s %s\n",i,argv[1]);
    // }
    // else
    //   printf(2, "error %s\n",argv[1]);
    if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
  2e:	83 ec 0c             	sub    $0xc,%esp
  31:	ff 73 04             	pushl  0x4(%ebx)
  34:	e8 27 01 00 00       	call   160 <getfname>
  39:	5e                   	pop    %esi
  3a:	5a                   	pop    %edx
  3b:	68 c4 0c 00 00       	push   $0xcc4
  40:	50                   	push   %eax
  41:	e8 1a 05 00 00       	call   560 <strcmp>
  46:	83 c4 10             	add    $0x10,%esp
  49:	85 c0                	test   %eax,%eax
  4b:	74 15                	je     62 <main+0x62>
    else moveFile(argv[1],argv[2]);
  4d:	50                   	push   %eax
  4e:	50                   	push   %eax
  4f:	ff 73 08             	pushl  0x8(%ebx)
  52:	ff 73 04             	pushl  0x4(%ebx)
  55:	e8 c6 01 00 00       	call   220 <moveFile>
  5a:	83 c4 10             	add    $0x10,%esp
  }
  
  exit();
  5d:	e8 20 07 00 00       	call   782 <exit>
    if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
  62:	83 ec 0c             	sub    $0xc,%esp
  65:	8b 73 08             	mov    0x8(%ebx),%esi
  68:	ff 73 04             	pushl  0x4(%ebx)
  6b:	e8 50 01 00 00       	call   1c0 <nostar>
  70:	5a                   	pop    %edx
  71:	59                   	pop    %ecx
  72:	56                   	push   %esi
  73:	50                   	push   %eax
  74:	e8 c7 02 00 00       	call   340 <moveAll>
  79:	83 c4 10             	add    $0x10,%esp
  7c:	eb df                	jmp    5d <main+0x5d>
  7e:	66 90                	xchg   %ax,%ax

00000080 <strcat>:
char * strcat(char * x,char * y){
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
	strcpy(str1,x); strcpy(str2,y);
  84:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
char * strcat(char * x,char * y){
  87:	83 ec 7c             	sub    $0x7c,%esp
	strcpy(str1,x); strcpy(str2,y);
  8a:	ff 75 08             	pushl  0x8(%ebp)
  8d:	68 e0 10 00 00       	push   $0x10e0
  92:	e8 99 04 00 00       	call   530 <strcpy>
  97:	58                   	pop    %eax
  98:	5a                   	pop    %edx
  99:	ff 75 0c             	pushl  0xc(%ebp)
  9c:	53                   	push   %ebx
  9d:	e8 8e 04 00 00       	call   530 <strcpy>
    for(i=0; str1[i]!='\0'; ++i);
  a2:	83 c4 10             	add    $0x10,%esp
  a5:	31 c0                	xor    %eax,%eax
  a7:	80 3d e0 10 00 00 00 	cmpb   $0x0,0x10e0
  ae:	74 0c                	je     bc <strcat+0x3c>
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	80 b8 e0 10 00 00 00 	cmpb   $0x0,0x10e0(%eax)
  ba:	75 f4                	jne    b0 <strcat+0x30>
   for(j=0; str2[j]!='\0'; ++j, ++i)
  bc:	0f b6 55 94          	movzbl -0x6c(%ebp),%edx
  c0:	84 d2                	test   %dl,%dl
  c2:	74 1d                	je     e1 <strcat+0x61>
  c4:	29 c3                	sub    %eax,%ebx
  c6:	89 d9                	mov    %ebx,%ecx
  c8:	90                   	nop
  c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      str1[i]=str2[j];
  d0:	88 90 e0 10 00 00    	mov    %dl,0x10e0(%eax)
   for(j=0; str2[j]!='\0'; ++j, ++i)
  d6:	83 c0 01             	add    $0x1,%eax
  d9:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
  dd:	84 d2                	test   %dl,%dl
  df:	75 ef                	jne    d0 <strcat+0x50>
   str1[i]='\0';
  e1:	c6 80 e0 10 00 00 00 	movb   $0x0,0x10e0(%eax)
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	b8 e0 10 00 00       	mov    $0x10e0,%eax
  f0:	c9                   	leave  
  f1:	c3                   	ret    
  f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000100 <naive_strstr>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	8b 7d 0c             	mov    0xc(%ebp),%edi
 108:	53                   	push   %ebx
 109:	8b 45 08             	mov    0x8(%ebp),%eax
    for (i=0; n[i] && h[i]; i++)
 10c:	0f b6 17             	movzbl (%edi),%edx
 10f:	84 d2                	test   %dl,%dl
 111:	74 38                	je     14b <naive_strstr+0x4b>
 113:	0f b6 18             	movzbl (%eax),%ebx
 116:	31 f6                	xor    %esi,%esi
 118:	89 d1                	mov    %edx,%ecx
 11a:	84 db                	test   %bl,%bl
 11c:	74 2b                	je     149 <naive_strstr+0x49>
 11e:	66 90                	xchg   %ax,%ax
       for (; n[i] != h[i]; h++) i=0;
 120:	38 d9                	cmp    %bl,%cl
 122:	74 2c                	je     150 <naive_strstr+0x50>
 124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 128:	83 c0 01             	add    $0x1,%eax
 12b:	38 10                	cmp    %dl,(%eax)
 12d:	75 f9                	jne    128 <naive_strstr+0x28>
 12f:	be 01 00 00 00       	mov    $0x1,%esi
 134:	bb 01 00 00 00       	mov    $0x1,%ebx
    for (i=0; n[i] && h[i]; i++)
 139:	0f b6 0c 1f          	movzbl (%edi,%ebx,1),%ecx
 13d:	84 c9                	test   %cl,%cl
 13f:	74 0a                	je     14b <naive_strstr+0x4b>
 141:	0f b6 1c 18          	movzbl (%eax,%ebx,1),%ebx
 145:	84 db                	test   %bl,%bl
 147:	75 d7                	jne    120 <naive_strstr+0x20>
    return n[i] ? 0 : (char *)h;
 149:	31 c0                	xor    %eax,%eax
}
 14b:	5b                   	pop    %ebx
 14c:	5e                   	pop    %esi
 14d:	5f                   	pop    %edi
 14e:	5d                   	pop    %ebp
 14f:	c3                   	ret    
 150:	83 c6 01             	add    $0x1,%esi
 153:	89 f3                	mov    %esi,%ebx
 155:	eb e2                	jmp    139 <naive_strstr+0x39>
 157:	89 f6                	mov    %esi,%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000160 <getfname>:
char * getfname(char * path){
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	56                   	push   %esi
 164:	53                   	push   %ebx
 165:	8b 5d 08             	mov    0x8(%ebp),%ebx
    char *pch=strchr(path,'/');
 168:	83 ec 08             	sub    $0x8,%esp
 16b:	6a 2f                	push   $0x2f
 16d:	53                   	push   %ebx
 16e:	e8 8d 04 00 00       	call   600 <strchr>
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
 173:	89 1c 24             	mov    %ebx,(%esp)
    char *pch=strchr(path,'/');
 176:	89 c6                	mov    %eax,%esi
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
 178:	e8 33 04 00 00       	call   5b0 <strlen>
 17d:	01 d8                	add    %ebx,%eax
 17f:	83 c4 10             	add    $0x10,%esp
 182:	80 38 2f             	cmpb   $0x2f,(%eax)
 185:	75 11                	jne    198 <getfname+0x38>
 187:	eb 13                	jmp    19c <getfname+0x3c>
 189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 190:	83 e8 01             	sub    $0x1,%eax
 193:	80 38 2f             	cmpb   $0x2f,(%eax)
 196:	74 04                	je     19c <getfname+0x3c>
 198:	39 c3                	cmp    %eax,%ebx
 19a:	76 f4                	jbe    190 <getfname+0x30>
    id++;
 19c:	8d 58 01             	lea    0x1(%eax),%ebx
    printf(1, "id %s\npch %s\n", id, pch+1);
 19f:	83 c6 01             	add    $0x1,%esi
 1a2:	56                   	push   %esi
 1a3:	53                   	push   %ebx
 1a4:	68 28 0c 00 00       	push   $0xc28
 1a9:	6a 01                	push   $0x1
 1ab:	e8 20 07 00 00       	call   8d0 <printf>
}
 1b0:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b3:	89 d8                	mov    %ebx,%eax
 1b5:	5b                   	pop    %ebx
 1b6:	5e                   	pop    %esi
 1b7:	5d                   	pop    %ebp
 1b8:	c3                   	ret    
 1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001c0 <nostar>:
char * nostar(char * inp){
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	83 ec 0c             	sub    $0xc,%esp
 1c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy(str1,".");
 1ca:	68 36 0c 00 00       	push   $0xc36
 1cf:	68 e0 10 00 00       	push   $0x10e0
 1d4:	e8 57 03 00 00       	call   530 <strcpy>
	if(strlen(inp)==1) return str1;
 1d9:	89 1c 24             	mov    %ebx,(%esp)
 1dc:	e8 cf 03 00 00       	call   5b0 <strlen>
 1e1:	83 c4 10             	add    $0x10,%esp
 1e4:	83 f8 01             	cmp    $0x1,%eax
 1e7:	74 24                	je     20d <nostar+0x4d>
	strcpy(str1,inp);
 1e9:	83 ec 08             	sub    $0x8,%esp
 1ec:	53                   	push   %ebx
 1ed:	68 e0 10 00 00       	push   $0x10e0
 1f2:	e8 39 03 00 00       	call   530 <strcpy>
	str1[strlen(str1)-2]='\0';
 1f7:	c7 04 24 e0 10 00 00 	movl   $0x10e0,(%esp)
 1fe:	e8 ad 03 00 00       	call   5b0 <strlen>
 203:	83 c4 10             	add    $0x10,%esp
 206:	c6 80 de 10 00 00 00 	movb   $0x0,0x10de(%eax)
}
 20d:	b8 e0 10 00 00       	mov    $0x10e0,%eax
 212:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 215:	c9                   	leave  
 216:	c3                   	ret    
 217:	89 f6                	mov    %esi,%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <moveFile>:
void moveFile(char * src, char * dst){
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
 225:	53                   	push   %ebx
 226:	83 ec 34             	sub    $0x34,%esp
 229:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 22c:	8b 75 08             	mov    0x8(%ebp),%esi
  if((fd = open(dst, 0)) < 0);
 22f:	6a 00                	push   $0x0
 231:	53                   	push   %ebx
 232:	e8 8b 05 00 00       	call   7c2 <open>
 237:	83 c4 10             	add    $0x10,%esp
 23a:	85 c0                	test   %eax,%eax
 23c:	89 c7                	mov    %eax,%edi
 23e:	78 1f                	js     25f <moveFile+0x3f>
	  if(fstat(fd, &st) < 0){
 240:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 243:	83 ec 08             	sub    $0x8,%esp
 246:	50                   	push   %eax
 247:	57                   	push   %edi
 248:	e8 8d 05 00 00       	call   7da <fstat>
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	0f 88 b8 00 00 00    	js     310 <moveFile+0xf0>
      if(st.type == T_DIR){
 258:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
 25d:	74 61                	je     2c0 <moveFile+0xa0>
  close(fd);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	57                   	push   %edi
 263:	e8 42 05 00 00       	call   7aa <close>
  	printf(1,"Copied : %s to %s\n",src,dst);
 268:	53                   	push   %ebx
 269:	56                   	push   %esi
 26a:	68 49 0c 00 00       	push   $0xc49
 26f:	6a 01                	push   $0x1
 271:	e8 5a 06 00 00       	call   8d0 <printf>
    if ((link(src, dst) < 0) || (unlink(src) < 0))
 276:	83 c4 18             	add    $0x18,%esp
 279:	53                   	push   %ebx
 27a:	56                   	push   %esi
 27b:	e8 62 05 00 00       	call   7e2 <link>
 280:	83 c4 10             	add    $0x10,%esp
 283:	85 c0                	test   %eax,%eax
 285:	78 19                	js     2a0 <moveFile+0x80>
 287:	83 ec 0c             	sub    $0xc,%esp
 28a:	56                   	push   %esi
 28b:	e8 42 05 00 00       	call   7d2 <unlink>
 290:	83 c4 10             	add    $0x10,%esp
 293:	85 c0                	test   %eax,%eax
 295:	78 09                	js     2a0 <moveFile+0x80>
}
 297:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29a:	5b                   	pop    %ebx
 29b:	5e                   	pop    %esi
 29c:	5f                   	pop    %edi
 29d:	5d                   	pop    %ebp
 29e:	c3                   	ret    
 29f:	90                   	nop
    printf(2, "mv %s to %s failed\n", src, dst);
 2a0:	53                   	push   %ebx
 2a1:	56                   	push   %esi
 2a2:	68 5c 0c 00 00       	push   $0xc5c
 2a7:	6a 02                	push   $0x2
 2a9:	e8 22 06 00 00       	call   8d0 <printf>
 2ae:	83 c4 10             	add    $0x10,%esp
}
 2b1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2b4:	5b                   	pop    %ebx
 2b5:	5e                   	pop    %esi
 2b6:	5f                   	pop    %edi
 2b7:	5d                   	pop    %ebp
 2b8:	c3                   	ret    
 2b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            p = dst+strlen(dst)-1;
 2c0:	83 ec 0c             	sub    $0xc,%esp
 2c3:	53                   	push   %ebx
 2c4:	e8 e7 02 00 00       	call   5b0 <strlen>
            if(*p != '/'){
 2c9:	83 c4 10             	add    $0x10,%esp
 2cc:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 2d1:	74 13                	je     2e6 <moveFile+0xc6>
            dst = strcat(dst,"/");
 2d3:	83 ec 08             	sub    $0x8,%esp
 2d6:	68 47 0c 00 00       	push   $0xc47
 2db:	53                   	push   %ebx
 2dc:	e8 9f fd ff ff       	call   80 <strcat>
 2e1:	83 c4 10             	add    $0x10,%esp
 2e4:	89 c3                	mov    %eax,%ebx
	  fname = getfname(src);
 2e6:	83 ec 0c             	sub    $0xc,%esp
 2e9:	56                   	push   %esi
 2ea:	e8 71 fe ff ff       	call   160 <getfname>
      fname = strcat(dst,fname);
 2ef:	5a                   	pop    %edx
 2f0:	59                   	pop    %ecx
 2f1:	50                   	push   %eax
 2f2:	53                   	push   %ebx
 2f3:	e8 88 fd ff ff       	call   80 <strcat>
	  strcpy(dst,fname);
 2f8:	5a                   	pop    %edx
 2f9:	59                   	pop    %ecx
 2fa:	50                   	push   %eax
 2fb:	53                   	push   %ebx
 2fc:	e8 2f 02 00 00       	call   530 <strcpy>
 301:	83 c4 10             	add    $0x10,%esp
 304:	e9 56 ff ff ff       	jmp    25f <moveFile+0x3f>
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	      printf(2,"mv: can't stat");
 310:	83 ec 08             	sub    $0x8,%esp
 313:	68 38 0c 00 00       	push   $0xc38
 318:	6a 02                	push   $0x2
 31a:	e8 b1 05 00 00       	call   8d0 <printf>
	      close(fd);
 31f:	89 3c 24             	mov    %edi,(%esp)
 322:	e8 83 04 00 00       	call   7aa <close>
  	      return;
 327:	83 c4 10             	add    $0x10,%esp
}
 32a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32d:	5b                   	pop    %ebx
 32e:	5e                   	pop    %esi
 32f:	5f                   	pop    %edi
 330:	5d                   	pop    %ebp
 331:	c3                   	ret    
 332:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000340 <moveAll>:
moveAll(char *path, char *dst) {
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	53                   	push   %ebx
	strcpy(tempcpa,dst);
 346:	8d bd 20 ff ff ff    	lea    -0xe0(%ebp),%edi
moveAll(char *path, char *dst) {
 34c:	81 ec 14 01 00 00    	sub    $0x114,%esp
	strcpy(tempcpa,dst);
 352:	ff 75 0c             	pushl  0xc(%ebp)
 355:	57                   	push   %edi
 356:	e8 d5 01 00 00       	call   530 <strcpy>
  if((fd = open(path, 0)) < 0){
 35b:	58                   	pop    %eax
 35c:	5a                   	pop    %edx
 35d:	6a 00                	push   $0x0
 35f:	ff 75 08             	pushl  0x8(%ebp)
 362:	e8 5b 04 00 00       	call   7c2 <open>
 367:	83 c4 10             	add    $0x10,%esp
 36a:	85 c0                	test   %eax,%eax
 36c:	78 4a                	js     3b8 <moveAll+0x78>
  if(fstat(fd, &st) < 0){
 36e:	8d b5 0c ff ff ff    	lea    -0xf4(%ebp),%esi
 374:	83 ec 08             	sub    $0x8,%esp
 377:	89 c3                	mov    %eax,%ebx
 379:	56                   	push   %esi
 37a:	50                   	push   %eax
 37b:	e8 5a 04 00 00       	call   7da <fstat>
 380:	83 c4 10             	add    $0x10,%esp
 383:	85 c0                	test   %eax,%eax
 385:	0f 88 95 00 00 00    	js     420 <moveAll+0xe0>
  switch(st.type){
 38b:	0f b7 85 0c ff ff ff 	movzwl -0xf4(%ebp),%eax
 392:	66 83 f8 01          	cmp    $0x1,%ax
 396:	74 58                	je     3f0 <moveAll+0xb0>
 398:	66 83 f8 02          	cmp    $0x2,%ax
 39c:	74 3a                	je     3d8 <moveAll+0x98>
  close(fd);
 39e:	83 ec 0c             	sub    $0xc,%esp
 3a1:	53                   	push   %ebx
 3a2:	e8 03 04 00 00       	call   7aa <close>
 3a7:	83 c4 10             	add    $0x10,%esp
}
 3aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ad:	5b                   	pop    %ebx
 3ae:	5e                   	pop    %esi
 3af:	5f                   	pop    %edi
 3b0:	5d                   	pop    %ebp
 3b1:	c3                   	ret    
 3b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 3b8:	83 ec 04             	sub    $0x4,%esp
 3bb:	ff 75 08             	pushl  0x8(%ebp)
 3be:	68 70 0c 00 00       	push   $0xc70
 3c3:	6a 02                	push   $0x2
 3c5:	e8 06 05 00 00       	call   8d0 <printf>
    return;
 3ca:	83 c4 10             	add    $0x10,%esp
}
 3cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3d0:	5b                   	pop    %ebx
 3d1:	5e                   	pop    %esi
 3d2:	5f                   	pop    %edi
 3d3:	5d                   	pop    %ebp
 3d4:	c3                   	ret    
 3d5:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1,"Fail\n");
 3d8:	83 ec 08             	sub    $0x8,%esp
 3db:	68 98 0c 00 00       	push   $0xc98
 3e0:	6a 01                	push   $0x1
 3e2:	e8 e9 04 00 00       	call   8d0 <printf>
    break;
 3e7:	83 c4 10             	add    $0x10,%esp
 3ea:	eb b2                	jmp    39e <moveAll+0x5e>
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
 3f0:	83 ec 0c             	sub    $0xc,%esp
 3f3:	ff 75 08             	pushl  0x8(%ebp)
 3f6:	e8 b5 01 00 00       	call   5b0 <strlen>
 3fb:	83 c0 10             	add    $0x10,%eax
 3fe:	83 c4 10             	add    $0x10,%esp
 401:	83 f8 64             	cmp    $0x64,%eax
 404:	76 42                	jbe    448 <moveAll+0x108>
      printf(1, "ls: path too long\n");
 406:	83 ec 08             	sub    $0x8,%esp
 409:	68 9e 0c 00 00       	push   $0xc9e
 40e:	6a 01                	push   $0x1
 410:	e8 bb 04 00 00       	call   8d0 <printf>
      break;
 415:	83 c4 10             	add    $0x10,%esp
 418:	eb 84                	jmp    39e <moveAll+0x5e>
 41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot stat %s\n", path);
 420:	83 ec 04             	sub    $0x4,%esp
 423:	ff 75 08             	pushl  0x8(%ebp)
 426:	68 84 0c 00 00       	push   $0xc84
 42b:	6a 02                	push   $0x2
 42d:	e8 9e 04 00 00       	call   8d0 <printf>
    close(fd);
 432:	89 1c 24             	mov    %ebx,(%esp)
 435:	e8 70 03 00 00       	call   7aa <close>
    return;
 43a:	83 c4 10             	add    $0x10,%esp
}
 43d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 440:	5b                   	pop    %ebx
 441:	5e                   	pop    %esi
 442:	5f                   	pop    %edi
 443:	5d                   	pop    %ebp
 444:	c3                   	ret    
 445:	8d 76 00             	lea    0x0(%esi),%esi
    strcpy(baf, path);
 448:	8d 45 84             	lea    -0x7c(%ebp),%eax
 44b:	83 ec 08             	sub    $0x8,%esp
 44e:	ff 75 08             	pushl  0x8(%ebp)
 451:	50                   	push   %eax
 452:	e8 d9 00 00 00       	call   530 <strcpy>
    p = baf+strlen(baf);
 457:	8d 45 84             	lea    -0x7c(%ebp),%eax
 45a:	89 04 24             	mov    %eax,(%esp)
 45d:	e8 4e 01 00 00       	call   5b0 <strlen>
 462:	8d 55 84             	lea    -0x7c(%ebp),%edx
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 465:	83 c4 10             	add    $0x10,%esp
    p = baf+strlen(baf);
 468:	01 d0                	add    %edx,%eax
    *p++ = '/';
 46a:	8d 48 01             	lea    0x1(%eax),%ecx
    p = baf+strlen(baf);
 46d:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
    *p++ = '/';
 473:	c6 00 2f             	movb   $0x2f,(%eax)
 476:	89 8d f0 fe ff ff    	mov    %ecx,-0x110(%ebp)
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 480:	8d 85 fc fe ff ff    	lea    -0x104(%ebp),%eax
 486:	83 ec 04             	sub    $0x4,%esp
 489:	6a 10                	push   $0x10
 48b:	50                   	push   %eax
 48c:	53                   	push   %ebx
 48d:	e8 08 03 00 00       	call   79a <read>
 492:	83 c4 10             	add    $0x10,%esp
 495:	83 f8 10             	cmp    $0x10,%eax
 498:	0f 85 00 ff ff ff    	jne    39e <moveAll+0x5e>
      if(de.inum == 0){
 49e:	66 83 bd fc fe ff ff 	cmpw   $0x0,-0x104(%ebp)
 4a5:	00 
 4a6:	74 d8                	je     480 <moveAll+0x140>
      memmove(p, de.name, DIRSIZ);
 4a8:	8d 85 fe fe ff ff    	lea    -0x102(%ebp),%eax
 4ae:	83 ec 04             	sub    $0x4,%esp
 4b1:	6a 0e                	push   $0xe
 4b3:	50                   	push   %eax
 4b4:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 4ba:	e8 91 02 00 00       	call   750 <memmove>
      p[DIRSIZ] = 0;
 4bf:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 4c5:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(baf, &st) < 0){
 4c9:	59                   	pop    %ecx
 4ca:	58                   	pop    %eax
 4cb:	8d 45 84             	lea    -0x7c(%ebp),%eax
 4ce:	56                   	push   %esi
 4cf:	50                   	push   %eax
 4d0:	e8 eb 01 00 00       	call   6c0 <stat>
 4d5:	83 c4 10             	add    $0x10,%esp
 4d8:	85 c0                	test   %eax,%eax
 4da:	78 34                	js     510 <moveAll+0x1d0>
      if(st.type == T_FILE){
 4dc:	66 83 bd 0c ff ff ff 	cmpw   $0x2,-0xf4(%ebp)
 4e3:	02 
 4e4:	75 9a                	jne    480 <moveAll+0x140>
	strcpy(dst,tempcpa);
 4e6:	83 ec 08             	sub    $0x8,%esp
 4e9:	57                   	push   %edi
 4ea:	ff 75 0c             	pushl  0xc(%ebp)
 4ed:	e8 3e 00 00 00       	call   530 <strcpy>
        moveFile(baf,dst);
 4f2:	58                   	pop    %eax
 4f3:	8d 45 84             	lea    -0x7c(%ebp),%eax
 4f6:	5a                   	pop    %edx
 4f7:	ff 75 0c             	pushl  0xc(%ebp)
 4fa:	50                   	push   %eax
 4fb:	e8 20 fd ff ff       	call   220 <moveFile>
 500:	83 c4 10             	add    $0x10,%esp
 503:	e9 78 ff ff ff       	jmp    480 <moveAll+0x140>
 508:	90                   	nop
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "ls: cannot stat %s\n", baf);
 510:	8d 45 84             	lea    -0x7c(%ebp),%eax
 513:	83 ec 04             	sub    $0x4,%esp
 516:	50                   	push   %eax
 517:	68 84 0c 00 00       	push   $0xc84
 51c:	6a 01                	push   $0x1
 51e:	e8 ad 03 00 00       	call   8d0 <printf>
        continue;
 523:	83 c4 10             	add    $0x10,%esp
 526:	e9 55 ff ff ff       	jmp    480 <moveAll+0x140>
 52b:	66 90                	xchg   %ax,%ax
 52d:	66 90                	xchg   %ax,%ax
 52f:	90                   	nop

00000530 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	53                   	push   %ebx
 534:	8b 45 08             	mov    0x8(%ebp),%eax
 537:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 53a:	89 c2                	mov    %eax,%edx
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 540:	83 c1 01             	add    $0x1,%ecx
 543:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 547:	83 c2 01             	add    $0x1,%edx
 54a:	84 db                	test   %bl,%bl
 54c:	88 5a ff             	mov    %bl,-0x1(%edx)
 54f:	75 ef                	jne    540 <strcpy+0x10>
    ;
  return os;
}
 551:	5b                   	pop    %ebx
 552:	5d                   	pop    %ebp
 553:	c3                   	ret    
 554:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 55a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000560 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx
 564:	8b 55 08             	mov    0x8(%ebp),%edx
 567:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 56a:	0f b6 02             	movzbl (%edx),%eax
 56d:	0f b6 19             	movzbl (%ecx),%ebx
 570:	84 c0                	test   %al,%al
 572:	75 1c                	jne    590 <strcmp+0x30>
 574:	eb 2a                	jmp    5a0 <strcmp+0x40>
 576:	8d 76 00             	lea    0x0(%esi),%esi
 579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 580:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 583:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 586:	83 c1 01             	add    $0x1,%ecx
 589:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 58c:	84 c0                	test   %al,%al
 58e:	74 10                	je     5a0 <strcmp+0x40>
 590:	38 d8                	cmp    %bl,%al
 592:	74 ec                	je     580 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 594:	29 d8                	sub    %ebx,%eax
}
 596:	5b                   	pop    %ebx
 597:	5d                   	pop    %ebp
 598:	c3                   	ret    
 599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 5a2:	29 d8                	sub    %ebx,%eax
}
 5a4:	5b                   	pop    %ebx
 5a5:	5d                   	pop    %ebp
 5a6:	c3                   	ret    
 5a7:	89 f6                	mov    %esi,%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <strlen>:

uint
strlen(const char *s)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 5b6:	80 39 00             	cmpb   $0x0,(%ecx)
 5b9:	74 15                	je     5d0 <strlen+0x20>
 5bb:	31 d2                	xor    %edx,%edx
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
 5c0:	83 c2 01             	add    $0x1,%edx
 5c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 5c7:	89 d0                	mov    %edx,%eax
 5c9:	75 f5                	jne    5c0 <strlen+0x10>
    ;
  return n;
}
 5cb:	5d                   	pop    %ebp
 5cc:	c3                   	ret    
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 5d0:	31 c0                	xor    %eax,%eax
}
 5d2:	5d                   	pop    %ebp
 5d3:	c3                   	ret    
 5d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000005e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 5ed:	89 d7                	mov    %edx,%edi
 5ef:	fc                   	cld    
 5f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5f2:	89 d0                	mov    %edx,%eax
 5f4:	5f                   	pop    %edi
 5f5:	5d                   	pop    %ebp
 5f6:	c3                   	ret    
 5f7:	89 f6                	mov    %esi,%esi
 5f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000600 <strchr>:

char*
strchr(const char *s, char c)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	53                   	push   %ebx
 604:	8b 45 08             	mov    0x8(%ebp),%eax
 607:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 60a:	0f b6 10             	movzbl (%eax),%edx
 60d:	84 d2                	test   %dl,%dl
 60f:	74 1d                	je     62e <strchr+0x2e>
    if(*s == c)
 611:	38 d3                	cmp    %dl,%bl
 613:	89 d9                	mov    %ebx,%ecx
 615:	75 0d                	jne    624 <strchr+0x24>
 617:	eb 17                	jmp    630 <strchr+0x30>
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 620:	38 ca                	cmp    %cl,%dl
 622:	74 0c                	je     630 <strchr+0x30>
  for(; *s; s++)
 624:	83 c0 01             	add    $0x1,%eax
 627:	0f b6 10             	movzbl (%eax),%edx
 62a:	84 d2                	test   %dl,%dl
 62c:	75 f2                	jne    620 <strchr+0x20>
      return (char*)s;
  return 0;
 62e:	31 c0                	xor    %eax,%eax
}
 630:	5b                   	pop    %ebx
 631:	5d                   	pop    %ebp
 632:	c3                   	ret    
 633:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000640 <gets>:

char*
gets(char *buf, int max)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 646:	31 f6                	xor    %esi,%esi
 648:	89 f3                	mov    %esi,%ebx
{
 64a:	83 ec 1c             	sub    $0x1c,%esp
 64d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 650:	eb 2f                	jmp    681 <gets+0x41>
 652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 658:	8d 45 e7             	lea    -0x19(%ebp),%eax
 65b:	83 ec 04             	sub    $0x4,%esp
 65e:	6a 01                	push   $0x1
 660:	50                   	push   %eax
 661:	6a 00                	push   $0x0
 663:	e8 32 01 00 00       	call   79a <read>
    if(cc < 1)
 668:	83 c4 10             	add    $0x10,%esp
 66b:	85 c0                	test   %eax,%eax
 66d:	7e 1c                	jle    68b <gets+0x4b>
      break;
    buf[i++] = c;
 66f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 673:	83 c7 01             	add    $0x1,%edi
 676:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 679:	3c 0a                	cmp    $0xa,%al
 67b:	74 23                	je     6a0 <gets+0x60>
 67d:	3c 0d                	cmp    $0xd,%al
 67f:	74 1f                	je     6a0 <gets+0x60>
  for(i=0; i+1 < max; ){
 681:	83 c3 01             	add    $0x1,%ebx
 684:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 687:	89 fe                	mov    %edi,%esi
 689:	7c cd                	jl     658 <gets+0x18>
 68b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 68d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 690:	c6 03 00             	movb   $0x0,(%ebx)
}
 693:	8d 65 f4             	lea    -0xc(%ebp),%esp
 696:	5b                   	pop    %ebx
 697:	5e                   	pop    %esi
 698:	5f                   	pop    %edi
 699:	5d                   	pop    %ebp
 69a:	c3                   	ret    
 69b:	90                   	nop
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6a0:	8b 75 08             	mov    0x8(%ebp),%esi
 6a3:	8b 45 08             	mov    0x8(%ebp),%eax
 6a6:	01 de                	add    %ebx,%esi
 6a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 6aa:	c6 03 00             	movb   $0x0,(%ebx)
}
 6ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6b0:	5b                   	pop    %ebx
 6b1:	5e                   	pop    %esi
 6b2:	5f                   	pop    %edi
 6b3:	5d                   	pop    %ebp
 6b4:	c3                   	ret    
 6b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6c5:	83 ec 08             	sub    $0x8,%esp
 6c8:	6a 00                	push   $0x0
 6ca:	ff 75 08             	pushl  0x8(%ebp)
 6cd:	e8 f0 00 00 00       	call   7c2 <open>
  if(fd < 0)
 6d2:	83 c4 10             	add    $0x10,%esp
 6d5:	85 c0                	test   %eax,%eax
 6d7:	78 27                	js     700 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6d9:	83 ec 08             	sub    $0x8,%esp
 6dc:	ff 75 0c             	pushl  0xc(%ebp)
 6df:	89 c3                	mov    %eax,%ebx
 6e1:	50                   	push   %eax
 6e2:	e8 f3 00 00 00       	call   7da <fstat>
  close(fd);
 6e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ea:	89 c6                	mov    %eax,%esi
  close(fd);
 6ec:	e8 b9 00 00 00       	call   7aa <close>
  return r;
 6f1:	83 c4 10             	add    $0x10,%esp
}
 6f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6f7:	89 f0                	mov    %esi,%eax
 6f9:	5b                   	pop    %ebx
 6fa:	5e                   	pop    %esi
 6fb:	5d                   	pop    %ebp
 6fc:	c3                   	ret    
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 700:	be ff ff ff ff       	mov    $0xffffffff,%esi
 705:	eb ed                	jmp    6f4 <stat+0x34>
 707:	89 f6                	mov    %esi,%esi
 709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000710 <atoi>:

int
atoi(const char *s)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	53                   	push   %ebx
 714:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 717:	0f be 11             	movsbl (%ecx),%edx
 71a:	8d 42 d0             	lea    -0x30(%edx),%eax
 71d:	3c 09                	cmp    $0x9,%al
  n = 0;
 71f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 724:	77 1f                	ja     745 <atoi+0x35>
 726:	8d 76 00             	lea    0x0(%esi),%esi
 729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 730:	8d 04 80             	lea    (%eax,%eax,4),%eax
 733:	83 c1 01             	add    $0x1,%ecx
 736:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 73a:	0f be 11             	movsbl (%ecx),%edx
 73d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 740:	80 fb 09             	cmp    $0x9,%bl
 743:	76 eb                	jbe    730 <atoi+0x20>
  return n;
}
 745:	5b                   	pop    %ebx
 746:	5d                   	pop    %ebp
 747:	c3                   	ret    
 748:	90                   	nop
 749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000750 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	56                   	push   %esi
 754:	53                   	push   %ebx
 755:	8b 5d 10             	mov    0x10(%ebp),%ebx
 758:	8b 45 08             	mov    0x8(%ebp),%eax
 75b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 75e:	85 db                	test   %ebx,%ebx
 760:	7e 14                	jle    776 <memmove+0x26>
 762:	31 d2                	xor    %edx,%edx
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 768:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 76c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 76f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 772:	39 d3                	cmp    %edx,%ebx
 774:	75 f2                	jne    768 <memmove+0x18>
  return vdst;
}
 776:	5b                   	pop    %ebx
 777:	5e                   	pop    %esi
 778:	5d                   	pop    %ebp
 779:	c3                   	ret    

0000077a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 77a:	b8 01 00 00 00       	mov    $0x1,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    

00000782 <exit>:
SYSCALL(exit)
 782:	b8 02 00 00 00       	mov    $0x2,%eax
 787:	cd 40                	int    $0x40
 789:	c3                   	ret    

0000078a <wait>:
SYSCALL(wait)
 78a:	b8 03 00 00 00       	mov    $0x3,%eax
 78f:	cd 40                	int    $0x40
 791:	c3                   	ret    

00000792 <pipe>:
SYSCALL(pipe)
 792:	b8 04 00 00 00       	mov    $0x4,%eax
 797:	cd 40                	int    $0x40
 799:	c3                   	ret    

0000079a <read>:
SYSCALL(read)
 79a:	b8 05 00 00 00       	mov    $0x5,%eax
 79f:	cd 40                	int    $0x40
 7a1:	c3                   	ret    

000007a2 <write>:
SYSCALL(write)
 7a2:	b8 10 00 00 00       	mov    $0x10,%eax
 7a7:	cd 40                	int    $0x40
 7a9:	c3                   	ret    

000007aa <close>:
SYSCALL(close)
 7aa:	b8 15 00 00 00       	mov    $0x15,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <kill>:
SYSCALL(kill)
 7b2:	b8 06 00 00 00       	mov    $0x6,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <exec>:
SYSCALL(exec)
 7ba:	b8 07 00 00 00       	mov    $0x7,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <open>:
SYSCALL(open)
 7c2:	b8 0f 00 00 00       	mov    $0xf,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <mknod>:
SYSCALL(mknod)
 7ca:	b8 11 00 00 00       	mov    $0x11,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    

000007d2 <unlink>:
SYSCALL(unlink)
 7d2:	b8 12 00 00 00       	mov    $0x12,%eax
 7d7:	cd 40                	int    $0x40
 7d9:	c3                   	ret    

000007da <fstat>:
SYSCALL(fstat)
 7da:	b8 08 00 00 00       	mov    $0x8,%eax
 7df:	cd 40                	int    $0x40
 7e1:	c3                   	ret    

000007e2 <link>:
SYSCALL(link)
 7e2:	b8 13 00 00 00       	mov    $0x13,%eax
 7e7:	cd 40                	int    $0x40
 7e9:	c3                   	ret    

000007ea <mkdir>:
SYSCALL(mkdir)
 7ea:	b8 14 00 00 00       	mov    $0x14,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <chdir>:
SYSCALL(chdir)
 7f2:	b8 09 00 00 00       	mov    $0x9,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <dup>:
SYSCALL(dup)
 7fa:	b8 0a 00 00 00       	mov    $0xa,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <getpid>:
SYSCALL(getpid)
 802:	b8 0b 00 00 00       	mov    $0xb,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <sbrk>:
SYSCALL(sbrk)
 80a:	b8 0c 00 00 00       	mov    $0xc,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    

00000812 <sleep>:
SYSCALL(sleep)
 812:	b8 0d 00 00 00       	mov    $0xd,%eax
 817:	cd 40                	int    $0x40
 819:	c3                   	ret    

0000081a <uptime>:
SYSCALL(uptime)
 81a:	b8 0e 00 00 00       	mov    $0xe,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    
 822:	66 90                	xchg   %ax,%ax
 824:	66 90                	xchg   %ax,%ax
 826:	66 90                	xchg   %ax,%ax
 828:	66 90                	xchg   %ax,%ax
 82a:	66 90                	xchg   %ax,%ax
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 839:	85 d2                	test   %edx,%edx
{
 83b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 83e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 840:	79 76                	jns    8b8 <printint+0x88>
 842:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 846:	74 70                	je     8b8 <printint+0x88>
    x = -xx;
 848:	f7 d8                	neg    %eax
    neg = 1;
 84a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 851:	31 f6                	xor    %esi,%esi
 853:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 856:	eb 0a                	jmp    862 <printint+0x32>
 858:	90                   	nop
 859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 860:	89 fe                	mov    %edi,%esi
 862:	31 d2                	xor    %edx,%edx
 864:	8d 7e 01             	lea    0x1(%esi),%edi
 867:	f7 f1                	div    %ecx
 869:	0f b6 92 d0 0c 00 00 	movzbl 0xcd0(%edx),%edx
  }while((x /= base) != 0);
 870:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 872:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 875:	75 e9                	jne    860 <printint+0x30>
  if(neg)
 877:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 87a:	85 c0                	test   %eax,%eax
 87c:	74 08                	je     886 <printint+0x56>
    buf[i++] = '-';
 87e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 883:	8d 7e 02             	lea    0x2(%esi),%edi
 886:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 88a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 88d:	8d 76 00             	lea    0x0(%esi),%esi
 890:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 893:	83 ec 04             	sub    $0x4,%esp
 896:	83 ee 01             	sub    $0x1,%esi
 899:	6a 01                	push   $0x1
 89b:	53                   	push   %ebx
 89c:	57                   	push   %edi
 89d:	88 45 d7             	mov    %al,-0x29(%ebp)
 8a0:	e8 fd fe ff ff       	call   7a2 <write>

  while(--i >= 0)
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	39 de                	cmp    %ebx,%esi
 8aa:	75 e4                	jne    890 <printint+0x60>
    putc(fd, buf[i]);
}
 8ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8af:	5b                   	pop    %ebx
 8b0:	5e                   	pop    %esi
 8b1:	5f                   	pop    %edi
 8b2:	5d                   	pop    %ebp
 8b3:	c3                   	ret    
 8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8bf:	eb 90                	jmp    851 <printint+0x21>
 8c1:	eb 0d                	jmp    8d0 <printf>
 8c3:	90                   	nop
 8c4:	90                   	nop
 8c5:	90                   	nop
 8c6:	90                   	nop
 8c7:	90                   	nop
 8c8:	90                   	nop
 8c9:	90                   	nop
 8ca:	90                   	nop
 8cb:	90                   	nop
 8cc:	90                   	nop
 8cd:	90                   	nop
 8ce:	90                   	nop
 8cf:	90                   	nop

000008d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8d9:	8b 75 0c             	mov    0xc(%ebp),%esi
 8dc:	0f b6 1e             	movzbl (%esi),%ebx
 8df:	84 db                	test   %bl,%bl
 8e1:	0f 84 b3 00 00 00    	je     99a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 8e7:	8d 45 10             	lea    0x10(%ebp),%eax
 8ea:	83 c6 01             	add    $0x1,%esi
  state = 0;
 8ed:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 8ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8f2:	eb 2f                	jmp    923 <printf+0x53>
 8f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 8f8:	83 f8 25             	cmp    $0x25,%eax
 8fb:	0f 84 a7 00 00 00    	je     9a8 <printf+0xd8>
  write(fd, &c, 1);
 901:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 904:	83 ec 04             	sub    $0x4,%esp
 907:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 90a:	6a 01                	push   $0x1
 90c:	50                   	push   %eax
 90d:	ff 75 08             	pushl  0x8(%ebp)
 910:	e8 8d fe ff ff       	call   7a2 <write>
 915:	83 c4 10             	add    $0x10,%esp
 918:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 91b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 91f:	84 db                	test   %bl,%bl
 921:	74 77                	je     99a <printf+0xca>
    if(state == 0){
 923:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 925:	0f be cb             	movsbl %bl,%ecx
 928:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 92b:	74 cb                	je     8f8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 92d:	83 ff 25             	cmp    $0x25,%edi
 930:	75 e6                	jne    918 <printf+0x48>
      if(c == 'd'){
 932:	83 f8 64             	cmp    $0x64,%eax
 935:	0f 84 05 01 00 00    	je     a40 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 93b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 941:	83 f9 70             	cmp    $0x70,%ecx
 944:	74 72                	je     9b8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 946:	83 f8 73             	cmp    $0x73,%eax
 949:	0f 84 99 00 00 00    	je     9e8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 94f:	83 f8 63             	cmp    $0x63,%eax
 952:	0f 84 08 01 00 00    	je     a60 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 958:	83 f8 25             	cmp    $0x25,%eax
 95b:	0f 84 ef 00 00 00    	je     a50 <printf+0x180>
  write(fd, &c, 1);
 961:	8d 45 e7             	lea    -0x19(%ebp),%eax
 964:	83 ec 04             	sub    $0x4,%esp
 967:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 96b:	6a 01                	push   $0x1
 96d:	50                   	push   %eax
 96e:	ff 75 08             	pushl  0x8(%ebp)
 971:	e8 2c fe ff ff       	call   7a2 <write>
 976:	83 c4 0c             	add    $0xc,%esp
 979:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 97c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 97f:	6a 01                	push   $0x1
 981:	50                   	push   %eax
 982:	ff 75 08             	pushl  0x8(%ebp)
 985:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 988:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 98a:	e8 13 fe ff ff       	call   7a2 <write>
  for(i = 0; fmt[i]; i++){
 98f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 993:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 996:	84 db                	test   %bl,%bl
 998:	75 89                	jne    923 <printf+0x53>
    }
  }
}
 99a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 99d:	5b                   	pop    %ebx
 99e:	5e                   	pop    %esi
 99f:	5f                   	pop    %edi
 9a0:	5d                   	pop    %ebp
 9a1:	c3                   	ret    
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 9a8:	bf 25 00 00 00       	mov    $0x25,%edi
 9ad:	e9 66 ff ff ff       	jmp    918 <printf+0x48>
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9b8:	83 ec 0c             	sub    $0xc,%esp
 9bb:	b9 10 00 00 00       	mov    $0x10,%ecx
 9c0:	6a 00                	push   $0x0
 9c2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 9c5:	8b 45 08             	mov    0x8(%ebp),%eax
 9c8:	8b 17                	mov    (%edi),%edx
 9ca:	e8 61 fe ff ff       	call   830 <printint>
        ap++;
 9cf:	89 f8                	mov    %edi,%eax
 9d1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9d4:	31 ff                	xor    %edi,%edi
        ap++;
 9d6:	83 c0 04             	add    $0x4,%eax
 9d9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 9dc:	e9 37 ff ff ff       	jmp    918 <printf+0x48>
 9e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9e8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 9eb:	8b 08                	mov    (%eax),%ecx
        ap++;
 9ed:	83 c0 04             	add    $0x4,%eax
 9f0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 9f3:	85 c9                	test   %ecx,%ecx
 9f5:	0f 84 8e 00 00 00    	je     a89 <printf+0x1b9>
        while(*s != 0){
 9fb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 9fe:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 a00:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 a02:	84 c0                	test   %al,%al
 a04:	0f 84 0e ff ff ff    	je     918 <printf+0x48>
 a0a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 a0d:	89 de                	mov    %ebx,%esi
 a0f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 a12:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 a15:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a18:	83 ec 04             	sub    $0x4,%esp
          s++;
 a1b:	83 c6 01             	add    $0x1,%esi
 a1e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 a21:	6a 01                	push   $0x1
 a23:	57                   	push   %edi
 a24:	53                   	push   %ebx
 a25:	e8 78 fd ff ff       	call   7a2 <write>
        while(*s != 0){
 a2a:	0f b6 06             	movzbl (%esi),%eax
 a2d:	83 c4 10             	add    $0x10,%esp
 a30:	84 c0                	test   %al,%al
 a32:	75 e4                	jne    a18 <printf+0x148>
 a34:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 a37:	31 ff                	xor    %edi,%edi
 a39:	e9 da fe ff ff       	jmp    918 <printf+0x48>
 a3e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 a40:	83 ec 0c             	sub    $0xc,%esp
 a43:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a48:	6a 01                	push   $0x1
 a4a:	e9 73 ff ff ff       	jmp    9c2 <printf+0xf2>
 a4f:	90                   	nop
  write(fd, &c, 1);
 a50:	83 ec 04             	sub    $0x4,%esp
 a53:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 a56:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 a59:	6a 01                	push   $0x1
 a5b:	e9 21 ff ff ff       	jmp    981 <printf+0xb1>
        putc(fd, *ap);
 a60:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 a63:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a66:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 a68:	6a 01                	push   $0x1
        ap++;
 a6a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 a6d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 a70:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 a73:	50                   	push   %eax
 a74:	ff 75 08             	pushl  0x8(%ebp)
 a77:	e8 26 fd ff ff       	call   7a2 <write>
        ap++;
 a7c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 a7f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a82:	31 ff                	xor    %edi,%edi
 a84:	e9 8f fe ff ff       	jmp    918 <printf+0x48>
          s = "(null)";
 a89:	bb c6 0c 00 00       	mov    $0xcc6,%ebx
        while(*s != 0){
 a8e:	b8 28 00 00 00       	mov    $0x28,%eax
 a93:	e9 72 ff ff ff       	jmp    a0a <printf+0x13a>
 a98:	66 90                	xchg   %ax,%ax
 a9a:	66 90                	xchg   %ax,%ax
 a9c:	66 90                	xchg   %ax,%ax
 a9e:	66 90                	xchg   %ax,%ax

00000aa0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 aa0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 aa1:	a1 c0 10 00 00       	mov    0x10c0,%eax
{
 aa6:	89 e5                	mov    %esp,%ebp
 aa8:	57                   	push   %edi
 aa9:	56                   	push   %esi
 aaa:	53                   	push   %ebx
 aab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 aae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 ab1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ab8:	39 c8                	cmp    %ecx,%eax
 aba:	8b 10                	mov    (%eax),%edx
 abc:	73 32                	jae    af0 <free+0x50>
 abe:	39 d1                	cmp    %edx,%ecx
 ac0:	72 04                	jb     ac6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ac2:	39 d0                	cmp    %edx,%eax
 ac4:	72 32                	jb     af8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ac6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ac9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 acc:	39 fa                	cmp    %edi,%edx
 ace:	74 30                	je     b00 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 ad0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 ad3:	8b 50 04             	mov    0x4(%eax),%edx
 ad6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ad9:	39 f1                	cmp    %esi,%ecx
 adb:	74 3a                	je     b17 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 add:	89 08                	mov    %ecx,(%eax)
  freep = p;
 adf:	a3 c0 10 00 00       	mov    %eax,0x10c0
}
 ae4:	5b                   	pop    %ebx
 ae5:	5e                   	pop    %esi
 ae6:	5f                   	pop    %edi
 ae7:	5d                   	pop    %ebp
 ae8:	c3                   	ret    
 ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 af0:	39 d0                	cmp    %edx,%eax
 af2:	72 04                	jb     af8 <free+0x58>
 af4:	39 d1                	cmp    %edx,%ecx
 af6:	72 ce                	jb     ac6 <free+0x26>
{
 af8:	89 d0                	mov    %edx,%eax
 afa:	eb bc                	jmp    ab8 <free+0x18>
 afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 b00:	03 72 04             	add    0x4(%edx),%esi
 b03:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b06:	8b 10                	mov    (%eax),%edx
 b08:	8b 12                	mov    (%edx),%edx
 b0a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b0d:	8b 50 04             	mov    0x4(%eax),%edx
 b10:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b13:	39 f1                	cmp    %esi,%ecx
 b15:	75 c6                	jne    add <free+0x3d>
    p->s.size += bp->s.size;
 b17:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 b1a:	a3 c0 10 00 00       	mov    %eax,0x10c0
    p->s.size += bp->s.size;
 b1f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 b22:	8b 53 f8             	mov    -0x8(%ebx),%edx
 b25:	89 10                	mov    %edx,(%eax)
}
 b27:	5b                   	pop    %ebx
 b28:	5e                   	pop    %esi
 b29:	5f                   	pop    %edi
 b2a:	5d                   	pop    %ebp
 b2b:	c3                   	ret    
 b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000b30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b30:	55                   	push   %ebp
 b31:	89 e5                	mov    %esp,%ebp
 b33:	57                   	push   %edi
 b34:	56                   	push   %esi
 b35:	53                   	push   %ebx
 b36:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b3c:	8b 15 c0 10 00 00    	mov    0x10c0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b42:	8d 78 07             	lea    0x7(%eax),%edi
 b45:	c1 ef 03             	shr    $0x3,%edi
 b48:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 b4b:	85 d2                	test   %edx,%edx
 b4d:	0f 84 9d 00 00 00    	je     bf0 <malloc+0xc0>
 b53:	8b 02                	mov    (%edx),%eax
 b55:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 b58:	39 cf                	cmp    %ecx,%edi
 b5a:	76 6c                	jbe    bc8 <malloc+0x98>
 b5c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 b62:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b67:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 b6a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 b71:	eb 0e                	jmp    b81 <malloc+0x51>
 b73:	90                   	nop
 b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b7a:	8b 48 04             	mov    0x4(%eax),%ecx
 b7d:	39 f9                	cmp    %edi,%ecx
 b7f:	73 47                	jae    bc8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b81:	39 05 c0 10 00 00    	cmp    %eax,0x10c0
 b87:	89 c2                	mov    %eax,%edx
 b89:	75 ed                	jne    b78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b8b:	83 ec 0c             	sub    $0xc,%esp
 b8e:	56                   	push   %esi
 b8f:	e8 76 fc ff ff       	call   80a <sbrk>
  if(p == (char*)-1)
 b94:	83 c4 10             	add    $0x10,%esp
 b97:	83 f8 ff             	cmp    $0xffffffff,%eax
 b9a:	74 1c                	je     bb8 <malloc+0x88>
  hp->s.size = nu;
 b9c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b9f:	83 ec 0c             	sub    $0xc,%esp
 ba2:	83 c0 08             	add    $0x8,%eax
 ba5:	50                   	push   %eax
 ba6:	e8 f5 fe ff ff       	call   aa0 <free>
  return freep;
 bab:	8b 15 c0 10 00 00    	mov    0x10c0,%edx
      if((p = morecore(nunits)) == 0)
 bb1:	83 c4 10             	add    $0x10,%esp
 bb4:	85 d2                	test   %edx,%edx
 bb6:	75 c0                	jne    b78 <malloc+0x48>
        return 0;
  }
}
 bb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 bbb:	31 c0                	xor    %eax,%eax
}
 bbd:	5b                   	pop    %ebx
 bbe:	5e                   	pop    %esi
 bbf:	5f                   	pop    %edi
 bc0:	5d                   	pop    %ebp
 bc1:	c3                   	ret    
 bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bc8:	39 cf                	cmp    %ecx,%edi
 bca:	74 54                	je     c20 <malloc+0xf0>
        p->s.size -= nunits;
 bcc:	29 f9                	sub    %edi,%ecx
 bce:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 bd1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bd4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 bd7:	89 15 c0 10 00 00    	mov    %edx,0x10c0
}
 bdd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 be0:	83 c0 08             	add    $0x8,%eax
}
 be3:	5b                   	pop    %ebx
 be4:	5e                   	pop    %esi
 be5:	5f                   	pop    %edi
 be6:	5d                   	pop    %ebp
 be7:	c3                   	ret    
 be8:	90                   	nop
 be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 bf0:	c7 05 c0 10 00 00 c4 	movl   $0x10c4,0x10c0
 bf7:	10 00 00 
 bfa:	c7 05 c4 10 00 00 c4 	movl   $0x10c4,0x10c4
 c01:	10 00 00 
    base.s.size = 0;
 c04:	b8 c4 10 00 00       	mov    $0x10c4,%eax
 c09:	c7 05 c8 10 00 00 00 	movl   $0x0,0x10c8
 c10:	00 00 00 
 c13:	e9 44 ff ff ff       	jmp    b5c <malloc+0x2c>
 c18:	90                   	nop
 c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 c20:	8b 08                	mov    (%eax),%ecx
 c22:	89 0a                	mov    %ecx,(%edx)
 c24:	eb b1                	jmp    bd7 <malloc+0xa7>
