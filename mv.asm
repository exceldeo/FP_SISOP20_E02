
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
  1d:	68 00 0c 00 00       	push   $0xc00
  22:	6a 02                	push   $0x2
  24:	e8 17 08 00 00       	call   840 <printf>
    exit();
  29:	e8 c4 06 00 00       	call   6f2 <exit>
  }else {
    if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
  2e:	83 ec 0c             	sub    $0xc,%esp
  31:	ff 73 04             	pushl  0x4(%ebx)
  34:	e8 c7 00 00 00       	call   100 <getfname>
  39:	5e                   	pop    %esi
  3a:	5a                   	pop    %edx
  3b:	68 13 0c 00 00       	push   $0xc13
  40:	50                   	push   %eax
  41:	e8 8a 04 00 00       	call   4d0 <strcmp>
  46:	83 c4 10             	add    $0x10,%esp
  49:	85 c0                	test   %eax,%eax
  4b:	74 15                	je     62 <main+0x62>
    else moveFile(argv[1],argv[2]);
  4d:	50                   	push   %eax
  4e:	50                   	push   %eax
  4f:	ff 73 08             	pushl  0x8(%ebx)
  52:	ff 73 04             	pushl  0x4(%ebx)
  55:	e8 46 01 00 00       	call   1a0 <moveFile>
  5a:	83 c4 10             	add    $0x10,%esp
  }
  
  exit();
  5d:	e8 90 06 00 00       	call   6f2 <exit>
    if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
  62:	83 ec 0c             	sub    $0xc,%esp
  65:	8b 73 08             	mov    0x8(%ebx),%esi
  68:	ff 73 04             	pushl  0x4(%ebx)
  6b:	e8 d0 00 00 00       	call   140 <nostar>
  70:	5a                   	pop    %edx
  71:	59                   	pop    %ecx
  72:	56                   	push   %esi
  73:	50                   	push   %eax
  74:	e8 37 02 00 00       	call   2b0 <moveAll>
  79:	83 c4 10             	add    $0x10,%esp
  7c:	eb df                	jmp    5d <main+0x5d>
  7e:	66 90                	xchg   %ax,%ax

00000080 <strgabung>:
char * strgabung(char * x,char * y){
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
	strcpy(str1,x); strcpy(str2,y);
  84:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
char * strgabung(char * x,char * y){
  87:	83 ec 7c             	sub    $0x7c,%esp
	strcpy(str1,x); strcpy(str2,y);
  8a:	ff 75 08             	pushl  0x8(%ebp)
  8d:	68 00 10 00 00       	push   $0x1000
  92:	e8 09 04 00 00       	call   4a0 <strcpy>
  97:	58                   	pop    %eax
  98:	5a                   	pop    %edx
  99:	ff 75 0c             	pushl  0xc(%ebp)
  9c:	53                   	push   %ebx
  9d:	e8 fe 03 00 00       	call   4a0 <strcpy>
    for(i=0; str1[i]!='\0'; ++i);
  a2:	83 c4 10             	add    $0x10,%esp
  a5:	31 c0                	xor    %eax,%eax
  a7:	80 3d 00 10 00 00 00 	cmpb   $0x0,0x1000
  ae:	74 0c                	je     bc <strgabung+0x3c>
  b0:	83 c0 01             	add    $0x1,%eax
  b3:	80 b8 00 10 00 00 00 	cmpb   $0x0,0x1000(%eax)
  ba:	75 f4                	jne    b0 <strgabung+0x30>
   for(j=0; str2[j]!='\0'; ++j, ++i)
  bc:	0f b6 55 94          	movzbl -0x6c(%ebp),%edx
  c0:	84 d2                	test   %dl,%dl
  c2:	74 1d                	je     e1 <strgabung+0x61>
  c4:	29 c3                	sub    %eax,%ebx
  c6:	89 d9                	mov    %ebx,%ecx
  c8:	90                   	nop
  c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      str1[i]=str2[j];
  d0:	88 90 00 10 00 00    	mov    %dl,0x1000(%eax)
   for(j=0; str2[j]!='\0'; ++j, ++i)
  d6:	83 c0 01             	add    $0x1,%eax
  d9:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
  dd:	84 d2                	test   %dl,%dl
  df:	75 ef                	jne    d0 <strgabung+0x50>
   str1[i]='\0';
  e1:	c6 80 00 10 00 00 00 	movb   $0x0,0x1000(%eax)
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	b8 00 10 00 00       	mov    $0x1000,%eax
  f0:	c9                   	leave  
  f1:	c3                   	ret    
  f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000100 <getfname>:
char * getfname(char * path){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	53                   	push   %ebx
 104:	83 ec 10             	sub    $0x10,%esp
 107:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
 10a:	53                   	push   %ebx
 10b:	e8 10 04 00 00       	call   520 <strlen>
 110:	01 d8                	add    %ebx,%eax
 112:	83 c4 10             	add    $0x10,%esp
 115:	80 38 2f             	cmpb   $0x2f,(%eax)
 118:	75 0e                	jne    128 <getfname+0x28>
 11a:	eb 10                	jmp    12c <getfname+0x2c>
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 120:	83 e8 01             	sub    $0x1,%eax
 123:	80 38 2f             	cmpb   $0x2f,(%eax)
 126:	74 04                	je     12c <getfname+0x2c>
 128:	39 c3                	cmp    %eax,%ebx
 12a:	76 f4                	jbe    120 <getfname+0x20>
    id++;
 12c:	83 c0 01             	add    $0x1,%eax
}
 12f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 132:	c9                   	leave  
 133:	c3                   	ret    
 134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 13a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000140 <nostar>:
char * nostar(char * inp){
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	53                   	push   %ebx
 144:	83 ec 0c             	sub    $0xc,%esp
 147:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy(str1,".");
 14a:	68 98 0b 00 00       	push   $0xb98
 14f:	68 00 10 00 00       	push   $0x1000
 154:	e8 47 03 00 00       	call   4a0 <strcpy>
	if(strlen(inp)==1) return str1;
 159:	89 1c 24             	mov    %ebx,(%esp)
 15c:	e8 bf 03 00 00       	call   520 <strlen>
 161:	83 c4 10             	add    $0x10,%esp
 164:	83 f8 01             	cmp    $0x1,%eax
 167:	74 24                	je     18d <nostar+0x4d>
	strcpy(str1,inp);
 169:	83 ec 08             	sub    $0x8,%esp
 16c:	53                   	push   %ebx
 16d:	68 00 10 00 00       	push   $0x1000
 172:	e8 29 03 00 00       	call   4a0 <strcpy>
	str1[strlen(str1)-2]='\0';
 177:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
 17e:	e8 9d 03 00 00       	call   520 <strlen>
 183:	83 c4 10             	add    $0x10,%esp
 186:	c6 80 fe 0f 00 00 00 	movb   $0x0,0xffe(%eax)
}
 18d:	b8 00 10 00 00       	mov    $0x1000,%eax
 192:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 195:	c9                   	leave  
 196:	c3                   	ret    
 197:	89 f6                	mov    %esi,%esi
 199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001a0 <moveFile>:
void moveFile(char * src, char * dst){
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	57                   	push   %edi
 1a4:	56                   	push   %esi
 1a5:	53                   	push   %ebx
 1a6:	83 ec 34             	sub    $0x34,%esp
 1a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1ac:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(dst, 0)) < 0);
 1af:	6a 00                	push   $0x0
 1b1:	53                   	push   %ebx
 1b2:	e8 7b 05 00 00       	call   732 <open>
 1b7:	83 c4 10             	add    $0x10,%esp
 1ba:	85 c0                	test   %eax,%eax
 1bc:	89 c6                	mov    %eax,%esi
 1be:	78 1f                	js     1df <moveFile+0x3f>
	  if(fstat(fd, &st) < 0){
 1c0:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 1c3:	83 ec 08             	sub    $0x8,%esp
 1c6:	50                   	push   %eax
 1c7:	56                   	push   %esi
 1c8:	e8 7d 05 00 00       	call   74a <fstat>
 1cd:	83 c4 10             	add    $0x10,%esp
 1d0:	85 c0                	test   %eax,%eax
 1d2:	0f 88 a8 00 00 00    	js     280 <moveFile+0xe0>
      if(st.type == T_DIR){
 1d8:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
 1dd:	74 51                	je     230 <moveFile+0x90>
  close(fd);
 1df:	83 ec 0c             	sub    $0xc,%esp
 1e2:	56                   	push   %esi
 1e3:	e8 32 05 00 00       	call   71a <close>
    if ((link(src, dst) < 0) || (unlink(src) < 0))
 1e8:	58                   	pop    %eax
 1e9:	5a                   	pop    %edx
 1ea:	53                   	push   %ebx
 1eb:	57                   	push   %edi
 1ec:	e8 61 05 00 00       	call   752 <link>
 1f1:	83 c4 10             	add    $0x10,%esp
 1f4:	85 c0                	test   %eax,%eax
 1f6:	78 18                	js     210 <moveFile+0x70>
 1f8:	83 ec 0c             	sub    $0xc,%esp
 1fb:	57                   	push   %edi
 1fc:	e8 41 05 00 00       	call   742 <unlink>
 201:	83 c4 10             	add    $0x10,%esp
 204:	85 c0                	test   %eax,%eax
 206:	78 08                	js     210 <moveFile+0x70>
}
 208:	8d 65 f4             	lea    -0xc(%ebp),%esp
 20b:	5b                   	pop    %ebx
 20c:	5e                   	pop    %esi
 20d:	5f                   	pop    %edi
 20e:	5d                   	pop    %ebp
 20f:	c3                   	ret    
    printf(2, "mv %s to %s failed\n", src, dst);
 210:	53                   	push   %ebx
 211:	57                   	push   %edi
 212:	68 ab 0b 00 00       	push   $0xbab
 217:	6a 02                	push   $0x2
 219:	e8 22 06 00 00       	call   840 <printf>
 21e:	83 c4 10             	add    $0x10,%esp
}
 221:	8d 65 f4             	lea    -0xc(%ebp),%esp
 224:	5b                   	pop    %ebx
 225:	5e                   	pop    %esi
 226:	5f                   	pop    %edi
 227:	5d                   	pop    %ebp
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            p = dst+strlen(dst)-1;
 230:	83 ec 0c             	sub    $0xc,%esp
 233:	53                   	push   %ebx
 234:	e8 e7 02 00 00       	call   520 <strlen>
            if(*p != '/'){
 239:	83 c4 10             	add    $0x10,%esp
 23c:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 241:	74 13                	je     256 <moveFile+0xb6>
            dst = strgabung(dst,"/");
 243:	83 ec 08             	sub    $0x8,%esp
 246:	68 a9 0b 00 00       	push   $0xba9
 24b:	53                   	push   %ebx
 24c:	e8 2f fe ff ff       	call   80 <strgabung>
 251:	83 c4 10             	add    $0x10,%esp
 254:	89 c3                	mov    %eax,%ebx
	  fname = getfname(src);
 256:	83 ec 0c             	sub    $0xc,%esp
 259:	57                   	push   %edi
 25a:	e8 a1 fe ff ff       	call   100 <getfname>
      fname = strgabung(dst,fname);
 25f:	59                   	pop    %ecx
 260:	5a                   	pop    %edx
 261:	50                   	push   %eax
 262:	53                   	push   %ebx
 263:	e8 18 fe ff ff       	call   80 <strgabung>
	  strcpy(dst,fname);
 268:	59                   	pop    %ecx
 269:	5a                   	pop    %edx
 26a:	50                   	push   %eax
 26b:	53                   	push   %ebx
 26c:	e8 2f 02 00 00       	call   4a0 <strcpy>
 271:	83 c4 10             	add    $0x10,%esp
 274:	e9 66 ff ff ff       	jmp    1df <moveFile+0x3f>
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	      printf(2,"mv: can't stat");
 280:	83 ec 08             	sub    $0x8,%esp
 283:	68 9a 0b 00 00       	push   $0xb9a
 288:	6a 02                	push   $0x2
 28a:	e8 b1 05 00 00       	call   840 <printf>
	      close(fd);
 28f:	89 34 24             	mov    %esi,(%esp)
 292:	e8 83 04 00 00       	call   71a <close>
  	      return;
 297:	83 c4 10             	add    $0x10,%esp
}
 29a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29d:	5b                   	pop    %ebx
 29e:	5e                   	pop    %esi
 29f:	5f                   	pop    %edi
 2a0:	5d                   	pop    %ebp
 2a1:	c3                   	ret    
 2a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002b0 <moveAll>:
moveAll(char *path, char *dst) {
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
 2b5:	53                   	push   %ebx
	strcpy(tempcpa,dst);
 2b6:	8d bd 20 ff ff ff    	lea    -0xe0(%ebp),%edi
moveAll(char *path, char *dst) {
 2bc:	81 ec 14 01 00 00    	sub    $0x114,%esp
	strcpy(tempcpa,dst);
 2c2:	ff 75 0c             	pushl  0xc(%ebp)
 2c5:	57                   	push   %edi
 2c6:	e8 d5 01 00 00       	call   4a0 <strcpy>
  if((fd = open(path, 0)) < 0){
 2cb:	58                   	pop    %eax
 2cc:	5a                   	pop    %edx
 2cd:	6a 00                	push   $0x0
 2cf:	ff 75 08             	pushl  0x8(%ebp)
 2d2:	e8 5b 04 00 00       	call   732 <open>
 2d7:	83 c4 10             	add    $0x10,%esp
 2da:	85 c0                	test   %eax,%eax
 2dc:	78 4a                	js     328 <moveAll+0x78>
  if(fstat(fd, &st) < 0){
 2de:	8d b5 0c ff ff ff    	lea    -0xf4(%ebp),%esi
 2e4:	83 ec 08             	sub    $0x8,%esp
 2e7:	89 c3                	mov    %eax,%ebx
 2e9:	56                   	push   %esi
 2ea:	50                   	push   %eax
 2eb:	e8 5a 04 00 00       	call   74a <fstat>
 2f0:	83 c4 10             	add    $0x10,%esp
 2f3:	85 c0                	test   %eax,%eax
 2f5:	0f 88 95 00 00 00    	js     390 <moveAll+0xe0>
  switch(st.type){
 2fb:	0f b7 85 0c ff ff ff 	movzwl -0xf4(%ebp),%eax
 302:	66 83 f8 01          	cmp    $0x1,%ax
 306:	74 58                	je     360 <moveAll+0xb0>
 308:	66 83 f8 02          	cmp    $0x2,%ax
 30c:	74 3a                	je     348 <moveAll+0x98>
  close(fd);
 30e:	83 ec 0c             	sub    $0xc,%esp
 311:	53                   	push   %ebx
 312:	e8 03 04 00 00       	call   71a <close>
 317:	83 c4 10             	add    $0x10,%esp
}
 31a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31d:	5b                   	pop    %ebx
 31e:	5e                   	pop    %esi
 31f:	5f                   	pop    %edi
 320:	5d                   	pop    %ebp
 321:	c3                   	ret    
 322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 328:	83 ec 04             	sub    $0x4,%esp
 32b:	ff 75 08             	pushl  0x8(%ebp)
 32e:	68 bf 0b 00 00       	push   $0xbbf
 333:	6a 02                	push   $0x2
 335:	e8 06 05 00 00       	call   840 <printf>
    return;
 33a:	83 c4 10             	add    $0x10,%esp
}
 33d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 340:	5b                   	pop    %ebx
 341:	5e                   	pop    %esi
 342:	5f                   	pop    %edi
 343:	5d                   	pop    %ebp
 344:	c3                   	ret    
 345:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1,"Fail\n");
 348:	83 ec 08             	sub    $0x8,%esp
 34b:	68 e7 0b 00 00       	push   $0xbe7
 350:	6a 01                	push   $0x1
 352:	e8 e9 04 00 00       	call   840 <printf>
    break;
 357:	83 c4 10             	add    $0x10,%esp
 35a:	eb b2                	jmp    30e <moveAll+0x5e>
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
 360:	83 ec 0c             	sub    $0xc,%esp
 363:	ff 75 08             	pushl  0x8(%ebp)
 366:	e8 b5 01 00 00       	call   520 <strlen>
 36b:	83 c0 10             	add    $0x10,%eax
 36e:	83 c4 10             	add    $0x10,%esp
 371:	83 f8 64             	cmp    $0x64,%eax
 374:	76 42                	jbe    3b8 <moveAll+0x108>
      printf(1, "ls: path too long\n");
 376:	83 ec 08             	sub    $0x8,%esp
 379:	68 ed 0b 00 00       	push   $0xbed
 37e:	6a 01                	push   $0x1
 380:	e8 bb 04 00 00       	call   840 <printf>
      break;
 385:	83 c4 10             	add    $0x10,%esp
 388:	eb 84                	jmp    30e <moveAll+0x5e>
 38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "ls: cannot stat %s\n", path);
 390:	83 ec 04             	sub    $0x4,%esp
 393:	ff 75 08             	pushl  0x8(%ebp)
 396:	68 d3 0b 00 00       	push   $0xbd3
 39b:	6a 02                	push   $0x2
 39d:	e8 9e 04 00 00       	call   840 <printf>
    close(fd);
 3a2:	89 1c 24             	mov    %ebx,(%esp)
 3a5:	e8 70 03 00 00       	call   71a <close>
    return;
 3aa:	83 c4 10             	add    $0x10,%esp
}
 3ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3b0:	5b                   	pop    %ebx
 3b1:	5e                   	pop    %esi
 3b2:	5f                   	pop    %edi
 3b3:	5d                   	pop    %ebp
 3b4:	c3                   	ret    
 3b5:	8d 76 00             	lea    0x0(%esi),%esi
    strcpy(baf, path);
 3b8:	8d 45 84             	lea    -0x7c(%ebp),%eax
 3bb:	83 ec 08             	sub    $0x8,%esp
 3be:	ff 75 08             	pushl  0x8(%ebp)
 3c1:	50                   	push   %eax
 3c2:	e8 d9 00 00 00       	call   4a0 <strcpy>
    p = baf+strlen(baf);
 3c7:	8d 45 84             	lea    -0x7c(%ebp),%eax
 3ca:	89 04 24             	mov    %eax,(%esp)
 3cd:	e8 4e 01 00 00       	call   520 <strlen>
 3d2:	8d 55 84             	lea    -0x7c(%ebp),%edx
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 3d5:	83 c4 10             	add    $0x10,%esp
    p = baf+strlen(baf);
 3d8:	01 d0                	add    %edx,%eax
    *p++ = '/';
 3da:	8d 48 01             	lea    0x1(%eax),%ecx
    p = baf+strlen(baf);
 3dd:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
    *p++ = '/';
 3e3:	c6 00 2f             	movb   $0x2f,(%eax)
 3e6:	89 8d f0 fe ff ff    	mov    %ecx,-0x110(%ebp)
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 3f0:	8d 85 fc fe ff ff    	lea    -0x104(%ebp),%eax
 3f6:	83 ec 04             	sub    $0x4,%esp
 3f9:	6a 10                	push   $0x10
 3fb:	50                   	push   %eax
 3fc:	53                   	push   %ebx
 3fd:	e8 08 03 00 00       	call   70a <read>
 402:	83 c4 10             	add    $0x10,%esp
 405:	83 f8 10             	cmp    $0x10,%eax
 408:	0f 85 00 ff ff ff    	jne    30e <moveAll+0x5e>
      if(de.inum == 0){
 40e:	66 83 bd fc fe ff ff 	cmpw   $0x0,-0x104(%ebp)
 415:	00 
 416:	74 d8                	je     3f0 <moveAll+0x140>
      memmove(p, de.name, DIRSIZ);
 418:	8d 85 fe fe ff ff    	lea    -0x102(%ebp),%eax
 41e:	83 ec 04             	sub    $0x4,%esp
 421:	6a 0e                	push   $0xe
 423:	50                   	push   %eax
 424:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 42a:	e8 91 02 00 00       	call   6c0 <memmove>
      p[DIRSIZ] = 0;
 42f:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 435:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(baf, &st) < 0){
 439:	59                   	pop    %ecx
 43a:	58                   	pop    %eax
 43b:	8d 45 84             	lea    -0x7c(%ebp),%eax
 43e:	56                   	push   %esi
 43f:	50                   	push   %eax
 440:	e8 eb 01 00 00       	call   630 <stat>
 445:	83 c4 10             	add    $0x10,%esp
 448:	85 c0                	test   %eax,%eax
 44a:	78 34                	js     480 <moveAll+0x1d0>
      if(st.type == T_FILE){
 44c:	66 83 bd 0c ff ff ff 	cmpw   $0x2,-0xf4(%ebp)
 453:	02 
 454:	75 9a                	jne    3f0 <moveAll+0x140>
	strcpy(dst,tempcpa);
 456:	83 ec 08             	sub    $0x8,%esp
 459:	57                   	push   %edi
 45a:	ff 75 0c             	pushl  0xc(%ebp)
 45d:	e8 3e 00 00 00       	call   4a0 <strcpy>
        moveFile(baf,dst);
 462:	58                   	pop    %eax
 463:	8d 45 84             	lea    -0x7c(%ebp),%eax
 466:	5a                   	pop    %edx
 467:	ff 75 0c             	pushl  0xc(%ebp)
 46a:	50                   	push   %eax
 46b:	e8 30 fd ff ff       	call   1a0 <moveFile>
 470:	83 c4 10             	add    $0x10,%esp
 473:	e9 78 ff ff ff       	jmp    3f0 <moveAll+0x140>
 478:	90                   	nop
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "ls: cannot stat %s\n", baf);
 480:	8d 45 84             	lea    -0x7c(%ebp),%eax
 483:	83 ec 04             	sub    $0x4,%esp
 486:	50                   	push   %eax
 487:	68 d3 0b 00 00       	push   $0xbd3
 48c:	6a 01                	push   $0x1
 48e:	e8 ad 03 00 00       	call   840 <printf>
        continue;
 493:	83 c4 10             	add    $0x10,%esp
 496:	e9 55 ff ff ff       	jmp    3f0 <moveAll+0x140>
 49b:	66 90                	xchg   %ax,%ax
 49d:	66 90                	xchg   %ax,%ax
 49f:	90                   	nop

000004a0 <strcpy>:
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 45 08             	mov    0x8(%ebp),%eax
 4a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4aa:	89 c2                	mov    %eax,%edx
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b0:	83 c1 01             	add    $0x1,%ecx
 4b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 4b7:	83 c2 01             	add    $0x1,%edx
 4ba:	84 db                	test   %bl,%bl
 4bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 4bf:	75 ef                	jne    4b0 <strcpy+0x10>
 4c1:	5b                   	pop    %ebx
 4c2:	5d                   	pop    %ebp
 4c3:	c3                   	ret    
 4c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000004d0 <strcmp>:
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
 4d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 4da:	0f b6 02             	movzbl (%edx),%eax
 4dd:	0f b6 19             	movzbl (%ecx),%ebx
 4e0:	84 c0                	test   %al,%al
 4e2:	75 1c                	jne    500 <strcmp+0x30>
 4e4:	eb 2a                	jmp    510 <strcmp+0x40>
 4e6:	8d 76 00             	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 4f0:	83 c2 01             	add    $0x1,%edx
 4f3:	0f b6 02             	movzbl (%edx),%eax
 4f6:	83 c1 01             	add    $0x1,%ecx
 4f9:	0f b6 19             	movzbl (%ecx),%ebx
 4fc:	84 c0                	test   %al,%al
 4fe:	74 10                	je     510 <strcmp+0x40>
 500:	38 d8                	cmp    %bl,%al
 502:	74 ec                	je     4f0 <strcmp+0x20>
 504:	29 d8                	sub    %ebx,%eax
 506:	5b                   	pop    %ebx
 507:	5d                   	pop    %ebp
 508:	c3                   	ret    
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 510:	31 c0                	xor    %eax,%eax
 512:	29 d8                	sub    %ebx,%eax
 514:	5b                   	pop    %ebx
 515:	5d                   	pop    %ebp
 516:	c3                   	ret    
 517:	89 f6                	mov    %esi,%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <strlen>:
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	8b 4d 08             	mov    0x8(%ebp),%ecx
 526:	80 39 00             	cmpb   $0x0,(%ecx)
 529:	74 15                	je     540 <strlen+0x20>
 52b:	31 d2                	xor    %edx,%edx
 52d:	8d 76 00             	lea    0x0(%esi),%esi
 530:	83 c2 01             	add    $0x1,%edx
 533:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 537:	89 d0                	mov    %edx,%eax
 539:	75 f5                	jne    530 <strlen+0x10>
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
 540:	31 c0                	xor    %eax,%eax
 542:	5d                   	pop    %ebp
 543:	c3                   	ret    
 544:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 54a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000550 <memset>:
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	8b 55 08             	mov    0x8(%ebp),%edx
 557:	8b 4d 10             	mov    0x10(%ebp),%ecx
 55a:	8b 45 0c             	mov    0xc(%ebp),%eax
 55d:	89 d7                	mov    %edx,%edi
 55f:	fc                   	cld    
 560:	f3 aa                	rep stos %al,%es:(%edi)
 562:	89 d0                	mov    %edx,%eax
 564:	5f                   	pop    %edi
 565:	5d                   	pop    %ebp
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <strchr>:
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	53                   	push   %ebx
 574:	8b 45 08             	mov    0x8(%ebp),%eax
 577:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 57a:	0f b6 10             	movzbl (%eax),%edx
 57d:	84 d2                	test   %dl,%dl
 57f:	74 1d                	je     59e <strchr+0x2e>
 581:	38 d3                	cmp    %dl,%bl
 583:	89 d9                	mov    %ebx,%ecx
 585:	75 0d                	jne    594 <strchr+0x24>
 587:	eb 17                	jmp    5a0 <strchr+0x30>
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 590:	38 ca                	cmp    %cl,%dl
 592:	74 0c                	je     5a0 <strchr+0x30>
 594:	83 c0 01             	add    $0x1,%eax
 597:	0f b6 10             	movzbl (%eax),%edx
 59a:	84 d2                	test   %dl,%dl
 59c:	75 f2                	jne    590 <strchr+0x20>
 59e:	31 c0                	xor    %eax,%eax
 5a0:	5b                   	pop    %ebx
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <gets>:
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	31 f6                	xor    %esi,%esi
 5b8:	89 f3                	mov    %esi,%ebx
 5ba:	83 ec 1c             	sub    $0x1c,%esp
 5bd:	8b 7d 08             	mov    0x8(%ebp),%edi
 5c0:	eb 2f                	jmp    5f1 <gets+0x41>
 5c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5c8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5cb:	83 ec 04             	sub    $0x4,%esp
 5ce:	6a 01                	push   $0x1
 5d0:	50                   	push   %eax
 5d1:	6a 00                	push   $0x0
 5d3:	e8 32 01 00 00       	call   70a <read>
 5d8:	83 c4 10             	add    $0x10,%esp
 5db:	85 c0                	test   %eax,%eax
 5dd:	7e 1c                	jle    5fb <gets+0x4b>
 5df:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5e3:	83 c7 01             	add    $0x1,%edi
 5e6:	88 47 ff             	mov    %al,-0x1(%edi)
 5e9:	3c 0a                	cmp    $0xa,%al
 5eb:	74 23                	je     610 <gets+0x60>
 5ed:	3c 0d                	cmp    $0xd,%al
 5ef:	74 1f                	je     610 <gets+0x60>
 5f1:	83 c3 01             	add    $0x1,%ebx
 5f4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5f7:	89 fe                	mov    %edi,%esi
 5f9:	7c cd                	jl     5c8 <gets+0x18>
 5fb:	89 f3                	mov    %esi,%ebx
 5fd:	8b 45 08             	mov    0x8(%ebp),%eax
 600:	c6 03 00             	movb   $0x0,(%ebx)
 603:	8d 65 f4             	lea    -0xc(%ebp),%esp
 606:	5b                   	pop    %ebx
 607:	5e                   	pop    %esi
 608:	5f                   	pop    %edi
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret    
 60b:	90                   	nop
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 610:	8b 75 08             	mov    0x8(%ebp),%esi
 613:	8b 45 08             	mov    0x8(%ebp),%eax
 616:	01 de                	add    %ebx,%esi
 618:	89 f3                	mov    %esi,%ebx
 61a:	c6 03 00             	movb   $0x0,(%ebx)
 61d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 620:	5b                   	pop    %ebx
 621:	5e                   	pop    %esi
 622:	5f                   	pop    %edi
 623:	5d                   	pop    %ebp
 624:	c3                   	ret    
 625:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000630 <stat>:
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	56                   	push   %esi
 634:	53                   	push   %ebx
 635:	83 ec 08             	sub    $0x8,%esp
 638:	6a 00                	push   $0x0
 63a:	ff 75 08             	pushl  0x8(%ebp)
 63d:	e8 f0 00 00 00       	call   732 <open>
 642:	83 c4 10             	add    $0x10,%esp
 645:	85 c0                	test   %eax,%eax
 647:	78 27                	js     670 <stat+0x40>
 649:	83 ec 08             	sub    $0x8,%esp
 64c:	ff 75 0c             	pushl  0xc(%ebp)
 64f:	89 c3                	mov    %eax,%ebx
 651:	50                   	push   %eax
 652:	e8 f3 00 00 00       	call   74a <fstat>
 657:	89 1c 24             	mov    %ebx,(%esp)
 65a:	89 c6                	mov    %eax,%esi
 65c:	e8 b9 00 00 00       	call   71a <close>
 661:	83 c4 10             	add    $0x10,%esp
 664:	8d 65 f8             	lea    -0x8(%ebp),%esp
 667:	89 f0                	mov    %esi,%eax
 669:	5b                   	pop    %ebx
 66a:	5e                   	pop    %esi
 66b:	5d                   	pop    %ebp
 66c:	c3                   	ret    
 66d:	8d 76 00             	lea    0x0(%esi),%esi
 670:	be ff ff ff ff       	mov    $0xffffffff,%esi
 675:	eb ed                	jmp    664 <stat+0x34>
 677:	89 f6                	mov    %esi,%esi
 679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000680 <atoi>:
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	53                   	push   %ebx
 684:	8b 4d 08             	mov    0x8(%ebp),%ecx
 687:	0f be 11             	movsbl (%ecx),%edx
 68a:	8d 42 d0             	lea    -0x30(%edx),%eax
 68d:	3c 09                	cmp    $0x9,%al
 68f:	b8 00 00 00 00       	mov    $0x0,%eax
 694:	77 1f                	ja     6b5 <atoi+0x35>
 696:	8d 76 00             	lea    0x0(%esi),%esi
 699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 6a0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 6a3:	83 c1 01             	add    $0x1,%ecx
 6a6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 6aa:	0f be 11             	movsbl (%ecx),%edx
 6ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 6b0:	80 fb 09             	cmp    $0x9,%bl
 6b3:	76 eb                	jbe    6a0 <atoi+0x20>
 6b5:	5b                   	pop    %ebx
 6b6:	5d                   	pop    %ebp
 6b7:	c3                   	ret    
 6b8:	90                   	nop
 6b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006c0 <memmove>:
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
 6c5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 6c8:	8b 45 08             	mov    0x8(%ebp),%eax
 6cb:	8b 75 0c             	mov    0xc(%ebp),%esi
 6ce:	85 db                	test   %ebx,%ebx
 6d0:	7e 14                	jle    6e6 <memmove+0x26>
 6d2:	31 d2                	xor    %edx,%edx
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 6dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 6df:	83 c2 01             	add    $0x1,%edx
 6e2:	39 d3                	cmp    %edx,%ebx
 6e4:	75 f2                	jne    6d8 <memmove+0x18>
 6e6:	5b                   	pop    %ebx
 6e7:	5e                   	pop    %esi
 6e8:	5d                   	pop    %ebp
 6e9:	c3                   	ret    

000006ea <fork>:
 6ea:	b8 01 00 00 00       	mov    $0x1,%eax
 6ef:	cd 40                	int    $0x40
 6f1:	c3                   	ret    

000006f2 <exit>:
 6f2:	b8 02 00 00 00       	mov    $0x2,%eax
 6f7:	cd 40                	int    $0x40
 6f9:	c3                   	ret    

000006fa <wait>:
 6fa:	b8 03 00 00 00       	mov    $0x3,%eax
 6ff:	cd 40                	int    $0x40
 701:	c3                   	ret    

00000702 <pipe>:
 702:	b8 04 00 00 00       	mov    $0x4,%eax
 707:	cd 40                	int    $0x40
 709:	c3                   	ret    

0000070a <read>:
 70a:	b8 05 00 00 00       	mov    $0x5,%eax
 70f:	cd 40                	int    $0x40
 711:	c3                   	ret    

00000712 <write>:
 712:	b8 10 00 00 00       	mov    $0x10,%eax
 717:	cd 40                	int    $0x40
 719:	c3                   	ret    

0000071a <close>:
 71a:	b8 15 00 00 00       	mov    $0x15,%eax
 71f:	cd 40                	int    $0x40
 721:	c3                   	ret    

00000722 <kill>:
 722:	b8 06 00 00 00       	mov    $0x6,%eax
 727:	cd 40                	int    $0x40
 729:	c3                   	ret    

0000072a <exec>:
 72a:	b8 07 00 00 00       	mov    $0x7,%eax
 72f:	cd 40                	int    $0x40
 731:	c3                   	ret    

00000732 <open>:
 732:	b8 0f 00 00 00       	mov    $0xf,%eax
 737:	cd 40                	int    $0x40
 739:	c3                   	ret    

0000073a <mknod>:
 73a:	b8 11 00 00 00       	mov    $0x11,%eax
 73f:	cd 40                	int    $0x40
 741:	c3                   	ret    

00000742 <unlink>:
 742:	b8 12 00 00 00       	mov    $0x12,%eax
 747:	cd 40                	int    $0x40
 749:	c3                   	ret    

0000074a <fstat>:
 74a:	b8 08 00 00 00       	mov    $0x8,%eax
 74f:	cd 40                	int    $0x40
 751:	c3                   	ret    

00000752 <link>:
 752:	b8 13 00 00 00       	mov    $0x13,%eax
 757:	cd 40                	int    $0x40
 759:	c3                   	ret    

0000075a <mkdir>:
 75a:	b8 14 00 00 00       	mov    $0x14,%eax
 75f:	cd 40                	int    $0x40
 761:	c3                   	ret    

00000762 <chdir>:
 762:	b8 09 00 00 00       	mov    $0x9,%eax
 767:	cd 40                	int    $0x40
 769:	c3                   	ret    

0000076a <dup>:
 76a:	b8 0a 00 00 00       	mov    $0xa,%eax
 76f:	cd 40                	int    $0x40
 771:	c3                   	ret    

00000772 <getpid>:
 772:	b8 0b 00 00 00       	mov    $0xb,%eax
 777:	cd 40                	int    $0x40
 779:	c3                   	ret    

0000077a <sbrk>:
 77a:	b8 0c 00 00 00       	mov    $0xc,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    

00000782 <sleep>:
 782:	b8 0d 00 00 00       	mov    $0xd,%eax
 787:	cd 40                	int    $0x40
 789:	c3                   	ret    

0000078a <uptime>:
 78a:	b8 0e 00 00 00       	mov    $0xe,%eax
 78f:	cd 40                	int    $0x40
 791:	c3                   	ret    
 792:	66 90                	xchg   %ax,%ax
 794:	66 90                	xchg   %ax,%ax
 796:	66 90                	xchg   %ax,%ax
 798:	66 90                	xchg   %ax,%ax
 79a:	66 90                	xchg   %ax,%ax
 79c:	66 90                	xchg   %ax,%ax
 79e:	66 90                	xchg   %ax,%ax

000007a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 7a9:	85 d2                	test   %edx,%edx
{
 7ab:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 7ae:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 7b0:	79 76                	jns    828 <printint+0x88>
 7b2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7b6:	74 70                	je     828 <printint+0x88>
    x = -xx;
 7b8:	f7 d8                	neg    %eax
    neg = 1;
 7ba:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 7c1:	31 f6                	xor    %esi,%esi
 7c3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 7c6:	eb 0a                	jmp    7d2 <printint+0x32>
 7c8:	90                   	nop
 7c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 7d0:	89 fe                	mov    %edi,%esi
 7d2:	31 d2                	xor    %edx,%edx
 7d4:	8d 7e 01             	lea    0x1(%esi),%edi
 7d7:	f7 f1                	div    %ecx
 7d9:	0f b6 92 1c 0c 00 00 	movzbl 0xc1c(%edx),%edx
  }while((x /= base) != 0);
 7e0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 7e2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 7e5:	75 e9                	jne    7d0 <printint+0x30>
  if(neg)
 7e7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 7ea:	85 c0                	test   %eax,%eax
 7ec:	74 08                	je     7f6 <printint+0x56>
    buf[i++] = '-';
 7ee:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 7f3:	8d 7e 02             	lea    0x2(%esi),%edi
 7f6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 7fa:	8b 7d c0             	mov    -0x40(%ebp),%edi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
 800:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 803:	83 ec 04             	sub    $0x4,%esp
 806:	83 ee 01             	sub    $0x1,%esi
 809:	6a 01                	push   $0x1
 80b:	53                   	push   %ebx
 80c:	57                   	push   %edi
 80d:	88 45 d7             	mov    %al,-0x29(%ebp)
 810:	e8 fd fe ff ff       	call   712 <write>

  while(--i >= 0)
 815:	83 c4 10             	add    $0x10,%esp
 818:	39 de                	cmp    %ebx,%esi
 81a:	75 e4                	jne    800 <printint+0x60>
    putc(fd, buf[i]);
}
 81c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 81f:	5b                   	pop    %ebx
 820:	5e                   	pop    %esi
 821:	5f                   	pop    %edi
 822:	5d                   	pop    %ebp
 823:	c3                   	ret    
 824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 828:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 82f:	eb 90                	jmp    7c1 <printint+0x21>
 831:	eb 0d                	jmp    840 <printf>
 833:	90                   	nop
 834:	90                   	nop
 835:	90                   	nop
 836:	90                   	nop
 837:	90                   	nop
 838:	90                   	nop
 839:	90                   	nop
 83a:	90                   	nop
 83b:	90                   	nop
 83c:	90                   	nop
 83d:	90                   	nop
 83e:	90                   	nop
 83f:	90                   	nop

00000840 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	56                   	push   %esi
 845:	53                   	push   %ebx
 846:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 849:	8b 75 0c             	mov    0xc(%ebp),%esi
 84c:	0f b6 1e             	movzbl (%esi),%ebx
 84f:	84 db                	test   %bl,%bl
 851:	0f 84 b3 00 00 00    	je     90a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 857:	8d 45 10             	lea    0x10(%ebp),%eax
 85a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 85d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 85f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 862:	eb 2f                	jmp    893 <printf+0x53>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	0f 84 a7 00 00 00    	je     918 <printf+0xd8>
  write(fd, &c, 1);
 871:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 874:	83 ec 04             	sub    $0x4,%esp
 877:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 87a:	6a 01                	push   $0x1
 87c:	50                   	push   %eax
 87d:	ff 75 08             	pushl  0x8(%ebp)
 880:	e8 8d fe ff ff       	call   712 <write>
 885:	83 c4 10             	add    $0x10,%esp
 888:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 88b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 88f:	84 db                	test   %bl,%bl
 891:	74 77                	je     90a <printf+0xca>
    if(state == 0){
 893:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 895:	0f be cb             	movsbl %bl,%ecx
 898:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 89b:	74 cb                	je     868 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 89d:	83 ff 25             	cmp    $0x25,%edi
 8a0:	75 e6                	jne    888 <printf+0x48>
      if(c == 'd'){
 8a2:	83 f8 64             	cmp    $0x64,%eax
 8a5:	0f 84 05 01 00 00    	je     9b0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 8ab:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 8b1:	83 f9 70             	cmp    $0x70,%ecx
 8b4:	74 72                	je     928 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 8b6:	83 f8 73             	cmp    $0x73,%eax
 8b9:	0f 84 99 00 00 00    	je     958 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 8bf:	83 f8 63             	cmp    $0x63,%eax
 8c2:	0f 84 08 01 00 00    	je     9d0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 8c8:	83 f8 25             	cmp    $0x25,%eax
 8cb:	0f 84 ef 00 00 00    	je     9c0 <printf+0x180>
  write(fd, &c, 1);
 8d1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8d4:	83 ec 04             	sub    $0x4,%esp
 8d7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8db:	6a 01                	push   $0x1
 8dd:	50                   	push   %eax
 8de:	ff 75 08             	pushl  0x8(%ebp)
 8e1:	e8 2c fe ff ff       	call   712 <write>
 8e6:	83 c4 0c             	add    $0xc,%esp
 8e9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 8ec:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 8ef:	6a 01                	push   $0x1
 8f1:	50                   	push   %eax
 8f2:	ff 75 08             	pushl  0x8(%ebp)
 8f5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8f8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 8fa:	e8 13 fe ff ff       	call   712 <write>
  for(i = 0; fmt[i]; i++){
 8ff:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 903:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 906:	84 db                	test   %bl,%bl
 908:	75 89                	jne    893 <printf+0x53>
    }
  }
}
 90a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 90d:	5b                   	pop    %ebx
 90e:	5e                   	pop    %esi
 90f:	5f                   	pop    %edi
 910:	5d                   	pop    %ebp
 911:	c3                   	ret    
 912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 918:	bf 25 00 00 00       	mov    $0x25,%edi
 91d:	e9 66 ff ff ff       	jmp    888 <printf+0x48>
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 928:	83 ec 0c             	sub    $0xc,%esp
 92b:	b9 10 00 00 00       	mov    $0x10,%ecx
 930:	6a 00                	push   $0x0
 932:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 935:	8b 45 08             	mov    0x8(%ebp),%eax
 938:	8b 17                	mov    (%edi),%edx
 93a:	e8 61 fe ff ff       	call   7a0 <printint>
        ap++;
 93f:	89 f8                	mov    %edi,%eax
 941:	83 c4 10             	add    $0x10,%esp
      state = 0;
 944:	31 ff                	xor    %edi,%edi
        ap++;
 946:	83 c0 04             	add    $0x4,%eax
 949:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 94c:	e9 37 ff ff ff       	jmp    888 <printf+0x48>
 951:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 958:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 95b:	8b 08                	mov    (%eax),%ecx
        ap++;
 95d:	83 c0 04             	add    $0x4,%eax
 960:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 963:	85 c9                	test   %ecx,%ecx
 965:	0f 84 8e 00 00 00    	je     9f9 <printf+0x1b9>
        while(*s != 0){
 96b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 96e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 970:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 972:	84 c0                	test   %al,%al
 974:	0f 84 0e ff ff ff    	je     888 <printf+0x48>
 97a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 97d:	89 de                	mov    %ebx,%esi
 97f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 982:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 985:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 988:	83 ec 04             	sub    $0x4,%esp
          s++;
 98b:	83 c6 01             	add    $0x1,%esi
 98e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 991:	6a 01                	push   $0x1
 993:	57                   	push   %edi
 994:	53                   	push   %ebx
 995:	e8 78 fd ff ff       	call   712 <write>
        while(*s != 0){
 99a:	0f b6 06             	movzbl (%esi),%eax
 99d:	83 c4 10             	add    $0x10,%esp
 9a0:	84 c0                	test   %al,%al
 9a2:	75 e4                	jne    988 <printf+0x148>
 9a4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 9a7:	31 ff                	xor    %edi,%edi
 9a9:	e9 da fe ff ff       	jmp    888 <printf+0x48>
 9ae:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9b8:	6a 01                	push   $0x1
 9ba:	e9 73 ff ff ff       	jmp    932 <printf+0xf2>
 9bf:	90                   	nop
  write(fd, &c, 1);
 9c0:	83 ec 04             	sub    $0x4,%esp
 9c3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 9c6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 9c9:	6a 01                	push   $0x1
 9cb:	e9 21 ff ff ff       	jmp    8f1 <printf+0xb1>
        putc(fd, *ap);
 9d0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 9d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9d6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 9d8:	6a 01                	push   $0x1
        ap++;
 9da:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 9dd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 9e0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 9e3:	50                   	push   %eax
 9e4:	ff 75 08             	pushl  0x8(%ebp)
 9e7:	e8 26 fd ff ff       	call   712 <write>
        ap++;
 9ec:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 9ef:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9f2:	31 ff                	xor    %edi,%edi
 9f4:	e9 8f fe ff ff       	jmp    888 <printf+0x48>
          s = "(null)";
 9f9:	bb 15 0c 00 00       	mov    $0xc15,%ebx
        while(*s != 0){
 9fe:	b8 28 00 00 00       	mov    $0x28,%eax
 a03:	e9 72 ff ff ff       	jmp    97a <printf+0x13a>
 a08:	66 90                	xchg   %ax,%ax
 a0a:	66 90                	xchg   %ax,%ax
 a0c:	66 90                	xchg   %ax,%ax
 a0e:	66 90                	xchg   %ax,%ax

00000a10 <free>:
 a10:	55                   	push   %ebp
 a11:	a1 e0 0f 00 00       	mov    0xfe0,%eax
 a16:	89 e5                	mov    %esp,%ebp
 a18:	57                   	push   %edi
 a19:	56                   	push   %esi
 a1a:	53                   	push   %ebx
 a1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 a1e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a28:	39 c8                	cmp    %ecx,%eax
 a2a:	8b 10                	mov    (%eax),%edx
 a2c:	73 32                	jae    a60 <free+0x50>
 a2e:	39 d1                	cmp    %edx,%ecx
 a30:	72 04                	jb     a36 <free+0x26>
 a32:	39 d0                	cmp    %edx,%eax
 a34:	72 32                	jb     a68 <free+0x58>
 a36:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a39:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a3c:	39 fa                	cmp    %edi,%edx
 a3e:	74 30                	je     a70 <free+0x60>
 a40:	89 53 f8             	mov    %edx,-0x8(%ebx)
 a43:	8b 50 04             	mov    0x4(%eax),%edx
 a46:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a49:	39 f1                	cmp    %esi,%ecx
 a4b:	74 3a                	je     a87 <free+0x77>
 a4d:	89 08                	mov    %ecx,(%eax)
 a4f:	a3 e0 0f 00 00       	mov    %eax,0xfe0
 a54:	5b                   	pop    %ebx
 a55:	5e                   	pop    %esi
 a56:	5f                   	pop    %edi
 a57:	5d                   	pop    %ebp
 a58:	c3                   	ret    
 a59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a60:	39 d0                	cmp    %edx,%eax
 a62:	72 04                	jb     a68 <free+0x58>
 a64:	39 d1                	cmp    %edx,%ecx
 a66:	72 ce                	jb     a36 <free+0x26>
 a68:	89 d0                	mov    %edx,%eax
 a6a:	eb bc                	jmp    a28 <free+0x18>
 a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a70:	03 72 04             	add    0x4(%edx),%esi
 a73:	89 73 fc             	mov    %esi,-0x4(%ebx)
 a76:	8b 10                	mov    (%eax),%edx
 a78:	8b 12                	mov    (%edx),%edx
 a7a:	89 53 f8             	mov    %edx,-0x8(%ebx)
 a7d:	8b 50 04             	mov    0x4(%eax),%edx
 a80:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a83:	39 f1                	cmp    %esi,%ecx
 a85:	75 c6                	jne    a4d <free+0x3d>
 a87:	03 53 fc             	add    -0x4(%ebx),%edx
 a8a:	a3 e0 0f 00 00       	mov    %eax,0xfe0
 a8f:	89 50 04             	mov    %edx,0x4(%eax)
 a92:	8b 53 f8             	mov    -0x8(%ebx),%edx
 a95:	89 10                	mov    %edx,(%eax)
 a97:	5b                   	pop    %ebx
 a98:	5e                   	pop    %esi
 a99:	5f                   	pop    %edi
 a9a:	5d                   	pop    %ebp
 a9b:	c3                   	ret    
 a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000aa0 <malloc>:
 aa0:	55                   	push   %ebp
 aa1:	89 e5                	mov    %esp,%ebp
 aa3:	57                   	push   %edi
 aa4:	56                   	push   %esi
 aa5:	53                   	push   %ebx
 aa6:	83 ec 0c             	sub    $0xc,%esp
 aa9:	8b 45 08             	mov    0x8(%ebp),%eax
 aac:	8b 15 e0 0f 00 00    	mov    0xfe0,%edx
 ab2:	8d 78 07             	lea    0x7(%eax),%edi
 ab5:	c1 ef 03             	shr    $0x3,%edi
 ab8:	83 c7 01             	add    $0x1,%edi
 abb:	85 d2                	test   %edx,%edx
 abd:	0f 84 9d 00 00 00    	je     b60 <malloc+0xc0>
 ac3:	8b 02                	mov    (%edx),%eax
 ac5:	8b 48 04             	mov    0x4(%eax),%ecx
 ac8:	39 cf                	cmp    %ecx,%edi
 aca:	76 6c                	jbe    b38 <malloc+0x98>
 acc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 ad2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ad7:	0f 43 df             	cmovae %edi,%ebx
 ada:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 ae1:	eb 0e                	jmp    af1 <malloc+0x51>
 ae3:	90                   	nop
 ae4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 ae8:	8b 02                	mov    (%edx),%eax
 aea:	8b 48 04             	mov    0x4(%eax),%ecx
 aed:	39 f9                	cmp    %edi,%ecx
 aef:	73 47                	jae    b38 <malloc+0x98>
 af1:	39 05 e0 0f 00 00    	cmp    %eax,0xfe0
 af7:	89 c2                	mov    %eax,%edx
 af9:	75 ed                	jne    ae8 <malloc+0x48>
 afb:	83 ec 0c             	sub    $0xc,%esp
 afe:	56                   	push   %esi
 aff:	e8 76 fc ff ff       	call   77a <sbrk>
 b04:	83 c4 10             	add    $0x10,%esp
 b07:	83 f8 ff             	cmp    $0xffffffff,%eax
 b0a:	74 1c                	je     b28 <malloc+0x88>
 b0c:	89 58 04             	mov    %ebx,0x4(%eax)
 b0f:	83 ec 0c             	sub    $0xc,%esp
 b12:	83 c0 08             	add    $0x8,%eax
 b15:	50                   	push   %eax
 b16:	e8 f5 fe ff ff       	call   a10 <free>
 b1b:	8b 15 e0 0f 00 00    	mov    0xfe0,%edx
 b21:	83 c4 10             	add    $0x10,%esp
 b24:	85 d2                	test   %edx,%edx
 b26:	75 c0                	jne    ae8 <malloc+0x48>
 b28:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b2b:	31 c0                	xor    %eax,%eax
 b2d:	5b                   	pop    %ebx
 b2e:	5e                   	pop    %esi
 b2f:	5f                   	pop    %edi
 b30:	5d                   	pop    %ebp
 b31:	c3                   	ret    
 b32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 b38:	39 cf                	cmp    %ecx,%edi
 b3a:	74 54                	je     b90 <malloc+0xf0>
 b3c:	29 f9                	sub    %edi,%ecx
 b3e:	89 48 04             	mov    %ecx,0x4(%eax)
 b41:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 b44:	89 78 04             	mov    %edi,0x4(%eax)
 b47:	89 15 e0 0f 00 00    	mov    %edx,0xfe0
 b4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b50:	83 c0 08             	add    $0x8,%eax
 b53:	5b                   	pop    %ebx
 b54:	5e                   	pop    %esi
 b55:	5f                   	pop    %edi
 b56:	5d                   	pop    %ebp
 b57:	c3                   	ret    
 b58:	90                   	nop
 b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b60:	c7 05 e0 0f 00 00 e4 	movl   $0xfe4,0xfe0
 b67:	0f 00 00 
 b6a:	c7 05 e4 0f 00 00 e4 	movl   $0xfe4,0xfe4
 b71:	0f 00 00 
 b74:	b8 e4 0f 00 00       	mov    $0xfe4,%eax
 b79:	c7 05 e8 0f 00 00 00 	movl   $0x0,0xfe8
 b80:	00 00 00 
 b83:	e9 44 ff ff ff       	jmp    acc <malloc+0x2c>
 b88:	90                   	nop
 b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b90:	8b 08                	mov    (%eax),%ecx
 b92:	89 0a                	mov    %ecx,(%edx)
 b94:	eb b1                	jmp    b47 <malloc+0xa7>
