
ams:     формат файла elf64-x86-64


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
    1020:	ff 35 92 2f 00 00    	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 93 2f 00 00 	bnd jmp *0x2f93(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop

Дизассемблирование раздела .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 9d 2f 00 00 	bnd jmp *0x2f9d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .plt.sec:

0000000000001060 <__stack_chk_fail@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <printf@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Дизассемблирование раздела .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d ab 02 00 00 	lea    0x2ab(%rip),%rdi        # 134a <main>
    109f:	ff 15 33 2f 00 00    	call   *0x2f33(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt    
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	e8 09 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	ret    
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <dumb_min_search>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1175:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    1178:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    117c:	0f b7 00             	movzwl (%rax),%eax
    117f:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
    1183:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    118a:	00 
    118b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1192:	eb 3d                	jmp    11d1 <dumb_min_search+0x68>
    1194:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1197:	48 98                	cltq   
    1199:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    119d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11a1:	48 01 d0             	add    %rdx,%rax
    11a4:	0f b7 00             	movzwl (%rax),%eax
    11a7:	66 39 45 f2          	cmp    %ax,-0xe(%rbp)
    11ab:	76 20                	jbe    11cd <dumb_min_search+0x64>
    11ad:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11b0:	48 98                	cltq   
    11b2:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    11b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11ba:	48 01 d0             	add    %rdx,%rax
    11bd:	0f b7 00             	movzwl (%rax),%eax
    11c0:	66 89 45 f2          	mov    %ax,-0xe(%rbp)
    11c4:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11c7:	48 98                	cltq   
    11c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11cd:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    11d1:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11d4:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    11d7:	7c bb                	jl     1194 <dumb_min_search+0x2b>
    11d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11dd:	5d                   	pop    %rbp
    11de:	c3                   	ret    

00000000000011df <min_search>:
    11df:	f3 0f 1e fa          	endbr64 
    11e3:	55                   	push   %rbp
    11e4:	48 89 e5             	mov    %rsp,%rbp
    11e7:	48 83 ec 50          	sub    $0x50,%rsp

    11eb:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    11ef:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
     
    11f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    11fa:	00 00 
    11fc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1200:	31 c0                	xor    %eax,%eax
    
    1202:	48 83 7d b0 07       	cmpq   $0x7,-0x50(%rbp)
    1207:	77 19                	ja     1222 <min_search+0x43>
    1209:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    120d:	89 c2                	mov    %eax,%edx
    120f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1213:	89 d6                	mov    %edx,%esi
    1215:	48 89 c7             	mov    %rax,%rdi
    1218:	e8 4c ff ff ff       	call   1169 <dumb_min_search>
    121d:	e9 12 01 00 00       	jmp    1334 <min_search+0x155>
    1222:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1226:	48 c1 e8 03          	shr    $0x3,%rax
    122a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    122e:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1235:	00 
    1236:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    123d:	00 
    123e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1242:	66 0f 6f 00          	movdqa (%rax),%xmm0
    1246:	66 0f 38 41 c0       	phminposuw %xmm0,%xmm0
    124b:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    124f:	0f b7 45 e0          	movzwl -0x20(%rbp),%eax
    1253:	66 89 45 c4          	mov    %ax,-0x3c(%rbp)
    1257:	0f b7 45 e2          	movzwl -0x1e(%rbp),%eax
    125b:	66 89 45 c6          	mov    %ax,-0x3a(%rbp)
    125f:	0f b7 55 c4          	movzwl -0x3c(%rbp),%edx
    1263:	0f b7 45 c6          	movzwl -0x3a(%rbp),%eax
    1267:	89 c6                	mov    %eax,%esi
    1269:	48 8d 05 94 0d 00 00 	lea    0xd94(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1270:	48 89 c7             	mov    %rax,%rdi
    1273:	b8 00 00 00 00       	mov    $0x0,%eax
    1278:	e8 f3 fd ff ff       	call   1070 <printf@plt>
    127d:	c7 45 c8 01 00 00 00 	movl   $0x1,-0x38(%rbp)
    1284:	eb 4d                	jmp    12d3 <min_search+0xf4>
    1286:	8b 45 c8             	mov    -0x38(%rbp),%eax
    1289:	c1 e0 03             	shl    $0x3,%eax
    128c:	48 98                	cltq   
    128e:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    1292:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1296:	48 01 d0             	add    %rdx,%rax
    1299:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    129d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12a1:	0f 10 00             	movups (%rax),%xmm0
    12a4:	66 0f 38 41 c0       	phminposuw %xmm0,%xmm0
    12a9:	0f 11 45 e0          	movups %xmm0,-0x20(%rbp)
    12ad:	0f b7 45 e0          	movzwl -0x20(%rbp),%eax
    12b1:	66 39 45 c4          	cmp    %ax,-0x3c(%rbp)
    12b5:	76 18                	jbe    12cf <min_search+0xf0>
    12b7:	0f b7 45 e0          	movzwl -0x20(%rbp),%eax
    12bb:	66 89 45 c4          	mov    %ax,-0x3c(%rbp)
    12bf:	0f b7 55 e2          	movzwl -0x1e(%rbp),%edx
    12c3:	8b 45 c8             	mov    -0x38(%rbp),%eax
    12c6:	c1 e0 03             	shl    $0x3,%eax
    12c9:	01 d0                	add    %edx,%eax
    12cb:	66 89 45 c6          	mov    %ax,-0x3a(%rbp)
    12cf:	83 45 c8 01          	addl   $0x1,-0x38(%rbp)
    12d3:	8b 45 c8             	mov    -0x38(%rbp),%eax
    12d6:	48 98                	cltq   
    12d8:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    12dc:	77 a8                	ja     1286 <min_search+0xa7>
    12de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12e2:	c1 e0 03             	shl    $0x3,%eax
    12e5:	89 45 cc             	mov    %eax,-0x34(%rbp)
    12e8:	eb 3b                	jmp    1325 <min_search+0x146>
    12ea:	8b 45 cc             	mov    -0x34(%rbp),%eax
    12ed:	48 98                	cltq   
    12ef:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    12f3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    12f7:	48 01 d0             	add    %rdx,%rax
    12fa:	0f b7 00             	movzwl (%rax),%eax
    12fd:	66 39 45 c4          	cmp    %ax,-0x3c(%rbp)
    1301:	76 1e                	jbe    1321 <min_search+0x142>
    1303:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1306:	48 98                	cltq   
    1308:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
    130c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1310:	48 01 d0             	add    %rdx,%rax
    1313:	0f b7 00             	movzwl (%rax),%eax
    1316:	66 89 45 c4          	mov    %ax,-0x3c(%rbp)
    131a:	8b 45 cc             	mov    -0x34(%rbp),%eax
    131d:	66 89 45 c6          	mov    %ax,-0x3a(%rbp)
    1321:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
    1325:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1328:	48 98                	cltq   
    132a:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
    132e:	77 ba                	ja     12ea <min_search+0x10b>
    1330:	0f b7 45 c6          	movzwl -0x3a(%rbp),%eax
    1334:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1338:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    133f:	00 00 
    1341:	74 05                	je     1348 <min_search+0x169>
    1343:	e8 18 fd ff ff       	call   1060 <__stack_chk_fail@plt>
    1348:	c9                   	leave  
    1349:	c3                   	ret    

000000000000134a <main>:
    134a:	f3 0f 1e fa          	endbr64 
    134e:	55                   	push   %rbp
    134f:	48 89 e5             	mov    %rsp,%rbp
    1352:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    1359:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1360:	00 00 
    1362:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1366:	31 c0                	xor    %eax,%eax
    1368:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
    136f:	b8 00 00 00 00       	mov    $0x0,%eax
    1374:	b9 19 00 00 00       	mov    $0x19,%ecx
    1379:	48 89 d7             	mov    %rdx,%rdi
    137c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    137f:	66 c7 85 30 ff ff ff 	movw   $0x1,-0xd0(%rbp)
    1386:	01 00 
    1388:	66 c7 85 32 ff ff ff 	movw   $0x5,-0xce(%rbp)
    138f:	05 00 
    1391:	66 c7 85 34 ff ff ff 	movw   $0x7b,-0xcc(%rbp)
    1398:	7b 00 
    139a:	66 c7 85 36 ff ff ff 	movw   $0x159,-0xca(%rbp)
    13a1:	59 01 
    13a3:	66 c7 85 38 ff ff ff 	movw   $0x4e,-0xc8(%rbp)
    13aa:	4e 00 
    13ac:	66 c7 85 3a ff ff ff 	movw   $0x1,-0xc6(%rbp)
    13b3:	01 00 
    13b5:	66 c7 85 3c ff ff ff 	movw   $0x17,-0xc4(%rbp)
    13bc:	17 00 
    13be:	66 c7 85 3e ff ff ff 	movw   $0x5,-0xc2(%rbp)
    13c5:	05 00 
    13c7:	66 c7 85 40 ff ff ff 	movw   $0x2,-0xc0(%rbp)
    13ce:	02 00 
    13d0:	66 c7 85 42 ff ff ff 	movw   $0x2d,-0xbe(%rbp)
    13d7:	2d 00 
    13d9:	66 c7 85 44 ff ff ff 	movw   $0x3,-0xbc(%rbp)
    13e0:	03 00 
    13e2:	66 c7 85 46 ff ff ff 	movw   $0x7,-0xba(%rbp)
    13e9:	07 00 
    13eb:	66 c7 85 48 ff ff ff 	movw   $0x17,-0xb8(%rbp)
    13f2:	17 00 
    13f4:	66 c7 85 4a ff ff ff 	movw   $0x9,-0xb6(%rbp)
    13fb:	09 00 
    13fd:	66 c7 85 4c ff ff ff 	movw   $0xa,-0xb4(%rbp)
    1404:	0a 00 
    1406:	66 c7 85 4e ff ff ff 	movw   $0x2,-0xb2(%rbp)
    140d:	02 00 
    140f:	66 c7 85 50 ff ff ff 	movw   $0x18,-0xb0(%rbp)
    1416:	18 00 
    1418:	66 c7 85 52 ff ff ff 	movw   $0x5,-0xae(%rbp)
    141f:	05 00 
    1421:	66 c7 85 54 ff ff ff 	movw   $0x17,-0xac(%rbp)
    1428:	17 00 
    142a:	66 c7 85 56 ff ff ff 	movw   $0x143,-0xaa(%rbp)
    1431:	43 01 
    1433:	66 c7 85 58 ff ff ff 	movw   $0x143,-0xa8(%rbp)
    143a:	43 01 
    143c:	66 c7 85 5a ff ff ff 	movw   $0x22,-0xa6(%rbp)
    1443:	22 00 
    1445:	66 c7 85 5c ff ff ff 	movw   $0x22,-0xa4(%rbp)
    144c:	22 00 
    144e:	66 c7 85 5e ff ff ff 	movw   $0x156,-0xa2(%rbp)
    1455:	56 01 
    1457:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
    145e:	be 1a 00 00 00       	mov    $0x1a,%esi
    1463:	48 89 c7             	mov    %rax,%rdi
    1466:	e8 74 fd ff ff       	call   11df <min_search>
    146b:	0f b7 c0             	movzwl %ax,%eax
    146e:	89 85 2c ff ff ff    	mov    %eax,-0xd4(%rbp)
    1474:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
    147a:	48 98                	cltq   
    147c:	0f b7 84 45 30 ff ff 	movzwl -0xd0(%rbp,%rax,2),%eax
    1483:	ff 
    1484:	0f b7 d0             	movzwl %ax,%edx
    1487:	8b 85 2c ff ff ff    	mov    -0xd4(%rbp),%eax
    148d:	89 c6                	mov    %eax,%esi
    148f:	48 8d 05 84 0b 00 00 	lea    0xb84(%rip),%rax        # 201a <_IO_stdin_used+0x1a>
    1496:	48 89 c7             	mov    %rax,%rdi
    1499:	b8 00 00 00 00       	mov    $0x0,%eax
    149e:	e8 cd fb ff ff       	call   1070 <printf@plt>
    14a3:	b8 00 00 00 00       	mov    $0x0,%eax
    14a8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    14ac:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    14b3:	00 00 
    14b5:	74 05                	je     14bc <main+0x172>
    14b7:	e8 a4 fb ff ff       	call   1060 <__stack_chk_fail@plt>
    14bc:	c9                   	leave  
    14bd:	c3                   	ret    

Дизассемблирование раздела .fini:

00000000000014c0 <_fini>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	48 83 ec 08          	sub    $0x8,%rsp
    14c8:	48 83 c4 08          	add    $0x8,%rsp
    14cc:	c3                   	ret    
