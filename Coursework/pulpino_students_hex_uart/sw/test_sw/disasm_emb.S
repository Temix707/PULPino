
test_sw_emb.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0x108000>:
   0:	00000013          	nop
   4:	00000013          	nop
   8:	00000013          	nop
   c:	00000013          	nop
  10:	00000013          	nop
  14:	00000013          	nop
  18:	00000013          	nop
  1c:	00000013          	nop
  20:	00000013          	nop
  24:	00000013          	nop
  28:	00000013          	nop
  2c:	00000013          	nop
  30:	00000013          	nop
  34:	00000013          	nop
  38:	00000013          	nop
  3c:	00000013          	nop
  40:	00000013          	nop
  44:	00000013          	nop
  48:	00000013          	nop
  4c:	00000013          	nop
  50:	00000013          	nop
  54:	00000013          	nop
  58:	00000013          	nop
  5c:	0c20006f          	j	11e <ISR_I2C_ASM>
  60:	0d20006f          	j	132 <ISR_UART_ASM>
  64:	0e20006f          	j	146 <ISR_GPIO_ASM>
  68:	0f20006f          	j	15a <ISR_SPIM0_ASM>
  6c:	1020006f          	j	16e <ISR_SPIM1_ASM>
  70:	1260006f          	j	196 <ISR_TA_OVF_ASM>
  74:	10e0006f          	j	182 <ISR_TA_CMP_ASM>
  78:	1460006f          	j	1be <ISR_TB_OVF_ASM>
  7c:	12e0006f          	j	1aa <ISR_TB_CMP_ASM>
  80:	00c0006f          	j	8c <_stext>
  84:	14e0006f          	j	1d2 <illegal_insn_handler>
  88:	15e0006f          	j	1e6 <ecall_insn_handler>

Disassembly of section .text:

0000008c <_stext>:
      8c:	30501073          	csrw	mtvec,zero
      90:	00000093          	li	ra,0
      94:	8106                	mv	sp,ra
      96:	8186                	mv	gp,ra
      98:	8206                	mv	tp,ra
      9a:	8286                	mv	t0,ra
      9c:	8306                	mv	t1,ra
      9e:	8386                	mv	t2,ra
      a0:	8406                	mv	s0,ra
      a2:	8486                	mv	s1,ra
      a4:	8506                	mv	a0,ra
      a6:	8586                	mv	a1,ra
      a8:	8606                	mv	a2,ra
      aa:	8686                	mv	a3,ra
      ac:	8706                	mv	a4,ra
      ae:	8786                	mv	a5,ra
      b0:	8806                	mv	a6,ra
      b2:	8886                	mv	a7,ra
      b4:	8906                	mv	s2,ra
      b6:	8986                	mv	s3,ra
      b8:	8a06                	mv	s4,ra
      ba:	8a86                	mv	s5,ra
      bc:	8b06                	mv	s6,ra
      be:	8b86                	mv	s7,ra
      c0:	8c06                	mv	s8,ra
      c2:	8c86                	mv	s9,ra
      c4:	8d06                	mv	s10,ra
      c6:	8d86                	mv	s11,ra
      c8:	8e06                	mv	t3,ra
      ca:	8e86                	mv	t4,ra
      cc:	8f06                	mv	t5,ra
      ce:	8f86                	mv	t6,ra
      d0:	00108117          	auipc	sp,0x108
      d4:	f3010113          	addi	sp,sp,-208 # 108000 <_stack_start>

000000d8 <_start>:
      d8:	00100d17          	auipc	s10,0x100
      dc:	004d0d13          	addi	s10,s10,4 # 1000dc <_bss_end>
      e0:	00100d97          	auipc	s11,0x100
      e4:	ffcd8d93          	addi	s11,s11,-4 # 1000dc <_bss_end>
      e8:	01bd5763          	bge	s10,s11,f6 <zero_loop_end>

000000ec <zero_loop>:
      ec:	000d2023          	sw	zero,0(s10)
      f0:	0d11                	addi	s10,s10,4
      f2:	ffaddde3          	bge	s11,s10,ec <zero_loop>

000000f6 <zero_loop_end>:
      f6:	1b6010ef          	jal	ra,12ac <__libc_init_array>

000000fa <main_entry>:
      fa:	00000513          	li	a0,0
      fe:	00100593          	li	a1,1
     102:	614000ef          	jal	ra,716 <uart_set_cfg>
     106:	00000513          	li	a0,0
     10a:	00000593          	li	a1,0
     10e:	186000ef          	jal	ra,294 <main>
     112:	842a                	mv	s0,a0
     114:	75a000ef          	jal	ra,86e <uart_wait_tx_done>
     118:	8522                	mv	a0,s0
     11a:	774000ef          	jal	ra,88e <exit>

0000011e <ISR_I2C_ASM>:
     11e:	711d                	addi	sp,sp,-96
     120:	ce86                	sw	ra,92(sp)
     122:	0d8000ef          	jal	ra,1fa <store_regs>
     126:	00000097          	auipc	ra,0x0
     12a:	11e08093          	addi	ra,ra,286 # 244 <end_except>
     12e:	11e0106f          	j	124c <ISR_I2C>

00000132 <ISR_UART_ASM>:
     132:	711d                	addi	sp,sp,-96
     134:	ce86                	sw	ra,92(sp)
     136:	0c4000ef          	jal	ra,1fa <store_regs>
     13a:	00000097          	auipc	ra,0x0
     13e:	10a08093          	addi	ra,ra,266 # 244 <end_except>
     142:	1120106f          	j	1254 <ISR_UART>

00000146 <ISR_GPIO_ASM>:
     146:	711d                	addi	sp,sp,-96
     148:	ce86                	sw	ra,92(sp)
     14a:	0b0000ef          	jal	ra,1fa <store_regs>
     14e:	00000097          	auipc	ra,0x0
     152:	0f608093          	addi	ra,ra,246 # 244 <end_except>
     156:	1060106f          	j	125c <ISR_GPIO>

0000015a <ISR_SPIM0_ASM>:
     15a:	711d                	addi	sp,sp,-96
     15c:	ce86                	sw	ra,92(sp)
     15e:	09c000ef          	jal	ra,1fa <store_regs>
     162:	00000097          	auipc	ra,0x0
     166:	0e208093          	addi	ra,ra,226 # 244 <end_except>
     16a:	0fa0106f          	j	1264 <ISR_SPIM0>

0000016e <ISR_SPIM1_ASM>:
     16e:	711d                	addi	sp,sp,-96
     170:	ce86                	sw	ra,92(sp)
     172:	088000ef          	jal	ra,1fa <store_regs>
     176:	00000097          	auipc	ra,0x0
     17a:	0ce08093          	addi	ra,ra,206 # 244 <end_except>
     17e:	0ee0106f          	j	126c <ISR_SPIM1>

00000182 <ISR_TA_CMP_ASM>:
     182:	711d                	addi	sp,sp,-96
     184:	ce86                	sw	ra,92(sp)
     186:	074000ef          	jal	ra,1fa <store_regs>
     18a:	00000097          	auipc	ra,0x0
     18e:	0ba08093          	addi	ra,ra,186 # 244 <end_except>
     192:	0ea0106f          	j	127c <ISR_TA_CMP>

00000196 <ISR_TA_OVF_ASM>:
     196:	711d                	addi	sp,sp,-96
     198:	ce86                	sw	ra,92(sp)
     19a:	060000ef          	jal	ra,1fa <store_regs>
     19e:	00000097          	auipc	ra,0x0
     1a2:	0a608093          	addi	ra,ra,166 # 244 <end_except>
     1a6:	0ce0106f          	j	1274 <ISR_TA_OVF>

000001aa <ISR_TB_CMP_ASM>:
     1aa:	711d                	addi	sp,sp,-96
     1ac:	ce86                	sw	ra,92(sp)
     1ae:	04c000ef          	jal	ra,1fa <store_regs>
     1b2:	00000097          	auipc	ra,0x0
     1b6:	09208093          	addi	ra,ra,146 # 244 <end_except>
     1ba:	0d20106f          	j	128c <ISR_TB_CMP>

000001be <ISR_TB_OVF_ASM>:
     1be:	711d                	addi	sp,sp,-96
     1c0:	ce86                	sw	ra,92(sp)
     1c2:	038000ef          	jal	ra,1fa <store_regs>
     1c6:	00000097          	auipc	ra,0x0
     1ca:	07e08093          	addi	ra,ra,126 # 244 <end_except>
     1ce:	0b60106f          	j	1284 <ISR_TB_OVF>

000001d2 <illegal_insn_handler>:
     1d2:	711d                	addi	sp,sp,-96
     1d4:	ce86                	sw	ra,92(sp)
     1d6:	024000ef          	jal	ra,1fa <store_regs>
     1da:	00000097          	auipc	ra,0x0
     1de:	06a08093          	addi	ra,ra,106 # 244 <end_except>
     1e2:	0ba0106f          	j	129c <illegal_insn_handler_c>

000001e6 <ecall_insn_handler>:
     1e6:	711d                	addi	sp,sp,-96
     1e8:	ce86                	sw	ra,92(sp)
     1ea:	010000ef          	jal	ra,1fa <store_regs>
     1ee:	00000097          	auipc	ra,0x0
     1f2:	05608093          	addi	ra,ra,86 # 244 <end_except>
     1f6:	0ae0106f          	j	12a4 <ecall_insn_handler_c>

000001fa <store_regs>:
     1fa:	c00e                	sw	gp,0(sp)
     1fc:	c212                	sw	tp,4(sp)
     1fe:	c416                	sw	t0,8(sp)
     200:	c61a                	sw	t1,12(sp)
     202:	c81e                	sw	t2,16(sp)
     204:	ca2a                	sw	a0,20(sp)
     206:	cc2e                	sw	a1,24(sp)
     208:	ce32                	sw	a2,28(sp)
     20a:	d036                	sw	a3,32(sp)
     20c:	d23a                	sw	a4,36(sp)
     20e:	d43e                	sw	a5,40(sp)
     210:	d642                	sw	a6,44(sp)
     212:	d846                	sw	a7,48(sp)
     214:	da72                	sw	t3,52(sp)
     216:	dc76                	sw	t4,56(sp)
     218:	de7a                	sw	t5,60(sp)
     21a:	c0fe                	sw	t6,64(sp)
     21c:	7b002e73          	csrr	t3,dcsr
     220:	7b102ef3          	csrr	t4,dpc
     224:	7b202f73          	csrr	t5,dscratch
     228:	c2f2                	sw	t3,68(sp)
     22a:	c4f6                	sw	t4,72(sp)
     22c:	c6fa                	sw	t5,76(sp)
     22e:	7b402e73          	csrr	t3,0x7b4
     232:	7b502ef3          	csrr	t4,0x7b5
     236:	7b602f73          	csrr	t5,0x7b6
     23a:	c8f2                	sw	t3,80(sp)
     23c:	caf6                	sw	t4,84(sp)
     23e:	ccfa                	sw	t5,88(sp)
     240:	00008067          	ret

00000244 <end_except>:
     244:	4e46                	lw	t3,80(sp)
     246:	4ed6                	lw	t4,84(sp)
     248:	4f66                	lw	t5,88(sp)
     24a:	7b4e1073          	csrw	0x7b4,t3
     24e:	7b5e9073          	csrw	0x7b5,t4
     252:	7b6f1073          	csrw	0x7b6,t5
     256:	4e16                	lw	t3,68(sp)
     258:	4ea6                	lw	t4,72(sp)
     25a:	4f36                	lw	t5,76(sp)
     25c:	7b0e1073          	csrw	dcsr,t3
     260:	7b1e9073          	csrw	dpc,t4
     264:	7b2f1073          	csrw	dscratch,t5
     268:	4182                	lw	gp,0(sp)
     26a:	4212                	lw	tp,4(sp)
     26c:	42a2                	lw	t0,8(sp)
     26e:	4332                	lw	t1,12(sp)
     270:	43c2                	lw	t2,16(sp)
     272:	4552                	lw	a0,20(sp)
     274:	45e2                	lw	a1,24(sp)
     276:	4672                	lw	a2,28(sp)
     278:	5682                	lw	a3,32(sp)
     27a:	5712                	lw	a4,36(sp)
     27c:	57a2                	lw	a5,40(sp)
     27e:	5832                	lw	a6,44(sp)
     280:	58c2                	lw	a7,48(sp)
     282:	5e52                	lw	t3,52(sp)
     284:	5ee2                	lw	t4,56(sp)
     286:	5f72                	lw	t5,60(sp)
     288:	4f86                	lw	t6,64(sp)
     28a:	40f6                	lw	ra,92(sp)
     28c:	6125                	addi	sp,sp,96
     28e:	30200073          	mret

00000292 <_fini>:
     292:	8082                	ret

00000294 <main>:
     294:	1101                	addi	sp,sp,-32
     296:	ce06                	sw	ra,28(sp)
     298:	cc22                	sw	s0,24(sp)
     29a:	1000                	addi	s0,sp,32
     29c:	45ed                	li	a1,27
     29e:	4501                	li	a0,0
     2a0:	299d                	jal	716 <uart_set_cfg>
     2a2:	2051                	jal	326 <hex_init>
     2a4:	001007b7          	lui	a5,0x100
     2a8:	00078513          	mv	a0,a5
     2ac:	4f9000ef          	jal	ra,fa4 <puts>
     2b0:	fe042623          	sw	zero,-20(s0)
     2b4:	a839                	j	2d2 <main+0x3e>
     2b6:	fec42783          	lw	a5,-20(s0)
     2ba:	ff040713          	addi	a4,s0,-16
     2be:	97ba                	add	a5,a5,a4
     2c0:	02000713          	li	a4,32
     2c4:	fee78823          	sb	a4,-16(a5) # ffff0 <_stack_len+0xfdff0>
     2c8:	fec42783          	lw	a5,-20(s0)
     2cc:	0785                	addi	a5,a5,1
     2ce:	fef42623          	sw	a5,-20(s0)
     2d2:	fec42703          	lw	a4,-20(s0)
     2d6:	479d                	li	a5,7
     2d8:	fce7dfe3          	bge	a5,a4,2b6 <main+0x22>
     2dc:	479d                	li	a5,7
     2de:	fef42423          	sw	a5,-24(s0)
     2e2:	a02d                	j	30c <main+0x78>
     2e4:	fe842783          	lw	a5,-24(s0)
     2e8:	17fd                	addi	a5,a5,-1
     2ea:	ff040713          	addi	a4,s0,-16
     2ee:	97ba                	add	a5,a5,a4
     2f0:	ff07c703          	lbu	a4,-16(a5)
     2f4:	fe842783          	lw	a5,-24(s0)
     2f8:	ff040693          	addi	a3,s0,-16
     2fc:	97b6                	add	a5,a5,a3
     2fe:	fee78823          	sb	a4,-16(a5)
     302:	fe842783          	lw	a5,-24(s0)
     306:	17fd                	addi	a5,a5,-1
     308:	fef42423          	sw	a5,-24(s0)
     30c:	fe842783          	lw	a5,-24(s0)
     310:	fcf04ae3          	bgtz	a5,2e4 <main+0x50>
     314:	2301                	jal	814 <uart_getchar>
     316:	87aa                	mv	a5,a0
     318:	fef40023          	sb	a5,-32(s0)
     31c:	fe040793          	addi	a5,s0,-32
     320:	853e                	mv	a0,a5
     322:	2895                	jal	396 <hex_out>
     324:	bf65                	j	2dc <main+0x48>

00000326 <hex_init>:
     326:	1141                	addi	sp,sp,-16
     328:	c622                	sw	s0,12(sp)
     32a:	0800                	addi	s0,sp,16
     32c:	1a1077b7          	lui	a5,0x1a107
     330:	0791                	addi	a5,a5,4
     332:	4398                	lw	a4,0(a5)
     334:	1a1077b7          	lui	a5,0x1a107
     338:	0791                	addi	a5,a5,4
     33a:	10076713          	ori	a4,a4,256
     33e:	c398                	sw	a4,0(a5)
     340:	0001                	nop
     342:	4432                	lw	s0,12(sp)
     344:	0141                	addi	sp,sp,16
     346:	8082                	ret

00000348 <sym2data>:
     348:	7135                	addi	sp,sp,-160
     34a:	cf06                	sw	ra,156(sp)
     34c:	cd22                	sw	s0,152(sp)
     34e:	1100                	addi	s0,sp,160
     350:	87aa                	mv	a5,a0
     352:	f6f407a3          	sb	a5,-145(s0)
     356:	001007b7          	lui	a5,0x100
     35a:	04478713          	addi	a4,a5,68 # 100044 <__init_array_end+0x44>
     35e:	f7040793          	addi	a5,s0,-144
     362:	86ba                	mv	a3,a4
     364:	08000713          	li	a4,128
     368:	863a                	mv	a2,a4
     36a:	85b6                	mv	a1,a3
     36c:	853e                	mv	a0,a5
     36e:	7db000ef          	jal	ra,1348 <memcpy>
     372:	f6f40783          	lb	a5,-145(s0)
     376:	0007ca63          	bltz	a5,38a <sym2data+0x42>
     37a:	f6f44783          	lbu	a5,-145(s0)
     37e:	ff040713          	addi	a4,s0,-16
     382:	97ba                	add	a5,a5,a4
     384:	f807c783          	lbu	a5,-128(a5)
     388:	a011                	j	38c <sym2data+0x44>
     38a:	4781                	li	a5,0
     38c:	853e                	mv	a0,a5
     38e:	40fa                	lw	ra,156(sp)
     390:	446a                	lw	s0,152(sp)
     392:	610d                	addi	sp,sp,160
     394:	8082                	ret

00000396 <hex_out>:
     396:	715d                	addi	sp,sp,-80
     398:	c686                	sw	ra,76(sp)
     39a:	c4a2                	sw	s0,72(sp)
     39c:	0880                	addi	s0,sp,80
     39e:	faa42e23          	sw	a0,-68(s0)
     3a2:	fe042623          	sw	zero,-20(s0)
     3a6:	a80d                	j	3d8 <hex_out+0x42>
     3a8:	fec42783          	lw	a5,-20(s0)
     3ac:	fbc42703          	lw	a4,-68(s0)
     3b0:	97ba                	add	a5,a5,a4
     3b2:	0007c783          	lbu	a5,0(a5)
     3b6:	853e                	mv	a0,a5
     3b8:	3f41                	jal	348 <sym2data>
     3ba:	87aa                	mv	a5,a0
     3bc:	873e                	mv	a4,a5
     3be:	fec42783          	lw	a5,-20(s0)
     3c2:	078a                	slli	a5,a5,0x2
     3c4:	ff040693          	addi	a3,s0,-16
     3c8:	97b6                	add	a5,a5,a3
     3ca:	fce7ae23          	sw	a4,-36(a5)
     3ce:	fec42783          	lw	a5,-20(s0)
     3d2:	0785                	addi	a5,a5,1
     3d4:	fef42623          	sw	a5,-20(s0)
     3d8:	fec42703          	lw	a4,-20(s0)
     3dc:	479d                	li	a5,7
     3de:	fce7d5e3          	bge	a5,a4,3a8 <hex_out+0x12>
     3e2:	fd842783          	lw	a5,-40(s0)
     3e6:	01879713          	slli	a4,a5,0x18
     3ea:	fd442783          	lw	a5,-44(s0)
     3ee:	07c2                	slli	a5,a5,0x10
     3f0:	8f5d                	or	a4,a4,a5
     3f2:	fd042783          	lw	a5,-48(s0)
     3f6:	07a2                	slli	a5,a5,0x8
     3f8:	00f766b3          	or	a3,a4,a5
     3fc:	fcc42703          	lw	a4,-52(s0)
     400:	1a1087b7          	lui	a5,0x1a108
     404:	8f55                	or	a4,a4,a3
     406:	c398                	sw	a4,0(a5)
     408:	fe842783          	lw	a5,-24(s0)
     40c:	01879713          	slli	a4,a5,0x18
     410:	fe442783          	lw	a5,-28(s0)
     414:	07c2                	slli	a5,a5,0x10
     416:	8f5d                	or	a4,a4,a5
     418:	fe042783          	lw	a5,-32(s0)
     41c:	07a2                	slli	a5,a5,0x8
     41e:	00f766b3          	or	a3,a4,a5
     422:	fdc42703          	lw	a4,-36(s0)
     426:	1a1087b7          	lui	a5,0x1a108
     42a:	0791                	addi	a5,a5,4
     42c:	8f55                	or	a4,a4,a3
     42e:	c398                	sw	a4,0(a5)
     430:	0001                	nop
     432:	40b6                	lw	ra,76(sp)
     434:	4426                	lw	s0,72(sp)
     436:	6161                	addi	sp,sp,80
     438:	8082                	ret

0000043a <set_pin_function>:
     43a:	7179                	addi	sp,sp,-48
     43c:	d622                	sw	s0,44(sp)
     43e:	1800                	addi	s0,sp,48
     440:	fca42e23          	sw	a0,-36(s0)
     444:	fcb42c23          	sw	a1,-40(s0)
     448:	1a1077b7          	lui	a5,0x1a107
     44c:	439c                	lw	a5,0(a5)
     44e:	fef42623          	sw	a5,-20(s0)
     452:	fdc42783          	lw	a5,-36(s0)
     456:	4705                	li	a4,1
     458:	00f717b3          	sll	a5,a4,a5
     45c:	fff7c713          	not	a4,a5
     460:	fec42783          	lw	a5,-20(s0)
     464:	8ff9                	and	a5,a5,a4
     466:	fef42623          	sw	a5,-20(s0)
     46a:	fdc42783          	lw	a5,-36(s0)
     46e:	fd842703          	lw	a4,-40(s0)
     472:	00f71733          	sll	a4,a4,a5
     476:	fec42783          	lw	a5,-20(s0)
     47a:	8fd9                	or	a5,a5,a4
     47c:	fef42623          	sw	a5,-20(s0)
     480:	1a1077b7          	lui	a5,0x1a107
     484:	fec42703          	lw	a4,-20(s0)
     488:	c398                	sw	a4,0(a5)
     48a:	0001                	nop
     48c:	5432                	lw	s0,44(sp)
     48e:	6145                	addi	sp,sp,48
     490:	8082                	ret

00000492 <get_pin_function>:
     492:	7179                	addi	sp,sp,-48
     494:	d622                	sw	s0,44(sp)
     496:	1800                	addi	s0,sp,48
     498:	fca42e23          	sw	a0,-36(s0)
     49c:	1a1077b7          	lui	a5,0x1a107
     4a0:	439c                	lw	a5,0(a5)
     4a2:	fef42623          	sw	a5,-20(s0)
     4a6:	fec42703          	lw	a4,-20(s0)
     4aa:	fdc42783          	lw	a5,-36(s0)
     4ae:	40f757b3          	sra	a5,a4,a5
     4b2:	8b85                	andi	a5,a5,1
     4b4:	fef42623          	sw	a5,-20(s0)
     4b8:	fec42783          	lw	a5,-20(s0)
     4bc:	853e                	mv	a0,a5
     4be:	5432                	lw	s0,44(sp)
     4c0:	6145                	addi	sp,sp,48
     4c2:	8082                	ret

000004c4 <set_gpio_pin_direction>:
     4c4:	7179                	addi	sp,sp,-48
     4c6:	d622                	sw	s0,44(sp)
     4c8:	1800                	addi	s0,sp,48
     4ca:	fca42e23          	sw	a0,-36(s0)
     4ce:	fcb42c23          	sw	a1,-40(s0)
     4d2:	1a1017b7          	lui	a5,0x1a101
     4d6:	439c                	lw	a5,0(a5)
     4d8:	fef42623          	sw	a5,-20(s0)
     4dc:	fd842783          	lw	a5,-40(s0)
     4e0:	ef91                	bnez	a5,4fc <set_gpio_pin_direction+0x38>
     4e2:	fdc42783          	lw	a5,-36(s0)
     4e6:	4705                	li	a4,1
     4e8:	00f717b3          	sll	a5,a4,a5
     4ec:	fff7c713          	not	a4,a5
     4f0:	fec42783          	lw	a5,-20(s0)
     4f4:	8ff9                	and	a5,a5,a4
     4f6:	fef42623          	sw	a5,-20(s0)
     4fa:	a819                	j	510 <set_gpio_pin_direction+0x4c>
     4fc:	fdc42783          	lw	a5,-36(s0)
     500:	4705                	li	a4,1
     502:	00f71733          	sll	a4,a4,a5
     506:	fec42783          	lw	a5,-20(s0)
     50a:	8fd9                	or	a5,a5,a4
     50c:	fef42623          	sw	a5,-20(s0)
     510:	1a1017b7          	lui	a5,0x1a101
     514:	fec42703          	lw	a4,-20(s0)
     518:	c398                	sw	a4,0(a5)
     51a:	0001                	nop
     51c:	5432                	lw	s0,44(sp)
     51e:	6145                	addi	sp,sp,48
     520:	8082                	ret

00000522 <get_gpio_pin_direction>:
     522:	7179                	addi	sp,sp,-48
     524:	d622                	sw	s0,44(sp)
     526:	1800                	addi	s0,sp,48
     528:	fca42e23          	sw	a0,-36(s0)
     52c:	1a1017b7          	lui	a5,0x1a101
     530:	439c                	lw	a5,0(a5)
     532:	fef42623          	sw	a5,-20(s0)
     536:	fec42703          	lw	a4,-20(s0)
     53a:	fdc42783          	lw	a5,-36(s0)
     53e:	0786                	slli	a5,a5,0x1
     540:	40f757b3          	sra	a5,a4,a5
     544:	8b85                	andi	a5,a5,1
     546:	fef42623          	sw	a5,-20(s0)
     54a:	fec42783          	lw	a5,-20(s0)
     54e:	853e                	mv	a0,a5
     550:	5432                	lw	s0,44(sp)
     552:	6145                	addi	sp,sp,48
     554:	8082                	ret

00000556 <set_gpio_pin_value>:
     556:	7179                	addi	sp,sp,-48
     558:	d622                	sw	s0,44(sp)
     55a:	1800                	addi	s0,sp,48
     55c:	fca42e23          	sw	a0,-36(s0)
     560:	fcb42c23          	sw	a1,-40(s0)
     564:	1a1017b7          	lui	a5,0x1a101
     568:	07a1                	addi	a5,a5,8
     56a:	439c                	lw	a5,0(a5)
     56c:	fef42623          	sw	a5,-20(s0)
     570:	fd842783          	lw	a5,-40(s0)
     574:	ef91                	bnez	a5,590 <set_gpio_pin_value+0x3a>
     576:	fdc42783          	lw	a5,-36(s0)
     57a:	4705                	li	a4,1
     57c:	00f717b3          	sll	a5,a4,a5
     580:	fff7c713          	not	a4,a5
     584:	fec42783          	lw	a5,-20(s0)
     588:	8ff9                	and	a5,a5,a4
     58a:	fef42623          	sw	a5,-20(s0)
     58e:	a819                	j	5a4 <set_gpio_pin_value+0x4e>
     590:	fdc42783          	lw	a5,-36(s0)
     594:	4705                	li	a4,1
     596:	00f71733          	sll	a4,a4,a5
     59a:	fec42783          	lw	a5,-20(s0)
     59e:	8fd9                	or	a5,a5,a4
     5a0:	fef42623          	sw	a5,-20(s0)
     5a4:	1a1017b7          	lui	a5,0x1a101
     5a8:	07a1                	addi	a5,a5,8
     5aa:	fec42703          	lw	a4,-20(s0)
     5ae:	c398                	sw	a4,0(a5)
     5b0:	0001                	nop
     5b2:	5432                	lw	s0,44(sp)
     5b4:	6145                	addi	sp,sp,48
     5b6:	8082                	ret

000005b8 <get_gpio_pin_value>:
     5b8:	7179                	addi	sp,sp,-48
     5ba:	d622                	sw	s0,44(sp)
     5bc:	1800                	addi	s0,sp,48
     5be:	fca42e23          	sw	a0,-36(s0)
     5c2:	1a1017b7          	lui	a5,0x1a101
     5c6:	0791                	addi	a5,a5,4
     5c8:	439c                	lw	a5,0(a5)
     5ca:	fef42623          	sw	a5,-20(s0)
     5ce:	fec42703          	lw	a4,-20(s0)
     5d2:	fdc42783          	lw	a5,-36(s0)
     5d6:	40f757b3          	sra	a5,a4,a5
     5da:	8b85                	andi	a5,a5,1
     5dc:	fef42623          	sw	a5,-20(s0)
     5e0:	fec42783          	lw	a5,-20(s0)
     5e4:	853e                	mv	a0,a5
     5e6:	5432                	lw	s0,44(sp)
     5e8:	6145                	addi	sp,sp,48
     5ea:	8082                	ret

000005ec <set_gpio_pin_irq_en>:
     5ec:	7179                	addi	sp,sp,-48
     5ee:	d622                	sw	s0,44(sp)
     5f0:	1800                	addi	s0,sp,48
     5f2:	fca42e23          	sw	a0,-36(s0)
     5f6:	fcb42c23          	sw	a1,-40(s0)
     5fa:	1a1017b7          	lui	a5,0x1a101
     5fe:	07b1                	addi	a5,a5,12
     600:	439c                	lw	a5,0(a5)
     602:	fef42623          	sw	a5,-20(s0)
     606:	fd842783          	lw	a5,-40(s0)
     60a:	ef91                	bnez	a5,626 <set_gpio_pin_irq_en+0x3a>
     60c:	fdc42783          	lw	a5,-36(s0)
     610:	4705                	li	a4,1
     612:	00f717b3          	sll	a5,a4,a5
     616:	fff7c793          	not	a5,a5
     61a:	fec42703          	lw	a4,-20(s0)
     61e:	8ff9                	and	a5,a5,a4
     620:	fef42623          	sw	a5,-20(s0)
     624:	a819                	j	63a <set_gpio_pin_irq_en+0x4e>
     626:	fdc42783          	lw	a5,-36(s0)
     62a:	4705                	li	a4,1
     62c:	00f717b3          	sll	a5,a4,a5
     630:	fec42703          	lw	a4,-20(s0)
     634:	8fd9                	or	a5,a5,a4
     636:	fef42623          	sw	a5,-20(s0)
     63a:	1a1017b7          	lui	a5,0x1a101
     63e:	07b1                	addi	a5,a5,12
     640:	fec42703          	lw	a4,-20(s0)
     644:	c398                	sw	a4,0(a5)
     646:	0001                	nop
     648:	5432                	lw	s0,44(sp)
     64a:	6145                	addi	sp,sp,48
     64c:	8082                	ret

0000064e <set_gpio_pin_irq_type>:
     64e:	7179                	addi	sp,sp,-48
     650:	d622                	sw	s0,44(sp)
     652:	1800                	addi	s0,sp,48
     654:	fca42e23          	sw	a0,-36(s0)
     658:	fcb42c23          	sw	a1,-40(s0)
     65c:	1a1017b7          	lui	a5,0x1a101
     660:	07c1                	addi	a5,a5,16
     662:	439c                	lw	a5,0(a5)
     664:	fef42623          	sw	a5,-20(s0)
     668:	1a1017b7          	lui	a5,0x1a101
     66c:	07d1                	addi	a5,a5,20
     66e:	439c                	lw	a5,0(a5)
     670:	fef42423          	sw	a5,-24(s0)
     674:	fd842783          	lw	a5,-40(s0)
     678:	8b85                	andi	a5,a5,1
     67a:	ef91                	bnez	a5,696 <set_gpio_pin_irq_type+0x48>
     67c:	fdc42783          	lw	a5,-36(s0)
     680:	4705                	li	a4,1
     682:	00f717b3          	sll	a5,a4,a5
     686:	fff7c793          	not	a5,a5
     68a:	fec42703          	lw	a4,-20(s0)
     68e:	8ff9                	and	a5,a5,a4
     690:	fef42623          	sw	a5,-20(s0)
     694:	a819                	j	6aa <set_gpio_pin_irq_type+0x5c>
     696:	fdc42783          	lw	a5,-36(s0)
     69a:	4705                	li	a4,1
     69c:	00f717b3          	sll	a5,a4,a5
     6a0:	fec42703          	lw	a4,-20(s0)
     6a4:	8fd9                	or	a5,a5,a4
     6a6:	fef42623          	sw	a5,-20(s0)
     6aa:	fd842783          	lw	a5,-40(s0)
     6ae:	8b89                	andi	a5,a5,2
     6b0:	ef91                	bnez	a5,6cc <set_gpio_pin_irq_type+0x7e>
     6b2:	fdc42783          	lw	a5,-36(s0)
     6b6:	4705                	li	a4,1
     6b8:	00f717b3          	sll	a5,a4,a5
     6bc:	fff7c793          	not	a5,a5
     6c0:	fe842703          	lw	a4,-24(s0)
     6c4:	8ff9                	and	a5,a5,a4
     6c6:	fef42423          	sw	a5,-24(s0)
     6ca:	a819                	j	6e0 <set_gpio_pin_irq_type+0x92>
     6cc:	fdc42783          	lw	a5,-36(s0)
     6d0:	4705                	li	a4,1
     6d2:	00f717b3          	sll	a5,a4,a5
     6d6:	fe842703          	lw	a4,-24(s0)
     6da:	8fd9                	or	a5,a5,a4
     6dc:	fef42423          	sw	a5,-24(s0)
     6e0:	1a1017b7          	lui	a5,0x1a101
     6e4:	07c1                	addi	a5,a5,16
     6e6:	fec42703          	lw	a4,-20(s0)
     6ea:	c398                	sw	a4,0(a5)
     6ec:	1a1017b7          	lui	a5,0x1a101
     6f0:	07d1                	addi	a5,a5,20
     6f2:	fe842703          	lw	a4,-24(s0)
     6f6:	c398                	sw	a4,0(a5)
     6f8:	0001                	nop
     6fa:	5432                	lw	s0,44(sp)
     6fc:	6145                	addi	sp,sp,48
     6fe:	8082                	ret

00000700 <get_gpio_irq_status>:
     700:	1141                	addi	sp,sp,-16
     702:	c622                	sw	s0,12(sp)
     704:	0800                	addi	s0,sp,16
     706:	1a1017b7          	lui	a5,0x1a101
     70a:	07e1                	addi	a5,a5,24
     70c:	439c                	lw	a5,0(a5)
     70e:	853e                	mv	a0,a5
     710:	4432                	lw	s0,12(sp)
     712:	0141                	addi	sp,sp,16
     714:	8082                	ret

00000716 <uart_set_cfg>:
     716:	1101                	addi	sp,sp,-32
     718:	ce22                	sw	s0,28(sp)
     71a:	1000                	addi	s0,sp,32
     71c:	fea42623          	sw	a0,-20(s0)
     720:	87ae                	mv	a5,a1
     722:	fef41523          	sh	a5,-22(s0)
     726:	1a1077b7          	lui	a5,0x1a107
     72a:	0791                	addi	a5,a5,4
     72c:	4398                	lw	a4,0(a5)
     72e:	1a1077b7          	lui	a5,0x1a107
     732:	0791                	addi	a5,a5,4
     734:	00276713          	ori	a4,a4,2
     738:	c398                	sw	a4,0(a5)
     73a:	1a1007b7          	lui	a5,0x1a100
     73e:	07b1                	addi	a5,a5,12
     740:	08300713          	li	a4,131
     744:	c398                	sw	a4,0(a5)
     746:	fea45783          	lhu	a5,-22(s0)
     74a:	83a1                	srli	a5,a5,0x8
     74c:	07c2                	slli	a5,a5,0x10
     74e:	83c1                	srli	a5,a5,0x10
     750:	873e                	mv	a4,a5
     752:	1a1007b7          	lui	a5,0x1a100
     756:	0791                	addi	a5,a5,4
     758:	0ff77713          	andi	a4,a4,255
     75c:	c398                	sw	a4,0(a5)
     75e:	fea45703          	lhu	a4,-22(s0)
     762:	1a1007b7          	lui	a5,0x1a100
     766:	0ff77713          	andi	a4,a4,255
     76a:	c398                	sw	a4,0(a5)
     76c:	1a1007b7          	lui	a5,0x1a100
     770:	07a1                	addi	a5,a5,8
     772:	0a700713          	li	a4,167
     776:	c398                	sw	a4,0(a5)
     778:	1a1007b7          	lui	a5,0x1a100
     77c:	07b1                	addi	a5,a5,12
     77e:	470d                	li	a4,3
     780:	c398                	sw	a4,0(a5)
     782:	1a1007b7          	lui	a5,0x1a100
     786:	0791                	addi	a5,a5,4
     788:	439c                	lw	a5,0(a5)
     78a:	0f07f713          	andi	a4,a5,240
     78e:	1a1007b7          	lui	a5,0x1a100
     792:	0791                	addi	a5,a5,4
     794:	00276713          	ori	a4,a4,2
     798:	c398                	sw	a4,0(a5)
     79a:	0001                	nop
     79c:	4472                	lw	s0,28(sp)
     79e:	6105                	addi	sp,sp,32
     7a0:	8082                	ret

000007a2 <uart_send>:
     7a2:	7179                	addi	sp,sp,-48
     7a4:	d622                	sw	s0,44(sp)
     7a6:	1800                	addi	s0,sp,48
     7a8:	fca42e23          	sw	a0,-36(s0)
     7ac:	fcb42c23          	sw	a1,-40(s0)
     7b0:	a891                	j	804 <uart_send+0x62>
     7b2:	0001                	nop
     7b4:	1a1007b7          	lui	a5,0x1a100
     7b8:	07d1                	addi	a5,a5,20
     7ba:	439c                	lw	a5,0(a5)
     7bc:	0207f793          	andi	a5,a5,32
     7c0:	dbf5                	beqz	a5,7b4 <uart_send+0x12>
     7c2:	fe042623          	sw	zero,-20(s0)
     7c6:	a035                	j	7f2 <uart_send+0x50>
     7c8:	fdc42783          	lw	a5,-36(s0)
     7cc:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ff8001>
     7d0:	fce42e23          	sw	a4,-36(s0)
     7d4:	0007c703          	lbu	a4,0(a5)
     7d8:	1a1007b7          	lui	a5,0x1a100
     7dc:	c398                	sw	a4,0(a5)
     7de:	fd842783          	lw	a5,-40(s0)
     7e2:	17fd                	addi	a5,a5,-1
     7e4:	fcf42c23          	sw	a5,-40(s0)
     7e8:	fec42783          	lw	a5,-20(s0)
     7ec:	0785                	addi	a5,a5,1
     7ee:	fef42623          	sw	a5,-20(s0)
     7f2:	fec42703          	lw	a4,-20(s0)
     7f6:	03f00793          	li	a5,63
     7fa:	00e7e563          	bltu	a5,a4,804 <uart_send+0x62>
     7fe:	fd842783          	lw	a5,-40(s0)
     802:	f3f9                	bnez	a5,7c8 <uart_send+0x26>
     804:	fd842783          	lw	a5,-40(s0)
     808:	f7cd                	bnez	a5,7b2 <uart_send+0x10>
     80a:	0001                	nop
     80c:	0001                	nop
     80e:	5432                	lw	s0,44(sp)
     810:	6145                	addi	sp,sp,48
     812:	8082                	ret

00000814 <uart_getchar>:
     814:	1141                	addi	sp,sp,-16
     816:	c622                	sw	s0,12(sp)
     818:	0800                	addi	s0,sp,16
     81a:	0001                	nop
     81c:	1a1007b7          	lui	a5,0x1a100
     820:	07d1                	addi	a5,a5,20
     822:	439c                	lw	a5,0(a5)
     824:	0017f713          	andi	a4,a5,1
     828:	4785                	li	a5,1
     82a:	fef719e3          	bne	a4,a5,81c <uart_getchar+0x8>
     82e:	1a1007b7          	lui	a5,0x1a100
     832:	439c                	lw	a5,0(a5)
     834:	0ff7f793          	andi	a5,a5,255
     838:	853e                	mv	a0,a5
     83a:	4432                	lw	s0,12(sp)
     83c:	0141                	addi	sp,sp,16
     83e:	8082                	ret

00000840 <uart_sendchar>:
     840:	1101                	addi	sp,sp,-32
     842:	ce22                	sw	s0,28(sp)
     844:	1000                	addi	s0,sp,32
     846:	87aa                	mv	a5,a0
     848:	fef407a3          	sb	a5,-17(s0)
     84c:	0001                	nop
     84e:	1a1007b7          	lui	a5,0x1a100
     852:	07d1                	addi	a5,a5,20
     854:	439c                	lw	a5,0(a5)
     856:	0207f793          	andi	a5,a5,32
     85a:	dbf5                	beqz	a5,84e <uart_sendchar+0xe>
     85c:	1a1007b7          	lui	a5,0x1a100
     860:	fef44703          	lbu	a4,-17(s0)
     864:	c398                	sw	a4,0(a5)
     866:	0001                	nop
     868:	4472                	lw	s0,28(sp)
     86a:	6105                	addi	sp,sp,32
     86c:	8082                	ret

0000086e <uart_wait_tx_done>:
     86e:	1141                	addi	sp,sp,-16
     870:	c622                	sw	s0,12(sp)
     872:	0800                	addi	s0,sp,16
     874:	0001                	nop
     876:	1a1007b7          	lui	a5,0x1a100
     87a:	07d1                	addi	a5,a5,20
     87c:	439c                	lw	a5,0(a5)
     87e:	0407f793          	andi	a5,a5,64
     882:	dbf5                	beqz	a5,876 <uart_wait_tx_done+0x8>
     884:	0001                	nop
     886:	0001                	nop
     888:	4432                	lw	s0,12(sp)
     88a:	0141                	addi	sp,sp,16
     88c:	8082                	ret

0000088e <exit>:
     88e:	1101                	addi	sp,sp,-32
     890:	ce06                	sw	ra,28(sp)
     892:	cc22                	sw	s0,24(sp)
     894:	1000                	addi	s0,sp,32
     896:	fea42623          	sw	a0,-20(s0)
     89a:	fec42503          	lw	a0,-20(s0)
     89e:	2011                	jal	8a2 <eoc>
     8a0:	a001                	j	8a0 <exit+0x12>

000008a2 <eoc>:
     8a2:	1101                	addi	sp,sp,-32
     8a4:	ce06                	sw	ra,28(sp)
     8a6:	cc22                	sw	s0,24(sp)
     8a8:	1000                	addi	s0,sp,32
     8aa:	fea42623          	sw	a0,-20(s0)
     8ae:	fec42783          	lw	a5,-20(s0)
     8b2:	c799                	beqz	a5,8c0 <eoc+0x1e>
     8b4:	1a1077b7          	lui	a5,0x1a107
     8b8:	07d1                	addi	a5,a5,20
     8ba:	4705                	li	a4,1
     8bc:	c398                	sw	a4,0(a5)
     8be:	a031                	j	8ca <eoc+0x28>
     8c0:	1a1077b7          	lui	a5,0x1a107
     8c4:	07d1                	addi	a5,a5,20
     8c6:	0007a023          	sw	zero,0(a5) # 1a107000 <_stack_start+0x19fff000>
     8ca:	1a1077b7          	lui	a5,0x1a107
     8ce:	0791                	addi	a5,a5,4
     8d0:	4398                	lw	a4,0(a5)
     8d2:	1a1077b7          	lui	a5,0x1a107
     8d6:	0791                	addi	a5,a5,4
     8d8:	00476713          	ori	a4,a4,4
     8dc:	c398                	sw	a4,0(a5)
     8de:	4585                	li	a1,1
     8e0:	4521                	li	a0,8
     8e2:	3ea1                	jal	43a <set_pin_function>
     8e4:	4585                	li	a1,1
     8e6:	4521                	li	a0,8
     8e8:	3ef1                	jal	4c4 <set_gpio_pin_direction>
     8ea:	4585                	li	a1,1
     8ec:	4521                	li	a0,8
     8ee:	31a5                	jal	556 <set_gpio_pin_value>
     8f0:	0001                	nop
     8f2:	40f2                	lw	ra,28(sp)
     8f4:	4462                	lw	s0,24(sp)
     8f6:	6105                	addi	sp,sp,32
     8f8:	8082                	ret

000008fa <sleep_busy>:
     8fa:	7179                	addi	sp,sp,-48
     8fc:	d622                	sw	s0,44(sp)
     8fe:	1800                	addi	s0,sp,48
     900:	fca42e23          	sw	a0,-36(s0)
     904:	fe042623          	sw	zero,-20(s0)
     908:	a039                	j	916 <sleep_busy+0x1c>
     90a:	0001                	nop
     90c:	fec42783          	lw	a5,-20(s0)
     910:	0785                	addi	a5,a5,1
     912:	fef42623          	sw	a5,-20(s0)
     916:	fdc42783          	lw	a5,-36(s0)
     91a:	fec42703          	lw	a4,-20(s0)
     91e:	fef746e3          	blt	a4,a5,90a <sleep_busy+0x10>
     922:	0001                	nop
     924:	0001                	nop
     926:	5432                	lw	s0,44(sp)
     928:	6145                	addi	sp,sp,48
     92a:	8082                	ret

0000092c <divu10>:
     92c:	7179                	addi	sp,sp,-48
     92e:	d622                	sw	s0,44(sp)
     930:	1800                	addi	s0,sp,48
     932:	fca42e23          	sw	a0,-36(s0)
     936:	fdc42783          	lw	a5,-36(s0)
     93a:	0017d713          	srli	a4,a5,0x1
     93e:	fdc42783          	lw	a5,-36(s0)
     942:	8389                	srli	a5,a5,0x2
     944:	97ba                	add	a5,a5,a4
     946:	fef42623          	sw	a5,-20(s0)
     94a:	fec42783          	lw	a5,-20(s0)
     94e:	8391                	srli	a5,a5,0x4
     950:	fec42703          	lw	a4,-20(s0)
     954:	97ba                	add	a5,a5,a4
     956:	fef42623          	sw	a5,-20(s0)
     95a:	fec42783          	lw	a5,-20(s0)
     95e:	83a1                	srli	a5,a5,0x8
     960:	fec42703          	lw	a4,-20(s0)
     964:	97ba                	add	a5,a5,a4
     966:	fef42623          	sw	a5,-20(s0)
     96a:	fec42783          	lw	a5,-20(s0)
     96e:	83c1                	srli	a5,a5,0x10
     970:	fec42703          	lw	a4,-20(s0)
     974:	97ba                	add	a5,a5,a4
     976:	fef42623          	sw	a5,-20(s0)
     97a:	fec42783          	lw	a5,-20(s0)
     97e:	838d                	srli	a5,a5,0x3
     980:	fef42623          	sw	a5,-20(s0)
     984:	fec42703          	lw	a4,-20(s0)
     988:	87ba                	mv	a5,a4
     98a:	078a                	slli	a5,a5,0x2
     98c:	97ba                	add	a5,a5,a4
     98e:	0786                	slli	a5,a5,0x1
     990:	873e                	mv	a4,a5
     992:	fdc42783          	lw	a5,-36(s0)
     996:	8f99                	sub	a5,a5,a4
     998:	fef42423          	sw	a5,-24(s0)
     99c:	fe842783          	lw	a5,-24(s0)
     9a0:	0799                	addi	a5,a5,6
     9a2:	0047d713          	srli	a4,a5,0x4
     9a6:	fec42783          	lw	a5,-20(s0)
     9aa:	97ba                	add	a5,a5,a4
     9ac:	853e                	mv	a0,a5
     9ae:	5432                	lw	s0,44(sp)
     9b0:	6145                	addi	sp,sp,48
     9b2:	8082                	ret

000009b4 <remu10>:
     9b4:	1101                	addi	sp,sp,-32
     9b6:	ce22                	sw	s0,28(sp)
     9b8:	1000                	addi	s0,sp,32
     9ba:	fea42623          	sw	a0,-20(s0)
     9be:	fec42703          	lw	a4,-20(s0)
     9c2:	1999a7b7          	lui	a5,0x1999a
     9c6:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19891999>
     9ca:	02f70733          	mul	a4,a4,a5
     9ce:	fec42783          	lw	a5,-20(s0)
     9d2:	8385                	srli	a5,a5,0x1
     9d4:	973e                	add	a4,a4,a5
     9d6:	fec42783          	lw	a5,-20(s0)
     9da:	838d                	srli	a5,a5,0x3
     9dc:	97ba                	add	a5,a5,a4
     9de:	83f1                	srli	a5,a5,0x1c
     9e0:	fef42623          	sw	a5,-20(s0)
     9e4:	001007b7          	lui	a5,0x100
     9e8:	0cc78713          	addi	a4,a5,204 # 1000cc <remu10_table>
     9ec:	fec42783          	lw	a5,-20(s0)
     9f0:	97ba                	add	a5,a5,a4
     9f2:	0007c783          	lbu	a5,0(a5)
     9f6:	853e                	mv	a0,a5
     9f8:	4472                	lw	s0,28(sp)
     9fa:	6105                	addi	sp,sp,32
     9fc:	8082                	ret

000009fe <putchar>:
     9fe:	1101                	addi	sp,sp,-32
     a00:	ce06                	sw	ra,28(sp)
     a02:	cc22                	sw	s0,24(sp)
     a04:	1000                	addi	s0,sp,32
     a06:	fea42623          	sw	a0,-20(s0)
     a0a:	fec42783          	lw	a5,-20(s0)
     a0e:	0ff7f793          	andi	a5,a5,255
     a12:	853e                	mv	a0,a5
     a14:	3535                	jal	840 <uart_sendchar>
     a16:	fec42783          	lw	a5,-20(s0)
     a1a:	853e                	mv	a0,a5
     a1c:	40f2                	lw	ra,28(sp)
     a1e:	4462                	lw	s0,24(sp)
     a20:	6105                	addi	sp,sp,32
     a22:	8082                	ret

00000a24 <qprintchar>:
     a24:	1101                	addi	sp,sp,-32
     a26:	ce06                	sw	ra,28(sp)
     a28:	cc22                	sw	s0,24(sp)
     a2a:	1000                	addi	s0,sp,32
     a2c:	fea42623          	sw	a0,-20(s0)
     a30:	feb42423          	sw	a1,-24(s0)
     a34:	fec42783          	lw	a5,-20(s0)
     a38:	c39d                	beqz	a5,a5e <qprintchar+0x3a>
     a3a:	fec42783          	lw	a5,-20(s0)
     a3e:	439c                	lw	a5,0(a5)
     a40:	fe842703          	lw	a4,-24(s0)
     a44:	0ff77713          	andi	a4,a4,255
     a48:	00e78023          	sb	a4,0(a5)
     a4c:	fec42783          	lw	a5,-20(s0)
     a50:	439c                	lw	a5,0(a5)
     a52:	00178713          	addi	a4,a5,1
     a56:	fec42783          	lw	a5,-20(s0)
     a5a:	c398                	sw	a4,0(a5)
     a5c:	a039                	j	a6a <qprintchar+0x46>
     a5e:	fe842783          	lw	a5,-24(s0)
     a62:	0ff7f793          	andi	a5,a5,255
     a66:	853e                	mv	a0,a5
     a68:	3f59                	jal	9fe <putchar>
     a6a:	0001                	nop
     a6c:	40f2                	lw	ra,28(sp)
     a6e:	4462                	lw	s0,24(sp)
     a70:	6105                	addi	sp,sp,32
     a72:	8082                	ret

00000a74 <qprints>:
     a74:	7179                	addi	sp,sp,-48
     a76:	d606                	sw	ra,44(sp)
     a78:	d422                	sw	s0,40(sp)
     a7a:	d226                	sw	s1,36(sp)
     a7c:	d04a                	sw	s2,32(sp)
     a7e:	ce4e                	sw	s3,28(sp)
     a80:	cc52                	sw	s4,24(sp)
     a82:	1800                	addi	s0,sp,48
     a84:	fca42e23          	sw	a0,-36(s0)
     a88:	fcb42c23          	sw	a1,-40(s0)
     a8c:	fcc42a23          	sw	a2,-44(s0)
     a90:	fcd42823          	sw	a3,-48(s0)
     a94:	4481                	li	s1,0
     a96:	02000a13          	li	s4,32
     a9a:	fd442783          	lw	a5,-44(s0)
     a9e:	02f05e63          	blez	a5,ada <qprints+0x66>
     aa2:	4901                	li	s2,0
     aa4:	fd842983          	lw	s3,-40(s0)
     aa8:	a019                	j	aae <qprints+0x3a>
     aaa:	0905                	addi	s2,s2,1
     aac:	0985                	addi	s3,s3,1
     aae:	0009c783          	lbu	a5,0(s3)
     ab2:	ffe5                	bnez	a5,aaa <qprints+0x36>
     ab4:	fd442783          	lw	a5,-44(s0)
     ab8:	00f94563          	blt	s2,a5,ac2 <qprints+0x4e>
     abc:	fc042a23          	sw	zero,-44(s0)
     ac0:	a039                	j	ace <qprints+0x5a>
     ac2:	fd442783          	lw	a5,-44(s0)
     ac6:	412787b3          	sub	a5,a5,s2
     aca:	fcf42a23          	sw	a5,-44(s0)
     ace:	fd042783          	lw	a5,-48(s0)
     ad2:	8b89                	andi	a5,a5,2
     ad4:	c399                	beqz	a5,ada <qprints+0x66>
     ad6:	03000a13          	li	s4,48
     ada:	fd042783          	lw	a5,-48(s0)
     ade:	8b85                	andi	a5,a5,1
     ae0:	ef9d                	bnez	a5,b1e <qprints+0xaa>
     ae2:	a819                	j	af8 <qprints+0x84>
     ae4:	85d2                	mv	a1,s4
     ae6:	fdc42503          	lw	a0,-36(s0)
     aea:	3f2d                	jal	a24 <qprintchar>
     aec:	0485                	addi	s1,s1,1
     aee:	fd442783          	lw	a5,-44(s0)
     af2:	17fd                	addi	a5,a5,-1
     af4:	fcf42a23          	sw	a5,-44(s0)
     af8:	fd442783          	lw	a5,-44(s0)
     afc:	fef044e3          	bgtz	a5,ae4 <qprints+0x70>
     b00:	a839                	j	b1e <qprints+0xaa>
     b02:	fd842783          	lw	a5,-40(s0)
     b06:	0007c783          	lbu	a5,0(a5)
     b0a:	85be                	mv	a1,a5
     b0c:	fdc42503          	lw	a0,-36(s0)
     b10:	3f11                	jal	a24 <qprintchar>
     b12:	0485                	addi	s1,s1,1
     b14:	fd842783          	lw	a5,-40(s0)
     b18:	0785                	addi	a5,a5,1
     b1a:	fcf42c23          	sw	a5,-40(s0)
     b1e:	fd842783          	lw	a5,-40(s0)
     b22:	0007c783          	lbu	a5,0(a5)
     b26:	fff1                	bnez	a5,b02 <qprints+0x8e>
     b28:	a819                	j	b3e <qprints+0xca>
     b2a:	85d2                	mv	a1,s4
     b2c:	fdc42503          	lw	a0,-36(s0)
     b30:	3dd5                	jal	a24 <qprintchar>
     b32:	0485                	addi	s1,s1,1
     b34:	fd442783          	lw	a5,-44(s0)
     b38:	17fd                	addi	a5,a5,-1
     b3a:	fcf42a23          	sw	a5,-44(s0)
     b3e:	fd442783          	lw	a5,-44(s0)
     b42:	fef044e3          	bgtz	a5,b2a <qprints+0xb6>
     b46:	87a6                	mv	a5,s1
     b48:	853e                	mv	a0,a5
     b4a:	50b2                	lw	ra,44(sp)
     b4c:	5422                	lw	s0,40(sp)
     b4e:	5492                	lw	s1,36(sp)
     b50:	5902                	lw	s2,32(sp)
     b52:	49f2                	lw	s3,28(sp)
     b54:	4a62                	lw	s4,24(sp)
     b56:	6145                	addi	sp,sp,48
     b58:	8082                	ret

00000b5a <qprinti>:
     b5a:	7159                	addi	sp,sp,-112
     b5c:	d686                	sw	ra,108(sp)
     b5e:	d4a2                	sw	s0,104(sp)
     b60:	d2a6                	sw	s1,100(sp)
     b62:	d0ca                	sw	s2,96(sp)
     b64:	cece                	sw	s3,92(sp)
     b66:	1880                	addi	s0,sp,112
     b68:	faa42623          	sw	a0,-84(s0)
     b6c:	fab42423          	sw	a1,-88(s0)
     b70:	fac42223          	sw	a2,-92(s0)
     b74:	fad42023          	sw	a3,-96(s0)
     b78:	f8e42e23          	sw	a4,-100(s0)
     b7c:	f8f42c23          	sw	a5,-104(s0)
     b80:	87c2                	mv	a5,a6
     b82:	f8f40ba3          	sb	a5,-105(s0)
     b86:	4981                	li	s3,0
     b88:	4901                	li	s2,0
     b8a:	fa842783          	lw	a5,-88(s0)
     b8e:	fcf42e23          	sw	a5,-36(s0)
     b92:	fa842783          	lw	a5,-88(s0)
     b96:	e39d                	bnez	a5,bbc <qprinti+0x62>
     b98:	03000793          	li	a5,48
     b9c:	faf40c23          	sb	a5,-72(s0)
     ba0:	fa040ca3          	sb	zero,-71(s0)
     ba4:	fb840793          	addi	a5,s0,-72
     ba8:	f9842683          	lw	a3,-104(s0)
     bac:	f9c42603          	lw	a2,-100(s0)
     bb0:	85be                	mv	a1,a5
     bb2:	fac42503          	lw	a0,-84(s0)
     bb6:	3d7d                	jal	a74 <qprints>
     bb8:	87aa                	mv	a5,a0
     bba:	a8fd                	j	cb8 <qprinti+0x15e>
     bbc:	fa042783          	lw	a5,-96(s0)
     bc0:	c38d                	beqz	a5,be2 <qprinti+0x88>
     bc2:	fa442703          	lw	a4,-92(s0)
     bc6:	47a9                	li	a5,10
     bc8:	00f71d63          	bne	a4,a5,be2 <qprinti+0x88>
     bcc:	fa842783          	lw	a5,-88(s0)
     bd0:	0007d963          	bgez	a5,be2 <qprinti+0x88>
     bd4:	4985                	li	s3,1
     bd6:	fa842783          	lw	a5,-88(s0)
     bda:	40f007b3          	neg	a5,a5
     bde:	fcf42e23          	sw	a5,-36(s0)
     be2:	fb840493          	addi	s1,s0,-72
     be6:	04fd                	addi	s1,s1,31
     be8:	00048023          	sb	zero,0(s1)
     bec:	fa442703          	lw	a4,-92(s0)
     bf0:	47c1                	li	a5,16
     bf2:	06f71c63          	bne	a4,a5,c6a <qprinti+0x110>
     bf6:	a0a1                	j	c3e <qprinti+0xe4>
     bf8:	fdc42783          	lw	a5,-36(s0)
     bfc:	8bbd                	andi	a5,a5,15
     bfe:	fcf42c23          	sw	a5,-40(s0)
     c02:	fd842703          	lw	a4,-40(s0)
     c06:	47a5                	li	a5,9
     c08:	00e7db63          	bge	a5,a4,c1e <qprinti+0xc4>
     c0c:	f9744783          	lbu	a5,-105(s0)
     c10:	fc678793          	addi	a5,a5,-58
     c14:	fd842703          	lw	a4,-40(s0)
     c18:	97ba                	add	a5,a5,a4
     c1a:	fcf42c23          	sw	a5,-40(s0)
     c1e:	fd842783          	lw	a5,-40(s0)
     c22:	0ff7f793          	andi	a5,a5,255
     c26:	14fd                	addi	s1,s1,-1
     c28:	03078793          	addi	a5,a5,48
     c2c:	0ff7f793          	andi	a5,a5,255
     c30:	00f48023          	sb	a5,0(s1)
     c34:	fdc42783          	lw	a5,-36(s0)
     c38:	8391                	srli	a5,a5,0x4
     c3a:	fcf42e23          	sw	a5,-36(s0)
     c3e:	fdc42783          	lw	a5,-36(s0)
     c42:	fbdd                	bnez	a5,bf8 <qprinti+0x9e>
     c44:	a035                	j	c70 <qprinti+0x116>
     c46:	fdc42503          	lw	a0,-36(s0)
     c4a:	33ad                	jal	9b4 <remu10>
     c4c:	87aa                	mv	a5,a0
     c4e:	0ff7f793          	andi	a5,a5,255
     c52:	14fd                	addi	s1,s1,-1
     c54:	03078793          	addi	a5,a5,48
     c58:	0ff7f793          	andi	a5,a5,255
     c5c:	00f48023          	sb	a5,0(s1)
     c60:	fdc42503          	lw	a0,-36(s0)
     c64:	31e1                	jal	92c <divu10>
     c66:	fca42e23          	sw	a0,-36(s0)
     c6a:	fdc42783          	lw	a5,-36(s0)
     c6e:	ffe1                	bnez	a5,c46 <qprinti+0xec>
     c70:	02098a63          	beqz	s3,ca4 <qprinti+0x14a>
     c74:	f9c42783          	lw	a5,-100(s0)
     c78:	c38d                	beqz	a5,c9a <qprinti+0x140>
     c7a:	f9842783          	lw	a5,-104(s0)
     c7e:	8b89                	andi	a5,a5,2
     c80:	cf89                	beqz	a5,c9a <qprinti+0x140>
     c82:	02d00593          	li	a1,45
     c86:	fac42503          	lw	a0,-84(s0)
     c8a:	3b69                	jal	a24 <qprintchar>
     c8c:	0905                	addi	s2,s2,1
     c8e:	f9c42783          	lw	a5,-100(s0)
     c92:	17fd                	addi	a5,a5,-1
     c94:	f8f42e23          	sw	a5,-100(s0)
     c98:	a031                	j	ca4 <qprinti+0x14a>
     c9a:	14fd                	addi	s1,s1,-1
     c9c:	02d00793          	li	a5,45
     ca0:	00f48023          	sb	a5,0(s1)
     ca4:	f9842683          	lw	a3,-104(s0)
     ca8:	f9c42603          	lw	a2,-100(s0)
     cac:	85a6                	mv	a1,s1
     cae:	fac42503          	lw	a0,-84(s0)
     cb2:	33c9                	jal	a74 <qprints>
     cb4:	87aa                	mv	a5,a0
     cb6:	97ca                	add	a5,a5,s2
     cb8:	853e                	mv	a0,a5
     cba:	50b6                	lw	ra,108(sp)
     cbc:	5426                	lw	s0,104(sp)
     cbe:	5496                	lw	s1,100(sp)
     cc0:	5906                	lw	s2,96(sp)
     cc2:	49f6                	lw	s3,92(sp)
     cc4:	6165                	addi	sp,sp,112
     cc6:	8082                	ret

00000cc8 <qprint>:
     cc8:	7139                	addi	sp,sp,-64
     cca:	de06                	sw	ra,60(sp)
     ccc:	dc22                	sw	s0,56(sp)
     cce:	da26                	sw	s1,52(sp)
     cd0:	d84a                	sw	s2,48(sp)
     cd2:	d64e                	sw	s3,44(sp)
     cd4:	0080                	addi	s0,sp,64
     cd6:	fca42623          	sw	a0,-52(s0)
     cda:	fcb42423          	sw	a1,-56(s0)
     cde:	fcc42223          	sw	a2,-60(s0)
     ce2:	4481                	li	s1,0
     ce4:	ac3d                	j	f22 <qprint+0x25a>
     ce6:	fc842783          	lw	a5,-56(s0)
     cea:	0007c703          	lbu	a4,0(a5)
     cee:	02500793          	li	a5,37
     cf2:	20f71763          	bne	a4,a5,f00 <qprint+0x238>
     cf6:	fc842783          	lw	a5,-56(s0)
     cfa:	0785                	addi	a5,a5,1
     cfc:	fcf42423          	sw	a5,-56(s0)
     d00:	4981                	li	s3,0
     d02:	894e                	mv	s2,s3
     d04:	fc842783          	lw	a5,-56(s0)
     d08:	0007c783          	lbu	a5,0(a5)
     d0c:	22078263          	beqz	a5,f30 <qprint+0x268>
     d10:	fc842783          	lw	a5,-56(s0)
     d14:	0007c703          	lbu	a4,0(a5)
     d18:	02500793          	li	a5,37
     d1c:	1ef70463          	beq	a4,a5,f04 <qprint+0x23c>
     d20:	fc842783          	lw	a5,-56(s0)
     d24:	0007c703          	lbu	a4,0(a5)
     d28:	02d00793          	li	a5,45
     d2c:	02f71063          	bne	a4,a5,d4c <qprint+0x84>
     d30:	fc842783          	lw	a5,-56(s0)
     d34:	0785                	addi	a5,a5,1
     d36:	fcf42423          	sw	a5,-56(s0)
     d3a:	4985                	li	s3,1
     d3c:	a801                	j	d4c <qprint+0x84>
     d3e:	fc842783          	lw	a5,-56(s0)
     d42:	0785                	addi	a5,a5,1
     d44:	fcf42423          	sw	a5,-56(s0)
     d48:	0029e993          	ori	s3,s3,2
     d4c:	fc842783          	lw	a5,-56(s0)
     d50:	0007c703          	lbu	a4,0(a5)
     d54:	03000793          	li	a5,48
     d58:	fef703e3          	beq	a4,a5,d3e <qprint+0x76>
     d5c:	a015                	j	d80 <qprint+0xb8>
     d5e:	87ca                	mv	a5,s2
     d60:	078a                	slli	a5,a5,0x2
     d62:	97ca                	add	a5,a5,s2
     d64:	0786                	slli	a5,a5,0x1
     d66:	893e                	mv	s2,a5
     d68:	fc842783          	lw	a5,-56(s0)
     d6c:	0007c783          	lbu	a5,0(a5)
     d70:	fd078793          	addi	a5,a5,-48
     d74:	993e                	add	s2,s2,a5
     d76:	fc842783          	lw	a5,-56(s0)
     d7a:	0785                	addi	a5,a5,1
     d7c:	fcf42423          	sw	a5,-56(s0)
     d80:	fc842783          	lw	a5,-56(s0)
     d84:	0007c703          	lbu	a4,0(a5)
     d88:	02f00793          	li	a5,47
     d8c:	00e7fa63          	bgeu	a5,a4,da0 <qprint+0xd8>
     d90:	fc842783          	lw	a5,-56(s0)
     d94:	0007c703          	lbu	a4,0(a5)
     d98:	03900793          	li	a5,57
     d9c:	fce7f1e3          	bgeu	a5,a4,d5e <qprint+0x96>
     da0:	fc842783          	lw	a5,-56(s0)
     da4:	0007c703          	lbu	a4,0(a5)
     da8:	07300793          	li	a5,115
     dac:	02f71b63          	bne	a4,a5,de2 <qprint+0x11a>
     db0:	fc442783          	lw	a5,-60(s0)
     db4:	00478713          	addi	a4,a5,4
     db8:	fce42223          	sw	a4,-60(s0)
     dbc:	0007a083          	lw	ra,0(a5)
     dc0:	00008463          	beqz	ra,dc8 <qprint+0x100>
     dc4:	8786                	mv	a5,ra
     dc6:	a029                	j	dd0 <qprint+0x108>
     dc8:	001007b7          	lui	a5,0x100
     dcc:	0c478793          	addi	a5,a5,196 # 1000c4 <__init_array_end+0xc4>
     dd0:	86ce                	mv	a3,s3
     dd2:	864a                	mv	a2,s2
     dd4:	85be                	mv	a1,a5
     dd6:	fcc42503          	lw	a0,-52(s0)
     dda:	3969                	jal	a74 <qprints>
     ddc:	87aa                	mv	a5,a0
     dde:	94be                	add	s1,s1,a5
     de0:	aa25                	j	f18 <qprint+0x250>
     de2:	fc842783          	lw	a5,-56(s0)
     de6:	0007c703          	lbu	a4,0(a5)
     dea:	06400793          	li	a5,100
     dee:	02f71563          	bne	a4,a5,e18 <qprint+0x150>
     df2:	fc442783          	lw	a5,-60(s0)
     df6:	00478713          	addi	a4,a5,4
     dfa:	fce42223          	sw	a4,-60(s0)
     dfe:	438c                	lw	a1,0(a5)
     e00:	06100813          	li	a6,97
     e04:	87ce                	mv	a5,s3
     e06:	874a                	mv	a4,s2
     e08:	4685                	li	a3,1
     e0a:	4629                	li	a2,10
     e0c:	fcc42503          	lw	a0,-52(s0)
     e10:	33a9                	jal	b5a <qprinti>
     e12:	87aa                	mv	a5,a0
     e14:	94be                	add	s1,s1,a5
     e16:	a209                	j	f18 <qprint+0x250>
     e18:	fc842783          	lw	a5,-56(s0)
     e1c:	0007c703          	lbu	a4,0(a5)
     e20:	07500793          	li	a5,117
     e24:	02f71663          	bne	a4,a5,e50 <qprint+0x188>
     e28:	fc442783          	lw	a5,-60(s0)
     e2c:	00478713          	addi	a4,a5,4
     e30:	fce42223          	sw	a4,-60(s0)
     e34:	439c                	lw	a5,0(a5)
     e36:	85be                	mv	a1,a5
     e38:	06100813          	li	a6,97
     e3c:	87ce                	mv	a5,s3
     e3e:	874a                	mv	a4,s2
     e40:	4681                	li	a3,0
     e42:	4629                	li	a2,10
     e44:	fcc42503          	lw	a0,-52(s0)
     e48:	3b09                	jal	b5a <qprinti>
     e4a:	87aa                	mv	a5,a0
     e4c:	94be                	add	s1,s1,a5
     e4e:	a0e9                	j	f18 <qprint+0x250>
     e50:	fc842783          	lw	a5,-56(s0)
     e54:	0007c703          	lbu	a4,0(a5)
     e58:	07800793          	li	a5,120
     e5c:	02f71663          	bne	a4,a5,e88 <qprint+0x1c0>
     e60:	fc442783          	lw	a5,-60(s0)
     e64:	00478713          	addi	a4,a5,4
     e68:	fce42223          	sw	a4,-60(s0)
     e6c:	439c                	lw	a5,0(a5)
     e6e:	85be                	mv	a1,a5
     e70:	06100813          	li	a6,97
     e74:	87ce                	mv	a5,s3
     e76:	874a                	mv	a4,s2
     e78:	4681                	li	a3,0
     e7a:	4641                	li	a2,16
     e7c:	fcc42503          	lw	a0,-52(s0)
     e80:	39e9                	jal	b5a <qprinti>
     e82:	87aa                	mv	a5,a0
     e84:	94be                	add	s1,s1,a5
     e86:	a849                	j	f18 <qprint+0x250>
     e88:	fc842783          	lw	a5,-56(s0)
     e8c:	0007c703          	lbu	a4,0(a5)
     e90:	05800793          	li	a5,88
     e94:	02f71663          	bne	a4,a5,ec0 <qprint+0x1f8>
     e98:	fc442783          	lw	a5,-60(s0)
     e9c:	00478713          	addi	a4,a5,4
     ea0:	fce42223          	sw	a4,-60(s0)
     ea4:	439c                	lw	a5,0(a5)
     ea6:	85be                	mv	a1,a5
     ea8:	04100813          	li	a6,65
     eac:	87ce                	mv	a5,s3
     eae:	874a                	mv	a4,s2
     eb0:	4681                	li	a3,0
     eb2:	4641                	li	a2,16
     eb4:	fcc42503          	lw	a0,-52(s0)
     eb8:	314d                	jal	b5a <qprinti>
     eba:	87aa                	mv	a5,a0
     ebc:	94be                	add	s1,s1,a5
     ebe:	a8a9                	j	f18 <qprint+0x250>
     ec0:	fc842783          	lw	a5,-56(s0)
     ec4:	0007c703          	lbu	a4,0(a5)
     ec8:	06300793          	li	a5,99
     ecc:	04f71663          	bne	a4,a5,f18 <qprint+0x250>
     ed0:	fc442783          	lw	a5,-60(s0)
     ed4:	00478713          	addi	a4,a5,4
     ed8:	fce42223          	sw	a4,-60(s0)
     edc:	439c                	lw	a5,0(a5)
     ede:	0ff7f793          	andi	a5,a5,255
     ee2:	fcf40e23          	sb	a5,-36(s0)
     ee6:	fc040ea3          	sb	zero,-35(s0)
     eea:	fdc40793          	addi	a5,s0,-36
     eee:	86ce                	mv	a3,s3
     ef0:	864a                	mv	a2,s2
     ef2:	85be                	mv	a1,a5
     ef4:	fcc42503          	lw	a0,-52(s0)
     ef8:	3eb5                	jal	a74 <qprints>
     efa:	87aa                	mv	a5,a0
     efc:	94be                	add	s1,s1,a5
     efe:	a829                	j	f18 <qprint+0x250>
     f00:	0001                	nop
     f02:	a011                	j	f06 <qprint+0x23e>
     f04:	0001                	nop
     f06:	fc842783          	lw	a5,-56(s0)
     f0a:	0007c783          	lbu	a5,0(a5)
     f0e:	85be                	mv	a1,a5
     f10:	fcc42503          	lw	a0,-52(s0)
     f14:	3e01                	jal	a24 <qprintchar>
     f16:	0485                	addi	s1,s1,1
     f18:	fc842783          	lw	a5,-56(s0)
     f1c:	0785                	addi	a5,a5,1
     f1e:	fcf42423          	sw	a5,-56(s0)
     f22:	fc842783          	lw	a5,-56(s0)
     f26:	0007c783          	lbu	a5,0(a5)
     f2a:	da079ee3          	bnez	a5,ce6 <qprint+0x1e>
     f2e:	a011                	j	f32 <qprint+0x26a>
     f30:	0001                	nop
     f32:	fcc42783          	lw	a5,-52(s0)
     f36:	c791                	beqz	a5,f42 <qprint+0x27a>
     f38:	fcc42783          	lw	a5,-52(s0)
     f3c:	439c                	lw	a5,0(a5)
     f3e:	00078023          	sb	zero,0(a5)
     f42:	87a6                	mv	a5,s1
     f44:	853e                	mv	a0,a5
     f46:	50f2                	lw	ra,60(sp)
     f48:	5462                	lw	s0,56(sp)
     f4a:	54d2                	lw	s1,52(sp)
     f4c:	5942                	lw	s2,48(sp)
     f4e:	59b2                	lw	s3,44(sp)
     f50:	6121                	addi	sp,sp,64
     f52:	8082                	ret

00000f54 <printf>:
     f54:	715d                	addi	sp,sp,-80
     f56:	d606                	sw	ra,44(sp)
     f58:	d422                	sw	s0,40(sp)
     f5a:	1800                	addi	s0,sp,48
     f5c:	fca42e23          	sw	a0,-36(s0)
     f60:	c04c                	sw	a1,4(s0)
     f62:	c410                	sw	a2,8(s0)
     f64:	c454                	sw	a3,12(s0)
     f66:	c818                	sw	a4,16(s0)
     f68:	c85c                	sw	a5,20(s0)
     f6a:	01042c23          	sw	a6,24(s0)
     f6e:	01142e23          	sw	a7,28(s0)
     f72:	02040793          	addi	a5,s0,32
     f76:	fcf42c23          	sw	a5,-40(s0)
     f7a:	fd842783          	lw	a5,-40(s0)
     f7e:	1791                	addi	a5,a5,-28
     f80:	fef42423          	sw	a5,-24(s0)
     f84:	fe842783          	lw	a5,-24(s0)
     f88:	863e                	mv	a2,a5
     f8a:	fdc42583          	lw	a1,-36(s0)
     f8e:	4501                	li	a0,0
     f90:	3b25                	jal	cc8 <qprint>
     f92:	fea42623          	sw	a0,-20(s0)
     f96:	fec42783          	lw	a5,-20(s0)
     f9a:	853e                	mv	a0,a5
     f9c:	50b2                	lw	ra,44(sp)
     f9e:	5422                	lw	s0,40(sp)
     fa0:	6161                	addi	sp,sp,80
     fa2:	8082                	ret

00000fa4 <puts>:
     fa4:	7179                	addi	sp,sp,-48
     fa6:	d606                	sw	ra,44(sp)
     fa8:	d422                	sw	s0,40(sp)
     faa:	1800                	addi	s0,sp,48
     fac:	fca42e23          	sw	a0,-36(s0)
     fb0:	fe042623          	sw	zero,-20(s0)
     fb4:	a839                	j	fd2 <puts+0x2e>
     fb6:	fec42783          	lw	a5,-20(s0)
     fba:	00178713          	addi	a4,a5,1
     fbe:	fee42623          	sw	a4,-20(s0)
     fc2:	873e                	mv	a4,a5
     fc4:	fdc42783          	lw	a5,-36(s0)
     fc8:	97ba                	add	a5,a5,a4
     fca:	0007c783          	lbu	a5,0(a5)
     fce:	853e                	mv	a0,a5
     fd0:	343d                	jal	9fe <putchar>
     fd2:	fec42783          	lw	a5,-20(s0)
     fd6:	fdc42703          	lw	a4,-36(s0)
     fda:	97ba                	add	a5,a5,a4
     fdc:	0007c783          	lbu	a5,0(a5)
     fe0:	fbf9                	bnez	a5,fb6 <puts+0x12>
     fe2:	4529                	li	a0,10
     fe4:	3c29                	jal	9fe <putchar>
     fe6:	fec42783          	lw	a5,-20(s0)
     fea:	853e                	mv	a0,a5
     fec:	50b2                	lw	ra,44(sp)
     fee:	5422                	lw	s0,40(sp)
     ff0:	6145                	addi	sp,sp,48
     ff2:	8082                	ret

00000ff4 <strcmp>:
     ff4:	7179                	addi	sp,sp,-48
     ff6:	d622                	sw	s0,44(sp)
     ff8:	1800                	addi	s0,sp,48
     ffa:	fca42e23          	sw	a0,-36(s0)
     ffe:	fcb42c23          	sw	a1,-40(s0)
    1002:	fdc42703          	lw	a4,-36(s0)
    1006:	fd842783          	lw	a5,-40(s0)
    100a:	8fd9                	or	a5,a5,a4
    100c:	8b8d                	andi	a5,a5,3
    100e:	e7c9                	bnez	a5,1098 <_min_stack+0x98>
    1010:	fdc42783          	lw	a5,-36(s0)
    1014:	fef42623          	sw	a5,-20(s0)
    1018:	fd842783          	lw	a5,-40(s0)
    101c:	fef42423          	sw	a5,-24(s0)
    1020:	a089                	j	1062 <_min_stack+0x62>
    1022:	fec42783          	lw	a5,-20(s0)
    1026:	4398                	lw	a4,0(a5)
    1028:	feff07b7          	lui	a5,0xfeff0
    102c:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeee7eff>
    1030:	973e                	add	a4,a4,a5
    1032:	fec42783          	lw	a5,-20(s0)
    1036:	439c                	lw	a5,0(a5)
    1038:	fff7c793          	not	a5,a5
    103c:	8f7d                	and	a4,a4,a5
    103e:	808087b7          	lui	a5,0x80808
    1042:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80700080>
    1046:	8ff9                	and	a5,a5,a4
    1048:	c399                	beqz	a5,104e <_min_stack+0x4e>
    104a:	4781                	li	a5,0
    104c:	a041                	j	10cc <_min_stack+0xcc>
    104e:	fec42783          	lw	a5,-20(s0)
    1052:	0791                	addi	a5,a5,4
    1054:	fef42623          	sw	a5,-20(s0)
    1058:	fe842783          	lw	a5,-24(s0)
    105c:	0791                	addi	a5,a5,4
    105e:	fef42423          	sw	a5,-24(s0)
    1062:	fec42783          	lw	a5,-20(s0)
    1066:	4398                	lw	a4,0(a5)
    1068:	fe842783          	lw	a5,-24(s0)
    106c:	439c                	lw	a5,0(a5)
    106e:	faf70ae3          	beq	a4,a5,1022 <_min_stack+0x22>
    1072:	fec42783          	lw	a5,-20(s0)
    1076:	fcf42e23          	sw	a5,-36(s0)
    107a:	fe842783          	lw	a5,-24(s0)
    107e:	fcf42c23          	sw	a5,-40(s0)
    1082:	a819                	j	1098 <_min_stack+0x98>
    1084:	fdc42783          	lw	a5,-36(s0)
    1088:	0785                	addi	a5,a5,1
    108a:	fcf42e23          	sw	a5,-36(s0)
    108e:	fd842783          	lw	a5,-40(s0)
    1092:	0785                	addi	a5,a5,1
    1094:	fcf42c23          	sw	a5,-40(s0)
    1098:	fdc42783          	lw	a5,-36(s0)
    109c:	0007c783          	lbu	a5,0(a5)
    10a0:	cb99                	beqz	a5,10b6 <_min_stack+0xb6>
    10a2:	fdc42783          	lw	a5,-36(s0)
    10a6:	0007c703          	lbu	a4,0(a5)
    10aa:	fd842783          	lw	a5,-40(s0)
    10ae:	0007c783          	lbu	a5,0(a5)
    10b2:	fcf709e3          	beq	a4,a5,1084 <_min_stack+0x84>
    10b6:	fdc42783          	lw	a5,-36(s0)
    10ba:	0007c783          	lbu	a5,0(a5)
    10be:	873e                	mv	a4,a5
    10c0:	fd842783          	lw	a5,-40(s0)
    10c4:	0007c783          	lbu	a5,0(a5)
    10c8:	40f707b3          	sub	a5,a4,a5
    10cc:	853e                	mv	a0,a5
    10ce:	5432                	lw	s0,44(sp)
    10d0:	6145                	addi	sp,sp,48
    10d2:	8082                	ret

000010d4 <memset>:
    10d4:	7179                	addi	sp,sp,-48
    10d6:	d622                	sw	s0,44(sp)
    10d8:	1800                	addi	s0,sp,48
    10da:	fca42e23          	sw	a0,-36(s0)
    10de:	fcb42c23          	sw	a1,-40(s0)
    10e2:	fcc42a23          	sw	a2,-44(s0)
    10e6:	fdc42783          	lw	a5,-36(s0)
    10ea:	fef42623          	sw	a5,-20(s0)
    10ee:	a015                	j	1112 <memset+0x3e>
    10f0:	fec42783          	lw	a5,-20(s0)
    10f4:	00178713          	addi	a4,a5,1
    10f8:	fee42623          	sw	a4,-20(s0)
    10fc:	fd842703          	lw	a4,-40(s0)
    1100:	0ff77713          	andi	a4,a4,255
    1104:	00e78023          	sb	a4,0(a5)
    1108:	fd442783          	lw	a5,-44(s0)
    110c:	17fd                	addi	a5,a5,-1
    110e:	fcf42a23          	sw	a5,-44(s0)
    1112:	fd442783          	lw	a5,-44(s0)
    1116:	ffe9                	bnez	a5,10f0 <memset+0x1c>
    1118:	fdc42783          	lw	a5,-36(s0)
    111c:	853e                	mv	a0,a5
    111e:	5432                	lw	s0,44(sp)
    1120:	6145                	addi	sp,sp,48
    1122:	8082                	ret

00001124 <strcpy>:
    1124:	7179                	addi	sp,sp,-48
    1126:	d622                	sw	s0,44(sp)
    1128:	1800                	addi	s0,sp,48
    112a:	fca42e23          	sw	a0,-36(s0)
    112e:	fcb42c23          	sw	a1,-40(s0)
    1132:	fdc42783          	lw	a5,-36(s0)
    1136:	fef42623          	sw	a5,-20(s0)
    113a:	fd842783          	lw	a5,-40(s0)
    113e:	fef42423          	sw	a5,-24(s0)
    1142:	a01d                	j	1168 <strcpy+0x44>
    1144:	fe842783          	lw	a5,-24(s0)
    1148:	0007c703          	lbu	a4,0(a5)
    114c:	fec42783          	lw	a5,-20(s0)
    1150:	00e78023          	sb	a4,0(a5)
    1154:	fec42783          	lw	a5,-20(s0)
    1158:	0785                	addi	a5,a5,1
    115a:	fef42623          	sw	a5,-20(s0)
    115e:	fe842783          	lw	a5,-24(s0)
    1162:	0785                	addi	a5,a5,1
    1164:	fef42423          	sw	a5,-24(s0)
    1168:	fe842783          	lw	a5,-24(s0)
    116c:	0007c783          	lbu	a5,0(a5)
    1170:	fbf1                	bnez	a5,1144 <strcpy+0x20>
    1172:	fdc42783          	lw	a5,-36(s0)
    1176:	853e                	mv	a0,a5
    1178:	5432                	lw	s0,44(sp)
    117a:	6145                	addi	sp,sp,48
    117c:	8082                	ret

0000117e <strlen>:
    117e:	7179                	addi	sp,sp,-48
    1180:	d622                	sw	s0,44(sp)
    1182:	1800                	addi	s0,sp,48
    1184:	fca42e23          	sw	a0,-36(s0)
    1188:	fdc42783          	lw	a5,-36(s0)
    118c:	fef42623          	sw	a5,-20(s0)
    1190:	fe042423          	sw	zero,-24(s0)
    1194:	fec42783          	lw	a5,-20(s0)
    1198:	eb81                	bnez	a5,11a8 <strlen+0x2a>
    119a:	4781                	li	a5,0
    119c:	a00d                	j	11be <strlen+0x40>
    119e:	fe842783          	lw	a5,-24(s0)
    11a2:	0785                	addi	a5,a5,1
    11a4:	fef42423          	sw	a5,-24(s0)
    11a8:	fec42783          	lw	a5,-20(s0)
    11ac:	00178713          	addi	a4,a5,1
    11b0:	fee42623          	sw	a4,-20(s0)
    11b4:	0007c783          	lbu	a5,0(a5)
    11b8:	f3fd                	bnez	a5,119e <strlen+0x20>
    11ba:	fe842783          	lw	a5,-24(s0)
    11be:	853e                	mv	a0,a5
    11c0:	5432                	lw	s0,44(sp)
    11c2:	6145                	addi	sp,sp,48
    11c4:	8082                	ret

000011c6 <sprintf>:
    11c6:	715d                	addi	sp,sp,-80
    11c8:	d606                	sw	ra,44(sp)
    11ca:	d422                	sw	s0,40(sp)
    11cc:	1800                	addi	s0,sp,48
    11ce:	fca42e23          	sw	a0,-36(s0)
    11d2:	fcb42c23          	sw	a1,-40(s0)
    11d6:	c410                	sw	a2,8(s0)
    11d8:	c454                	sw	a3,12(s0)
    11da:	c818                	sw	a4,16(s0)
    11dc:	c85c                	sw	a5,20(s0)
    11de:	01042c23          	sw	a6,24(s0)
    11e2:	01142e23          	sw	a7,28(s0)
    11e6:	02040793          	addi	a5,s0,32
    11ea:	fcf42a23          	sw	a5,-44(s0)
    11ee:	fd442783          	lw	a5,-44(s0)
    11f2:	17a1                	addi	a5,a5,-24
    11f4:	fef42423          	sw	a5,-24(s0)
    11f8:	fe842703          	lw	a4,-24(s0)
    11fc:	fdc40793          	addi	a5,s0,-36
    1200:	863a                	mv	a2,a4
    1202:	fd842583          	lw	a1,-40(s0)
    1206:	853e                	mv	a0,a5
    1208:	34c1                	jal	cc8 <qprint>
    120a:	fea42623          	sw	a0,-20(s0)
    120e:	fec42783          	lw	a5,-20(s0)
    1212:	853e                	mv	a0,a5
    1214:	50b2                	lw	ra,44(sp)
    1216:	5422                	lw	s0,40(sp)
    1218:	6161                	addi	sp,sp,80
    121a:	8082                	ret

0000121c <vsprintf>:
    121c:	1101                	addi	sp,sp,-32
    121e:	ce06                	sw	ra,28(sp)
    1220:	cc22                	sw	s0,24(sp)
    1222:	1000                	addi	s0,sp,32
    1224:	fea42623          	sw	a0,-20(s0)
    1228:	feb42423          	sw	a1,-24(s0)
    122c:	fec42223          	sw	a2,-28(s0)
    1230:	fec40793          	addi	a5,s0,-20
    1234:	fe442603          	lw	a2,-28(s0)
    1238:	fe842583          	lw	a1,-24(s0)
    123c:	853e                	mv	a0,a5
    123e:	3469                	jal	cc8 <qprint>
    1240:	87aa                	mv	a5,a0
    1242:	853e                	mv	a0,a5
    1244:	40f2                	lw	ra,28(sp)
    1246:	4462                	lw	s0,24(sp)
    1248:	6105                	addi	sp,sp,32
    124a:	8082                	ret

0000124c <ISR_I2C>:
    124c:	1141                	addi	sp,sp,-16
    124e:	c622                	sw	s0,12(sp)
    1250:	0800                	addi	s0,sp,16
    1252:	a001                	j	1252 <ISR_I2C+0x6>

00001254 <ISR_UART>:
    1254:	1141                	addi	sp,sp,-16
    1256:	c622                	sw	s0,12(sp)
    1258:	0800                	addi	s0,sp,16
    125a:	a001                	j	125a <ISR_UART+0x6>

0000125c <ISR_GPIO>:
    125c:	1141                	addi	sp,sp,-16
    125e:	c622                	sw	s0,12(sp)
    1260:	0800                	addi	s0,sp,16
    1262:	a001                	j	1262 <ISR_GPIO+0x6>

00001264 <ISR_SPIM0>:
    1264:	1141                	addi	sp,sp,-16
    1266:	c622                	sw	s0,12(sp)
    1268:	0800                	addi	s0,sp,16
    126a:	a001                	j	126a <ISR_SPIM0+0x6>

0000126c <ISR_SPIM1>:
    126c:	1141                	addi	sp,sp,-16
    126e:	c622                	sw	s0,12(sp)
    1270:	0800                	addi	s0,sp,16
    1272:	a001                	j	1272 <ISR_SPIM1+0x6>

00001274 <ISR_TA_OVF>:
    1274:	1141                	addi	sp,sp,-16
    1276:	c622                	sw	s0,12(sp)
    1278:	0800                	addi	s0,sp,16
    127a:	a001                	j	127a <ISR_TA_OVF+0x6>

0000127c <ISR_TA_CMP>:
    127c:	1141                	addi	sp,sp,-16
    127e:	c622                	sw	s0,12(sp)
    1280:	0800                	addi	s0,sp,16
    1282:	a001                	j	1282 <ISR_TA_CMP+0x6>

00001284 <ISR_TB_OVF>:
    1284:	1141                	addi	sp,sp,-16
    1286:	c622                	sw	s0,12(sp)
    1288:	0800                	addi	s0,sp,16
    128a:	a001                	j	128a <ISR_TB_OVF+0x6>

0000128c <ISR_TB_CMP>:
    128c:	1141                	addi	sp,sp,-16
    128e:	c622                	sw	s0,12(sp)
    1290:	0800                	addi	s0,sp,16
    1292:	a001                	j	1292 <ISR_TB_CMP+0x6>

00001294 <default_exception_handler_c>:
    1294:	1141                	addi	sp,sp,-16
    1296:	c622                	sw	s0,12(sp)
    1298:	0800                	addi	s0,sp,16
    129a:	a001                	j	129a <default_exception_handler_c+0x6>

0000129c <illegal_insn_handler_c>:
    129c:	1141                	addi	sp,sp,-16
    129e:	c622                	sw	s0,12(sp)
    12a0:	0800                	addi	s0,sp,16
    12a2:	a001                	j	12a2 <illegal_insn_handler_c+0x6>

000012a4 <ecall_insn_handler_c>:
    12a4:	1141                	addi	sp,sp,-16
    12a6:	c622                	sw	s0,12(sp)
    12a8:	0800                	addi	s0,sp,16
    12aa:	a001                	j	12aa <ecall_insn_handler_c+0x6>

000012ac <__libc_init_array>:
    12ac:	ff010113          	addi	sp,sp,-16
    12b0:	00812423          	sw	s0,8(sp)
    12b4:	01212023          	sw	s2,0(sp)
    12b8:	00100437          	lui	s0,0x100
    12bc:	00100937          	lui	s2,0x100
    12c0:	00040793          	mv	a5,s0
    12c4:	00090913          	mv	s2,s2
    12c8:	40f90933          	sub	s2,s2,a5
    12cc:	00112623          	sw	ra,12(sp)
    12d0:	00912223          	sw	s1,4(sp)
    12d4:	40295913          	srai	s2,s2,0x2
    12d8:	02090063          	beqz	s2,12f8 <__libc_init_array+0x4c>
    12dc:	00040413          	mv	s0,s0
    12e0:	00000493          	li	s1,0
    12e4:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
    12e8:	00148493          	addi	s1,s1,1
    12ec:	00440413          	addi	s0,s0,4
    12f0:	000780e7          	jalr	a5
    12f4:	fe9918e3          	bne	s2,s1,12e4 <__libc_init_array+0x38>
    12f8:	00100437          	lui	s0,0x100
    12fc:	00100937          	lui	s2,0x100
    1300:	00040793          	mv	a5,s0
    1304:	00090913          	mv	s2,s2
    1308:	40f90933          	sub	s2,s2,a5
    130c:	40295913          	srai	s2,s2,0x2
    1310:	02090063          	beqz	s2,1330 <__libc_init_array+0x84>
    1314:	00040413          	mv	s0,s0
    1318:	00000493          	li	s1,0
    131c:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
    1320:	00148493          	addi	s1,s1,1
    1324:	00440413          	addi	s0,s0,4
    1328:	000780e7          	jalr	a5
    132c:	fe9918e3          	bne	s2,s1,131c <__libc_init_array+0x70>
    1330:	00c12083          	lw	ra,12(sp)
    1334:	00812403          	lw	s0,8(sp)
    1338:	00412483          	lw	s1,4(sp)
    133c:	00012903          	lw	s2,0(sp)
    1340:	01010113          	addi	sp,sp,16
    1344:	00008067          	ret

00001348 <memcpy>:
    1348:	00a5c7b3          	xor	a5,a1,a0
    134c:	0037f793          	andi	a5,a5,3
    1350:	00c508b3          	add	a7,a0,a2
    1354:	06079263          	bnez	a5,13b8 <memcpy+0x70>
    1358:	00300793          	li	a5,3
    135c:	04c7fe63          	bgeu	a5,a2,13b8 <memcpy+0x70>
    1360:	00357793          	andi	a5,a0,3
    1364:	00050713          	mv	a4,a0
    1368:	06079863          	bnez	a5,13d8 <memcpy+0x90>
    136c:	ffc8f613          	andi	a2,a7,-4
    1370:	fe060793          	addi	a5,a2,-32
    1374:	08f76c63          	bltu	a4,a5,140c <memcpy+0xc4>
    1378:	02c77c63          	bgeu	a4,a2,13b0 <memcpy+0x68>
    137c:	00058693          	mv	a3,a1
    1380:	00070793          	mv	a5,a4
    1384:	0006a803          	lw	a6,0(a3)
    1388:	00478793          	addi	a5,a5,4
    138c:	00468693          	addi	a3,a3,4
    1390:	ff07ae23          	sw	a6,-4(a5)
    1394:	fec7e8e3          	bltu	a5,a2,1384 <memcpy+0x3c>
    1398:	fff60793          	addi	a5,a2,-1
    139c:	40e787b3          	sub	a5,a5,a4
    13a0:	ffc7f793          	andi	a5,a5,-4
    13a4:	00478793          	addi	a5,a5,4
    13a8:	00f70733          	add	a4,a4,a5
    13ac:	00f585b3          	add	a1,a1,a5
    13b0:	01176863          	bltu	a4,a7,13c0 <memcpy+0x78>
    13b4:	00008067          	ret
    13b8:	00050713          	mv	a4,a0
    13bc:	ff157ce3          	bgeu	a0,a7,13b4 <memcpy+0x6c>
    13c0:	0005c783          	lbu	a5,0(a1)
    13c4:	00170713          	addi	a4,a4,1
    13c8:	00158593          	addi	a1,a1,1
    13cc:	fef70fa3          	sb	a5,-1(a4)
    13d0:	ff1768e3          	bltu	a4,a7,13c0 <memcpy+0x78>
    13d4:	00008067          	ret
    13d8:	0005c683          	lbu	a3,0(a1)
    13dc:	00170713          	addi	a4,a4,1
    13e0:	00377793          	andi	a5,a4,3
    13e4:	fed70fa3          	sb	a3,-1(a4)
    13e8:	00158593          	addi	a1,a1,1
    13ec:	f80780e3          	beqz	a5,136c <memcpy+0x24>
    13f0:	0005c683          	lbu	a3,0(a1)
    13f4:	00170713          	addi	a4,a4,1
    13f8:	00377793          	andi	a5,a4,3
    13fc:	fed70fa3          	sb	a3,-1(a4)
    1400:	00158593          	addi	a1,a1,1
    1404:	fc079ae3          	bnez	a5,13d8 <memcpy+0x90>
    1408:	f65ff06f          	j	136c <memcpy+0x24>
    140c:	0045a683          	lw	a3,4(a1)
    1410:	0005a283          	lw	t0,0(a1)
    1414:	0085af83          	lw	t6,8(a1)
    1418:	00c5af03          	lw	t5,12(a1)
    141c:	0105ae83          	lw	t4,16(a1)
    1420:	0145ae03          	lw	t3,20(a1)
    1424:	0185a303          	lw	t1,24(a1)
    1428:	01c5a803          	lw	a6,28(a1)
    142c:	00d72223          	sw	a3,4(a4)
    1430:	0205a683          	lw	a3,32(a1)
    1434:	00572023          	sw	t0,0(a4)
    1438:	01f72423          	sw	t6,8(a4)
    143c:	01e72623          	sw	t5,12(a4)
    1440:	01d72823          	sw	t4,16(a4)
    1444:	01c72a23          	sw	t3,20(a4)
    1448:	00672c23          	sw	t1,24(a4)
    144c:	01072e23          	sw	a6,28(a4)
    1450:	02d72023          	sw	a3,32(a4)
    1454:	02470713          	addi	a4,a4,36
    1458:	02458593          	addi	a1,a1,36
    145c:	faf768e3          	bltu	a4,a5,140c <memcpy+0xc4>
    1460:	f19ff06f          	j	1378 <memcpy+0x30>

00001464 <__CTOR_LIST__>:
	...

0000146c <__CTOR_END__>:
	...

Disassembly of section .rodata:

00100000 <__init_array_end>:
  100000:	6548                	flw	fa0,12(a0)
  100002:	6c6c                	flw	fa1,92(s0)
  100004:	77202c6f          	jal	s8,102776 <_bss_end+0x269a>
  100008:	646c726f          	jal	tp,1c764e <_stack_start+0xbf64e>
  10000c:	0d21                	addi	s10,s10,8
  10000e:	570a                	lw	a4,160(sp)
  100010:	6972                	flw	fs2,28(sp)
  100012:	6574                	flw	fa3,76(a0)
  100014:	7320                	flw	fs0,96(a4)
  100016:	20656d6f          	jal	s10,15621c <_stack_start+0x4e21c>
  10001a:	6574                	flw	fa3,76(a0)
  10001c:	7478                	flw	fa4,108(s0)
  10001e:	202c                	fld	fa1,64(s0)
  100020:	7469                	lui	s0,0xffffa
  100022:	7720                	flw	fs0,104(a4)
  100024:	6c69                	lui	s8,0x1a
  100026:	206c                	fld	fa1,192(s0)
  100028:	6562                	flw	fa0,24(sp)
  10002a:	7020                	flw	fs0,96(s0)
  10002c:	6972                	flw	fs2,28(sp)
  10002e:	746e                	flw	fs0,248(sp)
  100030:	6465                	lui	s0,0x19
  100032:	6f20                	flw	fs0,88(a4)
  100034:	206e                	fld	ft0,216(sp)
  100036:	6568                	flw	fa0,76(a0)
  100038:	2078                	fld	fa4,192(s0)
  10003a:	6964                	flw	fs1,84(a0)
  10003c:	616c7073          	csrci	0x616,24
  100040:	0d79                	addi	s10,s10,30
	...
  100062:	0000                	unimp
  100064:	8600                	0x8600
  100066:	dc22                	sw	s0,56(sp)
  100068:	6b2d                	lui	s6,0xb
  10006a:	0f700253          	fsub.q	ft4,ft0,fs7,rne
  10006e:	40804663          	bgtz	s0,10047a <_bss_end+0x39e>
  100072:	5280                	lw	s0,32(a3)
  100074:	4f5b063f 077d6d66 	0x77d6d664f5b063f
  10007c:	6f7f                	0x6f7f
  10007e:	5809                	li	a6,-30
  100080:	4858                	lw	a4,20(s0)
  100082:	a74c                	fsd	fa1,136(a4)
  100084:	775d                	lui	a4,0xffff7
  100086:	397c                	fld	fa5,240(a0)
  100088:	795e                	flw	fs2,244(sp)
  10008a:	6f71                	lui	t5,0x1c
  10008c:	3074                	fld	fa3,224(s0)
  10008e:	750e                	flw	fa0,224(sp)
  100090:	5538                	lw	a4,104(a0)
  100092:	67735c37          	lui	s8,0x67735
  100096:	6d49                	lui	s10,0x12
  100098:	1c78                	addi	a4,sp,572
  10009a:	7e3e                	flw	ft8,236(sp)
  10009c:	6e76                	flw	ft8,92(sp)
  10009e:	3964025b          	0x3964025b
  1000a2:	77020823          	sb	a6,1904(tp) # 770 <uart_set_cfg+0x5a>
  1000a6:	587c                	lw	a5,116(s0)
  1000a8:	795e                	flw	fs2,244(sp)
  1000aa:	6f71                	lui	t5,0x1c
  1000ac:	3074                	fld	fa3,224(s0)
  1000ae:	750e                	flw	fa0,224(sp)
  1000b0:	5538                	lw	a4,104(a0)
  1000b2:	5c54                	lw	a3,60(s0)
  1000b4:	6d506773          	csrrsi	a4,0x6d5,0
  1000b8:	1c78                	addi	a4,sp,572
  1000ba:	7e3e                	flw	ft8,236(sp)
  1000bc:	6e76                	flw	ft8,92(sp)
  1000be:	7030465b          	0x7030465b
  1000c2:	0001                	nop
  1000c4:	6e28                	flw	fa0,88(a2)
  1000c6:	6c75                	lui	s8,0x1d
  1000c8:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

001000cb <.shbss>:
	...

Disassembly of section .data:

001000cc <remu10_table>:
  1000cc:	0100                	addi	s0,sp,128
  1000ce:	0202                	c.slli64	tp
  1000d0:	05040303          	lb	t1,80(s0) # 19050 <_stack_len+0x17050>
  1000d4:	0605                	addi	a2,a2,1
  1000d6:	08080707          	0x8080707
  1000da:	0009                	c.nop	2

Disassembly of section .stack:

00106000 <_stack-0x1000>:
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	2541                	jal	680 <set_gpio_pin_irq_type+0x32>
   2:	0000                	unimp
   4:	7200                	flw	fs0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <__DYNAMIC+0x14>
   c:	0000001b          	0x1b
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3376                	fld	ft6,376(sp)
  16:	6932                	flw	fs2,12(sp)
  18:	7032                	flw	ft0,44(sp)
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	jal	fffff9c6 <_stack_start+0xffef79c6>
  1e:	3070                	fld	fa2,224(s0)
  20:	635f 7032 0030      	0x307032635f

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e30                	fld	fa2,88(a2)
   e:	2e31                	jal	32a <hex_init+0x4>
  10:	0030                	addi	a2,sp,8
