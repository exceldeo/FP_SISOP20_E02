
_head:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    printf(1, "cat: read error\n");
    exit();
  }
}

int main(int argc, char *argv[]) {
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 59 04             	mov    0x4(%ecx),%ebx

  int fd, i;

  if(argc <= 1){
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	0f 8e de 00 00 00    	jle    100 <main+0x100>
    head(0, 0);
    exit();
  }

  // head -c
  if (strcmp(argv[1], "-c") == 0) {
  22:	57                   	push   %edi
  23:	57                   	push   %edi
  24:	68 16 0a 00 00       	push   $0xa16
  29:	ff 73 04             	pushl  0x4(%ebx)
  2c:	e8 cf 02 00 00       	call   300 <strcmp>
  31:	83 c4 10             	add    $0x10,%esp
  34:	85 c0                	test   %eax,%eax
  36:	75 3d                	jne    75 <main+0x75>
    if ((fd = open(argv[3], 0)) < 0) {
  38:	56                   	push   %esi
  39:	56                   	push   %esi
  3a:	6a 00                	push   $0x0
  3c:	ff 73 0c             	pushl  0xc(%ebx)
  3f:	e8 1e 05 00 00       	call   562 <open>
  44:	83 c4 10             	add    $0x10,%esp
  47:	85 c0                	test   %eax,%eax
  49:	89 c6                	mov    %eax,%esi
  4b:	0f 88 f8 00 00 00    	js     149 <main+0x149>
      printf(1, "head: cannot open %s\n", argv[3]);
      exit();
    }
    int value = atoi(argv[2]);
  51:	83 ec 0c             	sub    $0xc,%esp
  54:	ff 73 08             	pushl  0x8(%ebx)
  57:	e8 54 04 00 00       	call   4b0 <atoi>
    headc(fd, value);
  5c:	5a                   	pop    %edx
  5d:	59                   	pop    %ecx
  5e:	50                   	push   %eax
  5f:	56                   	push   %esi
  60:	e8 7b 01 00 00       	call   1e0 <headc>
    close(fd);
  65:	89 34 24             	mov    %esi,(%esp)
  68:	e8 dd 04 00 00       	call   54a <close>
  6d:	83 c4 10             	add    $0x10,%esp
    }
    head(fd, 10);
    close(fd);
  }

  exit();
  70:	e8 ad 04 00 00       	call   522 <exit>
  else if (strcmp(argv[1], "-n") == 0) {
  75:	50                   	push   %eax
  76:	50                   	push   %eax
  77:	68 2f 0a 00 00       	push   $0xa2f
  7c:	ff 73 04             	pushl  0x4(%ebx)
  7f:	e8 7c 02 00 00       	call   300 <strcmp>
  84:	83 c4 10             	add    $0x10,%esp
  87:	85 c0                	test   %eax,%eax
  89:	0f 84 81 00 00 00    	je     110 <main+0x110>
  else if (strcmp(argv[1], "-q") == 0) {
  8f:	51                   	push   %ecx
  90:	51                   	push   %ecx
  91:	68 32 0a 00 00       	push   $0xa32
  96:	ff 73 04             	pushl  0x4(%ebx)
  99:	e8 62 02 00 00       	call   300 <strcmp>
  9e:	83 c4 10             	add    $0x10,%esp
  a1:	85 c0                	test   %eax,%eax
  a3:	0f 85 b5 00 00 00    	jne    15e <main+0x15e>
    for (i = 2; i < argc; i++) {
  a9:	83 fe 02             	cmp    $0x2,%esi
  ac:	bf 02 00 00 00       	mov    $0x2,%edi
  b1:	75 24                	jne    d7 <main+0xd7>
  b3:	eb bb                	jmp    70 <main+0x70>
      head(fd, 10);
  b5:	52                   	push   %edx
  b6:	52                   	push   %edx
    for (i = 2; i < argc; i++) {
  b7:	83 c7 01             	add    $0x1,%edi
      head(fd, 10);
  ba:	6a 0a                	push   $0xa
  bc:	50                   	push   %eax
  bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  c0:	e8 7b 01 00 00       	call   240 <head>
      close(fd);
  c5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  c8:	89 04 24             	mov    %eax,(%esp)
  cb:	e8 7a 04 00 00       	call   54a <close>
    for (i = 2; i < argc; i++) {
  d0:	83 c4 10             	add    $0x10,%esp
  d3:	39 fe                	cmp    %edi,%esi
  d5:	74 99                	je     70 <main+0x70>
      if ((fd = open(argv[i], 0)) < 0) {
  d7:	83 ec 08             	sub    $0x8,%esp
  da:	6a 00                	push   $0x0
  dc:	ff 34 bb             	pushl  (%ebx,%edi,4)
  df:	e8 7e 04 00 00       	call   562 <open>
  e4:	83 c4 10             	add    $0x10,%esp
  e7:	85 c0                	test   %eax,%eax
  e9:	79 ca                	jns    b5 <main+0xb5>
      printf(1, "head: cannot open %s\n", argv[1]);
  eb:	52                   	push   %edx
  ec:	ff 73 04             	pushl  0x4(%ebx)
  ef:	68 19 0a 00 00       	push   $0xa19
  f4:	6a 01                	push   $0x1
  f6:	e8 75 05 00 00       	call   670 <printf>
      exit();
  fb:	e8 22 04 00 00       	call   522 <exit>
    head(0, 0);
 100:	50                   	push   %eax
 101:	50                   	push   %eax
 102:	6a 00                	push   $0x0
 104:	6a 00                	push   $0x0
 106:	e8 35 01 00 00       	call   240 <head>
    exit();
 10b:	e8 12 04 00 00       	call   522 <exit>
    if ((fd = open(argv[3], 0)) < 0){
 110:	50                   	push   %eax
 111:	50                   	push   %eax
 112:	6a 00                	push   $0x0
 114:	ff 73 0c             	pushl  0xc(%ebx)
 117:	e8 46 04 00 00       	call   562 <open>
 11c:	83 c4 10             	add    $0x10,%esp
 11f:	85 c0                	test   %eax,%eax
 121:	89 c6                	mov    %eax,%esi
 123:	78 24                	js     149 <main+0x149>
    int value = atoi(argv[2]);
 125:	83 ec 0c             	sub    $0xc,%esp
 128:	ff 73 08             	pushl  0x8(%ebx)
 12b:	e8 80 03 00 00       	call   4b0 <atoi>
    head(fd, value);
 130:	5b                   	pop    %ebx
 131:	5f                   	pop    %edi
 132:	50                   	push   %eax
    head(fd, 10);
 133:	56                   	push   %esi
 134:	e8 07 01 00 00       	call   240 <head>
    close(fd);
 139:	89 34 24             	mov    %esi,(%esp)
 13c:	e8 09 04 00 00       	call   54a <close>
 141:	83 c4 10             	add    $0x10,%esp
 144:	e9 27 ff ff ff       	jmp    70 <main+0x70>
      printf(1, "head: cannot open %s\n", argv[3]);
 149:	50                   	push   %eax
 14a:	ff 73 0c             	pushl  0xc(%ebx)
 14d:	68 19 0a 00 00       	push   $0xa19
 152:	6a 01                	push   $0x1
 154:	e8 17 05 00 00       	call   670 <printf>
      exit();
 159:	e8 c4 03 00 00       	call   522 <exit>
  else if (strcmp(argv[1], "-v") == 0) {
 15e:	57                   	push   %edi
 15f:	57                   	push   %edi
 160:	68 35 0a 00 00       	push   $0xa35
 165:	ff 73 04             	pushl  0x4(%ebx)
 168:	e8 93 01 00 00       	call   300 <strcmp>
 16d:	83 c4 10             	add    $0x10,%esp
 170:	85 c0                	test   %eax,%eax
 172:	75 2b                	jne    19f <main+0x19f>
    if ((fd = open(argv[2], 0)) < 0){
 174:	56                   	push   %esi
 175:	56                   	push   %esi
 176:	6a 00                	push   $0x0
 178:	ff 73 08             	pushl  0x8(%ebx)
 17b:	e8 e2 03 00 00       	call   562 <open>
 180:	83 c4 10             	add    $0x10,%esp
 183:	85 c0                	test   %eax,%eax
 185:	89 c6                	mov    %eax,%esi
 187:	78 38                	js     1c1 <main+0x1c1>
    printf(1, "==> %s <==\n", argv[2]);
 189:	57                   	push   %edi
 18a:	ff 73 08             	pushl  0x8(%ebx)
 18d:	68 38 0a 00 00       	push   $0xa38
 192:	6a 01                	push   $0x1
 194:	e8 d7 04 00 00       	call   670 <printf>
    head(fd, 10);
 199:	58                   	pop    %eax
 19a:	5a                   	pop    %edx
    head(fd, 10);
 19b:	6a 0a                	push   $0xa
 19d:	eb 94                	jmp    133 <main+0x133>
    if ((fd = open(argv[1], 0)) < 0){
 19f:	51                   	push   %ecx
 1a0:	51                   	push   %ecx
 1a1:	6a 00                	push   $0x0
 1a3:	ff 73 04             	pushl  0x4(%ebx)
 1a6:	e8 b7 03 00 00       	call   562 <open>
 1ab:	83 c4 10             	add    $0x10,%esp
 1ae:	85 c0                	test   %eax,%eax
 1b0:	89 c6                	mov    %eax,%esi
 1b2:	0f 88 33 ff ff ff    	js     eb <main+0xeb>
    head(fd, 10);
 1b8:	50                   	push   %eax
 1b9:	50                   	push   %eax
 1ba:	6a 0a                	push   $0xa
 1bc:	e9 72 ff ff ff       	jmp    133 <main+0x133>
      printf(1, "head: cannot open %s\n", argv[2]);
 1c1:	51                   	push   %ecx
 1c2:	ff 73 08             	pushl  0x8(%ebx)
 1c5:	68 19 0a 00 00       	push   $0xa19
 1ca:	6a 01                	push   $0x1
 1cc:	e8 9f 04 00 00       	call   670 <printf>
      exit();
 1d1:	e8 4c 03 00 00       	call   522 <exit>
 1d6:	66 90                	xchg   %ax,%ax
 1d8:	66 90                	xchg   %ax,%ax
 1da:	66 90                	xchg   %ax,%ax
 1dc:	66 90                	xchg   %ax,%ax
 1de:	66 90                	xchg   %ax,%ax

000001e0 <headc>:
void headc(int fd, int byte) {
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	53                   	push   %ebx
 1e4:	83 ec 08             	sub    $0x8,%esp
  n = read(fd, buf, byte);
 1e7:	ff 75 0c             	pushl  0xc(%ebp)
 1ea:	68 a0 0d 00 00       	push   $0xda0
 1ef:	ff 75 08             	pushl  0x8(%ebp)
 1f2:	e8 43 03 00 00       	call   53a <read>
  if (write(1, buf, n) != n) {
 1f7:	83 c4 0c             	add    $0xc,%esp
  n = read(fd, buf, byte);
 1fa:	89 c3                	mov    %eax,%ebx
  if (write(1, buf, n) != n) {
 1fc:	50                   	push   %eax
 1fd:	68 a0 0d 00 00       	push   $0xda0
 202:	6a 01                	push   $0x1
 204:	e8 39 03 00 00       	call   542 <write>
 209:	83 c4 10             	add    $0x10,%esp
 20c:	39 d8                	cmp    %ebx,%eax
 20e:	75 09                	jne    219 <headc+0x39>
  if(n < 0){
 210:	85 c0                	test   %eax,%eax
 212:	78 18                	js     22c <headc+0x4c>
}
 214:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 217:	c9                   	leave  
 218:	c3                   	ret    
    printf(1, "head -c: write error\n");
 219:	52                   	push   %edx
 21a:	52                   	push   %edx
 21b:	68 c8 09 00 00       	push   $0x9c8
 220:	6a 01                	push   $0x1
 222:	e8 49 04 00 00       	call   670 <printf>
    exit();
 227:	e8 f6 02 00 00       	call   522 <exit>
    printf(1, "head -c: read error\n");
 22c:	50                   	push   %eax
 22d:	50                   	push   %eax
 22e:	68 de 09 00 00       	push   $0x9de
 233:	6a 01                	push   $0x1
 235:	e8 36 04 00 00       	call   670 <printf>
    exit();
 23a:	e8 e3 02 00 00       	call   522 <exit>
 23f:	90                   	nop

00000240 <head>:
void head(int fd, int baris) {
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	56                   	push   %esi
 245:	53                   	push   %ebx
  int n, i = 0;
 246:	31 f6                	xor    %esi,%esi
void head(int fd, int baris) {
 248:	83 ec 0c             	sub    $0xc,%esp
 24b:	8b 7d 08             	mov    0x8(%ebp),%edi
  while((n = read(fd, buffer, 1)) > 0 && i < baris) {
 24e:	eb 34                	jmp    284 <head+0x44>
 250:	3b 75 0c             	cmp    0xc(%ebp),%esi
 253:	7d 4b                	jge    2a0 <head+0x60>
    if(strcmp(buffer,"\n") == 0) i++;
 255:	83 ec 08             	sub    $0x8,%esp
 258:	68 42 0a 00 00       	push   $0xa42
 25d:	68 80 0d 00 00       	push   $0xd80
 262:	e8 99 00 00 00       	call   300 <strcmp>
 267:	83 c4 0c             	add    $0xc,%esp
 26a:	83 f8 01             	cmp    $0x1,%eax
    if (write(1, buffer, n) != n) {
 26d:	53                   	push   %ebx
 26e:	68 80 0d 00 00       	push   $0xd80
    if(strcmp(buffer,"\n") == 0) i++;
 273:	83 d6 00             	adc    $0x0,%esi
    if (write(1, buffer, n) != n) {
 276:	6a 01                	push   $0x1
 278:	e8 c5 02 00 00       	call   542 <write>
 27d:	83 c4 10             	add    $0x10,%esp
 280:	39 d8                	cmp    %ebx,%eax
 282:	75 24                	jne    2a8 <head+0x68>
  while((n = read(fd, buffer, 1)) > 0 && i < baris) {
 284:	83 ec 04             	sub    $0x4,%esp
 287:	6a 01                	push   $0x1
 289:	68 80 0d 00 00       	push   $0xd80
 28e:	57                   	push   %edi
 28f:	e8 a6 02 00 00       	call   53a <read>
 294:	83 c4 10             	add    $0x10,%esp
 297:	83 f8 00             	cmp    $0x0,%eax
 29a:	89 c3                	mov    %eax,%ebx
 29c:	7f b2                	jg     250 <head+0x10>
  if(n < 0){
 29e:	75 1c                	jne    2bc <head+0x7c>
}
 2a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2a3:	5b                   	pop    %ebx
 2a4:	5e                   	pop    %esi
 2a5:	5f                   	pop    %edi
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
      printf(1, "cat: write error\n");
 2a8:	83 ec 08             	sub    $0x8,%esp
 2ab:	68 f3 09 00 00       	push   $0x9f3
 2b0:	6a 01                	push   $0x1
 2b2:	e8 b9 03 00 00       	call   670 <printf>
      exit();
 2b7:	e8 66 02 00 00       	call   522 <exit>
    printf(1, "cat: read error\n");
 2bc:	50                   	push   %eax
 2bd:	50                   	push   %eax
 2be:	68 05 0a 00 00       	push   $0xa05
 2c3:	6a 01                	push   $0x1
 2c5:	e8 a6 03 00 00       	call   670 <printf>
    exit();
 2ca:	e8 53 02 00 00       	call   522 <exit>
 2cf:	90                   	nop

000002d0 <strcpy>:
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
 2d4:	8b 45 08             	mov    0x8(%ebp),%eax
 2d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 2da:	89 c2                	mov    %eax,%edx
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	83 c1 01             	add    $0x1,%ecx
 2e3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 2e7:	83 c2 01             	add    $0x1,%edx
 2ea:	84 db                	test   %bl,%bl
 2ec:	88 5a ff             	mov    %bl,-0x1(%edx)
 2ef:	75 ef                	jne    2e0 <strcpy+0x10>
 2f1:	5b                   	pop    %ebx
 2f2:	5d                   	pop    %ebp
 2f3:	c3                   	ret    
 2f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000300 <strcmp>:
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
 307:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 30a:	0f b6 02             	movzbl (%edx),%eax
 30d:	0f b6 19             	movzbl (%ecx),%ebx
 310:	84 c0                	test   %al,%al
 312:	75 1c                	jne    330 <strcmp+0x30>
 314:	eb 2a                	jmp    340 <strcmp+0x40>
 316:	8d 76 00             	lea    0x0(%esi),%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 320:	83 c2 01             	add    $0x1,%edx
 323:	0f b6 02             	movzbl (%edx),%eax
 326:	83 c1 01             	add    $0x1,%ecx
 329:	0f b6 19             	movzbl (%ecx),%ebx
 32c:	84 c0                	test   %al,%al
 32e:	74 10                	je     340 <strcmp+0x40>
 330:	38 d8                	cmp    %bl,%al
 332:	74 ec                	je     320 <strcmp+0x20>
 334:	29 d8                	sub    %ebx,%eax
 336:	5b                   	pop    %ebx
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 340:	31 c0                	xor    %eax,%eax
 342:	29 d8                	sub    %ebx,%eax
 344:	5b                   	pop    %ebx
 345:	5d                   	pop    %ebp
 346:	c3                   	ret    
 347:	89 f6                	mov    %esi,%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000350 <strlen>:
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 4d 08             	mov    0x8(%ebp),%ecx
 356:	80 39 00             	cmpb   $0x0,(%ecx)
 359:	74 15                	je     370 <strlen+0x20>
 35b:	31 d2                	xor    %edx,%edx
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c2 01             	add    $0x1,%edx
 363:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 367:	89 d0                	mov    %edx,%eax
 369:	75 f5                	jne    360 <strlen+0x10>
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
 36d:	8d 76 00             	lea    0x0(%esi),%esi
 370:	31 c0                	xor    %eax,%eax
 372:	5d                   	pop    %ebp
 373:	c3                   	ret    
 374:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 37a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000380 <memset>:
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	8b 55 08             	mov    0x8(%ebp),%edx
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
 392:	89 d0                	mov    %edx,%eax
 394:	5f                   	pop    %edi
 395:	5d                   	pop    %ebp
 396:	c3                   	ret    
 397:	89 f6                	mov    %esi,%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003a0 <strchr>:
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 45 08             	mov    0x8(%ebp),%eax
 3a7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3aa:	0f b6 10             	movzbl (%eax),%edx
 3ad:	84 d2                	test   %dl,%dl
 3af:	74 1d                	je     3ce <strchr+0x2e>
 3b1:	38 d3                	cmp    %dl,%bl
 3b3:	89 d9                	mov    %ebx,%ecx
 3b5:	75 0d                	jne    3c4 <strchr+0x24>
 3b7:	eb 17                	jmp    3d0 <strchr+0x30>
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3c0:	38 ca                	cmp    %cl,%dl
 3c2:	74 0c                	je     3d0 <strchr+0x30>
 3c4:	83 c0 01             	add    $0x1,%eax
 3c7:	0f b6 10             	movzbl (%eax),%edx
 3ca:	84 d2                	test   %dl,%dl
 3cc:	75 f2                	jne    3c0 <strchr+0x20>
 3ce:	31 c0                	xor    %eax,%eax
 3d0:	5b                   	pop    %ebx
 3d1:	5d                   	pop    %ebp
 3d2:	c3                   	ret    
 3d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <gets>:
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
 3e5:	53                   	push   %ebx
 3e6:	31 f6                	xor    %esi,%esi
 3e8:	89 f3                	mov    %esi,%ebx
 3ea:	83 ec 1c             	sub    $0x1c,%esp
 3ed:	8b 7d 08             	mov    0x8(%ebp),%edi
 3f0:	eb 2f                	jmp    421 <gets+0x41>
 3f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3f8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 3fb:	83 ec 04             	sub    $0x4,%esp
 3fe:	6a 01                	push   $0x1
 400:	50                   	push   %eax
 401:	6a 00                	push   $0x0
 403:	e8 32 01 00 00       	call   53a <read>
 408:	83 c4 10             	add    $0x10,%esp
 40b:	85 c0                	test   %eax,%eax
 40d:	7e 1c                	jle    42b <gets+0x4b>
 40f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 413:	83 c7 01             	add    $0x1,%edi
 416:	88 47 ff             	mov    %al,-0x1(%edi)
 419:	3c 0a                	cmp    $0xa,%al
 41b:	74 23                	je     440 <gets+0x60>
 41d:	3c 0d                	cmp    $0xd,%al
 41f:	74 1f                	je     440 <gets+0x60>
 421:	83 c3 01             	add    $0x1,%ebx
 424:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 427:	89 fe                	mov    %edi,%esi
 429:	7c cd                	jl     3f8 <gets+0x18>
 42b:	89 f3                	mov    %esi,%ebx
 42d:	8b 45 08             	mov    0x8(%ebp),%eax
 430:	c6 03 00             	movb   $0x0,(%ebx)
 433:	8d 65 f4             	lea    -0xc(%ebp),%esp
 436:	5b                   	pop    %ebx
 437:	5e                   	pop    %esi
 438:	5f                   	pop    %edi
 439:	5d                   	pop    %ebp
 43a:	c3                   	ret    
 43b:	90                   	nop
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 440:	8b 75 08             	mov    0x8(%ebp),%esi
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	01 de                	add    %ebx,%esi
 448:	89 f3                	mov    %esi,%ebx
 44a:	c6 03 00             	movb   $0x0,(%ebx)
 44d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 450:	5b                   	pop    %ebx
 451:	5e                   	pop    %esi
 452:	5f                   	pop    %edi
 453:	5d                   	pop    %ebp
 454:	c3                   	ret    
 455:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <stat>:
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	56                   	push   %esi
 464:	53                   	push   %ebx
 465:	83 ec 08             	sub    $0x8,%esp
 468:	6a 00                	push   $0x0
 46a:	ff 75 08             	pushl  0x8(%ebp)
 46d:	e8 f0 00 00 00       	call   562 <open>
 472:	83 c4 10             	add    $0x10,%esp
 475:	85 c0                	test   %eax,%eax
 477:	78 27                	js     4a0 <stat+0x40>
 479:	83 ec 08             	sub    $0x8,%esp
 47c:	ff 75 0c             	pushl  0xc(%ebp)
 47f:	89 c3                	mov    %eax,%ebx
 481:	50                   	push   %eax
 482:	e8 f3 00 00 00       	call   57a <fstat>
 487:	89 1c 24             	mov    %ebx,(%esp)
 48a:	89 c6                	mov    %eax,%esi
 48c:	e8 b9 00 00 00       	call   54a <close>
 491:	83 c4 10             	add    $0x10,%esp
 494:	8d 65 f8             	lea    -0x8(%ebp),%esp
 497:	89 f0                	mov    %esi,%eax
 499:	5b                   	pop    %ebx
 49a:	5e                   	pop    %esi
 49b:	5d                   	pop    %ebp
 49c:	c3                   	ret    
 49d:	8d 76 00             	lea    0x0(%esi),%esi
 4a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4a5:	eb ed                	jmp    494 <stat+0x34>
 4a7:	89 f6                	mov    %esi,%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <atoi>:
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	53                   	push   %ebx
 4b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4b7:	0f be 11             	movsbl (%ecx),%edx
 4ba:	8d 42 d0             	lea    -0x30(%edx),%eax
 4bd:	3c 09                	cmp    $0x9,%al
 4bf:	b8 00 00 00 00       	mov    $0x0,%eax
 4c4:	77 1f                	ja     4e5 <atoi+0x35>
 4c6:	8d 76 00             	lea    0x0(%esi),%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 4d0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4d3:	83 c1 01             	add    $0x1,%ecx
 4d6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 4da:	0f be 11             	movsbl (%ecx),%edx
 4dd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 4e0:	80 fb 09             	cmp    $0x9,%bl
 4e3:	76 eb                	jbe    4d0 <atoi+0x20>
 4e5:	5b                   	pop    %ebx
 4e6:	5d                   	pop    %ebp
 4e7:	c3                   	ret    
 4e8:	90                   	nop
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <memmove>:
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
 4f5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4f8:	8b 45 08             	mov    0x8(%ebp),%eax
 4fb:	8b 75 0c             	mov    0xc(%ebp),%esi
 4fe:	85 db                	test   %ebx,%ebx
 500:	7e 14                	jle    516 <memmove+0x26>
 502:	31 d2                	xor    %edx,%edx
 504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 508:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 50c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 50f:	83 c2 01             	add    $0x1,%edx
 512:	39 d3                	cmp    %edx,%ebx
 514:	75 f2                	jne    508 <memmove+0x18>
 516:	5b                   	pop    %ebx
 517:	5e                   	pop    %esi
 518:	5d                   	pop    %ebp
 519:	c3                   	ret    

0000051a <fork>:
 51a:	b8 01 00 00 00       	mov    $0x1,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <exit>:
 522:	b8 02 00 00 00       	mov    $0x2,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <wait>:
 52a:	b8 03 00 00 00       	mov    $0x3,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <pipe>:
 532:	b8 04 00 00 00       	mov    $0x4,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <read>:
 53a:	b8 05 00 00 00       	mov    $0x5,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <write>:
 542:	b8 10 00 00 00       	mov    $0x10,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <close>:
 54a:	b8 15 00 00 00       	mov    $0x15,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <kill>:
 552:	b8 06 00 00 00       	mov    $0x6,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <exec>:
 55a:	b8 07 00 00 00       	mov    $0x7,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <open>:
 562:	b8 0f 00 00 00       	mov    $0xf,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <mknod>:
 56a:	b8 11 00 00 00       	mov    $0x11,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <unlink>:
 572:	b8 12 00 00 00       	mov    $0x12,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <fstat>:
 57a:	b8 08 00 00 00       	mov    $0x8,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <link>:
 582:	b8 13 00 00 00       	mov    $0x13,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <mkdir>:
 58a:	b8 14 00 00 00       	mov    $0x14,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <chdir>:
 592:	b8 09 00 00 00       	mov    $0x9,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <dup>:
 59a:	b8 0a 00 00 00       	mov    $0xa,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <getpid>:
 5a2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <sbrk>:
 5aa:	b8 0c 00 00 00       	mov    $0xc,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <sleep>:
 5b2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <uptime>:
 5ba:	b8 0e 00 00 00       	mov    $0xe,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    
 5c2:	66 90                	xchg   %ax,%ax
 5c4:	66 90                	xchg   %ax,%ax
 5c6:	66 90                	xchg   %ax,%ax
 5c8:	66 90                	xchg   %ax,%ax
 5ca:	66 90                	xchg   %ax,%ax
 5cc:	66 90                	xchg   %ax,%ax
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5d9:	85 d2                	test   %edx,%edx
{
 5db:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5de:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 5e0:	79 76                	jns    658 <printint+0x88>
 5e2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5e6:	74 70                	je     658 <printint+0x88>
    x = -xx;
 5e8:	f7 d8                	neg    %eax
    neg = 1;
 5ea:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 5f1:	31 f6                	xor    %esi,%esi
 5f3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 5f6:	eb 0a                	jmp    602 <printint+0x32>
 5f8:	90                   	nop
 5f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 600:	89 fe                	mov    %edi,%esi
 602:	31 d2                	xor    %edx,%edx
 604:	8d 7e 01             	lea    0x1(%esi),%edi
 607:	f7 f1                	div    %ecx
 609:	0f b6 92 4c 0a 00 00 	movzbl 0xa4c(%edx),%edx
  }while((x /= base) != 0);
 610:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 612:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 615:	75 e9                	jne    600 <printint+0x30>
  if(neg)
 617:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 61a:	85 c0                	test   %eax,%eax
 61c:	74 08                	je     626 <printint+0x56>
    buf[i++] = '-';
 61e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 623:	8d 7e 02             	lea    0x2(%esi),%edi
 626:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 62a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
 630:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 633:	83 ec 04             	sub    $0x4,%esp
 636:	83 ee 01             	sub    $0x1,%esi
 639:	6a 01                	push   $0x1
 63b:	53                   	push   %ebx
 63c:	57                   	push   %edi
 63d:	88 45 d7             	mov    %al,-0x29(%ebp)
 640:	e8 fd fe ff ff       	call   542 <write>

  while(--i >= 0)
 645:	83 c4 10             	add    $0x10,%esp
 648:	39 de                	cmp    %ebx,%esi
 64a:	75 e4                	jne    630 <printint+0x60>
    putc(fd, buf[i]);
}
 64c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64f:	5b                   	pop    %ebx
 650:	5e                   	pop    %esi
 651:	5f                   	pop    %edi
 652:	5d                   	pop    %ebp
 653:	c3                   	ret    
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 658:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 65f:	eb 90                	jmp    5f1 <printint+0x21>
 661:	eb 0d                	jmp    670 <printf>
 663:	90                   	nop
 664:	90                   	nop
 665:	90                   	nop
 666:	90                   	nop
 667:	90                   	nop
 668:	90                   	nop
 669:	90                   	nop
 66a:	90                   	nop
 66b:	90                   	nop
 66c:	90                   	nop
 66d:	90                   	nop
 66e:	90                   	nop
 66f:	90                   	nop

00000670 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 679:	8b 75 0c             	mov    0xc(%ebp),%esi
 67c:	0f b6 1e             	movzbl (%esi),%ebx
 67f:	84 db                	test   %bl,%bl
 681:	0f 84 b3 00 00 00    	je     73a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 687:	8d 45 10             	lea    0x10(%ebp),%eax
 68a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 68d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 68f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 692:	eb 2f                	jmp    6c3 <printf+0x53>
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	0f 84 a7 00 00 00    	je     748 <printf+0xd8>
  write(fd, &c, 1);
 6a1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6a4:	83 ec 04             	sub    $0x4,%esp
 6a7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6aa:	6a 01                	push   $0x1
 6ac:	50                   	push   %eax
 6ad:	ff 75 08             	pushl  0x8(%ebp)
 6b0:	e8 8d fe ff ff       	call   542 <write>
 6b5:	83 c4 10             	add    $0x10,%esp
 6b8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6bb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6bf:	84 db                	test   %bl,%bl
 6c1:	74 77                	je     73a <printf+0xca>
    if(state == 0){
 6c3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6c5:	0f be cb             	movsbl %bl,%ecx
 6c8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6cb:	74 cb                	je     698 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6cd:	83 ff 25             	cmp    $0x25,%edi
 6d0:	75 e6                	jne    6b8 <printf+0x48>
      if(c == 'd'){
 6d2:	83 f8 64             	cmp    $0x64,%eax
 6d5:	0f 84 05 01 00 00    	je     7e0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6db:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 6e1:	83 f9 70             	cmp    $0x70,%ecx
 6e4:	74 72                	je     758 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 6e6:	83 f8 73             	cmp    $0x73,%eax
 6e9:	0f 84 99 00 00 00    	je     788 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 6ef:	83 f8 63             	cmp    $0x63,%eax
 6f2:	0f 84 08 01 00 00    	je     800 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	0f 84 ef 00 00 00    	je     7f0 <printf+0x180>
  write(fd, &c, 1);
 701:	8d 45 e7             	lea    -0x19(%ebp),%eax
 704:	83 ec 04             	sub    $0x4,%esp
 707:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 70b:	6a 01                	push   $0x1
 70d:	50                   	push   %eax
 70e:	ff 75 08             	pushl  0x8(%ebp)
 711:	e8 2c fe ff ff       	call   542 <write>
 716:	83 c4 0c             	add    $0xc,%esp
 719:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 71c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 71f:	6a 01                	push   $0x1
 721:	50                   	push   %eax
 722:	ff 75 08             	pushl  0x8(%ebp)
 725:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 728:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 72a:	e8 13 fe ff ff       	call   542 <write>
  for(i = 0; fmt[i]; i++){
 72f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 733:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 736:	84 db                	test   %bl,%bl
 738:	75 89                	jne    6c3 <printf+0x53>
    }
  }
}
 73a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 73d:	5b                   	pop    %ebx
 73e:	5e                   	pop    %esi
 73f:	5f                   	pop    %edi
 740:	5d                   	pop    %ebp
 741:	c3                   	ret    
 742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 748:	bf 25 00 00 00       	mov    $0x25,%edi
 74d:	e9 66 ff ff ff       	jmp    6b8 <printf+0x48>
 752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 758:	83 ec 0c             	sub    $0xc,%esp
 75b:	b9 10 00 00 00       	mov    $0x10,%ecx
 760:	6a 00                	push   $0x0
 762:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 765:	8b 45 08             	mov    0x8(%ebp),%eax
 768:	8b 17                	mov    (%edi),%edx
 76a:	e8 61 fe ff ff       	call   5d0 <printint>
        ap++;
 76f:	89 f8                	mov    %edi,%eax
 771:	83 c4 10             	add    $0x10,%esp
      state = 0;
 774:	31 ff                	xor    %edi,%edi
        ap++;
 776:	83 c0 04             	add    $0x4,%eax
 779:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 77c:	e9 37 ff ff ff       	jmp    6b8 <printf+0x48>
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 788:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 78b:	8b 08                	mov    (%eax),%ecx
        ap++;
 78d:	83 c0 04             	add    $0x4,%eax
 790:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 793:	85 c9                	test   %ecx,%ecx
 795:	0f 84 8e 00 00 00    	je     829 <printf+0x1b9>
        while(*s != 0){
 79b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 79e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7a0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7a2:	84 c0                	test   %al,%al
 7a4:	0f 84 0e ff ff ff    	je     6b8 <printf+0x48>
 7aa:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7ad:	89 de                	mov    %ebx,%esi
 7af:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7b2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7b5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7b8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7bb:	83 c6 01             	add    $0x1,%esi
 7be:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7c1:	6a 01                	push   $0x1
 7c3:	57                   	push   %edi
 7c4:	53                   	push   %ebx
 7c5:	e8 78 fd ff ff       	call   542 <write>
        while(*s != 0){
 7ca:	0f b6 06             	movzbl (%esi),%eax
 7cd:	83 c4 10             	add    $0x10,%esp
 7d0:	84 c0                	test   %al,%al
 7d2:	75 e4                	jne    7b8 <printf+0x148>
 7d4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7d7:	31 ff                	xor    %edi,%edi
 7d9:	e9 da fe ff ff       	jmp    6b8 <printf+0x48>
 7de:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7e8:	6a 01                	push   $0x1
 7ea:	e9 73 ff ff ff       	jmp    762 <printf+0xf2>
 7ef:	90                   	nop
  write(fd, &c, 1);
 7f0:	83 ec 04             	sub    $0x4,%esp
 7f3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 7f6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 7f9:	6a 01                	push   $0x1
 7fb:	e9 21 ff ff ff       	jmp    721 <printf+0xb1>
        putc(fd, *ap);
 800:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 803:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 806:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 808:	6a 01                	push   $0x1
        ap++;
 80a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 80d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 810:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 813:	50                   	push   %eax
 814:	ff 75 08             	pushl  0x8(%ebp)
 817:	e8 26 fd ff ff       	call   542 <write>
        ap++;
 81c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 81f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 822:	31 ff                	xor    %edi,%edi
 824:	e9 8f fe ff ff       	jmp    6b8 <printf+0x48>
          s = "(null)";
 829:	bb 44 0a 00 00       	mov    $0xa44,%ebx
        while(*s != 0){
 82e:	b8 28 00 00 00       	mov    $0x28,%eax
 833:	e9 72 ff ff ff       	jmp    7aa <printf+0x13a>
 838:	66 90                	xchg   %ax,%ax
 83a:	66 90                	xchg   %ax,%ax
 83c:	66 90                	xchg   %ax,%ax
 83e:	66 90                	xchg   %ax,%ax

00000840 <free>:
 840:	55                   	push   %ebp
 841:	a1 60 0d 00 00       	mov    0xd60,%eax
 846:	89 e5                	mov    %esp,%ebp
 848:	57                   	push   %edi
 849:	56                   	push   %esi
 84a:	53                   	push   %ebx
 84b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 84e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 858:	39 c8                	cmp    %ecx,%eax
 85a:	8b 10                	mov    (%eax),%edx
 85c:	73 32                	jae    890 <free+0x50>
 85e:	39 d1                	cmp    %edx,%ecx
 860:	72 04                	jb     866 <free+0x26>
 862:	39 d0                	cmp    %edx,%eax
 864:	72 32                	jb     898 <free+0x58>
 866:	8b 73 fc             	mov    -0x4(%ebx),%esi
 869:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 86c:	39 fa                	cmp    %edi,%edx
 86e:	74 30                	je     8a0 <free+0x60>
 870:	89 53 f8             	mov    %edx,-0x8(%ebx)
 873:	8b 50 04             	mov    0x4(%eax),%edx
 876:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 879:	39 f1                	cmp    %esi,%ecx
 87b:	74 3a                	je     8b7 <free+0x77>
 87d:	89 08                	mov    %ecx,(%eax)
 87f:	a3 60 0d 00 00       	mov    %eax,0xd60
 884:	5b                   	pop    %ebx
 885:	5e                   	pop    %esi
 886:	5f                   	pop    %edi
 887:	5d                   	pop    %ebp
 888:	c3                   	ret    
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 890:	39 d0                	cmp    %edx,%eax
 892:	72 04                	jb     898 <free+0x58>
 894:	39 d1                	cmp    %edx,%ecx
 896:	72 ce                	jb     866 <free+0x26>
 898:	89 d0                	mov    %edx,%eax
 89a:	eb bc                	jmp    858 <free+0x18>
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8a0:	03 72 04             	add    0x4(%edx),%esi
 8a3:	89 73 fc             	mov    %esi,-0x4(%ebx)
 8a6:	8b 10                	mov    (%eax),%edx
 8a8:	8b 12                	mov    (%edx),%edx
 8aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
 8ad:	8b 50 04             	mov    0x4(%eax),%edx
 8b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8b3:	39 f1                	cmp    %esi,%ecx
 8b5:	75 c6                	jne    87d <free+0x3d>
 8b7:	03 53 fc             	add    -0x4(%ebx),%edx
 8ba:	a3 60 0d 00 00       	mov    %eax,0xd60
 8bf:	89 50 04             	mov    %edx,0x4(%eax)
 8c2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8c5:	89 10                	mov    %edx,(%eax)
 8c7:	5b                   	pop    %ebx
 8c8:	5e                   	pop    %esi
 8c9:	5f                   	pop    %edi
 8ca:	5d                   	pop    %ebp
 8cb:	c3                   	ret    
 8cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008d0 <malloc>:
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	83 ec 0c             	sub    $0xc,%esp
 8d9:	8b 45 08             	mov    0x8(%ebp),%eax
 8dc:	8b 15 60 0d 00 00    	mov    0xd60,%edx
 8e2:	8d 78 07             	lea    0x7(%eax),%edi
 8e5:	c1 ef 03             	shr    $0x3,%edi
 8e8:	83 c7 01             	add    $0x1,%edi
 8eb:	85 d2                	test   %edx,%edx
 8ed:	0f 84 9d 00 00 00    	je     990 <malloc+0xc0>
 8f3:	8b 02                	mov    (%edx),%eax
 8f5:	8b 48 04             	mov    0x4(%eax),%ecx
 8f8:	39 cf                	cmp    %ecx,%edi
 8fa:	76 6c                	jbe    968 <malloc+0x98>
 8fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 902:	bb 00 10 00 00       	mov    $0x1000,%ebx
 907:	0f 43 df             	cmovae %edi,%ebx
 90a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 911:	eb 0e                	jmp    921 <malloc+0x51>
 913:	90                   	nop
 914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 918:	8b 02                	mov    (%edx),%eax
 91a:	8b 48 04             	mov    0x4(%eax),%ecx
 91d:	39 f9                	cmp    %edi,%ecx
 91f:	73 47                	jae    968 <malloc+0x98>
 921:	39 05 60 0d 00 00    	cmp    %eax,0xd60
 927:	89 c2                	mov    %eax,%edx
 929:	75 ed                	jne    918 <malloc+0x48>
 92b:	83 ec 0c             	sub    $0xc,%esp
 92e:	56                   	push   %esi
 92f:	e8 76 fc ff ff       	call   5aa <sbrk>
 934:	83 c4 10             	add    $0x10,%esp
 937:	83 f8 ff             	cmp    $0xffffffff,%eax
 93a:	74 1c                	je     958 <malloc+0x88>
 93c:	89 58 04             	mov    %ebx,0x4(%eax)
 93f:	83 ec 0c             	sub    $0xc,%esp
 942:	83 c0 08             	add    $0x8,%eax
 945:	50                   	push   %eax
 946:	e8 f5 fe ff ff       	call   840 <free>
 94b:	8b 15 60 0d 00 00    	mov    0xd60,%edx
 951:	83 c4 10             	add    $0x10,%esp
 954:	85 d2                	test   %edx,%edx
 956:	75 c0                	jne    918 <malloc+0x48>
 958:	8d 65 f4             	lea    -0xc(%ebp),%esp
 95b:	31 c0                	xor    %eax,%eax
 95d:	5b                   	pop    %ebx
 95e:	5e                   	pop    %esi
 95f:	5f                   	pop    %edi
 960:	5d                   	pop    %ebp
 961:	c3                   	ret    
 962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 968:	39 cf                	cmp    %ecx,%edi
 96a:	74 54                	je     9c0 <malloc+0xf0>
 96c:	29 f9                	sub    %edi,%ecx
 96e:	89 48 04             	mov    %ecx,0x4(%eax)
 971:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
 974:	89 78 04             	mov    %edi,0x4(%eax)
 977:	89 15 60 0d 00 00    	mov    %edx,0xd60
 97d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 980:	83 c0 08             	add    $0x8,%eax
 983:	5b                   	pop    %ebx
 984:	5e                   	pop    %esi
 985:	5f                   	pop    %edi
 986:	5d                   	pop    %ebp
 987:	c3                   	ret    
 988:	90                   	nop
 989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 990:	c7 05 60 0d 00 00 64 	movl   $0xd64,0xd60
 997:	0d 00 00 
 99a:	c7 05 64 0d 00 00 64 	movl   $0xd64,0xd64
 9a1:	0d 00 00 
 9a4:	b8 64 0d 00 00       	mov    $0xd64,%eax
 9a9:	c7 05 68 0d 00 00 00 	movl   $0x0,0xd68
 9b0:	00 00 00 
 9b3:	e9 44 ff ff ff       	jmp    8fc <malloc+0x2c>
 9b8:	90                   	nop
 9b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9c0:	8b 08                	mov    (%eax),%ecx
 9c2:	89 0a                	mov    %ecx,(%edx)
 9c4:	eb b1                	jmp    977 <malloc+0xa7>
