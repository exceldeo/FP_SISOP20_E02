
_rename:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
    char input[3][100];
    int i,j = 0,k=0;
  11:	31 f6                	xor    %esi,%esi
    // memset(input[])

    for(i = 0 ; i < strlen(argv[1]) ; i++){
  13:	31 db                	xor    %ebx,%ebx
int main (int argc, char *argv[]){
  15:	81 ec 48 01 00 00    	sub    $0x148,%esp
  1b:	8b 01                	mov    (%ecx),%eax
    int i,j = 0,k=0;
  1d:	c7 85 b0 fe ff ff 00 	movl   $0x0,-0x150(%ebp)
  24:	00 00 00 
  27:	89 b5 b4 fe ff ff    	mov    %esi,-0x14c(%ebp)
int main (int argc, char *argv[]){
  2d:	89 85 a8 fe ff ff    	mov    %eax,-0x158(%ebp)
  33:	8b 41 04             	mov    0x4(%ecx),%eax
  36:	89 85 ac fe ff ff    	mov    %eax,-0x154(%ebp)
  3c:	8b 50 04             	mov    0x4(%eax),%edx
    for(i = 0 ; i < strlen(argv[1]) ; i++){
  3f:	eb 2e                	jmp    6f <main+0x6f>
  41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if(argv[1][i] == '/'){
  48:	8b 85 b4 fe ff ff    	mov    -0x14c(%ebp),%eax
  4e:	89 c7                	mov    %eax,%edi
  50:	83 c0 01             	add    $0x1,%eax
  53:	89 85 b4 fe ff ff    	mov    %eax,-0x14c(%ebp)
            j+=1;
            k=0;
        }
        input[j][k++] = argv[1][i];
  59:	6b 85 b0 fe ff ff 64 	imul   $0x64,-0x150(%ebp),%eax
  60:	8d 75 e8             	lea    -0x18(%ebp),%esi
    for(i = 0 ; i < strlen(argv[1]) ; i++){
  63:	83 c3 01             	add    $0x1,%ebx
        input[j][k++] = argv[1][i];
  66:	01 f0                	add    %esi,%eax
  68:	88 8c 07 d4 fe ff ff 	mov    %cl,-0x12c(%edi,%eax,1)
    for(i = 0 ; i < strlen(argv[1]) ; i++){
  6f:	83 ec 0c             	sub    $0xc,%esp
  72:	52                   	push   %edx
  73:	e8 38 06 00 00       	call   6b0 <strlen>
  78:	83 c4 10             	add    $0x10,%esp
  7b:	39 d8                	cmp    %ebx,%eax
  7d:	76 31                	jbe    b0 <main+0xb0>
        if(argv[1][i] == '/'){
  7f:	8b 85 ac fe ff ff    	mov    -0x154(%ebp),%eax
  85:	8b 50 04             	mov    0x4(%eax),%edx
  88:	0f b6 0c 1a          	movzbl (%edx,%ebx,1),%ecx
  8c:	80 f9 2f             	cmp    $0x2f,%cl
  8f:	75 b7                	jne    48 <main+0x48>
            j+=1;
  91:	83 85 b0 fe ff ff 01 	addl   $0x1,-0x150(%ebp)
  98:	c7 85 b4 fe ff ff 01 	movl   $0x1,-0x14c(%ebp)
  9f:	00 00 00 
            k=0;
  a2:	31 ff                	xor    %edi,%edi
  a4:	eb b3                	jmp    59 <main+0x59>
  a6:	8d 76 00             	lea    0x0(%esi),%esi
  a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        // printf(2,"ar %s\n",input[j]);
    }
    printf(2,"ar %s\n%s\n%s\n",input[0]+1,input[1]+1,input[2]+1);
  b0:	8d 85 bd fe ff ff    	lea    -0x143(%ebp),%eax
  b6:	8d 5d 85             	lea    -0x7b(%ebp),%ebx
  b9:	8d b5 21 ff ff ff    	lea    -0xdf(%ebp),%esi
  bf:	83 ec 0c             	sub    $0xc,%esp
  c2:	53                   	push   %ebx
  c3:	56                   	push   %esi
  c4:	50                   	push   %eax
  c5:	68 a3 0d 00 00       	push   $0xda3
  ca:	6a 02                	push   $0x2
  cc:	e8 ff 08 00 00       	call   9d0 <printf>

    if(argc <= 2){
  d1:	83 c4 20             	add    $0x20,%esp
  d4:	83 bd a8 fe ff ff 02 	cmpl   $0x2,-0x158(%ebp)
  db:	0f 8e f6 00 00 00    	jle    1d7 <main+0x1d7>
        printf(2, "Need 2 Arguments!\n");
        exit();
    }
    else if(argv[2][0] != '*' && argv[2][1] != '.' ){
  e1:	8b 85 ac fe ff ff    	mov    -0x154(%ebp),%eax
  e7:	8b 40 08             	mov    0x8(%eax),%eax
  ea:	80 38 2a             	cmpb   $0x2a,(%eax)
  ed:	74 19                	je     108 <main+0x108>
  ef:	80 78 01 2e          	cmpb   $0x2e,0x1(%eax)
  f3:	74 13                	je     108 <main+0x108>
        printf(2, "error!\n");
  f5:	53                   	push   %ebx
  f6:	53                   	push   %ebx
  f7:	68 c3 0d 00 00       	push   $0xdc3
  fc:	6a 02                	push   $0x2
  fe:	e8 cd 08 00 00       	call   9d0 <printf>
        exit();
 103:	e8 7a 07 00 00       	call   882 <exit>
    }
    else if(argv[1][0] != '\'' && argv[1][strlen(argv[1])-1] != '\'' ){
 108:	8b 85 ac fe ff ff    	mov    -0x154(%ebp),%eax
 10e:	8b 78 04             	mov    0x4(%eax),%edi
 111:	80 3f 27             	cmpb   $0x27,(%edi)
 114:	74 20                	je     136 <main+0x136>
 116:	83 ec 0c             	sub    $0xc,%esp
 119:	57                   	push   %edi
 11a:	e8 91 05 00 00       	call   6b0 <strlen>
 11f:	83 c4 10             	add    $0x10,%esp
 122:	80 7c 07 ff 27       	cmpb   $0x27,-0x1(%edi,%eax,1)
 127:	0f 85 bd 00 00 00    	jne    1ea <main+0x1ea>
 12d:	8b 85 ac fe ff ff    	mov    -0x154(%ebp),%eax
 133:	8b 78 04             	mov    0x4(%eax),%edi
        printf(2, "error2!\n");
        exit();
    }
    else if(argv[1][1] == 's' || argv[1][1] == 'y' ){
 136:	0f b6 47 01          	movzbl 0x1(%edi),%eax
 13a:	3c 73                	cmp    $0x73,%al
 13c:	74 04                	je     142 <main+0x142>
 13e:	3c 79                	cmp    $0x79,%al
 140:	75 b3                	jne    f5 <main+0xf5>

        // if(strcmp(getfname(argv[1]),"*")==0) moveAll(nostar(argv[1]),argv[2]);
        printf(1,"%c %c %c\n",argv[1][0],argv[1][1],argv[1][strlen(argv[1])-1] );
 142:	83 ec 0c             	sub    $0xc,%esp
 145:	57                   	push   %edi
 146:	e8 65 05 00 00       	call   6b0 <strlen>
 14b:	8b 8d ac fe ff ff    	mov    -0x154(%ebp),%ecx
 151:	0f be 44 07 ff       	movsbl -0x1(%edi,%eax,1),%eax
 156:	8b 51 04             	mov    0x4(%ecx),%edx
 159:	89 04 24             	mov    %eax,(%esp)
 15c:	0f be 42 01          	movsbl 0x1(%edx),%eax
 160:	50                   	push   %eax
 161:	0f be 02             	movsbl (%edx),%eax
 164:	50                   	push   %eax
 165:	68 d4 0d 00 00       	push   $0xdd4
 16a:	6a 01                	push   $0x1
 16c:	e8 5f 08 00 00       	call   9d0 <printf>
        char *pch=strchr(argv[2],'.');
 171:	8b 8d ac fe ff ff    	mov    -0x154(%ebp),%ecx
 177:	83 c4 18             	add    $0x18,%esp
 17a:	6a 2e                	push   $0x2e
 17c:	ff 71 08             	pushl  0x8(%ecx)
 17f:	e8 7c 05 00 00       	call   700 <strchr>
        printf(1,"%s\n",pch);
 184:	83 c4 0c             	add    $0xc,%esp
        char *pch=strchr(argv[2],'.');
 187:	89 c7                	mov    %eax,%edi
        printf(1,"%s\n",pch);
 189:	50                   	push   %eax
 18a:	68 ac 0d 00 00       	push   $0xdac
 18f:	6a 01                	push   $0x1
 191:	e8 3a 08 00 00       	call   9d0 <printf>
        strcpy(name1,input[1]+1);
 196:	58                   	pop    %eax
 197:	5a                   	pop    %edx
 198:	56                   	push   %esi
 199:	ff 35 c0 11 00 00    	pushl  0x11c0
 19f:	e8 8c 04 00 00       	call   630 <strcpy>
        strcpy(name2,input[2]+1);
 1a4:	59                   	pop    %ecx
 1a5:	5e                   	pop    %esi
 1a6:	53                   	push   %ebx
 1a7:	ff 35 44 12 00 00    	pushl  0x1244
 1ad:	e8 7e 04 00 00       	call   630 <strcpy>
        strcpy(ekstensi,pch);
 1b2:	58                   	pop    %eax
 1b3:	5a                   	pop    %edx
 1b4:	57                   	push   %edi
 1b5:	ff 35 c4 11 00 00    	pushl  0x11c4
 1bb:	e8 70 04 00 00       	call   630 <strcpy>
        level = argv[1][1];
 1c0:	8b 8d ac fe ff ff    	mov    -0x154(%ebp),%ecx
 1c6:	8b 41 04             	mov    0x4(%ecx),%eax
 1c9:	0f b6 40 01          	movzbl 0x1(%eax),%eax
 1cd:	a2 c8 11 00 00       	mov    %al,0x11c8
    else {
        printf(2, "error!\n");
        exit();
    }

    exit();
 1d2:	e8 ab 06 00 00       	call   882 <exit>
        printf(2, "Need 2 Arguments!\n");
 1d7:	56                   	push   %esi
 1d8:	56                   	push   %esi
 1d9:	68 b0 0d 00 00       	push   $0xdb0
 1de:	6a 02                	push   $0x2
 1e0:	e8 eb 07 00 00       	call   9d0 <printf>
        exit();
 1e5:	e8 98 06 00 00       	call   882 <exit>
        printf(2, "error2!\n");
 1ea:	51                   	push   %ecx
 1eb:	51                   	push   %ecx
 1ec:	68 cb 0d 00 00       	push   $0xdcb
 1f1:	6a 02                	push   $0x2
 1f3:	e8 d8 07 00 00       	call   9d0 <printf>
        exit();
 1f8:	e8 85 06 00 00       	call   882 <exit>
 1fd:	66 90                	xchg   %ax,%ax
 1ff:	90                   	nop

00000200 <strcat>:
char * strcat(char * x,char * y){
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
	strcpy(str1,x); strcpy(str2,y);
 204:	8d 5d 94             	lea    -0x6c(%ebp),%ebx
char * strcat(char * x,char * y){
 207:	83 ec 7c             	sub    $0x7c,%esp
	strcpy(str1,x); strcpy(str2,y);
 20a:	ff 75 08             	pushl  0x8(%ebp)
 20d:	68 e0 11 00 00       	push   $0x11e0
 212:	e8 19 04 00 00       	call   630 <strcpy>
 217:	58                   	pop    %eax
 218:	5a                   	pop    %edx
 219:	ff 75 0c             	pushl  0xc(%ebp)
 21c:	53                   	push   %ebx
 21d:	e8 0e 04 00 00       	call   630 <strcpy>
    for(i=0; str1[i]!='\0'; ++i);
 222:	83 c4 10             	add    $0x10,%esp
 225:	31 c0                	xor    %eax,%eax
 227:	80 3d e0 11 00 00 00 	cmpb   $0x0,0x11e0
 22e:	74 0c                	je     23c <strcat+0x3c>
 230:	83 c0 01             	add    $0x1,%eax
 233:	80 b8 e0 11 00 00 00 	cmpb   $0x0,0x11e0(%eax)
 23a:	75 f4                	jne    230 <strcat+0x30>
   for(j=0; str2[j]!='\0'; ++j, ++i)
 23c:	0f b6 55 94          	movzbl -0x6c(%ebp),%edx
 240:	84 d2                	test   %dl,%dl
 242:	74 1d                	je     261 <strcat+0x61>
 244:	29 c3                	sub    %eax,%ebx
 246:	89 d9                	mov    %ebx,%ecx
 248:	90                   	nop
 249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      str1[i]=str2[j];
 250:	88 90 e0 11 00 00    	mov    %dl,0x11e0(%eax)
   for(j=0; str2[j]!='\0'; ++j, ++i)
 256:	83 c0 01             	add    $0x1,%eax
 259:	0f b6 14 01          	movzbl (%ecx,%eax,1),%edx
 25d:	84 d2                	test   %dl,%dl
 25f:	75 ef                	jne    250 <strcat+0x50>
   str1[i]='\0';
 261:	c6 80 e0 11 00 00 00 	movb   $0x0,0x11e0(%eax)
}
 268:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 26b:	b8 e0 11 00 00       	mov    $0x11e0,%eax
 270:	c9                   	leave  
 271:	c3                   	ret    
 272:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <getfname>:
char * getfname(char * path){
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	83 ec 10             	sub    $0x10,%esp
 287:	8b 5d 08             	mov    0x8(%ebp),%ebx
    for(id=path+strlen(path); *id!='/' && id>=path; id--);
 28a:	53                   	push   %ebx
 28b:	e8 20 04 00 00       	call   6b0 <strlen>
 290:	01 d8                	add    %ebx,%eax
 292:	83 c4 10             	add    $0x10,%esp
 295:	80 38 2f             	cmpb   $0x2f,(%eax)
 298:	75 0e                	jne    2a8 <getfname+0x28>
 29a:	eb 10                	jmp    2ac <getfname+0x2c>
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2a0:	83 e8 01             	sub    $0x1,%eax
 2a3:	80 38 2f             	cmpb   $0x2f,(%eax)
 2a6:	74 04                	je     2ac <getfname+0x2c>
 2a8:	39 c3                	cmp    %eax,%ebx
 2aa:	76 f4                	jbe    2a0 <getfname+0x20>
    id++;
 2ac:	83 c0 01             	add    $0x1,%eax
}
 2af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b2:	c9                   	leave  
 2b3:	c3                   	ret    
 2b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002c0 <nostar>:
char * nostar(char * inp){
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	83 ec 0c             	sub    $0xc,%esp
 2c7:	8b 5d 08             	mov    0x8(%ebp),%ebx
	strcpy(str1,".");
 2ca:	68 28 0d 00 00       	push   $0xd28
 2cf:	68 e0 11 00 00       	push   $0x11e0
 2d4:	e8 57 03 00 00       	call   630 <strcpy>
	if(strlen(inp)==1) return str1;
 2d9:	89 1c 24             	mov    %ebx,(%esp)
 2dc:	e8 cf 03 00 00       	call   6b0 <strlen>
 2e1:	83 c4 10             	add    $0x10,%esp
 2e4:	83 f8 01             	cmp    $0x1,%eax
 2e7:	74 24                	je     30d <nostar+0x4d>
	strcpy(str1,inp);
 2e9:	83 ec 08             	sub    $0x8,%esp
 2ec:	53                   	push   %ebx
 2ed:	68 e0 11 00 00       	push   $0x11e0
 2f2:	e8 39 03 00 00       	call   630 <strcpy>
	str1[strlen(str1)-2]='\0';
 2f7:	c7 04 24 e0 11 00 00 	movl   $0x11e0,(%esp)
 2fe:	e8 ad 03 00 00       	call   6b0 <strlen>
	return str1;
 303:	83 c4 10             	add    $0x10,%esp
	str1[strlen(str1)-2]='\0';
 306:	c6 80 de 11 00 00 00 	movb   $0x0,0x11de(%eax)
}
 30d:	b8 e0 11 00 00       	mov    $0x11e0,%eax
 312:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 315:	c9                   	leave  
 316:	c3                   	ret    
 317:	89 f6                	mov    %esi,%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000320 <moveFile>:
void moveFile(char * src, char * dst){
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	57                   	push   %edi
 324:	56                   	push   %esi
 325:	53                   	push   %ebx
 326:	83 ec 34             	sub    $0x34,%esp
 329:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 32c:	8b 75 08             	mov    0x8(%ebp),%esi
  if((fd = open(dst, 0)) < 0);
 32f:	6a 00                	push   $0x0
 331:	53                   	push   %ebx
 332:	e8 8b 05 00 00       	call   8c2 <open>
 337:	83 c4 10             	add    $0x10,%esp
 33a:	85 c0                	test   %eax,%eax
 33c:	89 c7                	mov    %eax,%edi
 33e:	78 1f                	js     35f <moveFile+0x3f>
	  if(fstat(fd, &st) < 0){
 340:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 343:	83 ec 08             	sub    $0x8,%esp
 346:	50                   	push   %eax
 347:	57                   	push   %edi
 348:	e8 8d 05 00 00       	call   8da <fstat>
 34d:	83 c4 10             	add    $0x10,%esp
 350:	85 c0                	test   %eax,%eax
 352:	0f 88 b8 00 00 00    	js     410 <moveFile+0xf0>
      if(st.type == T_DIR){
 358:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
 35d:	74 61                	je     3c0 <moveFile+0xa0>
  close(fd);
 35f:	83 ec 0c             	sub    $0xc,%esp
 362:	57                   	push   %edi
 363:	e8 42 05 00 00       	call   8aa <close>
  strcpy(dst,src);
 368:	58                   	pop    %eax
 369:	5a                   	pop    %edx
 36a:	56                   	push   %esi
 36b:	53                   	push   %ebx
 36c:	e8 bf 02 00 00       	call   630 <strcpy>
    if ((link(src, dst) < 0) || (unlink(src) < 0))
 371:	59                   	pop    %ecx
 372:	5f                   	pop    %edi
 373:	53                   	push   %ebx
 374:	56                   	push   %esi
 375:	e8 68 05 00 00       	call   8e2 <link>
 37a:	83 c4 10             	add    $0x10,%esp
 37d:	85 c0                	test   %eax,%eax
 37f:	78 1f                	js     3a0 <moveFile+0x80>
 381:	83 ec 0c             	sub    $0xc,%esp
 384:	56                   	push   %esi
 385:	e8 48 05 00 00       	call   8d2 <unlink>
 38a:	83 c4 10             	add    $0x10,%esp
 38d:	85 c0                	test   %eax,%eax
 38f:	78 0f                	js     3a0 <moveFile+0x80>
}
 391:	8d 65 f4             	lea    -0xc(%ebp),%esp
 394:	5b                   	pop    %ebx
 395:	5e                   	pop    %esi
 396:	5f                   	pop    %edi
 397:	5d                   	pop    %ebp
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "mv %s to %s failed\n", src, dst);
 3a0:	53                   	push   %ebx
 3a1:	56                   	push   %esi
 3a2:	68 3b 0d 00 00       	push   $0xd3b
 3a7:	6a 02                	push   $0x2
 3a9:	e8 22 06 00 00       	call   9d0 <printf>
 3ae:	83 c4 10             	add    $0x10,%esp
}
 3b1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3b4:	5b                   	pop    %ebx
 3b5:	5e                   	pop    %esi
 3b6:	5f                   	pop    %edi
 3b7:	5d                   	pop    %ebp
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            p = dst+strlen(dst)-1;
 3c0:	83 ec 0c             	sub    $0xc,%esp
 3c3:	53                   	push   %ebx
 3c4:	e8 e7 02 00 00       	call   6b0 <strlen>
            if(*p != '/'){
 3c9:	83 c4 10             	add    $0x10,%esp
 3cc:	80 7c 03 ff 2f       	cmpb   $0x2f,-0x1(%ebx,%eax,1)
 3d1:	74 13                	je     3e6 <moveFile+0xc6>
            dst = strcat(dst,"/");
 3d3:	83 ec 08             	sub    $0x8,%esp
 3d6:	68 39 0d 00 00       	push   $0xd39
 3db:	53                   	push   %ebx
 3dc:	e8 1f fe ff ff       	call   200 <strcat>
 3e1:	83 c4 10             	add    $0x10,%esp
 3e4:	89 c3                	mov    %eax,%ebx
	  fname = getfname(src);
 3e6:	83 ec 0c             	sub    $0xc,%esp
 3e9:	56                   	push   %esi
 3ea:	e8 91 fe ff ff       	call   280 <getfname>
      fname = strcat(dst,fname);
 3ef:	5a                   	pop    %edx
 3f0:	59                   	pop    %ecx
 3f1:	50                   	push   %eax
 3f2:	53                   	push   %ebx
 3f3:	e8 08 fe ff ff       	call   200 <strcat>
	  strcpy(dst,fname);
 3f8:	5a                   	pop    %edx
 3f9:	59                   	pop    %ecx
 3fa:	50                   	push   %eax
 3fb:	53                   	push   %ebx
 3fc:	e8 2f 02 00 00       	call   630 <strcpy>
 401:	83 c4 10             	add    $0x10,%esp
 404:	e9 56 ff ff ff       	jmp    35f <moveFile+0x3f>
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	      printf(2,"mv: can't stat");
 410:	83 ec 08             	sub    $0x8,%esp
 413:	68 2a 0d 00 00       	push   $0xd2a
 418:	6a 02                	push   $0x2
 41a:	e8 b1 05 00 00       	call   9d0 <printf>
	      close(fd);
 41f:	89 3c 24             	mov    %edi,(%esp)
 422:	e8 83 04 00 00       	call   8aa <close>
  	      return;
 427:	83 c4 10             	add    $0x10,%esp
}
 42a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42d:	5b                   	pop    %ebx
 42e:	5e                   	pop    %esi
 42f:	5f                   	pop    %edi
 430:	5d                   	pop    %ebp
 431:	c3                   	ret    
 432:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <moveAll>:
moveAll(char *path, char *dst) {
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
	strcpy(tempcpa,dst);
 446:	8d 85 20 ff ff ff    	lea    -0xe0(%ebp),%eax
moveAll(char *path, char *dst) {
 44c:	81 ec 14 01 00 00    	sub    $0x114,%esp
	strcpy(tempcpa,dst);
 452:	ff 75 0c             	pushl  0xc(%ebp)
moveAll(char *path, char *dst) {
 455:	8b 7d 08             	mov    0x8(%ebp),%edi
	strcpy(tempcpa,dst);
 458:	50                   	push   %eax
 459:	e8 d2 01 00 00       	call   630 <strcpy>
  if((fd = open(path, 0)) < 0){
 45e:	59                   	pop    %ecx
 45f:	5b                   	pop    %ebx
 460:	6a 00                	push   $0x0
 462:	57                   	push   %edi
 463:	e8 5a 04 00 00       	call   8c2 <open>
 468:	83 c4 10             	add    $0x10,%esp
 46b:	85 c0                	test   %eax,%eax
 46d:	78 49                	js     4b8 <moveAll+0x78>
  if(fstat(fd, &st) < 0){
 46f:	8d b5 0c ff ff ff    	lea    -0xf4(%ebp),%esi
 475:	83 ec 08             	sub    $0x8,%esp
 478:	89 c3                	mov    %eax,%ebx
 47a:	56                   	push   %esi
 47b:	50                   	push   %eax
 47c:	e8 59 04 00 00       	call   8da <fstat>
 481:	83 c4 10             	add    $0x10,%esp
 484:	85 c0                	test   %eax,%eax
 486:	0f 88 94 00 00 00    	js     520 <moveAll+0xe0>
  switch(st.type){
 48c:	0f b7 85 0c ff ff ff 	movzwl -0xf4(%ebp),%eax
 493:	66 83 f8 01          	cmp    $0x1,%ax
 497:	74 57                	je     4f0 <moveAll+0xb0>
 499:	66 83 f8 02          	cmp    $0x2,%ax
 49d:	74 39                	je     4d8 <moveAll+0x98>
  close(fd);
 49f:	83 ec 0c             	sub    $0xc,%esp
 4a2:	53                   	push   %ebx
 4a3:	e8 02 04 00 00       	call   8aa <close>
 4a8:	83 c4 10             	add    $0x10,%esp
}
 4ab:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ae:	5b                   	pop    %ebx
 4af:	5e                   	pop    %esi
 4b0:	5f                   	pop    %edi
 4b1:	5d                   	pop    %ebp
 4b2:	c3                   	ret    
 4b3:	90                   	nop
 4b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot open %s\n", path);
 4b8:	83 ec 04             	sub    $0x4,%esp
 4bb:	57                   	push   %edi
 4bc:	68 4f 0d 00 00       	push   $0xd4f
 4c1:	6a 02                	push   $0x2
 4c3:	e8 08 05 00 00       	call   9d0 <printf>
    return;
 4c8:	83 c4 10             	add    $0x10,%esp
}
 4cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ce:	5b                   	pop    %ebx
 4cf:	5e                   	pop    %esi
 4d0:	5f                   	pop    %edi
 4d1:	5d                   	pop    %ebp
 4d2:	c3                   	ret    
 4d3:	90                   	nop
 4d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1,"Fail\n");
 4d8:	83 ec 08             	sub    $0x8,%esp
 4db:	68 77 0d 00 00       	push   $0xd77
 4e0:	6a 01                	push   $0x1
 4e2:	e8 e9 04 00 00       	call   9d0 <printf>
    break;
 4e7:	83 c4 10             	add    $0x10,%esp
 4ea:	eb b3                	jmp    49f <moveAll+0x5f>
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof baf){
 4f0:	83 ec 0c             	sub    $0xc,%esp
 4f3:	57                   	push   %edi
 4f4:	e8 b7 01 00 00       	call   6b0 <strlen>
 4f9:	83 c0 10             	add    $0x10,%eax
 4fc:	83 c4 10             	add    $0x10,%esp
 4ff:	83 f8 64             	cmp    $0x64,%eax
 502:	76 44                	jbe    548 <moveAll+0x108>
      printf(1, "ls: path too long\n");
 504:	83 ec 08             	sub    $0x8,%esp
 507:	68 7d 0d 00 00       	push   $0xd7d
 50c:	6a 01                	push   $0x1
 50e:	e8 bd 04 00 00       	call   9d0 <printf>
      break;
 513:	83 c4 10             	add    $0x10,%esp
 516:	eb 87                	jmp    49f <moveAll+0x5f>
 518:	90                   	nop
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "ls: cannot stat %s\n", path);
 520:	83 ec 04             	sub    $0x4,%esp
 523:	57                   	push   %edi
 524:	68 63 0d 00 00       	push   $0xd63
 529:	6a 02                	push   $0x2
 52b:	e8 a0 04 00 00       	call   9d0 <printf>
    close(fd);
 530:	89 1c 24             	mov    %ebx,(%esp)
 533:	e8 72 03 00 00       	call   8aa <close>
    return;
 538:	83 c4 10             	add    $0x10,%esp
}
 53b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 53e:	5b                   	pop    %ebx
 53f:	5e                   	pop    %esi
 540:	5f                   	pop    %edi
 541:	5d                   	pop    %ebp
 542:	c3                   	ret    
 543:	90                   	nop
 544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    strcpy(baf, path);
 548:	83 ec 08             	sub    $0x8,%esp
 54b:	57                   	push   %edi
 54c:	8d 7d 84             	lea    -0x7c(%ebp),%edi
 54f:	57                   	push   %edi
 550:	e8 db 00 00 00       	call   630 <strcpy>
    p = baf+strlen(baf);
 555:	89 3c 24             	mov    %edi,(%esp)
 558:	e8 53 01 00 00       	call   6b0 <strlen>
 55d:	01 f8                	add    %edi,%eax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 55f:	83 c4 10             	add    $0x10,%esp
    *p++ = '/';
 562:	8d 50 01             	lea    0x1(%eax),%edx
    p = baf+strlen(baf);
 565:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)
    *p++ = '/';
 56b:	c6 00 2f             	movb   $0x2f,(%eax)
 56e:	89 95 f0 fe ff ff    	mov    %edx,-0x110(%ebp)
 574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 578:	8d 85 fc fe ff ff    	lea    -0x104(%ebp),%eax
 57e:	83 ec 04             	sub    $0x4,%esp
 581:	6a 10                	push   $0x10
 583:	50                   	push   %eax
 584:	53                   	push   %ebx
 585:	e8 10 03 00 00       	call   89a <read>
 58a:	83 c4 10             	add    $0x10,%esp
 58d:	83 f8 10             	cmp    $0x10,%eax
 590:	0f 85 09 ff ff ff    	jne    49f <moveAll+0x5f>
      if(de.inum == 0){
 596:	66 83 bd fc fe ff ff 	cmpw   $0x0,-0x104(%ebp)
 59d:	00 
 59e:	74 d8                	je     578 <moveAll+0x138>
      memmove(p, de.name, DIRSIZ);
 5a0:	8d 85 fe fe ff ff    	lea    -0x102(%ebp),%eax
 5a6:	83 ec 04             	sub    $0x4,%esp
 5a9:	6a 0e                	push   $0xe
 5ab:	50                   	push   %eax
 5ac:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
 5b2:	e8 99 02 00 00       	call   850 <memmove>
      p[DIRSIZ] = 0;
 5b7:	8b 85 f4 fe ff ff    	mov    -0x10c(%ebp),%eax
 5bd:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(baf, &st) < 0){
 5c1:	58                   	pop    %eax
 5c2:	5a                   	pop    %edx
 5c3:	56                   	push   %esi
 5c4:	57                   	push   %edi
 5c5:	e8 f6 01 00 00       	call   7c0 <stat>
 5ca:	83 c4 10             	add    $0x10,%esp
 5cd:	85 c0                	test   %eax,%eax
 5cf:	78 3f                	js     610 <moveAll+0x1d0>
      if(st.type == T_FILE){
 5d1:	66 83 bd 0c ff ff ff 	cmpw   $0x2,-0xf4(%ebp)
 5d8:	02 
 5d9:	75 9d                	jne    578 <moveAll+0x138>
	strcpy(dst,baf);
 5db:	83 ec 08             	sub    $0x8,%esp
 5de:	57                   	push   %edi
 5df:	ff 75 0c             	pushl  0xc(%ebp)
 5e2:	e8 49 00 00 00       	call   630 <strcpy>
	printf(1,"Copied : %s to %s\n",baf,dst);
 5e7:	ff 75 0c             	pushl  0xc(%ebp)
 5ea:	57                   	push   %edi
 5eb:	68 90 0d 00 00       	push   $0xd90
 5f0:	6a 01                	push   $0x1
 5f2:	e8 d9 03 00 00       	call   9d0 <printf>
        moveFile(baf,dst);
 5f7:	83 c4 18             	add    $0x18,%esp
 5fa:	ff 75 0c             	pushl  0xc(%ebp)
 5fd:	57                   	push   %edi
 5fe:	e8 1d fd ff ff       	call   320 <moveFile>
 603:	83 c4 10             	add    $0x10,%esp
 606:	e9 6d ff ff ff       	jmp    578 <moveAll+0x138>
 60b:	90                   	nop
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "ls: cannot stat %s\n", baf);
 610:	83 ec 04             	sub    $0x4,%esp
 613:	57                   	push   %edi
 614:	68 63 0d 00 00       	push   $0xd63
 619:	6a 01                	push   $0x1
 61b:	e8 b0 03 00 00       	call   9d0 <printf>
        continue;
 620:	83 c4 10             	add    $0x10,%esp
 623:	e9 50 ff ff ff       	jmp    578 <moveAll+0x138>
 628:	66 90                	xchg   %ax,%ax
 62a:	66 90                	xchg   %ax,%ax
 62c:	66 90                	xchg   %ax,%ax
 62e:	66 90                	xchg   %ax,%ax

00000630 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	53                   	push   %ebx
 634:	8b 45 08             	mov    0x8(%ebp),%eax
 637:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 63a:	89 c2                	mov    %eax,%edx
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 640:	83 c1 01             	add    $0x1,%ecx
 643:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 647:	83 c2 01             	add    $0x1,%edx
 64a:	84 db                	test   %bl,%bl
 64c:	88 5a ff             	mov    %bl,-0x1(%edx)
 64f:	75 ef                	jne    640 <strcpy+0x10>
    ;
  return os;
}
 651:	5b                   	pop    %ebx
 652:	5d                   	pop    %ebp
 653:	c3                   	ret    
 654:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 65a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000660 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	53                   	push   %ebx
 664:	8b 55 08             	mov    0x8(%ebp),%edx
 667:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 66a:	0f b6 02             	movzbl (%edx),%eax
 66d:	0f b6 19             	movzbl (%ecx),%ebx
 670:	84 c0                	test   %al,%al
 672:	75 1c                	jne    690 <strcmp+0x30>
 674:	eb 2a                	jmp    6a0 <strcmp+0x40>
 676:	8d 76 00             	lea    0x0(%esi),%esi
 679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 680:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 683:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 686:	83 c1 01             	add    $0x1,%ecx
 689:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 68c:	84 c0                	test   %al,%al
 68e:	74 10                	je     6a0 <strcmp+0x40>
 690:	38 d8                	cmp    %bl,%al
 692:	74 ec                	je     680 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 694:	29 d8                	sub    %ebx,%eax
}
 696:	5b                   	pop    %ebx
 697:	5d                   	pop    %ebp
 698:	c3                   	ret    
 699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 6a2:	29 d8                	sub    %ebx,%eax
}
 6a4:	5b                   	pop    %ebx
 6a5:	5d                   	pop    %ebp
 6a6:	c3                   	ret    
 6a7:	89 f6                	mov    %esi,%esi
 6a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006b0 <strlen>:

uint
strlen(const char *s)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 6b6:	80 39 00             	cmpb   $0x0,(%ecx)
 6b9:	74 15                	je     6d0 <strlen+0x20>
 6bb:	31 d2                	xor    %edx,%edx
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
 6c0:	83 c2 01             	add    $0x1,%edx
 6c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 6c7:	89 d0                	mov    %edx,%eax
 6c9:	75 f5                	jne    6c0 <strlen+0x10>
    ;
  return n;
}
 6cb:	5d                   	pop    %ebp
 6cc:	c3                   	ret    
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 6d0:	31 c0                	xor    %eax,%eax
}
 6d2:	5d                   	pop    %ebp
 6d3:	c3                   	ret    
 6d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000006e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 6e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 6ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 6ed:	89 d7                	mov    %edx,%edi
 6ef:	fc                   	cld    
 6f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6f2:	89 d0                	mov    %edx,%eax
 6f4:	5f                   	pop    %edi
 6f5:	5d                   	pop    %ebp
 6f6:	c3                   	ret    
 6f7:	89 f6                	mov    %esi,%esi
 6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000700 <strchr>:

char*
strchr(const char *s, char c)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	53                   	push   %ebx
 704:	8b 45 08             	mov    0x8(%ebp),%eax
 707:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 70a:	0f b6 10             	movzbl (%eax),%edx
 70d:	84 d2                	test   %dl,%dl
 70f:	74 1d                	je     72e <strchr+0x2e>
    if(*s == c)
 711:	38 d3                	cmp    %dl,%bl
 713:	89 d9                	mov    %ebx,%ecx
 715:	75 0d                	jne    724 <strchr+0x24>
 717:	eb 17                	jmp    730 <strchr+0x30>
 719:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 720:	38 ca                	cmp    %cl,%dl
 722:	74 0c                	je     730 <strchr+0x30>
  for(; *s; s++)
 724:	83 c0 01             	add    $0x1,%eax
 727:	0f b6 10             	movzbl (%eax),%edx
 72a:	84 d2                	test   %dl,%dl
 72c:	75 f2                	jne    720 <strchr+0x20>
      return (char*)s;
  return 0;
 72e:	31 c0                	xor    %eax,%eax
}
 730:	5b                   	pop    %ebx
 731:	5d                   	pop    %ebp
 732:	c3                   	ret    
 733:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000740 <gets>:

char*
gets(char *buf, int max)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 746:	31 f6                	xor    %esi,%esi
 748:	89 f3                	mov    %esi,%ebx
{
 74a:	83 ec 1c             	sub    $0x1c,%esp
 74d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 750:	eb 2f                	jmp    781 <gets+0x41>
 752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 758:	8d 45 e7             	lea    -0x19(%ebp),%eax
 75b:	83 ec 04             	sub    $0x4,%esp
 75e:	6a 01                	push   $0x1
 760:	50                   	push   %eax
 761:	6a 00                	push   $0x0
 763:	e8 32 01 00 00       	call   89a <read>
    if(cc < 1)
 768:	83 c4 10             	add    $0x10,%esp
 76b:	85 c0                	test   %eax,%eax
 76d:	7e 1c                	jle    78b <gets+0x4b>
      break;
    buf[i++] = c;
 76f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 773:	83 c7 01             	add    $0x1,%edi
 776:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 779:	3c 0a                	cmp    $0xa,%al
 77b:	74 23                	je     7a0 <gets+0x60>
 77d:	3c 0d                	cmp    $0xd,%al
 77f:	74 1f                	je     7a0 <gets+0x60>
  for(i=0; i+1 < max; ){
 781:	83 c3 01             	add    $0x1,%ebx
 784:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 787:	89 fe                	mov    %edi,%esi
 789:	7c cd                	jl     758 <gets+0x18>
 78b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 78d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 790:	c6 03 00             	movb   $0x0,(%ebx)
}
 793:	8d 65 f4             	lea    -0xc(%ebp),%esp
 796:	5b                   	pop    %ebx
 797:	5e                   	pop    %esi
 798:	5f                   	pop    %edi
 799:	5d                   	pop    %ebp
 79a:	c3                   	ret    
 79b:	90                   	nop
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7a0:	8b 75 08             	mov    0x8(%ebp),%esi
 7a3:	8b 45 08             	mov    0x8(%ebp),%eax
 7a6:	01 de                	add    %ebx,%esi
 7a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 7aa:	c6 03 00             	movb   $0x0,(%ebx)
}
 7ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b0:	5b                   	pop    %ebx
 7b1:	5e                   	pop    %esi
 7b2:	5f                   	pop    %edi
 7b3:	5d                   	pop    %ebp
 7b4:	c3                   	ret    
 7b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	56                   	push   %esi
 7c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 7c5:	83 ec 08             	sub    $0x8,%esp
 7c8:	6a 00                	push   $0x0
 7ca:	ff 75 08             	pushl  0x8(%ebp)
 7cd:	e8 f0 00 00 00       	call   8c2 <open>
  if(fd < 0)
 7d2:	83 c4 10             	add    $0x10,%esp
 7d5:	85 c0                	test   %eax,%eax
 7d7:	78 27                	js     800 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 7d9:	83 ec 08             	sub    $0x8,%esp
 7dc:	ff 75 0c             	pushl  0xc(%ebp)
 7df:	89 c3                	mov    %eax,%ebx
 7e1:	50                   	push   %eax
 7e2:	e8 f3 00 00 00       	call   8da <fstat>
  close(fd);
 7e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 7ea:	89 c6                	mov    %eax,%esi
  close(fd);
 7ec:	e8 b9 00 00 00       	call   8aa <close>
  return r;
 7f1:	83 c4 10             	add    $0x10,%esp
}
 7f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 7f7:	89 f0                	mov    %esi,%eax
 7f9:	5b                   	pop    %ebx
 7fa:	5e                   	pop    %esi
 7fb:	5d                   	pop    %ebp
 7fc:	c3                   	ret    
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 800:	be ff ff ff ff       	mov    $0xffffffff,%esi
 805:	eb ed                	jmp    7f4 <stat+0x34>
 807:	89 f6                	mov    %esi,%esi
 809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000810 <atoi>:

int
atoi(const char *s)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	53                   	push   %ebx
 814:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 817:	0f be 11             	movsbl (%ecx),%edx
 81a:	8d 42 d0             	lea    -0x30(%edx),%eax
 81d:	3c 09                	cmp    $0x9,%al
  n = 0;
 81f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 824:	77 1f                	ja     845 <atoi+0x35>
 826:	8d 76 00             	lea    0x0(%esi),%esi
 829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 830:	8d 04 80             	lea    (%eax,%eax,4),%eax
 833:	83 c1 01             	add    $0x1,%ecx
 836:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 83a:	0f be 11             	movsbl (%ecx),%edx
 83d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 840:	80 fb 09             	cmp    $0x9,%bl
 843:	76 eb                	jbe    830 <atoi+0x20>
  return n;
}
 845:	5b                   	pop    %ebx
 846:	5d                   	pop    %ebp
 847:	c3                   	ret    
 848:	90                   	nop
 849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000850 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
 853:	56                   	push   %esi
 854:	53                   	push   %ebx
 855:	8b 5d 10             	mov    0x10(%ebp),%ebx
 858:	8b 45 08             	mov    0x8(%ebp),%eax
 85b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 85e:	85 db                	test   %ebx,%ebx
 860:	7e 14                	jle    876 <memmove+0x26>
 862:	31 d2                	xor    %edx,%edx
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 868:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 86c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 86f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 872:	39 d3                	cmp    %edx,%ebx
 874:	75 f2                	jne    868 <memmove+0x18>
  return vdst;
}
 876:	5b                   	pop    %ebx
 877:	5e                   	pop    %esi
 878:	5d                   	pop    %ebp
 879:	c3                   	ret    

0000087a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 87a:	b8 01 00 00 00       	mov    $0x1,%eax
 87f:	cd 40                	int    $0x40
 881:	c3                   	ret    

00000882 <exit>:
SYSCALL(exit)
 882:	b8 02 00 00 00       	mov    $0x2,%eax
 887:	cd 40                	int    $0x40
 889:	c3                   	ret    

0000088a <wait>:
SYSCALL(wait)
 88a:	b8 03 00 00 00       	mov    $0x3,%eax
 88f:	cd 40                	int    $0x40
 891:	c3                   	ret    

00000892 <pipe>:
SYSCALL(pipe)
 892:	b8 04 00 00 00       	mov    $0x4,%eax
 897:	cd 40                	int    $0x40
 899:	c3                   	ret    

0000089a <read>:
SYSCALL(read)
 89a:	b8 05 00 00 00       	mov    $0x5,%eax
 89f:	cd 40                	int    $0x40
 8a1:	c3                   	ret    

000008a2 <write>:
SYSCALL(write)
 8a2:	b8 10 00 00 00       	mov    $0x10,%eax
 8a7:	cd 40                	int    $0x40
 8a9:	c3                   	ret    

000008aa <close>:
SYSCALL(close)
 8aa:	b8 15 00 00 00       	mov    $0x15,%eax
 8af:	cd 40                	int    $0x40
 8b1:	c3                   	ret    

000008b2 <kill>:
SYSCALL(kill)
 8b2:	b8 06 00 00 00       	mov    $0x6,%eax
 8b7:	cd 40                	int    $0x40
 8b9:	c3                   	ret    

000008ba <exec>:
SYSCALL(exec)
 8ba:	b8 07 00 00 00       	mov    $0x7,%eax
 8bf:	cd 40                	int    $0x40
 8c1:	c3                   	ret    

000008c2 <open>:
SYSCALL(open)
 8c2:	b8 0f 00 00 00       	mov    $0xf,%eax
 8c7:	cd 40                	int    $0x40
 8c9:	c3                   	ret    

000008ca <mknod>:
SYSCALL(mknod)
 8ca:	b8 11 00 00 00       	mov    $0x11,%eax
 8cf:	cd 40                	int    $0x40
 8d1:	c3                   	ret    

000008d2 <unlink>:
SYSCALL(unlink)
 8d2:	b8 12 00 00 00       	mov    $0x12,%eax
 8d7:	cd 40                	int    $0x40
 8d9:	c3                   	ret    

000008da <fstat>:
SYSCALL(fstat)
 8da:	b8 08 00 00 00       	mov    $0x8,%eax
 8df:	cd 40                	int    $0x40
 8e1:	c3                   	ret    

000008e2 <link>:
SYSCALL(link)
 8e2:	b8 13 00 00 00       	mov    $0x13,%eax
 8e7:	cd 40                	int    $0x40
 8e9:	c3                   	ret    

000008ea <mkdir>:
SYSCALL(mkdir)
 8ea:	b8 14 00 00 00       	mov    $0x14,%eax
 8ef:	cd 40                	int    $0x40
 8f1:	c3                   	ret    

000008f2 <chdir>:
SYSCALL(chdir)
 8f2:	b8 09 00 00 00       	mov    $0x9,%eax
 8f7:	cd 40                	int    $0x40
 8f9:	c3                   	ret    

000008fa <dup>:
SYSCALL(dup)
 8fa:	b8 0a 00 00 00       	mov    $0xa,%eax
 8ff:	cd 40                	int    $0x40
 901:	c3                   	ret    

00000902 <getpid>:
SYSCALL(getpid)
 902:	b8 0b 00 00 00       	mov    $0xb,%eax
 907:	cd 40                	int    $0x40
 909:	c3                   	ret    

0000090a <sbrk>:
SYSCALL(sbrk)
 90a:	b8 0c 00 00 00       	mov    $0xc,%eax
 90f:	cd 40                	int    $0x40
 911:	c3                   	ret    

00000912 <sleep>:
SYSCALL(sleep)
 912:	b8 0d 00 00 00       	mov    $0xd,%eax
 917:	cd 40                	int    $0x40
 919:	c3                   	ret    

0000091a <uptime>:
SYSCALL(uptime)
 91a:	b8 0e 00 00 00       	mov    $0xe,%eax
 91f:	cd 40                	int    $0x40
 921:	c3                   	ret    
 922:	66 90                	xchg   %ax,%ax
 924:	66 90                	xchg   %ax,%ax
 926:	66 90                	xchg   %ax,%ax
 928:	66 90                	xchg   %ax,%ax
 92a:	66 90                	xchg   %ax,%ax
 92c:	66 90                	xchg   %ax,%ax
 92e:	66 90                	xchg   %ax,%ax

00000930 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 939:	85 d2                	test   %edx,%edx
{
 93b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 93e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 940:	79 76                	jns    9b8 <printint+0x88>
 942:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 946:	74 70                	je     9b8 <printint+0x88>
    x = -xx;
 948:	f7 d8                	neg    %eax
    neg = 1;
 94a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 951:	31 f6                	xor    %esi,%esi
 953:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 956:	eb 0a                	jmp    962 <printint+0x32>
 958:	90                   	nop
 959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 960:	89 fe                	mov    %edi,%esi
 962:	31 d2                	xor    %edx,%edx
 964:	8d 7e 01             	lea    0x1(%esi),%edi
 967:	f7 f1                	div    %ecx
 969:	0f b6 92 e8 0d 00 00 	movzbl 0xde8(%edx),%edx
  }while((x /= base) != 0);
 970:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 972:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 975:	75 e9                	jne    960 <printint+0x30>
  if(neg)
 977:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 97a:	85 c0                	test   %eax,%eax
 97c:	74 08                	je     986 <printint+0x56>
    buf[i++] = '-';
 97e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 983:	8d 7e 02             	lea    0x2(%esi),%edi
 986:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 98a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 98d:	8d 76 00             	lea    0x0(%esi),%esi
 990:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 993:	83 ec 04             	sub    $0x4,%esp
 996:	83 ee 01             	sub    $0x1,%esi
 999:	6a 01                	push   $0x1
 99b:	53                   	push   %ebx
 99c:	57                   	push   %edi
 99d:	88 45 d7             	mov    %al,-0x29(%ebp)
 9a0:	e8 fd fe ff ff       	call   8a2 <write>

  while(--i >= 0)
 9a5:	83 c4 10             	add    $0x10,%esp
 9a8:	39 de                	cmp    %ebx,%esi
 9aa:	75 e4                	jne    990 <printint+0x60>
    putc(fd, buf[i]);
}
 9ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9af:	5b                   	pop    %ebx
 9b0:	5e                   	pop    %esi
 9b1:	5f                   	pop    %edi
 9b2:	5d                   	pop    %ebp
 9b3:	c3                   	ret    
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9b8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 9bf:	eb 90                	jmp    951 <printint+0x21>
 9c1:	eb 0d                	jmp    9d0 <printf>
 9c3:	90                   	nop
 9c4:	90                   	nop
 9c5:	90                   	nop
 9c6:	90                   	nop
 9c7:	90                   	nop
 9c8:	90                   	nop
 9c9:	90                   	nop
 9ca:	90                   	nop
 9cb:	90                   	nop
 9cc:	90                   	nop
 9cd:	90                   	nop
 9ce:	90                   	nop
 9cf:	90                   	nop

000009d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	57                   	push   %edi
 9d4:	56                   	push   %esi
 9d5:	53                   	push   %ebx
 9d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9d9:	8b 75 0c             	mov    0xc(%ebp),%esi
 9dc:	0f b6 1e             	movzbl (%esi),%ebx
 9df:	84 db                	test   %bl,%bl
 9e1:	0f 84 b3 00 00 00    	je     a9a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 9e7:	8d 45 10             	lea    0x10(%ebp),%eax
 9ea:	83 c6 01             	add    $0x1,%esi
  state = 0;
 9ed:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 9ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 9f2:	eb 2f                	jmp    a23 <printf+0x53>
 9f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 9f8:	83 f8 25             	cmp    $0x25,%eax
 9fb:	0f 84 a7 00 00 00    	je     aa8 <printf+0xd8>
  write(fd, &c, 1);
 a01:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 a04:	83 ec 04             	sub    $0x4,%esp
 a07:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 a0a:	6a 01                	push   $0x1
 a0c:	50                   	push   %eax
 a0d:	ff 75 08             	pushl  0x8(%ebp)
 a10:	e8 8d fe ff ff       	call   8a2 <write>
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 a1b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 a1f:	84 db                	test   %bl,%bl
 a21:	74 77                	je     a9a <printf+0xca>
    if(state == 0){
 a23:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 a25:	0f be cb             	movsbl %bl,%ecx
 a28:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 a2b:	74 cb                	je     9f8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 a2d:	83 ff 25             	cmp    $0x25,%edi
 a30:	75 e6                	jne    a18 <printf+0x48>
      if(c == 'd'){
 a32:	83 f8 64             	cmp    $0x64,%eax
 a35:	0f 84 05 01 00 00    	je     b40 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 a3b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 a41:	83 f9 70             	cmp    $0x70,%ecx
 a44:	74 72                	je     ab8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 a46:	83 f8 73             	cmp    $0x73,%eax
 a49:	0f 84 99 00 00 00    	je     ae8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 a4f:	83 f8 63             	cmp    $0x63,%eax
 a52:	0f 84 08 01 00 00    	je     b60 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 a58:	83 f8 25             	cmp    $0x25,%eax
 a5b:	0f 84 ef 00 00 00    	je     b50 <printf+0x180>
  write(fd, &c, 1);
 a61:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a64:	83 ec 04             	sub    $0x4,%esp
 a67:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a6b:	6a 01                	push   $0x1
 a6d:	50                   	push   %eax
 a6e:	ff 75 08             	pushl  0x8(%ebp)
 a71:	e8 2c fe ff ff       	call   8a2 <write>
 a76:	83 c4 0c             	add    $0xc,%esp
 a79:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 a7c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 a7f:	6a 01                	push   $0x1
 a81:	50                   	push   %eax
 a82:	ff 75 08             	pushl  0x8(%ebp)
 a85:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a88:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 a8a:	e8 13 fe ff ff       	call   8a2 <write>
  for(i = 0; fmt[i]; i++){
 a8f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 a93:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a96:	84 db                	test   %bl,%bl
 a98:	75 89                	jne    a23 <printf+0x53>
    }
  }
}
 a9a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a9d:	5b                   	pop    %ebx
 a9e:	5e                   	pop    %esi
 a9f:	5f                   	pop    %edi
 aa0:	5d                   	pop    %ebp
 aa1:	c3                   	ret    
 aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 aa8:	bf 25 00 00 00       	mov    $0x25,%edi
 aad:	e9 66 ff ff ff       	jmp    a18 <printf+0x48>
 ab2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 ab8:	83 ec 0c             	sub    $0xc,%esp
 abb:	b9 10 00 00 00       	mov    $0x10,%ecx
 ac0:	6a 00                	push   $0x0
 ac2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 ac5:	8b 45 08             	mov    0x8(%ebp),%eax
 ac8:	8b 17                	mov    (%edi),%edx
 aca:	e8 61 fe ff ff       	call   930 <printint>
        ap++;
 acf:	89 f8                	mov    %edi,%eax
 ad1:	83 c4 10             	add    $0x10,%esp
      state = 0;
 ad4:	31 ff                	xor    %edi,%edi
        ap++;
 ad6:	83 c0 04             	add    $0x4,%eax
 ad9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 adc:	e9 37 ff ff ff       	jmp    a18 <printf+0x48>
 ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 ae8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 aeb:	8b 08                	mov    (%eax),%ecx
        ap++;
 aed:	83 c0 04             	add    $0x4,%eax
 af0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 af3:	85 c9                	test   %ecx,%ecx
 af5:	0f 84 8e 00 00 00    	je     b89 <printf+0x1b9>
        while(*s != 0){
 afb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 afe:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 b00:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 b02:	84 c0                	test   %al,%al
 b04:	0f 84 0e ff ff ff    	je     a18 <printf+0x48>
 b0a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 b0d:	89 de                	mov    %ebx,%esi
 b0f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 b12:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 b15:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 b18:	83 ec 04             	sub    $0x4,%esp
          s++;
 b1b:	83 c6 01             	add    $0x1,%esi
 b1e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 b21:	6a 01                	push   $0x1
 b23:	57                   	push   %edi
 b24:	53                   	push   %ebx
 b25:	e8 78 fd ff ff       	call   8a2 <write>
        while(*s != 0){
 b2a:	0f b6 06             	movzbl (%esi),%eax
 b2d:	83 c4 10             	add    $0x10,%esp
 b30:	84 c0                	test   %al,%al
 b32:	75 e4                	jne    b18 <printf+0x148>
 b34:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 b37:	31 ff                	xor    %edi,%edi
 b39:	e9 da fe ff ff       	jmp    a18 <printf+0x48>
 b3e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 b40:	83 ec 0c             	sub    $0xc,%esp
 b43:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b48:	6a 01                	push   $0x1
 b4a:	e9 73 ff ff ff       	jmp    ac2 <printf+0xf2>
 b4f:	90                   	nop
  write(fd, &c, 1);
 b50:	83 ec 04             	sub    $0x4,%esp
 b53:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 b56:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 b59:	6a 01                	push   $0x1
 b5b:	e9 21 ff ff ff       	jmp    a81 <printf+0xb1>
        putc(fd, *ap);
 b60:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 b63:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b66:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 b68:	6a 01                	push   $0x1
        ap++;
 b6a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 b6d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 b70:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 b73:	50                   	push   %eax
 b74:	ff 75 08             	pushl  0x8(%ebp)
 b77:	e8 26 fd ff ff       	call   8a2 <write>
        ap++;
 b7c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 b7f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b82:	31 ff                	xor    %edi,%edi
 b84:	e9 8f fe ff ff       	jmp    a18 <printf+0x48>
          s = "(null)";
 b89:	bb de 0d 00 00       	mov    $0xdde,%ebx
        while(*s != 0){
 b8e:	b8 28 00 00 00       	mov    $0x28,%eax
 b93:	e9 72 ff ff ff       	jmp    b0a <printf+0x13a>
 b98:	66 90                	xchg   %ax,%ax
 b9a:	66 90                	xchg   %ax,%ax
 b9c:	66 90                	xchg   %ax,%ax
 b9e:	66 90                	xchg   %ax,%ax

00000ba0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 ba0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ba1:	a1 a0 11 00 00       	mov    0x11a0,%eax
{
 ba6:	89 e5                	mov    %esp,%ebp
 ba8:	57                   	push   %edi
 ba9:	56                   	push   %esi
 baa:	53                   	push   %ebx
 bab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 bae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 bb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 bb8:	39 c8                	cmp    %ecx,%eax
 bba:	8b 10                	mov    (%eax),%edx
 bbc:	73 32                	jae    bf0 <free+0x50>
 bbe:	39 d1                	cmp    %edx,%ecx
 bc0:	72 04                	jb     bc6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bc2:	39 d0                	cmp    %edx,%eax
 bc4:	72 32                	jb     bf8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 bc6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bc9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bcc:	39 fa                	cmp    %edi,%edx
 bce:	74 30                	je     c00 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 bd0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bd3:	8b 50 04             	mov    0x4(%eax),%edx
 bd6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 bd9:	39 f1                	cmp    %esi,%ecx
 bdb:	74 3a                	je     c17 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 bdd:	89 08                	mov    %ecx,(%eax)
  freep = p;
 bdf:	a3 a0 11 00 00       	mov    %eax,0x11a0
}
 be4:	5b                   	pop    %ebx
 be5:	5e                   	pop    %esi
 be6:	5f                   	pop    %edi
 be7:	5d                   	pop    %ebp
 be8:	c3                   	ret    
 be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bf0:	39 d0                	cmp    %edx,%eax
 bf2:	72 04                	jb     bf8 <free+0x58>
 bf4:	39 d1                	cmp    %edx,%ecx
 bf6:	72 ce                	jb     bc6 <free+0x26>
{
 bf8:	89 d0                	mov    %edx,%eax
 bfa:	eb bc                	jmp    bb8 <free+0x18>
 bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 c00:	03 72 04             	add    0x4(%edx),%esi
 c03:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 c06:	8b 10                	mov    (%eax),%edx
 c08:	8b 12                	mov    (%edx),%edx
 c0a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 c0d:	8b 50 04             	mov    0x4(%eax),%edx
 c10:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 c13:	39 f1                	cmp    %esi,%ecx
 c15:	75 c6                	jne    bdd <free+0x3d>
    p->s.size += bp->s.size;
 c17:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 c1a:	a3 a0 11 00 00       	mov    %eax,0x11a0
    p->s.size += bp->s.size;
 c1f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 c22:	8b 53 f8             	mov    -0x8(%ebx),%edx
 c25:	89 10                	mov    %edx,(%eax)
}
 c27:	5b                   	pop    %ebx
 c28:	5e                   	pop    %esi
 c29:	5f                   	pop    %edi
 c2a:	5d                   	pop    %ebp
 c2b:	c3                   	ret    
 c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c30:	55                   	push   %ebp
 c31:	89 e5                	mov    %esp,%ebp
 c33:	57                   	push   %edi
 c34:	56                   	push   %esi
 c35:	53                   	push   %ebx
 c36:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c3c:	8b 15 a0 11 00 00    	mov    0x11a0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c42:	8d 78 07             	lea    0x7(%eax),%edi
 c45:	c1 ef 03             	shr    $0x3,%edi
 c48:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 c4b:	85 d2                	test   %edx,%edx
 c4d:	0f 84 9d 00 00 00    	je     cf0 <malloc+0xc0>
 c53:	8b 02                	mov    (%edx),%eax
 c55:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 c58:	39 cf                	cmp    %ecx,%edi
 c5a:	76 6c                	jbe    cc8 <malloc+0x98>
 c5c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 c62:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c67:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 c6a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 c71:	eb 0e                	jmp    c81 <malloc+0x51>
 c73:	90                   	nop
 c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c7a:	8b 48 04             	mov    0x4(%eax),%ecx
 c7d:	39 f9                	cmp    %edi,%ecx
 c7f:	73 47                	jae    cc8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c81:	39 05 a0 11 00 00    	cmp    %eax,0x11a0
 c87:	89 c2                	mov    %eax,%edx
 c89:	75 ed                	jne    c78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c8b:	83 ec 0c             	sub    $0xc,%esp
 c8e:	56                   	push   %esi
 c8f:	e8 76 fc ff ff       	call   90a <sbrk>
  if(p == (char*)-1)
 c94:	83 c4 10             	add    $0x10,%esp
 c97:	83 f8 ff             	cmp    $0xffffffff,%eax
 c9a:	74 1c                	je     cb8 <malloc+0x88>
  hp->s.size = nu;
 c9c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c9f:	83 ec 0c             	sub    $0xc,%esp
 ca2:	83 c0 08             	add    $0x8,%eax
 ca5:	50                   	push   %eax
 ca6:	e8 f5 fe ff ff       	call   ba0 <free>
  return freep;
 cab:	8b 15 a0 11 00 00    	mov    0x11a0,%edx
      if((p = morecore(nunits)) == 0)
 cb1:	83 c4 10             	add    $0x10,%esp
 cb4:	85 d2                	test   %edx,%edx
 cb6:	75 c0                	jne    c78 <malloc+0x48>
        return 0;
  }
}
 cb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 cbb:	31 c0                	xor    %eax,%eax
}
 cbd:	5b                   	pop    %ebx
 cbe:	5e                   	pop    %esi
 cbf:	5f                   	pop    %edi
 cc0:	5d                   	pop    %ebp
 cc1:	c3                   	ret    
 cc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 cc8:	39 cf                	cmp    %ecx,%edi
 cca:	74 54                	je     d20 <malloc+0xf0>
        p->s.size -= nunits;
 ccc:	29 f9                	sub    %edi,%ecx
 cce:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 cd1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 cd4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 cd7:	89 15 a0 11 00 00    	mov    %edx,0x11a0
}
 cdd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ce0:	83 c0 08             	add    $0x8,%eax
}
 ce3:	5b                   	pop    %ebx
 ce4:	5e                   	pop    %esi
 ce5:	5f                   	pop    %edi
 ce6:	5d                   	pop    %ebp
 ce7:	c3                   	ret    
 ce8:	90                   	nop
 ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 cf0:	c7 05 a0 11 00 00 a4 	movl   $0x11a4,0x11a0
 cf7:	11 00 00 
 cfa:	c7 05 a4 11 00 00 a4 	movl   $0x11a4,0x11a4
 d01:	11 00 00 
    base.s.size = 0;
 d04:	b8 a4 11 00 00       	mov    $0x11a4,%eax
 d09:	c7 05 a8 11 00 00 00 	movl   $0x0,0x11a8
 d10:	00 00 00 
 d13:	e9 44 ff ff ff       	jmp    c5c <malloc+0x2c>
 d18:	90                   	nop
 d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 d20:	8b 08                	mov    (%eax),%ecx
 d22:	89 0a                	mov    %ecx,(%edx)
 d24:	eb b1                	jmp    cd7 <malloc+0xa7>
