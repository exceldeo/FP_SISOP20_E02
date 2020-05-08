
_cp:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
  close(fd);
}

int main(int argc, char *argv[])
{
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
{
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc <= 2){
  19:	7f 13                	jg     2e <main+0x2e>
    printf(1, "Need 2 Arguments!\n");
  1b:	50                   	push   %eax
  1c:	50                   	push   %eax
  1d:	68 2b 10 00 00       	push   $0x102b
  22:	6a 01                	push   $0x1
  24:	e8 07 0c 00 00       	call   c30 <printf>
    exit();
  29:	e8 b4 0a 00 00       	call   ae2 <exit>
  }
  if(strcmp(getfname(argv[1]),"*")==0) cpAll(nostar(argv[1]),argv[2]);
  2e:	83 ec 0c             	sub    $0xc,%esp
  31:	ff 73 04             	pushl  0x4(%ebx)
  34:	e8 77 00 00 00       	call   b0 <getfname>
  39:	59                   	pop    %ecx
  3a:	5e                   	pop    %esi
  3b:	68 3e 10 00 00       	push   $0x103e
  40:	50                   	push   %eax
  41:	e8 7a 08 00 00       	call   8c0 <strcmp>
  46:	83 c4 10             	add    $0x10,%esp
  49:	85 c0                	test   %eax,%eax
  4b:	75 1f                	jne    6c <main+0x6c>
  4d:	83 ec 0c             	sub    $0xc,%esp
  50:	8b 73 08             	mov    0x8(%ebx),%esi
  53:	ff 73 04             	pushl  0x4(%ebx)
  56:	e8 b5 04 00 00       	call   510 <nostar>
  5b:	5b                   	pop    %ebx
  5c:	5a                   	pop    %edx
  5d:	56                   	push   %esi
  5e:	50                   	push   %eax
  5f:	e8 9c 02 00 00       	call   300 <cpAll>
  64:	83 c4 10             	add    $0x10,%esp
  else if(strcmp(argv[1],"-R")==0) cpRec(argv[2],argv[3]);
  else cpone(argv[1],argv[2]);
  exit();
  67:	e8 76 0a 00 00       	call   ae2 <exit>
  else if(strcmp(argv[1],"-R")==0) cpRec(argv[2],argv[3]);
  6c:	51                   	push   %ecx
  6d:	51                   	push   %ecx
  6e:	68 40 10 00 00       	push   $0x1040
  73:	ff 73 04             	pushl  0x4(%ebx)
  76:	e8 45 08 00 00       	call   8c0 <strcmp>
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	75 12                	jne    94 <main+0x94>
  82:	52                   	push   %edx
  83:	52                   	push   %edx
  84:	ff 73 0c             	pushl  0xc(%ebx)
  87:	ff 73 08             	pushl  0x8(%ebx)
  8a:	e8 e1 04 00 00       	call   570 <cpRec>
  8f:	83 c4 10             	add    $0x10,%esp
  92:	eb d3                	jmp    67 <main+0x67>
  else cpone(argv[1],argv[2]);
  94:	50                   	push   %eax
  95:	50                   	push   %eax
  96:	ff 73 08             	pushl  0x8(%ebx)
  99:	ff 73 04             	pushl  0x4(%ebx)
  9c:	e8 cf 00 00 00       	call   170 <cpone>
  a1:	83 c4 10             	add    $0x10,%esp
  a4:	eb c1                	jmp    67 <main+0x67>
  a6:	66 90                	xchg   %ax,%ax
  a8:	66 90                	xchg   %ax,%ax
  aa:	66 90                	xchg   %ax,%ax
  ac:	66 90                	xchg   %ax,%ax
  ae:	66 90                	xchg   %ax,%ax

000000b0 <getfname>:
char * getfname(char * path){
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	53                   	push   %ebx
  b4:	83 ec 10             	sub    $0x10,%esp
  b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
  ba:	53                   	push   %ebx
  bb:	e8 50 08 00 00       	call   910 <strlen>
  c0:	01 d8                	add    %ebx,%eax
  c2:	83 c4 10             	add    $0x10,%esp
  c5:	80 38 2f             	cmpb   $0x2f,(%eax)
  c8:	75 0e                	jne    d8 <getfname+0x28>
  ca:	eb 10                	jmp    dc <getfname+0x2c>
  cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  d0:	83 e8 01             	sub    $0x1,%eax
  d3:	80 38 2f             	cmpb   $0x2f,(%eax)
  d6:	74 04                	je     dc <getfname+0x2c>
  d8:	39 c3                	cmp    %eax,%ebx
  da:	76 f4                	jbe    d0 <getfname+0x20>
    id++;
  dc:	83 c0 01             	add    $0x1,%eax
}
  df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  e2:	c9                   	leave  
  e3:	c3                   	ret    
  e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000f0 <strcat>:
char * strcat(char * x,char * y){
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	53                   	push   %ebx
	strcpy(str1,x); strcpy(str2,y);
  f4:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
char * strcat(char * x,char * y){
  f7:	83 ec 7c             	sub    $0x7c,%esp
	strcpy(str1,x); strcpy(str2,y);
  fa:	ff 75 08             	pushl  0x8(%ebp)
  fd:	68 60 14 00 00       	push   $0x1460
 102:	e8 89 07 00 00       	call   890 <strcpy>
 107:	58                   	pop    %eax
 108:	5a                   	pop    %edx
 109:	ff 75 0c             	pushl  0xc(%ebp)
 10c:	53                   	push   %ebx
 10d:	e8 7e 07 00 00       	call   890 <strcpy>
    for(i=0; str1[i]!='\0'; ++i); 
 112:	83 c4 10             	add    $0x10,%esp
 115:	31 c0                	xor    %eax,%eax
 117:	80 3d 60 14 00 00 00 	cmpb   $0x0,0x1460
 11e:	74 0c                	je     12c <strcat+0x3c>
 120:	83 c0 01             	add    $0x1,%eax
 123:	80 b8 60 14 00 00 00 	cmpb   $0x0,0x1460(%eax)
 12a:	75 f4                	jne    120 <strcat+0x30>
   for(j=0; str2[j]!='\0'; ++j, ++i)
 12c:	0f b6 55 94          	movzbl -0x6c(%ebp),%edx
 130:	84 d2                	test   %dl,%dl
 132:	74 1d                	je     151 <strcat+0x61>
 134:	29 c3                	sub    %eax,%ebx
 136:	89 d9                	mov    %ebx,%ecx
 138:	90                   	nop
 139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      str1[i]=str2[j];
 140:	88 90 60 14 00 00    	mov    %dl,0x1460(%eax)
   for(j=0; str2[j]!='\0'; ++j, ++i)
 146:	83 c0 01             	add    $0x1,%eax
 149:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
 14d:	84 d2                	test   %dl,%dl
 14f:	75 ef                	jne    140 <strcat+0x50>
   str1[i]='\0';
 151:	c6 80 60 14 00 00 00 	movb   $0x0,0x1460(%eax)
}
 158:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 15b:	b8 60 14 00 00       	mov    $0x1460,%eax
 160:	c9                   	leave  
 161:	c3                   	ret    
 162:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000170 <cpone>:
void cpone(char * src, char * dst){
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 44             	sub    $0x44,%esp
 179:	8b 75 08             	mov    0x8(%ebp),%esi
  if((fd1 = open(src, O_RDONLY)) <0){
 17c:	6a 00                	push   $0x0
 17e:	56                   	push   %esi
 17f:	e8 9e 09 00 00       	call   b22 <open>
 184:	83 c4 10             	add    $0x10,%esp
 187:	85 c0                	test   %eax,%eax
 189:	0f 88 48 01 00 00    	js     2d7 <cpone+0x167>
  if((fd = open(dst, 0)) < 0);
 18f:	83 ec 08             	sub    $0x8,%esp
 192:	89 c3                	mov    %eax,%ebx
 194:	6a 00                	push   $0x0
 196:	ff 75 0c             	pushl  0xc(%ebp)
 199:	e8 84 09 00 00       	call   b22 <open>
 19e:	83 c4 10             	add    $0x10,%esp
 1a1:	85 c0                	test   %eax,%eax
 1a3:	89 c2                	mov    %eax,%edx
 1a5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 1a8:	78 23                	js     1cd <cpone+0x5d>
	if(fstat(fd, &st) < 0){
 1aa:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 1ad:	83 ec 08             	sub    $0x8,%esp
 1b0:	50                   	push   %eax
 1b1:	52                   	push   %edx
 1b2:	e8 83 09 00 00       	call   b3a <fstat>
 1b7:	83 c4 10             	add    $0x10,%esp
 1ba:	85 c0                	test   %eax,%eax
 1bc:	0f 88 de 00 00 00    	js     2a0 <cpone+0x130>
  if(st.type == T_DIR){
 1c2:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
 1c7:	0f 84 7e 00 00 00    	je     24b <cpone+0xdb>
  if((fd2 = open(dst, O_CREATE|O_RDWR)) < 0){
 1cd:	83 ec 08             	sub    $0x8,%esp
 1d0:	68 02 02 00 00       	push   $0x202
 1d5:	ff 75 0c             	pushl  0xc(%ebp)
 1d8:	e8 45 09 00 00       	call   b22 <open>
 1dd:	83 c4 10             	add    $0x10,%esp
 1e0:	85 c0                	test   %eax,%eax
 1e2:	89 c6                	mov    %eax,%esi
 1e4:	79 24                	jns    20a <cpone+0x9a>
 1e6:	e9 ff 00 00 00       	jmp    2ea <cpone+0x17a>
 1eb:	90                   	nop
 1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	if(write(fd2,buf,i) != i){
 1f0:	83 ec 04             	sub    $0x4,%esp
 1f3:	57                   	push   %edi
 1f4:	68 e0 14 00 00       	push   $0x14e0
 1f9:	56                   	push   %esi
 1fa:	e8 03 09 00 00       	call   b02 <write>
 1ff:	83 c4 10             	add    $0x10,%esp
 202:	39 f8                	cmp    %edi,%eax
 204:	0f 85 b9 00 00 00    	jne    2c3 <cpone+0x153>
  while( (i = read (fd1, buf, sizeof(buf))) > 0 ){
 20a:	83 ec 04             	sub    $0x4,%esp
 20d:	68 00 02 00 00       	push   $0x200
 212:	68 e0 14 00 00       	push   $0x14e0
 217:	53                   	push   %ebx
 218:	e8 dd 08 00 00       	call   afa <read>
 21d:	83 c4 10             	add    $0x10,%esp
 220:	85 c0                	test   %eax,%eax
 222:	89 c7                	mov    %eax,%edi
 224:	7f ca                	jg     1f0 <cpone+0x80>
  close(fd1);
 226:	83 ec 0c             	sub    $0xc,%esp
 229:	53                   	push   %ebx
 22a:	e8 db 08 00 00       	call   b0a <close>
  close(fd2);
 22f:	89 34 24             	mov    %esi,(%esp)
 232:	e8 d3 08 00 00       	call   b0a <close>
  close(fd);
 237:	58                   	pop    %eax
 238:	ff 75 c4             	pushl  -0x3c(%ebp)
 23b:	e8 ca 08 00 00       	call   b0a <close>
 240:	83 c4 10             	add    $0x10,%esp
}
 243:	8d 65 f4             	lea    -0xc(%ebp),%esp
 246:	5b                   	pop    %ebx
 247:	5e                   	pop    %esi
 248:	5f                   	pop    %edi
 249:	5d                   	pop    %ebp
 24a:	c3                   	ret    
	fname = getfname(src);
 24b:	83 ec 0c             	sub    $0xc,%esp
 24e:	56                   	push   %esi
 24f:	e8 5c fe ff ff       	call   b0 <getfname>
	p = dst+strlen(dst)-1;
 254:	5f                   	pop    %edi
 255:	ff 75 0c             	pushl  0xc(%ebp)
	fname = getfname(src);
 258:	89 c6                	mov    %eax,%esi
	p = dst+strlen(dst)-1;
 25a:	e8 b1 06 00 00       	call   910 <strlen>
  	if(*p != '/'){
 25f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 262:	83 c4 10             	add    $0x10,%esp
 265:	80 7c 01 ff 2f       	cmpb   $0x2f,-0x1(%ecx,%eax,1)
 26a:	74 14                	je     280 <cpone+0x110>
    		dst = strcat(dst,"/");
 26c:	83 ec 08             	sub    $0x8,%esp
 26f:	68 a7 0f 00 00       	push   $0xfa7
 274:	51                   	push   %ecx
 275:	e8 76 fe ff ff       	call   f0 <strcat>
 27a:	83 c4 10             	add    $0x10,%esp
 27d:	89 45 0c             	mov    %eax,0xc(%ebp)
	fname = strcat(dst,fname);
 280:	83 ec 08             	sub    $0x8,%esp
 283:	56                   	push   %esi
 284:	ff 75 0c             	pushl  0xc(%ebp)
 287:	e8 64 fe ff ff       	call   f0 <strcat>
	strcpy(dst,fname);
 28c:	59                   	pop    %ecx
 28d:	5e                   	pop    %esi
 28e:	50                   	push   %eax
 28f:	ff 75 0c             	pushl  0xc(%ebp)
 292:	e8 f9 05 00 00       	call   890 <strcpy>
 297:	83 c4 10             	add    $0x10,%esp
 29a:	e9 2e ff ff ff       	jmp    1cd <cpone+0x5d>
 29f:	90                   	nop
	printf(2,"can't stat");
 2a0:	83 ec 08             	sub    $0x8,%esp
 2a3:	68 9c 0f 00 00       	push   $0xf9c
 2a8:	6a 02                	push   $0x2
 2aa:	e8 81 09 00 00       	call   c30 <printf>
	close(fd);
 2af:	58                   	pop    %eax
 2b0:	ff 75 c4             	pushl  -0x3c(%ebp)
 2b3:	e8 52 08 00 00       	call   b0a <close>
	return;
 2b8:	83 c4 10             	add    $0x10,%esp
}
 2bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2be:	5b                   	pop    %ebx
 2bf:	5e                   	pop    %esi
 2c0:	5f                   	pop    %edi
 2c1:	5d                   	pop    %ebp
 2c2:	c3                   	ret    
	  printf(1,"write error\n");
 2c3:	83 ec 08             	sub    $0x8,%esp
 2c6:	68 a9 0f 00 00       	push   $0xfa9
 2cb:	6a 01                	push   $0x1
 2cd:	e8 5e 09 00 00       	call   c30 <printf>
	  exit();
 2d2:	e8 0b 08 00 00       	call   ae2 <exit>
	printf(1,"cp: cannot open %s\n", src);
 2d7:	50                   	push   %eax
 2d8:	56                   	push   %esi
 2d9:	68 88 0f 00 00       	push   $0xf88
 2de:	6a 01                	push   $0x1
 2e0:	e8 4b 09 00 00       	call   c30 <printf>
	exit();
 2e5:	e8 f8 07 00 00       	call   ae2 <exit>
	printf(1,"cp: cannot open %s\n", dst);
 2ea:	52                   	push   %edx
 2eb:	ff 75 0c             	pushl  0xc(%ebp)
 2ee:	68 88 0f 00 00       	push   $0xf88
 2f3:	6a 01                	push   $0x1
 2f5:	e8 36 09 00 00       	call   c30 <printf>
	exit();
 2fa:	e8 e3 07 00 00       	call   ae2 <exit>
 2ff:	90                   	nop

00000300 <cpAll>:
cpAll(char *path, char * dst) {
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	56                   	push   %esi
 305:	53                   	push   %ebx
  	strcpy(tempcpa,dst);
 306:	8d bd 84 fd ff ff    	lea    -0x27c(%ebp),%edi
cpAll(char *path, char * dst) {
 30c:	81 ec b4 02 00 00    	sub    $0x2b4,%esp
  	strcpy(tempcpa,dst);
 312:	ff 75 0c             	pushl  0xc(%ebp)
 315:	57                   	push   %edi
 316:	e8 75 05 00 00       	call   890 <strcpy>
  if((fd = open(path, 0)) < 0){
 31b:	59                   	pop    %ecx
 31c:	5b                   	pop    %ebx
 31d:	6a 00                	push   $0x0
 31f:	ff 75 08             	pushl  0x8(%ebp)
 322:	e8 fb 07 00 00       	call   b22 <open>
 327:	83 c4 10             	add    $0x10,%esp
 32a:	85 c0                	test   %eax,%eax
 32c:	78 4a                	js     378 <cpAll+0x78>
  if(fstat(fd, &st) < 0){
 32e:	8d b5 70 fd ff ff    	lea    -0x290(%ebp),%esi
 334:	83 ec 08             	sub    $0x8,%esp
 337:	89 c3                	mov    %eax,%ebx
 339:	56                   	push   %esi
 33a:	50                   	push   %eax
 33b:	e8 fa 07 00 00       	call   b3a <fstat>
 340:	83 c4 10             	add    $0x10,%esp
 343:	85 c0                	test   %eax,%eax
 345:	0f 88 95 00 00 00    	js     3e0 <cpAll+0xe0>
  switch(st.type){
 34b:	0f b7 85 70 fd ff ff 	movzwl -0x290(%ebp),%eax
 352:	66 83 f8 01          	cmp    $0x1,%ax
 356:	74 58                	je     3b0 <cpAll+0xb0>
 358:	66 83 f8 02          	cmp    $0x2,%ax
 35c:	74 3a                	je     398 <cpAll+0x98>
  close(fd);
 35e:	83 ec 0c             	sub    $0xc,%esp
 361:	53                   	push   %ebx
 362:	e8 a3 07 00 00       	call   b0a <close>
 367:	83 c4 10             	add    $0x10,%esp
}
 36a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36d:	5b                   	pop    %ebx
 36e:	5e                   	pop    %esi
 36f:	5f                   	pop    %edi
 370:	5d                   	pop    %ebp
 371:	c3                   	ret    
 372:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 378:	83 ec 04             	sub    $0x4,%esp
 37b:	ff 75 08             	pushl  0x8(%ebp)
 37e:	68 b6 0f 00 00       	push   $0xfb6
 383:	6a 02                	push   $0x2
 385:	e8 a6 08 00 00       	call   c30 <printf>
    return;
 38a:	83 c4 10             	add    $0x10,%esp
}
 38d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 390:	5b                   	pop    %ebx
 391:	5e                   	pop    %esi
 392:	5f                   	pop    %edi
 393:	5d                   	pop    %ebp
 394:	c3                   	ret    
 395:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1,"Fail\n");
 398:	83 ec 08             	sub    $0x8,%esp
 39b:	68 de 0f 00 00       	push   $0xfde
 3a0:	6a 01                	push   $0x1
 3a2:	e8 89 08 00 00       	call   c30 <printf>
    break;
 3a7:	83 c4 10             	add    $0x10,%esp
 3aa:	eb b2                	jmp    35e <cpAll+0x5e>
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
 3b0:	83 ec 0c             	sub    $0xc,%esp
 3b3:	ff 75 08             	pushl  0x8(%ebp)
 3b6:	e8 55 05 00 00       	call   910 <strlen>
 3bb:	83 c0 10             	add    $0x10,%eax
 3be:	83 c4 10             	add    $0x10,%esp
 3c1:	3d 00 02 00 00       	cmp    $0x200,%eax
 3c6:	76 40                	jbe    408 <cpAll+0x108>
      printf(1, "ls: path too long\n");
 3c8:	83 ec 08             	sub    $0x8,%esp
 3cb:	68 e4 0f 00 00       	push   $0xfe4
 3d0:	6a 01                	push   $0x1
 3d2:	e8 59 08 00 00       	call   c30 <printf>
      break;
 3d7:	83 c4 10             	add    $0x10,%esp
 3da:	eb 82                	jmp    35e <cpAll+0x5e>
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot stat %s\n", path);
 3e0:	83 ec 04             	sub    $0x4,%esp
 3e3:	ff 75 08             	pushl  0x8(%ebp)
 3e6:	68 ca 0f 00 00       	push   $0xfca
 3eb:	6a 02                	push   $0x2
 3ed:	e8 3e 08 00 00       	call   c30 <printf>
    close(fd);
 3f2:	89 1c 24             	mov    %ebx,(%esp)
 3f5:	e8 10 07 00 00       	call   b0a <close>
    return;
 3fa:	83 c4 10             	add    $0x10,%esp
}
 3fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 400:	5b                   	pop    %ebx
 401:	5e                   	pop    %esi
 402:	5f                   	pop    %edi
 403:	5d                   	pop    %ebp
 404:	c3                   	ret    
 405:	8d 76 00             	lea    0x0(%esi),%esi
    strcpy(baf, path);
 408:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 40e:	83 ec 08             	sub    $0x8,%esp
 411:	ff 75 08             	pushl  0x8(%ebp)
 414:	50                   	push   %eax
 415:	e8 76 04 00 00       	call   890 <strcpy>
    p = baf+strlen(baf);
 41a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 420:	89 04 24             	mov    %eax,(%esp)
 423:	e8 e8 04 00 00       	call   910 <strlen>
 428:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 42e:	83 c4 10             	add    $0x10,%esp
    p = baf+strlen(baf);
 431:	01 d0                	add    %edx,%eax
    *p++ = '/';
 433:	8d 48 01             	lea    0x1(%eax),%ecx
    p = baf+strlen(baf);
 436:	89 85 54 fd ff ff    	mov    %eax,-0x2ac(%ebp)
    *p++ = '/';
 43c:	c6 00 2f             	movb   $0x2f,(%eax)
 43f:	89 8d 50 fd ff ff    	mov    %ecx,-0x2b0(%ebp)
 445:	8d 76 00             	lea    0x0(%esi),%esi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 448:	8d 85 60 fd ff ff    	lea    -0x2a0(%ebp),%eax
 44e:	83 ec 04             	sub    $0x4,%esp
 451:	6a 10                	push   $0x10
 453:	50                   	push   %eax
 454:	53                   	push   %ebx
 455:	e8 a0 06 00 00       	call   afa <read>
 45a:	83 c4 10             	add    $0x10,%esp
 45d:	83 f8 10             	cmp    $0x10,%eax
 460:	0f 85 f8 fe ff ff    	jne    35e <cpAll+0x5e>
      if(de.inum == 0){
 466:	66 83 bd 60 fd ff ff 	cmpw   $0x0,-0x2a0(%ebp)
 46d:	00 
 46e:	74 d8                	je     448 <cpAll+0x148>
      memmove(p, de.name, DIRSIZ);
 470:	8d 85 62 fd ff ff    	lea    -0x29e(%ebp),%eax
 476:	83 ec 04             	sub    $0x4,%esp
 479:	6a 0e                	push   $0xe
 47b:	50                   	push   %eax
 47c:	ff b5 50 fd ff ff    	pushl  -0x2b0(%ebp)
 482:	e8 29 06 00 00       	call   ab0 <memmove>
      p[DIRSIZ] = 0;
 487:	8b 85 54 fd ff ff    	mov    -0x2ac(%ebp),%eax
 48d:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(baf, &st) < 0){
 491:	58                   	pop    %eax
 492:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 498:	5a                   	pop    %edx
 499:	56                   	push   %esi
 49a:	50                   	push   %eax
 49b:	e8 80 05 00 00       	call   a20 <stat>
 4a0:	83 c4 10             	add    $0x10,%esp
 4a3:	85 c0                	test   %eax,%eax
 4a5:	78 49                	js     4f0 <cpAll+0x1f0>
      if(st.type == T_FILE){
 4a7:	66 83 bd 70 fd ff ff 	cmpw   $0x2,-0x290(%ebp)
 4ae:	02 
 4af:	75 97                	jne    448 <cpAll+0x148>
	strcpy(dst,tempcpa);
 4b1:	83 ec 08             	sub    $0x8,%esp
 4b4:	57                   	push   %edi
 4b5:	ff 75 0c             	pushl  0xc(%ebp)
 4b8:	e8 d3 03 00 00       	call   890 <strcpy>
	printf(1,"Copied : %s to %s\n",baf,dst);
 4bd:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4c3:	ff 75 0c             	pushl  0xc(%ebp)
 4c6:	50                   	push   %eax
 4c7:	68 f7 0f 00 00       	push   $0xff7
 4cc:	6a 01                	push   $0x1
 4ce:	e8 5d 07 00 00       	call   c30 <printf>
        cpone(baf,dst);
 4d3:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4d9:	83 c4 18             	add    $0x18,%esp
 4dc:	ff 75 0c             	pushl  0xc(%ebp)
 4df:	50                   	push   %eax
 4e0:	e8 8b fc ff ff       	call   170 <cpone>
 4e5:	83 c4 10             	add    $0x10,%esp
 4e8:	e9 5b ff ff ff       	jmp    448 <cpAll+0x148>
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "ls: cannot stat %s\n", baf);
 4f0:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 4f6:	83 ec 04             	sub    $0x4,%esp
 4f9:	50                   	push   %eax
 4fa:	68 ca 0f 00 00       	push   $0xfca
 4ff:	6a 01                	push   $0x1
 501:	e8 2a 07 00 00       	call   c30 <printf>
        continue;
 506:	83 c4 10             	add    $0x10,%esp
 509:	e9 3a ff ff ff       	jmp    448 <cpAll+0x148>
 50e:	66 90                	xchg   %ax,%ax

00000510 <nostar>:
char * nostar(char * inp){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	53                   	push   %ebx
 514:	83 ec 0c             	sub    $0xc,%esp
 517:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy(str1,".");
 51a:	68 0b 10 00 00       	push   $0x100b
 51f:	68 60 14 00 00       	push   $0x1460
 524:	e8 67 03 00 00       	call   890 <strcpy>
	if(strlen(inp)==1) return str1;
 529:	89 1c 24             	mov    %ebx,(%esp)
 52c:	e8 df 03 00 00       	call   910 <strlen>
 531:	83 c4 10             	add    $0x10,%esp
 534:	83 f8 01             	cmp    $0x1,%eax
 537:	74 24                	je     55d <nostar+0x4d>
	strcpy(str1,inp);
 539:	83 ec 08             	sub    $0x8,%esp
 53c:	53                   	push   %ebx
 53d:	68 60 14 00 00       	push   $0x1460
 542:	e8 49 03 00 00       	call   890 <strcpy>
	str1[strlen(str1)-2]='\0';
 547:	c7 04 24 60 14 00 00 	movl   $0x1460,(%esp)
 54e:	e8 bd 03 00 00       	call   910 <strlen>
 553:	83 c4 10             	add    $0x10,%esp
 556:	c6 80 5e 14 00 00 00 	movb   $0x0,0x145e(%eax)
}
 55d:	b8 60 14 00 00       	mov    $0x1460,%eax
 562:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 565:	c9                   	leave  
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <cpRec>:
cpRec(char *path, char *dst) {
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	56                   	push   %esi
 575:	53                   	push   %ebx
	strcpy(tempcpa,dst);
 576:	8d 9d 84 fd ff ff    	lea    -0x27c(%ebp),%ebx
cpRec(char *path, char *dst) {
 57c:	81 ec c4 02 00 00    	sub    $0x2c4,%esp
	strcpy(tempcpa,dst);
 582:	ff 75 0c             	pushl  0xc(%ebp)
 585:	53                   	push   %ebx
 586:	e8 05 03 00 00       	call   890 <strcpy>
  if((fd = open(path, 0)) < 0){
 58b:	58                   	pop    %eax
 58c:	5a                   	pop    %edx
 58d:	6a 00                	push   $0x0
 58f:	ff 75 08             	pushl  0x8(%ebp)
 592:	e8 8b 05 00 00       	call   b22 <open>
 597:	83 c4 10             	add    $0x10,%esp
 59a:	85 c0                	test   %eax,%eax
 59c:	78 4a                	js     5e8 <cpRec+0x78>
  if(fstat(fd, &st) < 0){
 59e:	8d b5 5c fd ff ff    	lea    -0x2a4(%ebp),%esi
 5a4:	83 ec 08             	sub    $0x8,%esp
 5a7:	89 c7                	mov    %eax,%edi
 5a9:	56                   	push   %esi
 5aa:	50                   	push   %eax
 5ab:	e8 8a 05 00 00       	call   b3a <fstat>
 5b0:	83 c4 10             	add    $0x10,%esp
 5b3:	85 c0                	test   %eax,%eax
 5b5:	0f 88 95 00 00 00    	js     650 <cpRec+0xe0>
  switch(st.type){
 5bb:	0f b7 85 5c fd ff ff 	movzwl -0x2a4(%ebp),%eax
 5c2:	66 83 f8 01          	cmp    $0x1,%ax
 5c6:	74 58                	je     620 <cpRec+0xb0>
 5c8:	66 83 f8 02          	cmp    $0x2,%ax
 5cc:	74 3a                	je     608 <cpRec+0x98>
  close(fd);
 5ce:	83 ec 0c             	sub    $0xc,%esp
 5d1:	57                   	push   %edi
 5d2:	e8 33 05 00 00       	call   b0a <close>
 5d7:	83 c4 10             	add    $0x10,%esp
}
 5da:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5dd:	5b                   	pop    %ebx
 5de:	5e                   	pop    %esi
 5df:	5f                   	pop    %edi
 5e0:	5d                   	pop    %ebp
 5e1:	c3                   	ret    
 5e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 5e8:	83 ec 04             	sub    $0x4,%esp
 5eb:	ff 75 08             	pushl  0x8(%ebp)
 5ee:	68 b6 0f 00 00       	push   $0xfb6
 5f3:	6a 02                	push   $0x2
 5f5:	e8 36 06 00 00       	call   c30 <printf>
    return;
 5fa:	83 c4 10             	add    $0x10,%esp
}
 5fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 600:	5b                   	pop    %ebx
 601:	5e                   	pop    %esi
 602:	5f                   	pop    %edi
 603:	5d                   	pop    %ebp
 604:	c3                   	ret    
 605:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1,"Fail\n");
 608:	83 ec 08             	sub    $0x8,%esp
 60b:	68 de 0f 00 00       	push   $0xfde
 610:	6a 01                	push   $0x1
 612:	e8 19 06 00 00       	call   c30 <printf>
    break;
 617:	83 c4 10             	add    $0x10,%esp
 61a:	eb b2                	jmp    5ce <cpRec+0x5e>
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
 620:	83 ec 0c             	sub    $0xc,%esp
 623:	ff 75 08             	pushl  0x8(%ebp)
 626:	e8 e5 02 00 00       	call   910 <strlen>
 62b:	83 c0 10             	add    $0x10,%eax
 62e:	83 c4 10             	add    $0x10,%esp
 631:	3d 00 02 00 00       	cmp    $0x200,%eax
 636:	76 40                	jbe    678 <cpRec+0x108>
      printf(1, "ls: path too long\n");
 638:	83 ec 08             	sub    $0x8,%esp
 63b:	68 e4 0f 00 00       	push   $0xfe4
 640:	6a 01                	push   $0x1
 642:	e8 e9 05 00 00       	call   c30 <printf>
      break;
 647:	83 c4 10             	add    $0x10,%esp
 64a:	eb 82                	jmp    5ce <cpRec+0x5e>
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot stat %s\n", path);
 650:	83 ec 04             	sub    $0x4,%esp
 653:	ff 75 08             	pushl  0x8(%ebp)
 656:	68 ca 0f 00 00       	push   $0xfca
 65b:	6a 02                	push   $0x2
 65d:	e8 ce 05 00 00       	call   c30 <printf>
    close(fd);
 662:	89 3c 24             	mov    %edi,(%esp)
 665:	e8 a0 04 00 00       	call   b0a <close>
    return;
 66a:	83 c4 10             	add    $0x10,%esp
}
 66d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 670:	5b                   	pop    %ebx
 671:	5e                   	pop    %esi
 672:	5f                   	pop    %edi
 673:	5d                   	pop    %ebp
 674:	c3                   	ret    
 675:	8d 76 00             	lea    0x0(%esi),%esi
    strcpy(baf, path);
 678:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 67e:	83 ec 08             	sub    $0x8,%esp
 681:	ff 75 08             	pushl  0x8(%ebp)
 684:	50                   	push   %eax
 685:	e8 06 02 00 00       	call   890 <strcpy>
    p = baf+strlen(baf);
 68a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 690:	89 04 24             	mov    %eax,(%esp)
 693:	e8 78 02 00 00       	call   910 <strlen>
 698:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 69e:	83 c4 10             	add    $0x10,%esp
    p = baf+strlen(baf);
 6a1:	01 c8                	add    %ecx,%eax
    *p++ = '/';
 6a3:	8d 50 01             	lea    0x1(%eax),%edx
    p = baf+strlen(baf);
 6a6:	89 85 44 fd ff ff    	mov    %eax,-0x2bc(%ebp)
    *p++ = '/';
 6ac:	c6 00 2f             	movb   $0x2f,(%eax)
 6af:	89 95 40 fd ff ff    	mov    %edx,-0x2c0(%ebp)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 6b5:	8d 85 4c fd ff ff    	lea    -0x2b4(%ebp),%eax
 6bb:	83 ec 04             	sub    $0x4,%esp
 6be:	6a 10                	push   $0x10
 6c0:	50                   	push   %eax
 6c1:	57                   	push   %edi
 6c2:	e8 33 04 00 00       	call   afa <read>
 6c7:	83 c4 10             	add    $0x10,%esp
 6ca:	83 f8 10             	cmp    $0x10,%eax
 6cd:	0f 85 fb fe ff ff    	jne    5ce <cpRec+0x5e>
      if(de.inum == 0){
 6d3:	66 83 bd 4c fd ff ff 	cmpw   $0x0,-0x2b4(%ebp)
 6da:	00 
 6db:	74 d8                	je     6b5 <cpRec+0x145>
      memmove(p, de.name, DIRSIZ);
 6dd:	8d 85 4e fd ff ff    	lea    -0x2b2(%ebp),%eax
 6e3:	83 ec 04             	sub    $0x4,%esp
 6e6:	6a 0e                	push   $0xe
 6e8:	50                   	push   %eax
 6e9:	ff b5 40 fd ff ff    	pushl  -0x2c0(%ebp)
 6ef:	e8 bc 03 00 00       	call   ab0 <memmove>
      p[DIRSIZ] = 0;
 6f4:	8b 85 44 fd ff ff    	mov    -0x2bc(%ebp),%eax
 6fa:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(baf, &st) < 0){
 6fe:	59                   	pop    %ecx
 6ff:	58                   	pop    %eax
 700:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 706:	56                   	push   %esi
 707:	50                   	push   %eax
 708:	e8 13 03 00 00       	call   a20 <stat>
 70d:	83 c4 10             	add    $0x10,%esp
 710:	85 c0                	test   %eax,%eax
 712:	0f 88 50 01 00 00    	js     868 <cpRec+0x2f8>
      if(st.type == T_FILE){
 718:	0f b7 85 5c fd ff ff 	movzwl -0x2a4(%ebp),%eax
 71f:	66 83 f8 02          	cmp    $0x2,%ax
 723:	0f 84 ff 00 00 00    	je     828 <cpRec+0x2b8>
	else if(st.type == T_DIR){
 729:	66 83 f8 01          	cmp    $0x1,%ax
 72d:	75 86                	jne    6b5 <cpRec+0x145>
	strcpy(k,getfname(baf));
 72f:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 735:	83 ec 0c             	sub    $0xc,%esp
 738:	50                   	push   %eax
 739:	e8 72 f9 ff ff       	call   b0 <getfname>
 73e:	5a                   	pop    %edx
 73f:	59                   	pop    %ecx
 740:	50                   	push   %eax
 741:	8d 85 70 fd ff ff    	lea    -0x290(%ebp),%eax
 747:	50                   	push   %eax
 748:	e8 43 01 00 00       	call   890 <strcpy>
	if(strcmp(k,".")==0||strcmp(k,"..")==0)   continue;
 74d:	58                   	pop    %eax
 74e:	8d 85 70 fd ff ff    	lea    -0x290(%ebp),%eax
 754:	5a                   	pop    %edx
 755:	68 0b 10 00 00       	push   $0x100b
 75a:	50                   	push   %eax
 75b:	e8 60 01 00 00       	call   8c0 <strcmp>
 760:	83 c4 10             	add    $0x10,%esp
 763:	85 c0                	test   %eax,%eax
 765:	0f 84 4a ff ff ff    	je     6b5 <cpRec+0x145>
 76b:	8d 85 70 fd ff ff    	lea    -0x290(%ebp),%eax
 771:	83 ec 08             	sub    $0x8,%esp
 774:	68 0a 10 00 00       	push   $0x100a
 779:	50                   	push   %eax
 77a:	e8 41 01 00 00       	call   8c0 <strcmp>
 77f:	83 c4 10             	add    $0x10,%esp
 782:	85 c0                	test   %eax,%eax
 784:	0f 84 2b ff ff ff    	je     6b5 <cpRec+0x145>
	  mkdir(strcat(strcat(dst,"/"),getfname(baf)));
 78a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 790:	83 ec 0c             	sub    $0xc,%esp
 793:	50                   	push   %eax
 794:	e8 17 f9 ff ff       	call   b0 <getfname>
 799:	89 85 3c fd ff ff    	mov    %eax,-0x2c4(%ebp)
 79f:	58                   	pop    %eax
 7a0:	5a                   	pop    %edx
 7a1:	68 a7 0f 00 00       	push   $0xfa7
 7a6:	ff 75 0c             	pushl  0xc(%ebp)
 7a9:	e8 42 f9 ff ff       	call   f0 <strcat>
 7ae:	59                   	pop    %ecx
 7af:	5a                   	pop    %edx
 7b0:	8b 95 3c fd ff ff    	mov    -0x2c4(%ebp),%edx
 7b6:	52                   	push   %edx
 7b7:	50                   	push   %eax
 7b8:	e8 33 f9 ff ff       	call   f0 <strcat>
 7bd:	89 04 24             	mov    %eax,(%esp)
 7c0:	e8 85 03 00 00       	call   b4a <mkdir>
	  printf(1,"Create Folder : %s inside %s\n",baf,dst);
 7c5:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 7cb:	ff 75 0c             	pushl  0xc(%ebp)
 7ce:	50                   	push   %eax
 7cf:	68 0d 10 00 00       	push   $0x100d
 7d4:	6a 01                	push   $0x1
 7d6:	e8 55 04 00 00       	call   c30 <printf>
	  cpRec(baf,strcat(strcat(dst,"/"),getfname(baf)));
 7db:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 7e1:	83 c4 14             	add    $0x14,%esp
 7e4:	50                   	push   %eax
 7e5:	e8 c6 f8 ff ff       	call   b0 <getfname>
 7ea:	59                   	pop    %ecx
 7eb:	89 85 3c fd ff ff    	mov    %eax,-0x2c4(%ebp)
 7f1:	58                   	pop    %eax
 7f2:	68 a7 0f 00 00       	push   $0xfa7
 7f7:	ff 75 0c             	pushl  0xc(%ebp)
 7fa:	e8 f1 f8 ff ff       	call   f0 <strcat>
 7ff:	5a                   	pop    %edx
 800:	8b 95 3c fd ff ff    	mov    -0x2c4(%ebp),%edx
 806:	59                   	pop    %ecx
 807:	52                   	push   %edx
 808:	50                   	push   %eax
 809:	e8 e2 f8 ff ff       	call   f0 <strcat>
 80e:	5a                   	pop    %edx
 80f:	59                   	pop    %ecx
 810:	50                   	push   %eax
 811:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 817:	50                   	push   %eax
 818:	e8 53 fd ff ff       	call   570 <cpRec>
 81d:	83 c4 10             	add    $0x10,%esp
 820:	e9 90 fe ff ff       	jmp    6b5 <cpRec+0x145>
 825:	8d 76 00             	lea    0x0(%esi),%esi
	strcpy(dst,tempcpa);
 828:	83 ec 08             	sub    $0x8,%esp
 82b:	53                   	push   %ebx
 82c:	ff 75 0c             	pushl  0xc(%ebp)
 82f:	e8 5c 00 00 00       	call   890 <strcpy>
	printf(1,"Copied : %s to %s\n",baf,dst);
 834:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 83a:	ff 75 0c             	pushl  0xc(%ebp)
 83d:	50                   	push   %eax
 83e:	68 f7 0f 00 00       	push   $0xff7
 843:	6a 01                	push   $0x1
 845:	e8 e6 03 00 00       	call   c30 <printf>
        cpone(baf,dst);
 84a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 850:	83 c4 18             	add    $0x18,%esp
 853:	ff 75 0c             	pushl  0xc(%ebp)
 856:	50                   	push   %eax
 857:	e8 14 f9 ff ff       	call   170 <cpone>
 85c:	83 c4 10             	add    $0x10,%esp
 85f:	e9 51 fe ff ff       	jmp    6b5 <cpRec+0x145>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "ls: cannot stat %s\n", baf);
 868:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 86e:	83 ec 04             	sub    $0x4,%esp
 871:	50                   	push   %eax
 872:	68 ca 0f 00 00       	push   $0xfca
 877:	6a 01                	push   $0x1
 879:	e8 b2 03 00 00       	call   c30 <printf>
        continue;
 87e:	83 c4 10             	add    $0x10,%esp
 881:	e9 2f fe ff ff       	jmp    6b5 <cpRec+0x145>
 886:	66 90                	xchg   %ax,%ax
 888:	66 90                	xchg   %ax,%ax
 88a:	66 90                	xchg   %ax,%ax
 88c:	66 90                	xchg   %ax,%ax
 88e:	66 90                	xchg   %ax,%ax

00000890 <strcpy>:
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	53                   	push   %ebx
 894:	8b 45 08             	mov    0x8(%ebp),%eax
 897:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 89a:	89 c2                	mov    %eax,%edx
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8a0:	83 c1 01             	add    $0x1,%ecx
 8a3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 8a7:	83 c2 01             	add    $0x1,%edx
 8aa:	84 db                	test   %bl,%bl
 8ac:	88 5a ff             	mov    %bl,-0x1(%edx)
 8af:	75 ef                	jne    8a0 <strcpy+0x10>
 8b1:	5b                   	pop    %ebx
 8b2:	5d                   	pop    %ebp
 8b3:	c3                   	ret    
 8b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000008c0 <strcmp>:
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	53                   	push   %ebx
 8c4:	8b 55 08             	mov    0x8(%ebp),%edx
 8c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 8ca:	0f b6 02             	movzbl (%edx),%eax
 8cd:	0f b6 19             	movzbl (%ecx),%ebx
 8d0:	84 c0                	test   %al,%al
 8d2:	75 1c                	jne    8f0 <strcmp+0x30>
 8d4:	eb 2a                	jmp    900 <strcmp+0x40>
 8d6:	8d 76 00             	lea    0x0(%esi),%esi
 8d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8e0:	83 c2 01             	add    $0x1,%edx
 8e3:	0f b6 02             	movzbl (%edx),%eax
 8e6:	83 c1 01             	add    $0x1,%ecx
 8e9:	0f b6 19             	movzbl (%ecx),%ebx
 8ec:	84 c0                	test   %al,%al
 8ee:	74 10                	je     900 <strcmp+0x40>
 8f0:	38 d8                	cmp    %bl,%al
 8f2:	74 ec                	je     8e0 <strcmp+0x20>
 8f4:	29 d8                	sub    %ebx,%eax
 8f6:	5b                   	pop    %ebx
 8f7:	5d                   	pop    %ebp
 8f8:	c3                   	ret    
 8f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 900:	31 c0                	xor    %eax,%eax
 902:	29 d8                	sub    %ebx,%eax
 904:	5b                   	pop    %ebx
 905:	5d                   	pop    %ebp
 906:	c3                   	ret    
 907:	89 f6                	mov    %esi,%esi
 909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000910 <strlen>:
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	8b 4d 08             	mov    0x8(%ebp),%ecx
 916:	80 39 00             	cmpb   $0x0,(%ecx)
 919:	74 15                	je     930 <strlen+0x20>
 91b:	31 d2                	xor    %edx,%edx
 91d:	8d 76 00             	lea    0x0(%esi),%esi
 920:	83 c2 01             	add    $0x1,%edx
 923:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 927:	89 d0                	mov    %edx,%eax
 929:	75 f5                	jne    920 <strlen+0x10>
 92b:	5d                   	pop    %ebp
 92c:	c3                   	ret    
 92d:	8d 76 00             	lea    0x0(%esi),%esi
 930:	31 c0                	xor    %eax,%eax
 932:	5d                   	pop    %ebp
 933:	c3                   	ret    
 934:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 93a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000940 <memset>:
 940:	55                   	push   %ebp
 941:	89 e5                	mov    %esp,%ebp
 943:	57                   	push   %edi
 944:	8b 55 08             	mov    0x8(%ebp),%edx
 947:	8b 4d 10             	mov    0x10(%ebp),%ecx
 94a:	8b 45 0c             	mov    0xc(%ebp),%eax
 94d:	89 d7                	mov    %edx,%edi
 94f:	fc                   	cld    
 950:	f3 aa                	rep stos %al,%es:(%edi)
 952:	89 d0                	mov    %edx,%eax
 954:	5f                   	pop    %edi
 955:	5d                   	pop    %ebp
 956:	c3                   	ret    
 957:	89 f6                	mov    %esi,%esi
 959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000960 <strchr>:
 960:	55                   	push   %ebp
 961:	89 e5                	mov    %esp,%ebp
 963:	53                   	push   %ebx
 964:	8b 45 08             	mov    0x8(%ebp),%eax
 967:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 96a:	0f b6 10             	movzbl (%eax),%edx
 96d:	84 d2                	test   %dl,%dl
 96f:	74 1d                	je     98e <strchr+0x2e>
 971:	38 d3                	cmp    %dl,%bl
 973:	89 d9                	mov    %ebx,%ecx
 975:	75 0d                	jne    984 <strchr+0x24>
 977:	eb 17                	jmp    990 <strchr+0x30>
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 980:	38 ca                	cmp    %cl,%dl
 982:	74 0c                	je     990 <strchr+0x30>
 984:	83 c0 01             	add    $0x1,%eax
 987:	0f b6 10             	movzbl (%eax),%edx
 98a:	84 d2                	test   %dl,%dl
 98c:	75 f2                	jne    980 <strchr+0x20>
 98e:	31 c0                	xor    %eax,%eax
 990:	5b                   	pop    %ebx
 991:	5d                   	pop    %ebp
 992:	c3                   	ret    
 993:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009a0 <gets>:
 9a0:	55                   	push   %ebp
 9a1:	89 e5                	mov    %esp,%ebp
 9a3:	57                   	push   %edi
 9a4:	56                   	push   %esi
 9a5:	53                   	push   %ebx
 9a6:	31 f6                	xor    %esi,%esi
 9a8:	89 f3                	mov    %esi,%ebx
 9aa:	83 ec 1c             	sub    $0x1c,%esp
 9ad:	8b 7d 08             	mov    0x8(%ebp),%edi
 9b0:	eb 2f                	jmp    9e1 <gets+0x41>
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 9b8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 9bb:	83 ec 04             	sub    $0x4,%esp
 9be:	6a 01                	push   $0x1
 9c0:	50                   	push   %eax
 9c1:	6a 00                	push   $0x0
 9c3:	e8 32 01 00 00       	call   afa <read>
 9c8:	83 c4 10             	add    $0x10,%esp
 9cb:	85 c0                	test   %eax,%eax
 9cd:	7e 1c                	jle    9eb <gets+0x4b>
 9cf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 9d3:	83 c7 01             	add    $0x1,%edi
 9d6:	88 47 ff             	mov    %al,-0x1(%edi)
 9d9:	3c 0a                	cmp    $0xa,%al
 9db:	74 23                	je     a00 <gets+0x60>
 9dd:	3c 0d                	cmp    $0xd,%al
 9df:	74 1f                	je     a00 <gets+0x60>
 9e1:	83 c3 01             	add    $0x1,%ebx
 9e4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 9e7:	89 fe                	mov    %edi,%esi
 9e9:	7c cd                	jl     9b8 <gets+0x18>
 9eb:	89 f3                	mov    %esi,%ebx
 9ed:	8b 45 08             	mov    0x8(%ebp),%eax
 9f0:	c6 03 00             	movb   $0x0,(%ebx)
 9f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9f6:	5b                   	pop    %ebx
 9f7:	5e                   	pop    %esi
 9f8:	5f                   	pop    %edi
 9f9:	5d                   	pop    %ebp
 9fa:	c3                   	ret    
 9fb:	90                   	nop
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a00:	8b 75 08             	mov    0x8(%ebp),%esi
 a03:	8b 45 08             	mov    0x8(%ebp),%eax
 a06:	01 de                	add    %ebx,%esi
 a08:	89 f3                	mov    %esi,%ebx
 a0a:	c6 03 00             	movb   $0x0,(%ebx)
 a0d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a10:	5b                   	pop    %ebx
 a11:	5e                   	pop    %esi
 a12:	5f                   	pop    %edi
 a13:	5d                   	pop    %ebp
 a14:	c3                   	ret    
 a15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <stat>:
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	56                   	push   %esi
 a24:	53                   	push   %ebx
 a25:	83 ec 08             	sub    $0x8,%esp
 a28:	6a 00                	push   $0x0
 a2a:	ff 75 08             	pushl  0x8(%ebp)
 a2d:	e8 f0 00 00 00       	call   b22 <open>
 a32:	83 c4 10             	add    $0x10,%esp
 a35:	85 c0                	test   %eax,%eax
 a37:	78 27                	js     a60 <stat+0x40>
 a39:	83 ec 08             	sub    $0x8,%esp
 a3c:	ff 75 0c             	pushl  0xc(%ebp)
 a3f:	89 c3                	mov    %eax,%ebx
 a41:	50                   	push   %eax
 a42:	e8 f3 00 00 00       	call   b3a <fstat>
 a47:	89 1c 24             	mov    %ebx,(%esp)
 a4a:	89 c6                	mov    %eax,%esi
 a4c:	e8 b9 00 00 00       	call   b0a <close>
 a51:	83 c4 10             	add    $0x10,%esp
 a54:	8d 65 f8             	lea    -0x8(%ebp),%esp
 a57:	89 f0                	mov    %esi,%eax
 a59:	5b                   	pop    %ebx
 a5a:	5e                   	pop    %esi
 a5b:	5d                   	pop    %ebp
 a5c:	c3                   	ret    
 a5d:	8d 76 00             	lea    0x0(%esi),%esi
 a60:	be ff ff ff ff       	mov    $0xffffffff,%esi
 a65:	eb ed                	jmp    a54 <stat+0x34>
 a67:	89 f6                	mov    %esi,%esi
 a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a70 <atoi>:
 a70:	55                   	push   %ebp
 a71:	89 e5                	mov    %esp,%ebp
 a73:	53                   	push   %ebx
 a74:	8b 4d 08             	mov    0x8(%ebp),%ecx
 a77:	0f be 11             	movsbl (%ecx),%edx
 a7a:	8d 42 d0             	lea    -0x30(%edx),%eax
 a7d:	3c 09                	cmp    $0x9,%al
 a7f:	b8 00 00 00 00       	mov    $0x0,%eax
 a84:	77 1f                	ja     aa5 <atoi+0x35>
 a86:	8d 76 00             	lea    0x0(%esi),%esi
 a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 a90:	8d 04 80             	lea    (%eax,%eax,4),%eax
 a93:	83 c1 01             	add    $0x1,%ecx
 a96:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 a9a:	0f be 11             	movsbl (%ecx),%edx
 a9d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 aa0:	80 fb 09             	cmp    $0x9,%bl
 aa3:	76 eb                	jbe    a90 <atoi+0x20>
 aa5:	5b                   	pop    %ebx
 aa6:	5d                   	pop    %ebp
 aa7:	c3                   	ret    
 aa8:	90                   	nop
 aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ab0 <memmove>:
 ab0:	55                   	push   %ebp
 ab1:	89 e5                	mov    %esp,%ebp
 ab3:	56                   	push   %esi
 ab4:	53                   	push   %ebx
 ab5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 ab8:	8b 45 08             	mov    0x8(%ebp),%eax
 abb:	8b 75 0c             	mov    0xc(%ebp),%esi
 abe:	85 db                	test   %ebx,%ebx
 ac0:	7e 14                	jle    ad6 <memmove+0x26>
 ac2:	31 d2                	xor    %edx,%edx
 ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 ac8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 acc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 acf:	83 c2 01             	add    $0x1,%edx
 ad2:	39 d3                	cmp    %edx,%ebx
 ad4:	75 f2                	jne    ac8 <memmove+0x18>
 ad6:	5b                   	pop    %ebx
 ad7:	5e                   	pop    %esi
 ad8:	5d                   	pop    %ebp
 ad9:	c3                   	ret    

00000ada <fork>:
 ada:	b8 01 00 00 00       	mov    $0x1,%eax
 adf:	cd 40                	int    $0x40
 ae1:	c3                   	ret    

00000ae2 <exit>:
 ae2:	b8 02 00 00 00       	mov    $0x2,%eax
 ae7:	cd 40                	int    $0x40
 ae9:	c3                   	ret    

00000aea <wait>:
 aea:	b8 03 00 00 00       	mov    $0x3,%eax
 aef:	cd 40                	int    $0x40
 af1:	c3                   	ret    

00000af2 <pipe>:
 af2:	b8 04 00 00 00       	mov    $0x4,%eax
 af7:	cd 40                	int    $0x40
 af9:	c3                   	ret    

00000afa <read>:
 afa:	b8 05 00 00 00       	mov    $0x5,%eax
 aff:	cd 40                	int    $0x40
 b01:	c3                   	ret    

00000b02 <write>:
 b02:	b8 10 00 00 00       	mov    $0x10,%eax
 b07:	cd 40                	int    $0x40
 b09:	c3                   	ret    

00000b0a <close>:
 b0a:	b8 15 00 00 00       	mov    $0x15,%eax
 b0f:	cd 40                	int    $0x40
 b11:	c3                   	ret    

00000b12 <kill>:
 b12:	b8 06 00 00 00       	mov    $0x6,%eax
 b17:	cd 40                	int    $0x40
 b19:	c3                   	ret    

00000b1a <exec>:
 b1a:	b8 07 00 00 00       	mov    $0x7,%eax
 b1f:	cd 40                	int    $0x40
 b21:	c3                   	ret    

00000b22 <open>:
 b22:	b8 0f 00 00 00       	mov    $0xf,%eax
 b27:	cd 40                	int    $0x40
 b29:	c3                   	ret    

00000b2a <mknod>:
 b2a:	b8 11 00 00 00       	mov    $0x11,%eax
 b2f:	cd 40                	int    $0x40
 b31:	c3                   	ret    

00000b32 <unlink>:
 b32:	b8 12 00 00 00       	mov    $0x12,%eax
 b37:	cd 40                	int    $0x40
 b39:	c3                   	ret    

00000b3a <fstat>:
 b3a:	b8 08 00 00 00       	mov    $0x8,%eax
 b3f:	cd 40                	int    $0x40
 b41:	c3                   	ret    

00000b42 <link>:
 b42:	b8 13 00 00 00       	mov    $0x13,%eax
 b47:	cd 40                	int    $0x40
 b49:	c3                   	ret    

00000b4a <mkdir>:
 b4a:	b8 14 00 00 00       	mov    $0x14,%eax
 b4f:	cd 40                	int    $0x40
 b51:	c3                   	ret    

00000b52 <chdir>:
 b52:	b8 09 00 00 00       	mov    $0x9,%eax
 b57:	cd 40                	int    $0x40
 b59:	c3                   	ret    

00000b5a <dup>:
 b5a:	b8 0a 00 00 00       	mov    $0xa,%eax
 b5f:	cd 40                	int    $0x40
 b61:	c3                   	ret    

00000b62 <getpid>:
 b62:	b8 0b 00 00 00       	mov    $0xb,%eax
 b67:	cd 40                	int    $0x40
 b69:	c3                   	ret    

00000b6a <sbrk>:
 b6a:	b8 0c 00 00 00       	mov    $0xc,%eax
 b6f:	cd 40                	int    $0x40
 b71:	c3                   	ret    

00000b72 <sleep>:
 b72:	b8 0d 00 00 00       	mov    $0xd,%eax
 b77:	cd 40                	int    $0x40
 b79:	c3                   	ret    

00000b7a <uptime>:
 b7a:	b8 0e 00 00 00       	mov    $0xe,%eax
 b7f:	cd 40                	int    $0x40
 b81:	c3                   	ret    
 b82:	66 90                	xchg   %ax,%ax
 b84:	66 90                	xchg   %ax,%ax
 b86:	66 90                	xchg   %ax,%ax
 b88:	66 90                	xchg   %ax,%ax
 b8a:	66 90                	xchg   %ax,%ax
 b8c:	66 90                	xchg   %ax,%ax
 b8e:	66 90                	xchg   %ax,%ax

00000b90 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 b90:	55                   	push   %ebp
 b91:	89 e5                	mov    %esp,%ebp
 b93:	57                   	push   %edi
 b94:	56                   	push   %esi
 b95:	53                   	push   %ebx
 b96:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 b99:	85 d2                	test   %edx,%edx
{
 b9b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 b9e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 ba0:	79 76                	jns    c18 <printint+0x88>
 ba2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 ba6:	74 70                	je     c18 <printint+0x88>
    x = -xx;
 ba8:	f7 d8                	neg    %eax
    neg = 1;
 baa:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 bb1:	31 f6                	xor    %esi,%esi
 bb3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 bb6:	eb 0a                	jmp    bc2 <printint+0x32>
 bb8:	90                   	nop
 bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 bc0:	89 fe                	mov    %edi,%esi
 bc2:	31 d2                	xor    %edx,%edx
 bc4:	8d 7e 01             	lea    0x1(%esi),%edi
 bc7:	f7 f1                	div    %ecx
 bc9:	0f b6 92 4c 10 00 00 	movzbl 0x104c(%edx),%edx
  }while((x /= base) != 0);
 bd0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 bd2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 bd5:	75 e9                	jne    bc0 <printint+0x30>
  if(neg)
 bd7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 bda:	85 c0                	test   %eax,%eax
 bdc:	74 08                	je     be6 <printint+0x56>
    buf[i++] = '-';
 bde:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 be3:	8d 7e 02             	lea    0x2(%esi),%edi
 be6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 bea:	8b 7d c0             	mov    -0x40(%ebp),%edi
 bed:	8d 76 00             	lea    0x0(%esi),%esi
 bf0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 bf3:	83 ec 04             	sub    $0x4,%esp
 bf6:	83 ee 01             	sub    $0x1,%esi
 bf9:	6a 01                	push   $0x1
 bfb:	53                   	push   %ebx
 bfc:	57                   	push   %edi
 bfd:	88 45 d7             	mov    %al,-0x29(%ebp)
 c00:	e8 fd fe ff ff       	call   b02 <write>

  while(--i >= 0)
 c05:	83 c4 10             	add    $0x10,%esp
 c08:	39 de                	cmp    %ebx,%esi
 c0a:	75 e4                	jne    bf0 <printint+0x60>
    putc(fd, buf[i]);
}
 c0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 c0f:	5b                   	pop    %ebx
 c10:	5e                   	pop    %esi
 c11:	5f                   	pop    %edi
 c12:	5d                   	pop    %ebp
 c13:	c3                   	ret    
 c14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 c18:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 c1f:	eb 90                	jmp    bb1 <printint+0x21>
 c21:	eb 0d                	jmp    c30 <printf>
 c23:	90                   	nop
 c24:	90                   	nop
 c25:	90                   	nop
 c26:	90                   	nop
 c27:	90                   	nop
 c28:	90                   	nop
 c29:	90                   	nop
 c2a:	90                   	nop
 c2b:	90                   	nop
 c2c:	90                   	nop
 c2d:	90                   	nop
 c2e:	90                   	nop
 c2f:	90                   	nop

00000c30 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 c30:	55                   	push   %ebp
 c31:	89 e5                	mov    %esp,%ebp
 c33:	57                   	push   %edi
 c34:	56                   	push   %esi
 c35:	53                   	push   %ebx
 c36:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 c39:	8b 75 0c             	mov    0xc(%ebp),%esi
 c3c:	0f b6 1e             	movzbl (%esi),%ebx
 c3f:	84 db                	test   %bl,%bl
 c41:	0f 84 b3 00 00 00    	je     cfa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 c47:	8d 45 10             	lea    0x10(%ebp),%eax
 c4a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 c4d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 c4f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 c52:	eb 2f                	jmp    c83 <printf+0x53>
 c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 c58:	83 f8 25             	cmp    $0x25,%eax
 c5b:	0f 84 a7 00 00 00    	je     d08 <printf+0xd8>
  write(fd, &c, 1);
 c61:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 c64:	83 ec 04             	sub    $0x4,%esp
 c67:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 c6a:	6a 01                	push   $0x1
 c6c:	50                   	push   %eax
 c6d:	ff 75 08             	pushl  0x8(%ebp)
 c70:	e8 8d fe ff ff       	call   b02 <write>
 c75:	83 c4 10             	add    $0x10,%esp
 c78:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 c7b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 c7f:	84 db                	test   %bl,%bl
 c81:	74 77                	je     cfa <printf+0xca>
    if(state == 0){
 c83:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 c85:	0f be cb             	movsbl %bl,%ecx
 c88:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 c8b:	74 cb                	je     c58 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 c8d:	83 ff 25             	cmp    $0x25,%edi
 c90:	75 e6                	jne    c78 <printf+0x48>
      if(c == 'd'){
 c92:	83 f8 64             	cmp    $0x64,%eax
 c95:	0f 84 05 01 00 00    	je     da0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 c9b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 ca1:	83 f9 70             	cmp    $0x70,%ecx
 ca4:	74 72                	je     d18 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 ca6:	83 f8 73             	cmp    $0x73,%eax
 ca9:	0f 84 99 00 00 00    	je     d48 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 caf:	83 f8 63             	cmp    $0x63,%eax
 cb2:	0f 84 08 01 00 00    	je     dc0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 cb8:	83 f8 25             	cmp    $0x25,%eax
 cbb:	0f 84 ef 00 00 00    	je     db0 <printf+0x180>
  write(fd, &c, 1);
 cc1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 cc4:	83 ec 04             	sub    $0x4,%esp
 cc7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 ccb:	6a 01                	push   $0x1
 ccd:	50                   	push   %eax
 cce:	ff 75 08             	pushl  0x8(%ebp)
 cd1:	e8 2c fe ff ff       	call   b02 <write>
 cd6:	83 c4 0c             	add    $0xc,%esp
 cd9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 cdc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 cdf:	6a 01                	push   $0x1
 ce1:	50                   	push   %eax
 ce2:	ff 75 08             	pushl  0x8(%ebp)
 ce5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 ce8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 cea:	e8 13 fe ff ff       	call   b02 <write>
  for(i = 0; fmt[i]; i++){
 cef:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 cf3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 cf6:	84 db                	test   %bl,%bl
 cf8:	75 89                	jne    c83 <printf+0x53>
    }
  }
}
 cfa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 cfd:	5b                   	pop    %ebx
 cfe:	5e                   	pop    %esi
 cff:	5f                   	pop    %edi
 d00:	5d                   	pop    %ebp
 d01:	c3                   	ret    
 d02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 d08:	bf 25 00 00 00       	mov    $0x25,%edi
 d0d:	e9 66 ff ff ff       	jmp    c78 <printf+0x48>
 d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 d18:	83 ec 0c             	sub    $0xc,%esp
 d1b:	b9 10 00 00 00       	mov    $0x10,%ecx
 d20:	6a 00                	push   $0x0
 d22:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 d25:	8b 45 08             	mov    0x8(%ebp),%eax
 d28:	8b 17                	mov    (%edi),%edx
 d2a:	e8 61 fe ff ff       	call   b90 <printint>
        ap++;
 d2f:	89 f8                	mov    %edi,%eax
 d31:	83 c4 10             	add    $0x10,%esp
      state = 0;
 d34:	31 ff                	xor    %edi,%edi
        ap++;
 d36:	83 c0 04             	add    $0x4,%eax
 d39:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 d3c:	e9 37 ff ff ff       	jmp    c78 <printf+0x48>
 d41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 d48:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 d4b:	8b 08                	mov    (%eax),%ecx
        ap++;
 d4d:	83 c0 04             	add    $0x4,%eax
 d50:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 d53:	85 c9                	test   %ecx,%ecx
 d55:	0f 84 8e 00 00 00    	je     de9 <printf+0x1b9>
        while(*s != 0){
 d5b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 d5e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 d60:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 d62:	84 c0                	test   %al,%al
 d64:	0f 84 0e ff ff ff    	je     c78 <printf+0x48>
 d6a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 d6d:	89 de                	mov    %ebx,%esi
 d6f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 d72:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 d75:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 d78:	83 ec 04             	sub    $0x4,%esp
          s++;
 d7b:	83 c6 01             	add    $0x1,%esi
 d7e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 d81:	6a 01                	push   $0x1
 d83:	57                   	push   %edi
 d84:	53                   	push   %ebx
 d85:	e8 78 fd ff ff       	call   b02 <write>
        while(*s != 0){
 d8a:	0f b6 06             	movzbl (%esi),%eax
 d8d:	83 c4 10             	add    $0x10,%esp
 d90:	84 c0                	test   %al,%al
 d92:	75 e4                	jne    d78 <printf+0x148>
 d94:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 d97:	31 ff                	xor    %edi,%edi
 d99:	e9 da fe ff ff       	jmp    c78 <printf+0x48>
 d9e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 da0:	83 ec 0c             	sub    $0xc,%esp
 da3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 da8:	6a 01                	push   $0x1
 daa:	e9 73 ff ff ff       	jmp    d22 <printf+0xf2>
 daf:	90                   	nop
  write(fd, &c, 1);
 db0:	83 ec 04             	sub    $0x4,%esp
 db3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 db6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 db9:	6a 01                	push   $0x1
 dbb:	e9 21 ff ff ff       	jmp    ce1 <printf+0xb1>
        putc(fd, *ap);
 dc0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 dc3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 dc6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 dc8:	6a 01                	push   $0x1
        ap++;
 dca:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 dcd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 dd0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 dd3:	50                   	push   %eax
 dd4:	ff 75 08             	pushl  0x8(%ebp)
 dd7:	e8 26 fd ff ff       	call   b02 <write>
        ap++;
 ddc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 ddf:	83 c4 10             	add    $0x10,%esp
      state = 0;
 de2:	31 ff                	xor    %edi,%edi
 de4:	e9 8f fe ff ff       	jmp    c78 <printf+0x48>
          s = "(null)";
 de9:	bb 43 10 00 00       	mov    $0x1043,%ebx
        while(*s != 0){
 dee:	b8 28 00 00 00       	mov    $0x28,%eax
 df3:	e9 72 ff ff ff       	jmp    d6a <printf+0x13a>
 df8:	66 90                	xchg   %ax,%ax
 dfa:	66 90                	xchg   %ax,%ax
 dfc:	66 90                	xchg   %ax,%ax
 dfe:	66 90                	xchg   %ax,%ax

00000e00 <free>:
 e00:	55                   	push   %ebp
 e01:	a1 40 14 00 00       	mov    0x1440,%eax
 e06:	89 e5                	mov    %esp,%ebp
 e08:	57                   	push   %edi
 e09:	56                   	push   %esi
 e0a:	53                   	push   %ebx
 e0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 e0e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 e11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 e18:	39 c8                	cmp    %ecx,%eax
 e1a:	8b 10                	mov    (%eax),%edx
 e1c:	73 32                	jae    e50 <free+0x50>
 e1e:	39 d1                	cmp    %edx,%ecx
 e20:	72 04                	jb     e26 <free+0x26>
 e22:	39 d0                	cmp    %edx,%eax
 e24:	72 32                	jb     e58 <free+0x58>
 e26:	8b 73 fc             	mov    -0x4(%ebx),%esi
 e29:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 e2c:	39 fa                	cmp    %edi,%edx
 e2e:	74 30                	je     e60 <free+0x60>
 e30:	89 53 f8             	mov    %edx,-0x8(%ebx)
 e33:	8b 50 04             	mov    0x4(%eax),%edx
 e36:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 e39:	39 f1                	cmp    %esi,%ecx
 e3b:	74 3a                	je     e77 <free+0x77>
 e3d:	89 08                	mov    %ecx,(%eax)
 e3f:	a3 40 14 00 00       	mov    %eax,0x1440
 e44:	5b                   	pop    %ebx
 e45:	5e                   	pop    %esi
 e46:	5f                   	pop    %edi
 e47:	5d                   	pop    %ebp
 e48:	c3                   	ret    
 e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 e50:	39 d0                	cmp    %edx,%eax
 e52:	72 04                	jb     e58 <free+0x58>
 e54:	39 d1                	cmp    %edx,%ecx
 e56:	72 ce                	jb     e26 <free+0x26>
 e58:	89 d0                	mov    %edx,%eax
 e5a:	eb bc                	jmp    e18 <free+0x18>
 e5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 e60:	03 72 04             	add    0x4(%edx),%esi
 e63:	89 73 fc             	mov    %esi,-0x4(%ebx)
 e66:	8b 10                	mov    (%eax),%edx
 e68:	8b 12                	mov    (%edx),%edx
 e6a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 e6d:	8b 50 04             	mov    0x4(%eax),%edx
 e70:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 e73:	39 f1                	cmp    %esi,%ecx
 e75:	75 c6                	jne    e3d <free+0x3d>
 e77:	03 53 fc             	add    -0x4(%ebx),%edx
 e7a:	a3 40 14 00 00       	mov    %eax,0x1440
 e7f:	89 50 04             	mov    %edx,0x4(%eax)
 e82:	8b 53 f8             	mov    -0x8(%ebx),%edx
 e85:	89 10                	mov    %edx,(%eax)
 e87:	5b                   	pop    %ebx
 e88:	5e                   	pop    %esi
 e89:	5f                   	pop    %edi
 e8a:	5d                   	pop    %ebp
 e8b:	c3                   	ret    
 e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e90 <malloc>:
 e90:	55                   	push   %ebp
 e91:	89 e5                	mov    %esp,%ebp
 e93:	57                   	push   %edi
 e94:	56                   	push   %esi
 e95:	53                   	push   %ebx
 e96:	83 ec 0c             	sub    $0xc,%esp
 e99:	8b 45 08             	mov    0x8(%ebp),%eax
 e9c:	8b 15 40 14 00 00    	mov    0x1440,%edx
 ea2:	8d 78 07             	lea    0x7(%eax),%edi
 ea5:	c1 ef 03             	shr    $0x3,%edi
 ea8:	83 c7 01             	add    $0x1,%edi
 eab:	85 d2                	test   %edx,%edx
 ead:	0f 84 9d 00 00 00    	je     f50 <malloc+0xc0>
 eb3:	8b 02                	mov    (%edx),%eax
 eb5:	8b 48 04             	mov    0x4(%eax),%ecx
 eb8:	39 cf                	cmp    %ecx,%edi
 eba:	76 6c                	jbe    f28 <malloc+0x98>
 ebc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 ec2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ec7:	0f 43 df             	cmovae %edi,%ebx
 eca:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 ed1:	eb 0e                	jmp    ee1 <malloc+0x51>
 ed3:	90                   	nop
 ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 ed8:	8b 02                	mov    (%edx),%eax
 eda:	8b 48 04             	mov    0x4(%eax),%ecx
 edd:	39 f9                	cmp    %edi,%ecx
 edf:	73 47                	jae    f28 <malloc+0x98>
 ee1:	39 05 40 14 00 00    	cmp    %eax,0x1440
 ee7:	89 c2                	mov    %eax,%edx
 ee9:	75 ed                	jne    ed8 <malloc+0x48>
 eeb:	83 ec 0c             	sub    $0xc,%esp
 eee:	56                   	push   %esi
 eef:	e8 76 fc ff ff       	call   b6a <sbrk>
 ef4:	83 c4 10             	add    $0x10,%esp
 ef7:	83 f8 ff             	cmp    $0xffffffff,%eax
 efa:	74 1c                	je     f18 <malloc+0x88>
 efc:	89 58 04             	mov    %ebx,0x4(%eax)
 eff:	83 ec 0c             	sub    $0xc,%esp
 f02:	83 c0 08             	add    $0x8,%eax
 f05:	50                   	push   %eax
 f06:	e8 f5 fe ff ff       	call   e00 <free>
 f0b:	8b 15 40 14 00 00    	mov    0x1440,%edx
 f11:	83 c4 10             	add    $0x10,%esp
 f14:	85 d2                	test   %edx,%edx
 f16:	75 c0                	jne    ed8 <malloc+0x48>
 f18:	8d 65 f4             	lea    -0xc(%ebp),%esp
 f1b:	31 c0                	xor    %eax,%eax
 f1d:	5b                   	pop    %ebx
 f1e:	5e                   	pop    %esi
 f1f:	5f                   	pop    %edi
 f20:	5d                   	pop    %ebp
 f21:	c3                   	ret    
 f22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 f28:	39 cf                	cmp    %ecx,%edi
 f2a:	74 54                	je     f80 <malloc+0xf0>
 f2c:	29 f9                	sub    %edi,%ecx
 f2e:	89 48 04             	mov    %ecx,0x4(%eax)
 f31:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 f34:	89 78 04             	mov    %edi,0x4(%eax)
 f37:	89 15 40 14 00 00    	mov    %edx,0x1440
 f3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 f40:	83 c0 08             	add    $0x8,%eax
 f43:	5b                   	pop    %ebx
 f44:	5e                   	pop    %esi
 f45:	5f                   	pop    %edi
 f46:	5d                   	pop    %ebp
 f47:	c3                   	ret    
 f48:	90                   	nop
 f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 f50:	c7 05 40 14 00 00 44 	movl   $0x1444,0x1440
 f57:	14 00 00 
 f5a:	c7 05 44 14 00 00 44 	movl   $0x1444,0x1444
 f61:	14 00 00 
 f64:	b8 44 14 00 00       	mov    $0x1444,%eax
 f69:	c7 05 48 14 00 00 00 	movl   $0x0,0x1448
 f70:	00 00 00 
 f73:	e9 44 ff ff ff       	jmp    ebc <malloc+0x2c>
 f78:	90                   	nop
 f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 f80:	8b 08                	mov    (%eax),%ecx
 f82:	89 0a                	mov    %ecx,(%edx)
 f84:	eb b1                	jmp    f37 <malloc+0xa7>
