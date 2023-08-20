
rms:     формат файла elf64-x86-64


Дизассемблирование раздела .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Дизассемблирование раздела .plt:

0000000000001020 <.plt>:
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 83 2f 00 00 	bnd jmp *0x2f83(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop

Дизассемблирование раздела .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 7d 2f 00 00 	bnd jmp *0x2f7d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .plt.sec:

0000000000001080 <putchar@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 2d 2f 00 00 	bnd jmp *0x2f2d(%rip)        # 3fb8 <putchar@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <__stack_chk_fail@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 25 2f 00 00 	bnd jmp *0x2f25(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <printf@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 1d 2f 00 00 	bnd jmp *0x2f1d(%rip)        # 3fc8 <printf@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <rand@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 15 2f 00 00 	bnd jmp *0x2f15(%rip)        # 3fd0 <rand@GLIBC_2.2.5>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	49 89 d1             	mov    %rdx,%r9
    10c9:	5e                   	pop    %rsi
    10ca:	48 89 e2             	mov    %rsp,%rdx
    10cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10d1:	50                   	push   %rax
    10d2:	54                   	push   %rsp
    10d3:	45 31 c0             	xor    %r8d,%r8d
    10d6:	31 c9                	xor    %ecx,%ecx
    10d8:	48 8d 3d 45 04 00 00 	lea    0x445(%rip),%rdi        # 1524 <main>
    10df:	ff 15 f3 2e 00 00    	call   *0x2ef3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt    
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 19 2f 00 00 	lea    0x2f19(%rip),%rdi        # 4010 <__TMC_END__>
    10f7:	48 8d 05 12 2f 00 00 	lea    0x2f12(%rip),%rax        # 4010 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 d6 2e 00 00 	mov    0x2ed6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d e9 2e 00 00 	lea    0x2ee9(%rip),%rdi        # 4010 <__TMC_END__>
    1127:	48 8d 35 e2 2e 00 00 	lea    0x2ee2(%rip),%rsi        # 4010 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	80 3d a5 2e 00 00 00 	cmpb   $0x0,0x2ea5(%rip)        # 4010 <__TMC_END__>
    116b:	75 2b                	jne    1198 <__do_global_dtors_aux+0x38>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 82 2e 00 00 	cmpq   $0x0,0x2e82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0c                	je     1187 <__do_global_dtors_aux+0x27>
    117b:	48 8b 3d 86 2e 00 00 	mov    0x2e86(%rip),%rdi        # 4008 <__dso_handle>
    1182:	e8 e9 fe ff ff       	call   1070 <__cxa_finalize@plt>
    1187:	e8 64 ff ff ff       	call   10f0 <deregister_tm_clones>
    118c:	c6 05 7d 2e 00 00 01 	movb   $0x1,0x2e7d(%rip)        # 4010 <__TMC_END__>
    1193:	5d                   	pop    %rbp
    1194:	c3                   	ret    
    1195:	0f 1f 00             	nopl   (%rax)
    1198:	c3                   	ret    
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	e9 77 ff ff ff       	jmp    1120 <register_tm_clones>

00000000000011a9 <dumb_min_search>:
    11a9:	f3 0f 1e fa          	endbr64 
    11ad:	55                   	push   %rbp
    11ae:	48 89 e5             	mov    %rsp,%rbp
    11b1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    11b5:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    11b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11bc:	0f b7 00             	movzwl (%rax),%eax
    11bf:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
    11c3:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    11ca:	00 
    11cb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    11d2:	eb 3d                	jmp    1211 <dumb_min_search+0x68>
    11d4:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11d7:	48 98                	cltq   
    11d9:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    11dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11e1:	48 01 d0             	add    %rdx,%rax
    11e4:	0f b7 00             	movzwl (%rax),%eax
    11e7:	66 39 45 f2          	cmp    %ax,-0xe(%rbp)
    11eb:	76 20                	jbe    120d <dumb_min_search+0x64>
    11ed:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11f0:	48 98                	cltq   
    11f2:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    11f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11fa:	48 01 d0             	add    %rdx,%rax
    11fd:	0f b7 00             	movzwl (%rax),%eax
    1200:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
    1204:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1207:	48 98                	cltq   
    1209:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    120d:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1211:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1214:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    1217:	7c bb                	jl     11d4 <dumb_min_search+0x2b>
    1219:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    121d:	5d                   	pop    %rbp
    121e:	c3                   	ret    

000000000000121f <rec_min_search>:
    121f:	f3 0f 1e fa          	endbr64 
    1223:	55                   	push   %rbp
    1224:	48 89 e5             	mov    %rsp,%rbp
    1227:	41 57                	push   %r15
    1229:	41 56                	push   %r14
    122b:	41 54                	push   %r12
    122d:	53                   	push   %rbx
    122e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1232:	48 89 bd 68 ff ff ff 	mov    %rdi,-0x98(%rbp)
    1239:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
    1240:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1247:	00 00 
    1249:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    124d:	31 c0                	xor    %eax,%eax
    124f:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1256:	48 c1 e8 03          	shr    $0x3,%rax
    125a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    125e:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
    1265:	83 e0 07             	and    $0x7,%eax
    1268:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    126c:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    1271:	74 0a                	je     127d <rec_min_search+0x5e>
    1273:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1277:	48 83 c0 01          	add    $0x1,%rax
    127b:	eb 04                	jmp    1281 <rec_min_search+0x62>
    127d:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1281:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1285:	48 83 7d 88 00       	cmpq   $0x0,-0x78(%rbp)
    128a:	0f 84 5c 02 00 00    	je     14ec <rec_min_search+0x2cd>
    1290:	48 89 e0             	mov    %rsp,%rax
    1293:	49 89 c4             	mov    %rax,%r12
    1296:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    129a:	48 89 c2             	mov    %rax,%rdx
    129d:	48 83 ea 01          	sub    $0x1,%rdx
    12a1:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
    12a5:	49 89 c6             	mov    %rax,%r14
    12a8:	41 bf 00 00 00 00    	mov    $0x0,%r15d
    12ae:	48 89 c1             	mov    %rax,%rcx
    12b1:	bb 00 00 00 00       	mov    $0x0,%ebx
    12b6:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    12ba:	b8 10 00 00 00       	mov    $0x10,%eax
    12bf:	48 83 e8 01          	sub    $0x1,%rax
    12c3:	48 01 d0             	add    %rdx,%rax
    12c6:	bb 10 00 00 00       	mov    $0x10,%ebx
    12cb:	ba 00 00 00 00       	mov    $0x0,%edx
    12d0:	48 f7 f3             	div    %rbx
    12d3:	48 6b c0 10          	imul   $0x10,%rax,%rax
    12d7:	48 89 c1             	mov    %rax,%rcx
    12da:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
    12e1:	48 89 e2             	mov    %rsp,%rdx
    12e4:	48 29 ca             	sub    %rcx,%rdx
    12e7:	48 39 d4             	cmp    %rdx,%rsp
    12ea:	74 12                	je     12fe <rec_min_search+0xdf>
    12ec:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    12f3:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
    12fa:	00 00 
    12fc:	eb e9                	jmp    12e7 <rec_min_search+0xc8>
    12fe:	48 89 c2             	mov    %rax,%rdx
    1301:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    1307:	48 29 d4             	sub    %rdx,%rsp
    130a:	48 89 c2             	mov    %rax,%rdx
    130d:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    1313:	48 85 d2             	test   %rdx,%rdx
    1316:	74 10                	je     1328 <rec_min_search+0x109>
    1318:	25 ff 0f 00 00       	and    $0xfff,%eax
    131d:	48 83 e8 08          	sub    $0x8,%rax
    1321:	48 01 e0             	add    %rsp,%rax
    1324:	48 83 08 00          	orq    $0x0,(%rax)
    1328:	48 89 e0             	mov    %rsp,%rax
    132b:	48 83 c0 01          	add    $0x1,%rax
    132f:	48 d1 e8             	shr    %rax
    1332:	48 01 c0             	add    %rax,%rax
    1335:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1339:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    133d:	48 89 c2             	mov    %rax,%rdx
    1340:	48 83 ea 01          	sub    $0x1,%rdx
    1344:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    1348:	49 89 c2             	mov    %rax,%r10
    134b:	41 bb 00 00 00 00    	mov    $0x0,%r11d
    1351:	49 89 c0             	mov    %rax,%r8
    1354:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    135a:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    135e:	b8 10 00 00 00       	mov    $0x10,%eax
    1363:	48 83 e8 01          	sub    $0x1,%rax
    1367:	48 01 d0             	add    %rdx,%rax
    136a:	be 10 00 00 00       	mov    $0x10,%esi
    136f:	ba 00 00 00 00       	mov    $0x0,%edx
    1374:	48 f7 f6             	div    %rsi
    1377:	48 6b c0 10          	imul   $0x10,%rax,%rax
    137b:	48 89 c1             	mov    %rax,%rcx
    137e:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
    1385:	48 89 e2             	mov    %rsp,%rdx
    1388:	48 29 ca             	sub    %rcx,%rdx
    138b:	48 39 d4             	cmp    %rdx,%rsp
    138e:	74 12                	je     13a2 <rec_min_search+0x183>
    1390:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1397:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
    139e:	00 00 
    13a0:	eb e9                	jmp    138b <rec_min_search+0x16c>
    13a2:	48 89 c2             	mov    %rax,%rdx
    13a5:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    13ab:	48 29 d4             	sub    %rdx,%rsp
    13ae:	48 89 c2             	mov    %rax,%rdx
    13b1:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    13b7:	48 85 d2             	test   %rdx,%rdx
    13ba:	74 10                	je     13cc <rec_min_search+0x1ad>
    13bc:	25 ff 0f 00 00       	and    $0xfff,%eax
    13c1:	48 83 e8 08          	sub    $0x8,%rax
    13c5:	48 01 e0             	add    %rsp,%rax
    13c8:	48 83 08 00          	orq    $0x0,(%rax)
    13cc:	48 89 e0             	mov    %rsp,%rax
    13cf:	48 83 c0 01          	add    $0x1,%rax
    13d3:	48 d1 e8             	shr    %rax
    13d6:	48 01 c0             	add    %rax,%rax
    13d9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    13dd:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    13e4:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    13e8:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    13ef:	00 
    13f0:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    13f7:	00 
    13f8:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%rbp)
    13ff:	00 00 00 
    1402:	eb 53                	jmp    1457 <rec_min_search+0x238>
    1404:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1408:	66 0f 6f 00          	movdqa (%rax),%xmm0
    140c:	66 0f 38 41 c0       	phminposuw %xmm0,%xmm0
    1411:	0f 29 45 c0          	movaps %xmm0,-0x40(%rbp)
    1415:	0f b7 4d c0          	movzwl -0x40(%rbp),%ecx
    1419:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    141d:	8b 95 7c ff ff ff    	mov    -0x84(%rbp),%edx
    1423:	48 63 d2             	movslq %edx,%rdx
    1426:	66 89 0c 50          	mov    %cx,(%rax,%rdx,2)
    142a:	0f b7 55 c2          	movzwl -0x3e(%rbp),%edx
    142e:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    1434:	c1 e0 03             	shl    $0x3,%eax
    1437:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    143a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    143e:	8b 95 7c ff ff ff    	mov    -0x84(%rbp),%edx
    1444:	48 63 d2             	movslq %edx,%rdx
    1447:	66 89 0c 50          	mov    %cx,(%rax,%rdx,2)
    144b:	48 83 45 80 10       	addq   $0x10,-0x80(%rbp)
    1450:	83 85 7c ff ff ff 01 	addl   $0x1,-0x84(%rbp)
    1457:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
    145d:	48 98                	cltq   
    145f:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
    1463:	77 9f                	ja     1404 <rec_min_search+0x1e5>
    1465:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
    146a:	74 5a                	je     14c6 <rec_min_search+0x2a7>
    146c:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    1470:	8d 1c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebx
    1477:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    147b:	89 c2                	mov    %eax,%edx
    147d:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1481:	89 d6                	mov    %edx,%esi
    1483:	48 89 c7             	mov    %rax,%rdi
    1486:	e8 1e fd ff ff       	call   11a9 <dumb_min_search>
    148b:	8d 0c 03             	lea    (%rbx,%rax,1),%ecx
    148e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1492:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    1496:	66 89 0c 50          	mov    %cx,(%rax,%rdx,2)
    149a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    149e:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    14a2:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
    14a6:	0f b7 c0             	movzwl %ax,%eax
    14a9:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    14ad:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    14b4:	48 01 d0             	add    %rdx,%rax
    14b7:	0f b7 08             	movzwl (%rax),%ecx
    14ba:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    14be:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
    14c2:	66 89 0c 50          	mov    %cx,(%rax,%rdx,2)
    14c6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    14ca:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    14ce:	48 89 d6             	mov    %rdx,%rsi
    14d1:	48 89 c7             	mov    %rax,%rdi
    14d4:	e8 46 fd ff ff       	call   121f <rec_min_search>
    14d9:	0f b7 d0             	movzwl %ax,%edx
    14dc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    14e0:	48 63 d2             	movslq %edx,%rdx
    14e3:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
    14e7:	4c 89 e4             	mov    %r12,%rsp
    14ea:	eb 17                	jmp    1503 <rec_min_search+0x2e4>
    14ec:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    14f0:	89 c2                	mov    %eax,%edx
    14f2:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
    14f9:	89 d6                	mov    %edx,%esi
    14fb:	48 89 c7             	mov    %rax,%rdi
    14fe:	e8 a6 fc ff ff       	call   11a9 <dumb_min_search>
    1503:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1507:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    150e:	00 00 
    1510:	74 05                	je     1517 <rec_min_search+0x2f8>
    1512:	e8 79 fb ff ff       	call   1090 <__stack_chk_fail@plt>
    1517:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
    151b:	5b                   	pop    %rbx
    151c:	41 5c                	pop    %r12
    151e:	41 5e                	pop    %r14
    1520:	41 5f                	pop    %r15
    1522:	5d                   	pop    %rbp
    1523:	c3                   	ret    

0000000000001524 <main>:
    1524:	f3 0f 1e fa          	endbr64 
    1528:	55                   	push   %rbp
    1529:	48 89 e5             	mov    %rsp,%rbp
    152c:	53                   	push   %rbx
    152d:	48 83 ec 38          	sub    $0x38,%rsp
    1531:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1538:	00 00 
    153a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    153e:	31 c0                	xor    %eax,%eax
    1540:	48 89 e0             	mov    %rsp,%rax
    1543:	48 89 c3             	mov    %rax,%rbx
    1546:	c7 45 d0 12 02 00 00 	movl   $0x212,-0x30(%rbp)
    154d:	8b 45 d0             	mov    -0x30(%rbp),%eax
    1550:	48 63 d0             	movslq %eax,%rdx
    1553:	48 83 ea 01          	sub    $0x1,%rdx
    1557:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    155b:	48 63 d0             	movslq %eax,%rdx
    155e:	49 89 d0             	mov    %rdx,%r8
    1561:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    1567:	48 63 d0             	movslq %eax,%rdx
    156a:	48 89 d6             	mov    %rdx,%rsi
    156d:	bf 00 00 00 00       	mov    $0x0,%edi
    1572:	48 98                	cltq   
    1574:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    1578:	b8 10 00 00 00       	mov    $0x10,%eax
    157d:	48 83 e8 01          	sub    $0x1,%rax
    1581:	48 01 d0             	add    %rdx,%rax
    1584:	be 10 00 00 00       	mov    $0x10,%esi
    1589:	ba 00 00 00 00       	mov    $0x0,%edx
    158e:	48 f7 f6             	div    %rsi
    1591:	48 6b c0 10          	imul   $0x10,%rax,%rax
    1595:	48 89 c1             	mov    %rax,%rcx
    1598:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
    159f:	48 89 e2             	mov    %rsp,%rdx
    15a2:	48 29 ca             	sub    %rcx,%rdx
    15a5:	48 39 d4             	cmp    %rdx,%rsp
    15a8:	74 12                	je     15bc <main+0x98>
    15aa:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    15b1:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
    15b8:	00 00 
    15ba:	eb e9                	jmp    15a5 <main+0x81>
    15bc:	48 89 c2             	mov    %rax,%rdx
    15bf:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    15c5:	48 29 d4             	sub    %rdx,%rsp
    15c8:	48 89 c2             	mov    %rax,%rdx
    15cb:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
    15d1:	48 85 d2             	test   %rdx,%rdx
    15d4:	74 10                	je     15e6 <main+0xc2>
    15d6:	25 ff 0f 00 00       	and    $0xfff,%eax
    15db:	48 83 e8 08          	sub    $0x8,%rax
    15df:	48 01 e0             	add    %rsp,%rax
    15e2:	48 83 08 00          	orq    $0x0,(%rax)
    15e6:	48 89 e0             	mov    %rsp,%rax
    15e9:	48 83 c0 01          	add    $0x1,%rax
    15ed:	48 d1 e8             	shr    %rax
    15f0:	48 01 c0             	add    %rax,%rax
    15f3:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    15f7:	66 c7 45 ca 01 00    	movw   $0x1,-0x36(%rbp)
    15fd:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    1604:	e9 83 00 00 00       	jmp    168c <main+0x168>
    1609:	e8 a2 fa ff ff       	call   10b0 <rand@plt>
    160e:	48 63 d0             	movslq %eax,%rdx
    1611:	48 69 d2 d3 4d 62 10 	imul   $0x10624dd3,%rdx,%rdx
    1618:	48 c1 ea 20          	shr    $0x20,%rdx
    161c:	c1 fa 06             	sar    $0x6,%edx
    161f:	89 c1                	mov    %eax,%ecx
    1621:	c1 f9 1f             	sar    $0x1f,%ecx
    1624:	29 ca                	sub    %ecx,%edx
    1626:	69 ca e8 03 00 00    	imul   $0x3e8,%edx,%ecx
    162c:	29 c8                	sub    %ecx,%eax
    162e:	89 c2                	mov    %eax,%edx
    1630:	89 d1                	mov    %edx,%ecx
    1632:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1636:	8b 55 cc             	mov    -0x34(%rbp),%edx
    1639:	48 63 d2             	movslq %edx,%rdx
    163c:	66 89 0c 50          	mov    %cx,(%rax,%rdx,2)
    1640:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1644:	8b 55 cc             	mov    -0x34(%rbp),%edx
    1647:	48 63 d2             	movslq %edx,%rdx
    164a:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
    164e:	0f b7 c0             	movzwl %ax,%eax
    1651:	89 c6                	mov    %eax,%esi
    1653:	48 8d 05 aa 09 00 00 	lea    0x9aa(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    165a:	48 89 c7             	mov    %rax,%rdi
    165d:	b8 00 00 00 00       	mov    $0x0,%eax
    1662:	e8 39 fa ff ff       	call   10a0 <printf@plt>
    1667:	0f b7 45 ca          	movzwl -0x36(%rbp),%eax
    166b:	83 e0 07             	and    $0x7,%eax
    166e:	66 85 c0             	test   %ax,%ax
    1671:	75 0a                	jne    167d <main+0x159>
    1673:	bf 0a 00 00 00       	mov    $0xa,%edi
    1678:	e8 03 fa ff ff       	call   1080 <putchar@plt>
    167d:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1681:	0f b7 45 ca          	movzwl -0x36(%rbp),%eax
    1685:	83 c0 01             	add    $0x1,%eax
    1688:	66 89 45 ca          	mov    %ax,-0x36(%rbp)
    168c:	8b 45 cc             	mov    -0x34(%rbp),%eax
    168f:	3b 45 d0             	cmp    -0x30(%rbp),%eax
    1692:	0f 8c 71 ff ff ff    	jl     1609 <main+0xe5>
    1698:	bf 0a 00 00 00       	mov    $0xa,%edi
    169d:	e8 de f9 ff ff       	call   1080 <putchar@plt>
    16a2:	8b 45 d0             	mov    -0x30(%rbp),%eax
    16a5:	48 63 d0             	movslq %eax,%rdx
    16a8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16ac:	48 89 d6             	mov    %rdx,%rsi
    16af:	48 89 c7             	mov    %rax,%rdi
    16b2:	e8 68 fb ff ff       	call   121f <rec_min_search>
    16b7:	0f b7 c0             	movzwl %ax,%eax
    16ba:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    16bd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    16c1:	8b 55 d4             	mov    -0x2c(%rbp),%edx
    16c4:	48 63 d2             	movslq %edx,%rdx
    16c7:	0f b7 04 50          	movzwl (%rax,%rdx,2),%eax
    16cb:	0f b7 d0             	movzwl %ax,%edx
    16ce:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    16d1:	89 c6                	mov    %eax,%esi
    16d3:	48 8d 05 2e 09 00 00 	lea    0x92e(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    16da:	48 89 c7             	mov    %rax,%rdi
    16dd:	b8 00 00 00 00       	mov    $0x0,%eax
    16e2:	e8 b9 f9 ff ff       	call   10a0 <printf@plt>
    16e7:	48 89 dc             	mov    %rbx,%rsp
    16ea:	b8 00 00 00 00       	mov    $0x0,%eax
    16ef:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    16f3:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    16fa:	00 00 
    16fc:	74 05                	je     1703 <main+0x1df>
    16fe:	e8 8d f9 ff ff       	call   1090 <__stack_chk_fail@plt>
    1703:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1707:	c9                   	leave  
    1708:	c3                   	ret    

Дизассемблирование раздела .fini:

000000000000170c <_fini>:
    170c:	f3 0f 1e fa          	endbr64 
    1710:	48 83 ec 08          	sub    $0x8,%rsp
    1714:	48 83 c4 08          	add    $0x8,%rsp
    1718:	c3                   	ret    
