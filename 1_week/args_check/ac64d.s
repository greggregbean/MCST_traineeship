
ac64d:     формат файла elf64-x86-64


Дизассемблирование раздела .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <__abi_tag-0x37>
 328:	78 38                	js     362 <__abi_tag-0x2a>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Дизассемблирование раздела .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	20 00                	and    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
 357:	00 02                	add    %al,(%rdx)
 359:	80 00 c0             	addb   $0xc0,(%rax)
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .note.gnu.build-id:

0000000000000368 <.note.gnu.build-id>:
 368:	04 00                	add    $0x0,%al
 36a:	00 00                	add    %al,(%rax)
 36c:	14 00                	adc    $0x0,%al
 36e:	00 00                	add    %al,(%rax)
 370:	03 00                	add    (%rax),%eax
 372:	00 00                	add    %al,(%rax)
 374:	47                   	rex.RXB
 375:	4e 55                	rex.WRX push %rbp
 377:	00 01                	add    %al,(%rcx)
 379:	73 49                	jae    3c4 <__abi_tag+0x38>
 37b:	ae                   	scas   %es:(%rdi),%al
 37c:	74 bc                	je     33a <__abi_tag-0x52>
 37e:	ab                   	stos   %eax,%es:(%rdi)
 37f:	2f                   	(bad)  
 380:	4f d9 ff             	rex.WRXB fcos 
 383:	4f 7f a0             	rex.WRXB jg 326 <__abi_tag-0x66>
 386:	93                   	xchg   %eax,%ebx
 387:	cd da                	int    $0xda
 389:	99                   	cltd   
 38a:	05                   	.byte 0x5
 38b:	28                   	.byte 0x28

Дизассемблирование раздела .note.ABI-tag:

000000000000038c <__abi_tag>:
 38c:	04 00                	add    $0x0,%al
 38e:	00 00                	add    %al,(%rax)
 390:	10 00                	adc    %al,(%rax)
 392:	00 00                	add    %al,(%rax)
 394:	01 00                	add    %eax,(%rax)
 396:	00 00                	add    %al,(%rax)
 398:	47                   	rex.RXB
 399:	4e 55                	rex.WRX push %rbp
 39b:	00 00                	add    %al,(%rax)
 39d:	00 00                	add    %al,(%rax)
 39f:	00 03                	add    %al,(%rbx)
 3a1:	00 00                	add    %al,(%rax)
 3a3:	00 02                	add    %al,(%rdx)
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .gnu.hash:

00000000000003b0 <.gnu.hash>:
 3b0:	02 00                	add    (%rax),%al
 3b2:	00 00                	add    %al,(%rax)
 3b4:	07                   	(bad)  
 3b5:	00 00                	add    %al,(%rax)
 3b7:	00 01                	add    %al,(%rcx)
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 06                	add    %al,(%rsi)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 00                	add    %al,(%rax)
 3c1:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 3c7:	00 07                	add    %al,(%rdi)
 3c9:	00 00                	add    %al,(%rax)
 3cb:	00 00                	add    %al,(%rax)
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 d1                	add    %dl,%cl
 3d1:	65 ce                	gs (bad) 
 3d3:	6d                   	insl   (%dx),%es:(%rdi)

Дизассемблирование раздела .dynsym:

00000000000003d8 <.dynsym>:
	...
 3f0:	10 00                	adc    %al,(%rax)
 3f2:	00 00                	add    %al,(%rax)
 3f4:	12 00                	adc    (%rax),%al
	...
 406:	00 00                	add    %al,(%rax)
 408:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 40b:	00 20                	add    %ah,(%rax)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 29                	add    %ch,(%rcx)
 421:	00 00                	add    %al,(%rax)
 423:	00 12                	add    %dl,(%rdx)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 22                	add    %ah,(%rdx)
 439:	00 00                	add    %al,(%rax)
 43b:	00 12                	add    %dl,(%rdx)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 6b 00             	add    %ch,0x0(%rbx)
 452:	00 00                	add    %al,(%rax)
 454:	20 00                	and    %al,(%rax)
	...
 466:	00 00                	add    %al,(%rax)
 468:	7a 00                	jp     46a <__abi_tag+0xde>
 46a:	00 00                	add    %al,(%rax)
 46c:	20 00                	and    %al,(%rax)
	...
 47e:	00 00                	add    %al,(%rax)
 480:	01 00                	add    %eax,(%rax)
 482:	00 00                	add    %al,(%rax)
 484:	22 00                	and    (%rax),%al
	...

Дизассемблирование раздела .dynstr:

0000000000000498 <.dynstr>:
 498:	00 5f 5f             	add    %bl,0x5f(%rdi)
 49b:	63 78 61             	movsxd 0x61(%rax),%edi
 49e:	5f                   	pop    %rdi
 49f:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 4a5:	7a 65                	jp     50c <__abi_tag+0x180>
 4a7:	00 5f 5f             	add    %bl,0x5f(%rdi)
 4aa:	6c                   	insb   (%dx),%es:(%rdi)
 4ab:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 4b2:	72 74                	jb     528 <__abi_tag+0x19c>
 4b4:	5f                   	pop    %rdi
 4b5:	6d                   	insl   (%dx),%es:(%rdi)
 4b6:	61                   	(bad)  
 4b7:	69 6e 00 73 74 72 63 	imul   $0x63727473,0x0(%rsi),%ebp
 4be:	6d                   	insl   (%dx),%es:(%rdi)
 4bf:	70 00                	jo     4c1 <__abi_tag+0x135>
 4c1:	70 75                	jo     538 <__abi_tag+0x1ac>
 4c3:	74 73                	je     538 <__abi_tag+0x1ac>
 4c5:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 4c9:	63 2e                	movsxd (%rsi),%ebp
 4cb:	73 6f                	jae    53c <__abi_tag+0x1b0>
 4cd:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 4d2:	49                   	rex.WB
 4d3:	42                   	rex.X
 4d4:	43 5f                	rex.XB pop %r15
 4d6:	32 2e                	xor    (%rsi),%ch
 4d8:	32 2e                	xor    (%rsi),%ch
 4da:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 4df:	42                   	rex.X
 4e0:	43 5f                	rex.XB pop %r15
 4e2:	32 2e                	xor    (%rsi),%ch
 4e4:	33 34 00             	xor    (%rax,%rax,1),%esi
 4e7:	5f                   	pop    %rdi
 4e8:	49 54                	rex.WB push %r12
 4ea:	4d 5f                	rex.WRB pop %r15
 4ec:	64 65 72 65          	fs gs jb 555 <__abi_tag+0x1c9>
 4f0:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4f7:	4d 
 4f8:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4fa:	6f                   	outsl  %ds:(%rsi),(%dx)
 4fb:	6e                   	outsb  %ds:(%rsi),(%dx)
 4fc:	65 54                	gs push %rsp
 4fe:	61                   	(bad)  
 4ff:	62                   	(bad)  
 500:	6c                   	insb   (%dx),%es:(%rdi)
 501:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 505:	67 6d                	insl   (%dx),%es:(%edi)
 507:	6f                   	outsl  %ds:(%rsi),(%dx)
 508:	6e                   	outsb  %ds:(%rsi),(%dx)
 509:	5f                   	pop    %rdi
 50a:	73 74                	jae    580 <__abi_tag+0x1f4>
 50c:	61                   	(bad)  
 50d:	72 74                	jb     583 <__abi_tag+0x1f7>
 50f:	5f                   	pop    %rdi
 510:	5f                   	pop    %rdi
 511:	00 5f 49             	add    %bl,0x49(%rdi)
 514:	54                   	push   %rsp
 515:	4d 5f                	rex.WRB pop %r15
 517:	72 65                	jb     57e <__abi_tag+0x1f2>
 519:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 520:	4d 
 521:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 523:	6f                   	outsl  %ds:(%rsi),(%dx)
 524:	6e                   	outsb  %ds:(%rsi),(%dx)
 525:	65 54                	gs push %rsp
 527:	61                   	(bad)  
 528:	62                   	.byte 0x62
 529:	6c                   	insb   (%dx),%es:(%rdi)
 52a:	65                   	gs
	...

Дизассемблирование раздела .gnu.version:

000000000000052c <.gnu.version>:
 52c:	00 00                	add    %al,(%rax)
 52e:	02 00                	add    (%rax),%al
 530:	01 00                	add    %eax,(%rax)
 532:	03 00                	add    (%rax),%eax
 534:	03 00                	add    (%rax),%eax
 536:	01 00                	add    %eax,(%rax)
 538:	01 00                	add    %eax,(%rax)
 53a:	03 00                	add    (%rax),%eax

Дизассемблирование раздела .gnu.version_r:

0000000000000540 <.gnu.version_r>:
 540:	01 00                	add    %eax,(%rax)
 542:	02 00                	add    (%rax),%al
 544:	2e 00 00             	cs add %al,(%rax)
 547:	00 10                	add    %dl,(%rax)
 549:	00 00                	add    %al,(%rax)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 75 1a             	add    %dh,0x1a(%rbp)
 552:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 558:	38 00                	cmp    %al,(%rax)
 55a:	00 00                	add    %al,(%rax)
 55c:	10 00                	adc    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	b4 91                	mov    $0x91,%ah
 562:	96                   	xchg   %eax,%esi
 563:	06                   	(bad)  
 564:	00 00                	add    %al,(%rax)
 566:	02 00                	add    (%rax),%al
 568:	44 00 00             	add    %r8b,(%rax)
 56b:	00 00                	add    %al,(%rax)
 56d:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .rela.dyn:

0000000000000570 <.rela.dyn>:
 570:	b0 3d                	mov    $0x3d,%al
 572:	00 00                	add    %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	08 00                	or     %al,(%rax)
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	60                   	(bad)  
 581:	11 00                	adc    %eax,(%rax)
 583:	00 00                	add    %al,(%rax)
 585:	00 00                	add    %al,(%rax)
 587:	00 b8 3d 00 00 00    	add    %bh,0x3d(%rax)
 58d:	00 00                	add    %al,(%rax)
 58f:	00 08                	add    %cl,(%rax)
 591:	00 00                	add    %al,(%rax)
 593:	00 00                	add    %al,(%rax)
 595:	00 00                	add    %al,(%rax)
 597:	00 20                	add    %ah,(%rax)
 599:	11 00                	adc    %eax,(%rax)
 59b:	00 00                	add    %al,(%rax)
 59d:	00 00                	add    %al,(%rax)
 59f:	00 08                	add    %cl,(%rax)
 5a1:	40 00 00             	rex add %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	08 00                	or     %al,(%rax)
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	08 40 00             	or     %al,0x0(%rax)
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 d8                	add    %bl,%al
 5b9:	3f                   	(bad)  
 5ba:	00 00                	add    %al,(%rax)
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	06                   	(bad)  
 5c1:	00 00                	add    %al,(%rax)
 5c3:	00 01                	add    %al,(%rcx)
	...
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 e0                	add    %ah,%al
 5d1:	3f                   	(bad)  
 5d2:	00 00                	add    %al,(%rax)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	00 00                	add    %al,(%rax)
 5d8:	06                   	(bad)  
 5d9:	00 00                	add    %al,(%rax)
 5db:	00 02                	add    %al,(%rdx)
	...
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 e8                	add    %ch,%al
 5e9:	3f                   	(bad)  
 5ea:	00 00                	add    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	06                   	(bad)  
 5f1:	00 00                	add    %al,(%rax)
 5f3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 5f9 <__abi_tag+0x26d>
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	00 00                	add    %al,(%rax)
 5ff:	00 f0                	add    %dh,%al
 601:	3f                   	(bad)  
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	06                   	(bad)  
 609:	00 00                	add    %al,(%rax)
 60b:	00 06                	add    %al,(%rsi)
	...
 615:	00 00                	add    %al,(%rax)
 617:	00 f8                	add    %bh,%al
 619:	3f                   	(bad)  
 61a:	00 00                	add    %al,(%rax)
 61c:	00 00                	add    %al,(%rax)
 61e:	00 00                	add    %al,(%rax)
 620:	06                   	(bad)  
 621:	00 00                	add    %al,(%rax)
 623:	00 07                	add    %al,(%rdi)
	...

Дизассемблирование раздела .rela.plt:

0000000000000630 <.rela.plt>:
 630:	c8 3f 00 00          	enter  $0x3f,$0x0
 634:	00 00                	add    %al,(%rax)
 636:	00 00                	add    %al,(%rax)
 638:	07                   	(bad)  
 639:	00 00                	add    %al,(%rax)
 63b:	00 03                	add    %al,(%rbx)
	...
 645:	00 00                	add    %al,(%rax)
 647:	00 d0                	add    %dl,%al
 649:	3f                   	(bad)  
 64a:	00 00                	add    %al,(%rax)
 64c:	00 00                	add    %al,(%rax)
 64e:	00 00                	add    %al,(%rax)
 650:	07                   	(bad)  
 651:	00 00                	add    %al,(%rax)
 653:	00 04 00             	add    %al,(%rax,%rax,1)
	...

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

0000000000001060 <puts@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 5d 2f 00 00 	bnd jmp *0x2f5d(%rip)        # 3fc8 <puts@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001070 <strcmp@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 55 2f 00 00 	bnd jmp *0x2f55(%rip)        # 3fd0 <strcmp@GLIBC_2.2.5>
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
    1098:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1169 <main>
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

0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 83 ec 10          	sub    $0x10,%rsp
    1175:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1178:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    117c:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1180:	75 07                	jne    1189 <main+0x20>
    1182:	b8 00 00 00 00       	mov    $0x0,%eax
    1187:	eb 7d                	jmp    1206 <main+0x9d>
    1189:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
    118d:	75 72                	jne    1201 <main+0x98>
    118f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1193:	48 83 c0 08          	add    $0x8,%rax
    1197:	48 8b 00             	mov    (%rax),%rax
    119a:	48 8d 15 63 0e 00 00 	lea    0xe63(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    11a1:	48 89 d6             	mov    %rdx,%rsi
    11a4:	48 89 c7             	mov    %rax,%rdi
    11a7:	e8 c4 fe ff ff       	call   1070 <strcmp@plt>
    11ac:	85 c0                	test   %eax,%eax
    11ae:	75 11                	jne    11c1 <main+0x58>
    11b0:	48 8d 05 54 0e 00 00 	lea    0xe54(%rip),%rax        # 200b <_IO_stdin_used+0xb>
    11b7:	48 89 c7             	mov    %rax,%rdi
    11ba:	e8 a1 fe ff ff       	call   1060 <puts@plt>
    11bf:	eb 39                	jmp    11fa <main+0x91>
    11c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11c5:	48 83 c0 08          	add    $0x8,%rax
    11c9:	48 8b 00             	mov    (%rax),%rax
    11cc:	48 8d 15 3e 0e 00 00 	lea    0xe3e(%rip),%rdx        # 2011 <_IO_stdin_used+0x11>
    11d3:	48 89 d6             	mov    %rdx,%rsi
    11d6:	48 89 c7             	mov    %rax,%rdi
    11d9:	e8 92 fe ff ff       	call   1070 <strcmp@plt>
    11de:	85 c0                	test   %eax,%eax
    11e0:	75 11                	jne    11f3 <main+0x8a>
    11e2:	48 8d 05 32 0e 00 00 	lea    0xe32(%rip),%rax        # 201b <_IO_stdin_used+0x1b>
    11e9:	48 89 c7             	mov    %rax,%rdi
    11ec:	e8 6f fe ff ff       	call   1060 <puts@plt>
    11f1:	eb 07                	jmp    11fa <main+0x91>
    11f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11f8:	eb 0c                	jmp    1206 <main+0x9d>
    11fa:	b8 00 00 00 00       	mov    $0x0,%eax
    11ff:	eb 05                	jmp    1206 <main+0x9d>
    1201:	b8 00 00 00 00       	mov    $0x0,%eax
    1206:	c9                   	leave  
    1207:	c3                   	ret    

Дизассемблирование раздела .fini:

0000000000001208 <_fini>:
    1208:	f3 0f 1e fa          	endbr64 
    120c:	48 83 ec 08          	sub    $0x8,%rsp
    1210:	48 83 c4 08          	add    $0x8,%rsp
    1214:	c3                   	ret    

Дизассемблирование раздела .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	2d 2d 68 65 6c       	sub    $0x6c65682d,%eax
    2009:	70 00                	jo     200b <_IO_stdin_used+0xb>
    200b:	48                   	rex.W
    200c:	65 6c                	gs insb (%dx),%es:(%rdi)
    200e:	70 20                	jo     2030 <__GNU_EH_FRAME_HDR+0xc>
    2010:	00 2d 2d 76 65 72    	add    %ch,0x7265762d(%rip)        # 72659643 <_end+0x7265562b>
    2016:	73 69                	jae    2081 <__GNU_EH_FRAME_HDR+0x5d>
    2018:	6f                   	outsl  %ds:(%rsi),(%dx)
    2019:	6e                   	outsb  %ds:(%rsi),(%dx)
    201a:	00 56 65             	add    %dl,0x65(%rsi)
    201d:	72 73                	jb     2092 <__GNU_EH_FRAME_HDR+0x6e>
    201f:	69                   	.byte 0x69
    2020:	6f                   	outsl  %ds:(%rsi),(%dx)
    2021:	6e                   	outsb  %ds:(%rsi),(%dx)
    2022:	20 00                	and    %al,(%rax)

Дизассемблирование раздела .eh_frame_hdr:

0000000000002024 <__GNU_EH_FRAME_HDR>:
    2024:	01 1b                	add    %ebx,(%rbx)
    2026:	03 3b                	add    (%rbx),%edi
    2028:	30 00                	xor    %al,(%rax)
    202a:	00 00                	add    %al,(%rax)
    202c:	05 00 00 00 fc       	add    $0xfc000000,%eax
    2031:	ef                   	out    %eax,(%dx)
    2032:	ff                   	(bad)  
    2033:	ff 64 00 00          	jmp    *0x0(%rax,%rax,1)
    2037:	00 2c f0             	add    %ch,(%rax,%rsi,8)
    203a:	ff                   	(bad)  
    203b:	ff 8c 00 00 00 3c f0 	decl   -0xfc40000(%rax,%rax,1)
    2042:	ff                   	(bad)  
    2043:	ff a4 00 00 00 5c f0 	jmp    *-0xfa40000(%rax,%rax,1)
    204a:	ff                   	(bad)  
    204b:	ff 4c 00 00          	decl   0x0(%rax,%rax,1)
    204f:	00 45 f1             	add    %al,-0xf(%rbp)
    2052:	ff                   	(bad)  
    2053:	ff                   	(bad)  
    2054:	bc                   	.byte 0xbc
    2055:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .eh_frame:

0000000000002058 <__FRAME_END__-0xa8>:
    2058:	14 00                	adc    $0x0,%al
    205a:	00 00                	add    %al,(%rax)
    205c:	00 00                	add    %al,(%rax)
    205e:	00 00                	add    %al,(%rax)
    2060:	01 7a 52             	add    %edi,0x52(%rdx)
    2063:	00 01                	add    %al,(%rcx)
    2065:	78 10                	js     2077 <__GNU_EH_FRAME_HDR+0x53>
    2067:	01 1b                	add    %ebx,(%rbx)
    2069:	0c 07                	or     $0x7,%al
    206b:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2071:	00 00                	add    %al,(%rax)
    2073:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2076:	00 00                	add    %al,(%rax)
    2078:	08 f0                	or     %dh,%al
    207a:	ff                   	(bad)  
    207b:	ff 26                	jmp    *(%rsi)
    207d:	00 00                	add    %al,(%rax)
    207f:	00 00                	add    %al,(%rax)
    2081:	44 07                	rex.R (bad) 
    2083:	10 00                	adc    %al,(%rax)
    2085:	00 00                	add    %al,(%rax)
    2087:	00 24 00             	add    %ah,(%rax,%rax,1)
    208a:	00 00                	add    %al,(%rax)
    208c:	34 00                	xor    $0x0,%al
    208e:	00 00                	add    %al,(%rax)
    2090:	90                   	nop
    2091:	ef                   	out    %eax,(%dx)
    2092:	ff                   	(bad)  
    2093:	ff 30                	push   (%rax)
    2095:	00 00                	add    %al,(%rax)
    2097:	00 00                	add    %al,(%rax)
    2099:	0e                   	(bad)  
    209a:	10 46 0e             	adc    %al,0xe(%rsi)
    209d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    20a0:	0b 77 08             	or     0x8(%rdi),%esi
    20a3:	80 00 3f             	addb   $0x3f,(%rax)
    20a6:	1a 3a                	sbb    (%rdx),%bh
    20a8:	2a 33                	sub    (%rbx),%dh
    20aa:	24 22                	and    $0x22,%al
    20ac:	00 00                	add    %al,(%rax)
    20ae:	00 00                	add    %al,(%rax)
    20b0:	14 00                	adc    $0x0,%al
    20b2:	00 00                	add    %al,(%rax)
    20b4:	5c                   	pop    %rsp
    20b5:	00 00                	add    %al,(%rax)
    20b7:	00 98 ef ff ff 10    	add    %bl,0x10ffffef(%rax)
	...
    20c5:	00 00                	add    %al,(%rax)
    20c7:	00 14 00             	add    %dl,(%rax,%rax,1)
    20ca:	00 00                	add    %al,(%rax)
    20cc:	74 00                	je     20ce <__GNU_EH_FRAME_HDR+0xaa>
    20ce:	00 00                	add    %al,(%rax)
    20d0:	90                   	nop
    20d1:	ef                   	out    %eax,(%dx)
    20d2:	ff                   	(bad)  
    20d3:	ff 20                	jmp    *(%rax)
	...
    20dd:	00 00                	add    %al,(%rax)
    20df:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20e2:	00 00                	add    %al,(%rax)
    20e4:	8c 00                	mov    %es,(%rax)
    20e6:	00 00                	add    %al,(%rax)
    20e8:	81 f0 ff ff 9f 00    	xor    $0x9fffff,%eax
    20ee:	00 00                	add    %al,(%rax)
    20f0:	00 45 0e             	add    %al,0xe(%rbp)
    20f3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    20f9:	02 96 0c 07 08 00    	add    0x8070c(%rsi),%dl
	...

0000000000002100 <__FRAME_END__>:
    2100:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .init_array:

0000000000003db0 <__frame_dummy_init_array_entry>:
    3db0:	60                   	(bad)  
    3db1:	11 00                	adc    %eax,(%rax)
    3db3:	00 00                	add    %al,(%rax)
    3db5:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .fini_array:

0000000000003db8 <__do_global_dtors_aux_fini_array_entry>:
    3db8:	20 11                	and    %dl,(%rcx)
    3dba:	00 00                	add    %al,(%rax)
    3dbc:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .dynamic:

0000000000003dc0 <_DYNAMIC>:
    3dc0:	01 00                	add    %eax,(%rax)
    3dc2:	00 00                	add    %al,(%rax)
    3dc4:	00 00                	add    %al,(%rax)
    3dc6:	00 00                	add    %al,(%rax)
    3dc8:	2e 00 00             	cs add %al,(%rax)
    3dcb:	00 00                	add    %al,(%rax)
    3dcd:	00 00                	add    %al,(%rax)
    3dcf:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
    3dd6:	00 00                	add    %al,(%rax)
    3dd8:	00 10                	add    %dl,(%rax)
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
    3dde:	00 00                	add    %al,(%rax)
    3de0:	0d 00 00 00 00       	or     $0x0,%eax
    3de5:	00 00                	add    %al,(%rax)
    3de7:	00 08                	add    %cl,(%rax)
    3de9:	12 00                	adc    (%rax),%al
    3deb:	00 00                	add    %al,(%rax)
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 19                	add    %bl,(%rcx)
    3df1:	00 00                	add    %al,(%rax)
    3df3:	00 00                	add    %al,(%rax)
    3df5:	00 00                	add    %al,(%rax)
    3df7:	00 b0 3d 00 00 00    	add    %dh,0x3d(%rax)
    3dfd:	00 00                	add    %al,(%rax)
    3dff:	00 1b                	add    %bl,(%rbx)
    3e01:	00 00                	add    %al,(%rax)
    3e03:	00 00                	add    %al,(%rax)
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 08                	add    %cl,(%rax)
    3e09:	00 00                	add    %al,(%rax)
    3e0b:	00 00                	add    %al,(%rax)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 1a                	add    %bl,(%rdx)
    3e11:	00 00                	add    %al,(%rax)
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 b8 3d 00 00 00    	add    %bh,0x3d(%rax)
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    3e22:	00 00                	add    %al,(%rax)
    3e24:	00 00                	add    %al,(%rax)
    3e26:	00 00                	add    %al,(%rax)
    3e28:	08 00                	or     %al,(%rax)
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	f5                   	cmc    
    3e31:	fe                   	(bad)  
    3e32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e35:	00 00                	add    %al,(%rax)
    3e37:	00 b0 03 00 00 00    	add    %dh,0x3(%rax)
    3e3d:	00 00                	add    %al,(%rax)
    3e3f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e45 <_DYNAMIC+0x85>
    3e45:	00 00                	add    %al,(%rax)
    3e47:	00 98 04 00 00 00    	add    %bl,0x4(%rax)
    3e4d:	00 00                	add    %al,(%rax)
    3e4f:	00 06                	add    %al,(%rsi)
    3e51:	00 00                	add    %al,(%rax)
    3e53:	00 00                	add    %al,(%rax)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 d8                	add    %bl,%al
    3e59:	03 00                	add    (%rax),%eax
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 0a                	add    %cl,(%rdx)
    3e61:	00 00                	add    %al,(%rax)
    3e63:	00 00                	add    %al,(%rax)
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 94 00 00 00 00 00 	add    %dl,0x0(%rax,%rax,1)
    3e6e:	00 00                	add    %al,(%rax)
    3e70:	0b 00                	or     (%rax),%eax
    3e72:	00 00                	add    %al,(%rax)
    3e74:	00 00                	add    %al,(%rax)
    3e76:	00 00                	add    %al,(%rax)
    3e78:	18 00                	sbb    %al,(%rax)
    3e7a:	00 00                	add    %al,(%rax)
    3e7c:	00 00                	add    %al,(%rax)
    3e7e:	00 00                	add    %al,(%rax)
    3e80:	15 00 00 00 00       	adc    $0x0,%eax
	...
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 03                	add    %al,(%rbx)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 b0 3f 00 00 00    	add    %dh,0x3f(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 02                	add    %al,(%rdx)
    3ea1:	00 00                	add    %al,(%rax)
    3ea3:	00 00                	add    %al,(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 30                	add    %dh,(%rax)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 14 00             	add    %dl,(%rax,%rax,1)
    3eb2:	00 00                	add    %al,(%rax)
    3eb4:	00 00                	add    %al,(%rax)
    3eb6:	00 00                	add    %al,(%rax)
    3eb8:	07                   	(bad)  
    3eb9:	00 00                	add    %al,(%rax)
    3ebb:	00 00                	add    %al,(%rax)
    3ebd:	00 00                	add    %al,(%rax)
    3ebf:	00 17                	add    %dl,(%rdi)
    3ec1:	00 00                	add    %al,(%rax)
    3ec3:	00 00                	add    %al,(%rax)
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 30                	add    %dh,(%rax)
    3ec9:	06                   	(bad)  
    3eca:	00 00                	add    %al,(%rax)
    3ecc:	00 00                	add    %al,(%rax)
    3ece:	00 00                	add    %al,(%rax)
    3ed0:	07                   	(bad)  
    3ed1:	00 00                	add    %al,(%rax)
    3ed3:	00 00                	add    %al,(%rax)
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 70 05             	add    %dh,0x5(%rax)
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	08 00                	or     %al,(%rax)
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	c0 00 00             	rolb   $0x0,(%rax)
    3eeb:	00 00                	add    %al,(%rax)
    3eed:	00 00                	add    %al,(%rax)
    3eef:	00 09                	add    %cl,(%rcx)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 18                	add    %bl,(%rax)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 1e                	add    %bl,(%rsi)
    3f01:	00 00                	add    %al,(%rax)
    3f03:	00 00                	add    %al,(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 08                	add    %cl,(%rax)
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 fb                	add    %bh,%bl
    3f11:	ff                   	(bad)  
    3f12:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 01                	add    %al,(%rcx)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	08 00                	or     %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 fe                	add    %bh,%dh
    3f21:	ff                   	(bad)  
    3f22:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 40 05             	add    %al,0x5(%rax)
    3f2a:	00 00                	add    %al,(%rax)
    3f2c:	00 00                	add    %al,(%rax)
    3f2e:	00 00                	add    %al,(%rax)
    3f30:	ff                   	(bad)  
    3f31:	ff                   	(bad)  
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 01                	add    %al,(%rcx)
    3f39:	00 00                	add    %al,(%rax)
    3f3b:	00 00                	add    %al,(%rax)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 f0                	add    %dh,%al
    3f41:	ff                   	(bad)  
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 2c 05 00 00 00 00 	add    %ch,0x0(,%rax,1)
    3f4e:	00 00                	add    %al,(%rax)
    3f50:	f9                   	stc    
    3f51:	ff                   	(bad)  
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 03                	add    %al,(%rbx)
	...

Дизассемблирование раздела .got:

0000000000003fb0 <_GLOBAL_OFFSET_TABLE_>:
    3fb0:	c0 3d 00 00 00 00 00 	sarb   $0x0,0x0(%rip)        # 3fb7 <_GLOBAL_OFFSET_TABLE_+0x7>
	...
    3fc7:	00 30                	add    %dh,(%rax)
    3fc9:	10 00                	adc    %al,(%rax)
    3fcb:	00 00                	add    %al,(%rax)
    3fcd:	00 00                	add    %al,(%rax)
    3fcf:	00 40 10             	add    %al,0x10(%rax)
	...

Дизассемблирование раздела .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

Дизассемблирование раздела .bss:

0000000000004010 <completed.0>:
	...

Дизассемблирование раздела .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <__abi_tag-0x314>
   a:	74 75                	je     81 <__abi_tag-0x30b>
   c:	20 31                	and    %dh,(%rcx)
   e:	31 2e                	xor    %ebp,(%rsi)
  10:	33 2e                	xor    (%rsi),%ebp
  12:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627549 <_end+0x75623531>
  18:	6e                   	outsb  %ds:(%rsi),(%dx)
  19:	74 75                	je     90 <__abi_tag-0x2fc>
  1b:	31 7e 32             	xor    %edi,0x32(%rsi)
  1e:	32 2e                	xor    (%rsi),%ch
  20:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  23:	31 29                	xor    %ebp,(%rcx)
  25:	20 31                	and    %dh,(%rcx)
  27:	31 2e                	xor    %ebp,(%rsi)
  29:	33 2e                	xor    (%rsi),%ebp
  2b:	30 00                	xor    %al,(%rax)
