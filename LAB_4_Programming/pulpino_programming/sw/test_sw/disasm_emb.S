
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
  5c:	0ba0006f          	j	116 <ISR_I2C_ASM>
  60:	0ca0006f          	j	12a <ISR_UART_ASM>
  64:	0da0006f          	j	13e <ISR_GPIO_ASM>
  68:	0ea0006f          	j	152 <ISR_SPIM0_ASM>
  6c:	0fa0006f          	j	166 <ISR_SPIM1_ASM>
  70:	11e0006f          	j	18e <ISR_TA_OVF_ASM>
  74:	1060006f          	j	17a <ISR_TA_CMP_ASM>
  78:	13e0006f          	j	1b6 <ISR_TB_OVF_ASM>
  7c:	1260006f          	j	1a2 <ISR_TB_CMP_ASM>
  80:	00c0006f          	j	8c <_stext>
  84:	1460006f          	j	1ca <illegal_insn_handler>
  88:	1560006f          	j	1de <ecall_insn_handler>

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
  d4:	f3010113          	add	sp,sp,-208 # 108000 <_stack_start>

000000d8 <_start>:
  d8:	00100d17          	auipc	s10,0x100
  dc:	f28d0d13          	add	s10,s10,-216 # 100000 <KUZNECHIK>
  e0:	00100d97          	auipc	s11,0x100
  e4:	f24d8d93          	add	s11,s11,-220 # 100004 <_bss_end>
  e8:	01bd5763          	bge	s10,s11,f6 <zero_loop_end>

000000ec <zero_loop>:
  ec:	000d2023          	sw	zero,0(s10)
  f0:	0d11                	add	s10,s10,4
  f2:	ffaddde3          	bge	s11,s10,ec <zero_loop>

000000f6 <zero_loop_end>:
  f6:	1df000ef          	jal	ad4 <__libc_init_array>

000000fa <main_entry>:
  fa:	4501                	li	a0,0
  fc:	4585                	li	a1,1
  fe:	74e000ef          	jal	84c <uart_set_cfg>
 102:	4501                	li	a0,0
 104:	4581                	li	a1,0
 106:	1b8000ef          	jal	2be <main>
 10a:	842a                	mv	s0,a0
 10c:	099000ef          	jal	9a4 <uart_wait_tx_done>
 110:	8522                	mv	a0,s0
 112:	0b3000ef          	jal	9c4 <exit>

00000116 <ISR_I2C_ASM>:
 116:	711d                	add	sp,sp,-96
 118:	ce86                	sw	ra,92(sp)
 11a:	0d8000ef          	jal	1f2 <store_regs>
 11e:	00000097          	auipc	ra,0x0
 122:	11e08093          	add	ra,ra,286 # 23c <end_except>
 126:	13d0006f          	j	a62 <ISR_I2C>

0000012a <ISR_UART_ASM>:
 12a:	711d                	add	sp,sp,-96
 12c:	ce86                	sw	ra,92(sp)
 12e:	0c4000ef          	jal	1f2 <store_regs>
 132:	00000097          	auipc	ra,0x0
 136:	10a08093          	add	ra,ra,266 # 23c <end_except>
 13a:	1310006f          	j	a6a <ISR_UART>

0000013e <ISR_GPIO_ASM>:
 13e:	711d                	add	sp,sp,-96
 140:	ce86                	sw	ra,92(sp)
 142:	0b0000ef          	jal	1f2 <store_regs>
 146:	00000097          	auipc	ra,0x0
 14a:	0f608093          	add	ra,ra,246 # 23c <end_except>
 14e:	1250006f          	j	a72 <ISR_GPIO>

00000152 <ISR_SPIM0_ASM>:
 152:	711d                	add	sp,sp,-96
 154:	ce86                	sw	ra,92(sp)
 156:	09c000ef          	jal	1f2 <store_regs>
 15a:	00000097          	auipc	ra,0x0
 15e:	0e208093          	add	ra,ra,226 # 23c <end_except>
 162:	1190006f          	j	a7a <ISR_SPIM0>

00000166 <ISR_SPIM1_ASM>:
 166:	711d                	add	sp,sp,-96
 168:	ce86                	sw	ra,92(sp)
 16a:	088000ef          	jal	1f2 <store_regs>
 16e:	00000097          	auipc	ra,0x0
 172:	0ce08093          	add	ra,ra,206 # 23c <end_except>
 176:	10d0006f          	j	a82 <ISR_SPIM1>

0000017a <ISR_TA_CMP_ASM>:
 17a:	711d                	add	sp,sp,-96
 17c:	ce86                	sw	ra,92(sp)
 17e:	074000ef          	jal	1f2 <store_regs>
 182:	00000097          	auipc	ra,0x0
 186:	0ba08093          	add	ra,ra,186 # 23c <end_except>
 18a:	1090006f          	j	a92 <ISR_TA_CMP>

0000018e <ISR_TA_OVF_ASM>:
 18e:	711d                	add	sp,sp,-96
 190:	ce86                	sw	ra,92(sp)
 192:	060000ef          	jal	1f2 <store_regs>
 196:	00000097          	auipc	ra,0x0
 19a:	0a608093          	add	ra,ra,166 # 23c <end_except>
 19e:	0ed0006f          	j	a8a <ISR_TA_OVF>

000001a2 <ISR_TB_CMP_ASM>:
 1a2:	711d                	add	sp,sp,-96
 1a4:	ce86                	sw	ra,92(sp)
 1a6:	04c000ef          	jal	1f2 <store_regs>
 1aa:	00000097          	auipc	ra,0x0
 1ae:	09208093          	add	ra,ra,146 # 23c <end_except>
 1b2:	0f10006f          	j	aa2 <ISR_TB_CMP>

000001b6 <ISR_TB_OVF_ASM>:
 1b6:	711d                	add	sp,sp,-96
 1b8:	ce86                	sw	ra,92(sp)
 1ba:	038000ef          	jal	1f2 <store_regs>
 1be:	00000097          	auipc	ra,0x0
 1c2:	07e08093          	add	ra,ra,126 # 23c <end_except>
 1c6:	0d50006f          	j	a9a <ISR_TB_OVF>

000001ca <illegal_insn_handler>:
 1ca:	711d                	add	sp,sp,-96
 1cc:	ce86                	sw	ra,92(sp)
 1ce:	024000ef          	jal	1f2 <store_regs>
 1d2:	00000097          	auipc	ra,0x0
 1d6:	06a08093          	add	ra,ra,106 # 23c <end_except>
 1da:	0d90006f          	j	ab2 <illegal_insn_handler_c>

000001de <ecall_insn_handler>:
 1de:	711d                	add	sp,sp,-96
 1e0:	ce86                	sw	ra,92(sp)
 1e2:	010000ef          	jal	1f2 <store_regs>
 1e6:	00000097          	auipc	ra,0x0
 1ea:	05608093          	add	ra,ra,86 # 23c <end_except>
 1ee:	0cd0006f          	j	aba <ecall_insn_handler_c>

000001f2 <store_regs>:
 1f2:	c00e                	sw	gp,0(sp)
 1f4:	c212                	sw	tp,4(sp)
 1f6:	c416                	sw	t0,8(sp)
 1f8:	c61a                	sw	t1,12(sp)
 1fa:	c81e                	sw	t2,16(sp)
 1fc:	ca2a                	sw	a0,20(sp)
 1fe:	cc2e                	sw	a1,24(sp)
 200:	ce32                	sw	a2,28(sp)
 202:	d036                	sw	a3,32(sp)
 204:	d23a                	sw	a4,36(sp)
 206:	d43e                	sw	a5,40(sp)
 208:	d642                	sw	a6,44(sp)
 20a:	d846                	sw	a7,48(sp)
 20c:	da72                	sw	t3,52(sp)
 20e:	dc76                	sw	t4,56(sp)
 210:	de7a                	sw	t5,60(sp)
 212:	c0fe                	sw	t6,64(sp)
 214:	7b002e73          	csrr	t3,dcsr
 218:	7b102ef3          	csrr	t4,dpc
 21c:	7b202f73          	csrr	t5,dscratch0
 220:	c2f2                	sw	t3,68(sp)
 222:	c4f6                	sw	t4,72(sp)
 224:	c6fa                	sw	t5,76(sp)
 226:	7b402e73          	csrr	t3,0x7b4
 22a:	7b502ef3          	csrr	t4,0x7b5
 22e:	7b602f73          	csrr	t5,0x7b6
 232:	c8f2                	sw	t3,80(sp)
 234:	caf6                	sw	t4,84(sp)
 236:	ccfa                	sw	t5,88(sp)
 238:	00008067          	ret

0000023c <end_except>:
 23c:	4e46                	lw	t3,80(sp)
 23e:	4ed6                	lw	t4,84(sp)
 240:	4f66                	lw	t5,88(sp)
 242:	7b4e1073          	csrw	0x7b4,t3
 246:	7b5e9073          	csrw	0x7b5,t4
 24a:	7b6f1073          	csrw	0x7b6,t5
 24e:	4e16                	lw	t3,68(sp)
 250:	4ea6                	lw	t4,72(sp)
 252:	4f36                	lw	t5,76(sp)
 254:	7b0e1073          	csrw	dcsr,t3
 258:	7b1e9073          	csrw	dpc,t4
 25c:	7b2f1073          	csrw	dscratch0,t5
 260:	4182                	lw	gp,0(sp)
 262:	4212                	lw	tp,4(sp)
 264:	42a2                	lw	t0,8(sp)
 266:	4332                	lw	t1,12(sp)
 268:	43c2                	lw	t2,16(sp)
 26a:	4552                	lw	a0,20(sp)
 26c:	45e2                	lw	a1,24(sp)
 26e:	4672                	lw	a2,28(sp)
 270:	5682                	lw	a3,32(sp)
 272:	5712                	lw	a4,36(sp)
 274:	57a2                	lw	a5,40(sp)
 276:	5832                	lw	a6,44(sp)
 278:	58c2                	lw	a7,48(sp)
 27a:	5e52                	lw	t3,52(sp)
 27c:	5ee2                	lw	t4,56(sp)
 27e:	5f72                	lw	t5,60(sp)
 280:	4f86                	lw	t6,64(sp)
 282:	40f6                	lw	ra,92(sp)
 284:	6125                	add	sp,sp,96
 286:	30200073          	mret

0000028a <_fini>:
 28a:	8082                	ret

0000028c <led_delay>:
 28c:	1101                	add	sp,sp,-32
 28e:	ce22                	sw	s0,28(sp)
 290:	1000                	add	s0,sp,32
 292:	fe042623          	sw	zero,-20(s0)
 296:	a039                	j	2a4 <led_delay+0x18>
 298:	0001                	nop
 29a:	fec42783          	lw	a5,-20(s0)
 29e:	0785                	add	a5,a5,1
 2a0:	fef42623          	sw	a5,-20(s0)
 2a4:	fec42703          	lw	a4,-20(s0)
 2a8:	000f47b7          	lui	a5,0xf4
 2ac:	23f78793          	add	a5,a5,575 # f423f <_stack_len+0xf223f>
 2b0:	fee7d4e3          	bge	a5,a4,298 <led_delay+0xc>
 2b4:	0001                	nop
 2b6:	0001                	nop
 2b8:	4472                	lw	s0,28(sp)
 2ba:	6105                	add	sp,sp,32
 2bc:	8082                	ret

000002be <main>:
 2be:	715d                	add	sp,sp,-80
 2c0:	c686                	sw	ra,76(sp)
 2c2:	c4a2                	sw	s0,72(sp)
 2c4:	0880                	add	s0,sp,80
 2c6:	45ed                	li	a1,27
 2c8:	4501                	li	a0,0
 2ca:	2349                	jal	84c <uart_set_cfg>
 2cc:	2a05                	jal	3fc <kuznechik_init>
 2ce:	fe042623          	sw	zero,-20(s0)
 2d2:	a839                	j	2f0 <main+0x32>
 2d4:	2d9d                	jal	94a <uart_getchar>
 2d6:	87aa                	mv	a5,a0
 2d8:	873e                	mv	a4,a5
 2da:	fec42783          	lw	a5,-20(s0)
 2de:	17c1                	add	a5,a5,-16
 2e0:	97a2                	add	a5,a5,s0
 2e2:	fee78023          	sb	a4,-32(a5)
 2e6:	fec42783          	lw	a5,-20(s0)
 2ea:	0785                	add	a5,a5,1
 2ec:	fef42623          	sw	a5,-20(s0)
 2f0:	fec42703          	lw	a4,-20(s0)
 2f4:	47bd                	li	a5,15
 2f6:	fce7dfe3          	bge	a5,a4,2d4 <main+0x16>
 2fa:	fe042423          	sw	zero,-24(s0)
 2fe:	a881                	j	34e <main+0x90>
 300:	fe842783          	lw	a5,-24(s0)
 304:	17c1                	add	a5,a5,-16
 306:	97a2                	add	a5,a5,s0
 308:	fe07c783          	lbu	a5,-32(a5)
 30c:	fef40123          	sb	a5,-30(s0)
 310:	473d                	li	a4,15
 312:	fe842783          	lw	a5,-24(s0)
 316:	40f707b3          	sub	a5,a4,a5
 31a:	17c1                	add	a5,a5,-16
 31c:	97a2                	add	a5,a5,s0
 31e:	fe07c703          	lbu	a4,-32(a5)
 322:	fe842783          	lw	a5,-24(s0)
 326:	17c1                	add	a5,a5,-16
 328:	97a2                	add	a5,a5,s0
 32a:	fee78023          	sb	a4,-32(a5)
 32e:	473d                	li	a4,15
 330:	fe842783          	lw	a5,-24(s0)
 334:	40f707b3          	sub	a5,a4,a5
 338:	17c1                	add	a5,a5,-16
 33a:	97a2                	add	a5,a5,s0
 33c:	fe244703          	lbu	a4,-30(s0)
 340:	fee78023          	sb	a4,-32(a5)
 344:	fe842783          	lw	a5,-24(s0)
 348:	0785                	add	a5,a5,1
 34a:	fef42423          	sw	a5,-24(s0)
 34e:	fe842703          	lw	a4,-24(s0)
 352:	479d                	li	a5,7
 354:	fae7d6e3          	bge	a5,a4,300 <main+0x42>
 358:	fc040713          	add	a4,s0,-64
 35c:	fd040793          	add	a5,s0,-48
 360:	85ba                	mv	a1,a4
 362:	853e                	mv	a0,a5
 364:	28c9                	jal	436 <kuznechik_process_data_block>
 366:	87aa                	mv	a5,a0
 368:	c7bd                	beqz	a5,3d6 <main+0x118>
 36a:	fe042223          	sw	zero,-28(s0)
 36e:	a881                	j	3be <main+0x100>
 370:	fe442783          	lw	a5,-28(s0)
 374:	17c1                	add	a5,a5,-16
 376:	97a2                	add	a5,a5,s0
 378:	fd07c783          	lbu	a5,-48(a5)
 37c:	fef401a3          	sb	a5,-29(s0)
 380:	473d                	li	a4,15
 382:	fe442783          	lw	a5,-28(s0)
 386:	40f707b3          	sub	a5,a4,a5
 38a:	17c1                	add	a5,a5,-16
 38c:	97a2                	add	a5,a5,s0
 38e:	fd07c703          	lbu	a4,-48(a5)
 392:	fe442783          	lw	a5,-28(s0)
 396:	17c1                	add	a5,a5,-16
 398:	97a2                	add	a5,a5,s0
 39a:	fce78823          	sb	a4,-48(a5)
 39e:	473d                	li	a4,15
 3a0:	fe442783          	lw	a5,-28(s0)
 3a4:	40f707b3          	sub	a5,a4,a5
 3a8:	17c1                	add	a5,a5,-16
 3aa:	97a2                	add	a5,a5,s0
 3ac:	fe344703          	lbu	a4,-29(s0)
 3b0:	fce78823          	sb	a4,-48(a5)
 3b4:	fe442783          	lw	a5,-28(s0)
 3b8:	0785                	add	a5,a5,1
 3ba:	fef42223          	sw	a5,-28(s0)
 3be:	fe442703          	lw	a4,-28(s0)
 3c2:	479d                	li	a5,7
 3c4:	fae7d6e3          	bge	a5,a4,370 <main+0xb2>
 3c8:	fc040793          	add	a5,s0,-64
 3cc:	45c1                	li	a1,16
 3ce:	853e                	mv	a0,a5
 3d0:	2321                	jal	8d8 <uart_send>
 3d2:	2bc9                	jal	9a4 <uart_wait_tx_done>
 3d4:	bded                	j	2ce <main+0x10>
 3d6:	6f7277b7          	lui	a5,0x6f727
 3da:	24578793          	add	a5,a5,581 # 6f727245 <_stack_start+0x6f61f245>
 3de:	faf42c23          	sw	a5,-72(s0)
 3e2:	000a27b7          	lui	a5,0xa2
 3e6:	17278793          	add	a5,a5,370 # a2172 <_stack_len+0xa0172>
 3ea:	faf42e23          	sw	a5,-68(s0)
 3ee:	fb840793          	add	a5,s0,-72
 3f2:	459d                	li	a1,7
 3f4:	853e                	mv	a0,a5
 3f6:	21cd                	jal	8d8 <uart_send>
 3f8:	2375                	jal	9a4 <uart_wait_tx_done>
 3fa:	bdd1                	j	2ce <main+0x10>

000003fc <kuznechik_init>:
 3fc:	1141                	add	sp,sp,-16
 3fe:	c622                	sw	s0,12(sp)
 400:	0800                	add	s0,sp,16
 402:	1a1077b7          	lui	a5,0x1a107
 406:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 408:	4398                	lw	a4,0(a5)
 40a:	1a1077b7          	lui	a5,0x1a107
 40e:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 410:	10076713          	or	a4,a4,256
 414:	c398                	sw	a4,0(a5)
 416:	001007b7          	lui	a5,0x100
 41a:	1a108737          	lui	a4,0x1a108
 41e:	00e7a023          	sw	a4,0(a5) # 100000 <KUZNECHIK>
 422:	001007b7          	lui	a5,0x100
 426:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 42a:	4705                	li	a4,1
 42c:	c398                	sw	a4,0(a5)
 42e:	0001                	nop
 430:	4432                	lw	s0,12(sp)
 432:	0141                	add	sp,sp,16
 434:	8082                	ret

00000436 <kuznechik_process_data_block>:
 436:	7139                	add	sp,sp,-64
 438:	de22                	sw	s0,60(sp)
 43a:	0080                	add	s0,sp,64
 43c:	fca42623          	sw	a0,-52(s0)
 440:	fcb42423          	sw	a1,-56(s0)
 444:	6791                	lui	a5,0x4
 446:	e8078793          	add	a5,a5,-384 # 3e80 <_stack_len+0x1e80>
 44a:	fef42023          	sw	a5,-32(s0)
 44e:	fe042783          	lw	a5,-32(s0)
 452:	fef42623          	sw	a5,-20(s0)
 456:	a031                	j	462 <kuznechik_process_data_block+0x2c>
 458:	fec42783          	lw	a5,-20(s0)
 45c:	17fd                	add	a5,a5,-1
 45e:	fef42623          	sw	a5,-20(s0)
 462:	fec42783          	lw	a5,-20(s0)
 466:	c799                	beqz	a5,474 <kuznechik_process_data_block+0x3e>
 468:	001007b7          	lui	a5,0x100
 46c:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 470:	4b9c                	lw	a5,16(a5)
 472:	f3fd                	bnez	a5,458 <kuznechik_process_data_block+0x22>
 474:	fec42783          	lw	a5,-20(s0)
 478:	eb89                	bnez	a5,48a <kuznechik_process_data_block+0x54>
 47a:	001007b7          	lui	a5,0x100
 47e:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 482:	4705                	li	a4,1
 484:	c398                	sw	a4,0(a5)
 486:	4781                	li	a5,0
 488:	a0c5                	j	568 <kuznechik_process_data_block+0x132>
 48a:	fcc42783          	lw	a5,-52(s0)
 48e:	fcf42e23          	sw	a5,-36(s0)
 492:	fe042423          	sw	zero,-24(s0)
 496:	a03d                	j	4c4 <kuznechik_process_data_block+0x8e>
 498:	fe842783          	lw	a5,-24(s0)
 49c:	078a                	sll	a5,a5,0x2
 49e:	fdc42703          	lw	a4,-36(s0)
 4a2:	97ba                	add	a5,a5,a4
 4a4:	00100737          	lui	a4,0x100
 4a8:	00072683          	lw	a3,0(a4) # 100000 <KUZNECHIK>
 4ac:	4398                	lw	a4,0(a5)
 4ae:	fe842783          	lw	a5,-24(s0)
 4b2:	0791                	add	a5,a5,4
 4b4:	078a                	sll	a5,a5,0x2
 4b6:	97b6                	add	a5,a5,a3
 4b8:	c3d8                	sw	a4,4(a5)
 4ba:	fe842783          	lw	a5,-24(s0)
 4be:	0785                	add	a5,a5,1
 4c0:	fef42423          	sw	a5,-24(s0)
 4c4:	fe842703          	lw	a4,-24(s0)
 4c8:	478d                	li	a5,3
 4ca:	fce7d7e3          	bge	a5,a4,498 <kuznechik_process_data_block+0x62>
 4ce:	001007b7          	lui	a5,0x100
 4d2:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 4d6:	4705                	li	a4,1
 4d8:	c3d8                	sw	a4,4(a5)
 4da:	fe042783          	lw	a5,-32(s0)
 4de:	fef42623          	sw	a5,-20(s0)
 4e2:	a031                	j	4ee <kuznechik_process_data_block+0xb8>
 4e4:	fec42783          	lw	a5,-20(s0)
 4e8:	17fd                	add	a5,a5,-1
 4ea:	fef42623          	sw	a5,-20(s0)
 4ee:	fec42783          	lw	a5,-20(s0)
 4f2:	c799                	beqz	a5,500 <kuznechik_process_data_block+0xca>
 4f4:	001007b7          	lui	a5,0x100
 4f8:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 4fc:	47dc                	lw	a5,12(a5)
 4fe:	d3fd                	beqz	a5,4e4 <kuznechik_process_data_block+0xae>
 500:	fec42783          	lw	a5,-20(s0)
 504:	eb89                	bnez	a5,516 <kuznechik_process_data_block+0xe0>
 506:	001007b7          	lui	a5,0x100
 50a:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 50e:	4705                	li	a4,1
 510:	c398                	sw	a4,0(a5)
 512:	4781                	li	a5,0
 514:	a891                	j	568 <kuznechik_process_data_block+0x132>
 516:	fc842783          	lw	a5,-56(s0)
 51a:	fcf42c23          	sw	a5,-40(s0)
 51e:	fe042223          	sw	zero,-28(s0)
 522:	a03d                	j	550 <kuznechik_process_data_block+0x11a>
 524:	001007b7          	lui	a5,0x100
 528:	0007a683          	lw	a3,0(a5) # 100000 <KUZNECHIK>
 52c:	fe442783          	lw	a5,-28(s0)
 530:	078a                	sll	a5,a5,0x2
 532:	fd842703          	lw	a4,-40(s0)
 536:	973e                	add	a4,a4,a5
 538:	fe442783          	lw	a5,-28(s0)
 53c:	07a1                	add	a5,a5,8
 53e:	078a                	sll	a5,a5,0x2
 540:	97b6                	add	a5,a5,a3
 542:	43dc                	lw	a5,4(a5)
 544:	c31c                	sw	a5,0(a4)
 546:	fe442783          	lw	a5,-28(s0)
 54a:	0785                	add	a5,a5,1
 54c:	fef42223          	sw	a5,-28(s0)
 550:	fe442703          	lw	a4,-28(s0)
 554:	478d                	li	a5,3
 556:	fce7d7e3          	bge	a5,a4,524 <kuznechik_process_data_block+0xee>
 55a:	001007b7          	lui	a5,0x100
 55e:	0007a783          	lw	a5,0(a5) # 100000 <KUZNECHIK>
 562:	4705                	li	a4,1
 564:	c798                	sw	a4,8(a5)
 566:	4785                	li	a5,1
 568:	853e                	mv	a0,a5
 56a:	5472                	lw	s0,60(sp)
 56c:	6121                	add	sp,sp,64
 56e:	8082                	ret

00000570 <set_pin_function>:
 570:	7179                	add	sp,sp,-48
 572:	d622                	sw	s0,44(sp)
 574:	1800                	add	s0,sp,48
 576:	fca42e23          	sw	a0,-36(s0)
 57a:	fcb42c23          	sw	a1,-40(s0)
 57e:	1a1077b7          	lui	a5,0x1a107
 582:	439c                	lw	a5,0(a5)
 584:	fef42623          	sw	a5,-20(s0)
 588:	fdc42783          	lw	a5,-36(s0)
 58c:	4705                	li	a4,1
 58e:	00f717b3          	sll	a5,a4,a5
 592:	fff7c713          	not	a4,a5
 596:	fec42783          	lw	a5,-20(s0)
 59a:	8ff9                	and	a5,a5,a4
 59c:	fef42623          	sw	a5,-20(s0)
 5a0:	fdc42783          	lw	a5,-36(s0)
 5a4:	fd842703          	lw	a4,-40(s0)
 5a8:	00f71733          	sll	a4,a4,a5
 5ac:	fec42783          	lw	a5,-20(s0)
 5b0:	8fd9                	or	a5,a5,a4
 5b2:	fef42623          	sw	a5,-20(s0)
 5b6:	1a1077b7          	lui	a5,0x1a107
 5ba:	fec42703          	lw	a4,-20(s0)
 5be:	c398                	sw	a4,0(a5)
 5c0:	0001                	nop
 5c2:	5432                	lw	s0,44(sp)
 5c4:	6145                	add	sp,sp,48
 5c6:	8082                	ret

000005c8 <get_pin_function>:
 5c8:	7179                	add	sp,sp,-48
 5ca:	d622                	sw	s0,44(sp)
 5cc:	1800                	add	s0,sp,48
 5ce:	fca42e23          	sw	a0,-36(s0)
 5d2:	1a1077b7          	lui	a5,0x1a107
 5d6:	439c                	lw	a5,0(a5)
 5d8:	fef42623          	sw	a5,-20(s0)
 5dc:	fec42703          	lw	a4,-20(s0)
 5e0:	fdc42783          	lw	a5,-36(s0)
 5e4:	40f757b3          	sra	a5,a4,a5
 5e8:	8b85                	and	a5,a5,1
 5ea:	fef42623          	sw	a5,-20(s0)
 5ee:	fec42783          	lw	a5,-20(s0)
 5f2:	853e                	mv	a0,a5
 5f4:	5432                	lw	s0,44(sp)
 5f6:	6145                	add	sp,sp,48
 5f8:	8082                	ret

000005fa <set_gpio_pin_direction>:
 5fa:	7179                	add	sp,sp,-48
 5fc:	d622                	sw	s0,44(sp)
 5fe:	1800                	add	s0,sp,48
 600:	fca42e23          	sw	a0,-36(s0)
 604:	fcb42c23          	sw	a1,-40(s0)
 608:	1a1017b7          	lui	a5,0x1a101
 60c:	439c                	lw	a5,0(a5)
 60e:	fef42623          	sw	a5,-20(s0)
 612:	fd842783          	lw	a5,-40(s0)
 616:	ef91                	bnez	a5,632 <set_gpio_pin_direction+0x38>
 618:	fdc42783          	lw	a5,-36(s0)
 61c:	4705                	li	a4,1
 61e:	00f717b3          	sll	a5,a4,a5
 622:	fff7c713          	not	a4,a5
 626:	fec42783          	lw	a5,-20(s0)
 62a:	8ff9                	and	a5,a5,a4
 62c:	fef42623          	sw	a5,-20(s0)
 630:	a819                	j	646 <set_gpio_pin_direction+0x4c>
 632:	fdc42783          	lw	a5,-36(s0)
 636:	4705                	li	a4,1
 638:	00f71733          	sll	a4,a4,a5
 63c:	fec42783          	lw	a5,-20(s0)
 640:	8fd9                	or	a5,a5,a4
 642:	fef42623          	sw	a5,-20(s0)
 646:	1a1017b7          	lui	a5,0x1a101
 64a:	fec42703          	lw	a4,-20(s0)
 64e:	c398                	sw	a4,0(a5)
 650:	0001                	nop
 652:	5432                	lw	s0,44(sp)
 654:	6145                	add	sp,sp,48
 656:	8082                	ret

00000658 <get_gpio_pin_direction>:
 658:	7179                	add	sp,sp,-48
 65a:	d622                	sw	s0,44(sp)
 65c:	1800                	add	s0,sp,48
 65e:	fca42e23          	sw	a0,-36(s0)
 662:	1a1017b7          	lui	a5,0x1a101
 666:	439c                	lw	a5,0(a5)
 668:	fef42623          	sw	a5,-20(s0)
 66c:	fec42703          	lw	a4,-20(s0)
 670:	fdc42783          	lw	a5,-36(s0)
 674:	0786                	sll	a5,a5,0x1
 676:	40f757b3          	sra	a5,a4,a5
 67a:	8b85                	and	a5,a5,1
 67c:	fef42623          	sw	a5,-20(s0)
 680:	fec42783          	lw	a5,-20(s0)
 684:	853e                	mv	a0,a5
 686:	5432                	lw	s0,44(sp)
 688:	6145                	add	sp,sp,48
 68a:	8082                	ret

0000068c <set_gpio_pin_value>:
 68c:	7179                	add	sp,sp,-48
 68e:	d622                	sw	s0,44(sp)
 690:	1800                	add	s0,sp,48
 692:	fca42e23          	sw	a0,-36(s0)
 696:	fcb42c23          	sw	a1,-40(s0)
 69a:	1a1017b7          	lui	a5,0x1a101
 69e:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
 6a0:	439c                	lw	a5,0(a5)
 6a2:	fef42623          	sw	a5,-20(s0)
 6a6:	fd842783          	lw	a5,-40(s0)
 6aa:	ef91                	bnez	a5,6c6 <set_gpio_pin_value+0x3a>
 6ac:	fdc42783          	lw	a5,-36(s0)
 6b0:	4705                	li	a4,1
 6b2:	00f717b3          	sll	a5,a4,a5
 6b6:	fff7c713          	not	a4,a5
 6ba:	fec42783          	lw	a5,-20(s0)
 6be:	8ff9                	and	a5,a5,a4
 6c0:	fef42623          	sw	a5,-20(s0)
 6c4:	a819                	j	6da <set_gpio_pin_value+0x4e>
 6c6:	fdc42783          	lw	a5,-36(s0)
 6ca:	4705                	li	a4,1
 6cc:	00f71733          	sll	a4,a4,a5
 6d0:	fec42783          	lw	a5,-20(s0)
 6d4:	8fd9                	or	a5,a5,a4
 6d6:	fef42623          	sw	a5,-20(s0)
 6da:	1a1017b7          	lui	a5,0x1a101
 6de:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
 6e0:	fec42703          	lw	a4,-20(s0)
 6e4:	c398                	sw	a4,0(a5)
 6e6:	0001                	nop
 6e8:	5432                	lw	s0,44(sp)
 6ea:	6145                	add	sp,sp,48
 6ec:	8082                	ret

000006ee <get_gpio_pin_value>:
 6ee:	7179                	add	sp,sp,-48
 6f0:	d622                	sw	s0,44(sp)
 6f2:	1800                	add	s0,sp,48
 6f4:	fca42e23          	sw	a0,-36(s0)
 6f8:	1a1017b7          	lui	a5,0x1a101
 6fc:	0791                	add	a5,a5,4 # 1a101004 <_stack_start+0x19ff9004>
 6fe:	439c                	lw	a5,0(a5)
 700:	fef42623          	sw	a5,-20(s0)
 704:	fec42703          	lw	a4,-20(s0)
 708:	fdc42783          	lw	a5,-36(s0)
 70c:	40f757b3          	sra	a5,a4,a5
 710:	8b85                	and	a5,a5,1
 712:	fef42623          	sw	a5,-20(s0)
 716:	fec42783          	lw	a5,-20(s0)
 71a:	853e                	mv	a0,a5
 71c:	5432                	lw	s0,44(sp)
 71e:	6145                	add	sp,sp,48
 720:	8082                	ret

00000722 <set_gpio_pin_irq_en>:
 722:	7179                	add	sp,sp,-48
 724:	d622                	sw	s0,44(sp)
 726:	1800                	add	s0,sp,48
 728:	fca42e23          	sw	a0,-36(s0)
 72c:	fcb42c23          	sw	a1,-40(s0)
 730:	1a1017b7          	lui	a5,0x1a101
 734:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
 736:	439c                	lw	a5,0(a5)
 738:	fef42623          	sw	a5,-20(s0)
 73c:	fd842783          	lw	a5,-40(s0)
 740:	ef91                	bnez	a5,75c <set_gpio_pin_irq_en+0x3a>
 742:	fdc42783          	lw	a5,-36(s0)
 746:	4705                	li	a4,1
 748:	00f717b3          	sll	a5,a4,a5
 74c:	fff7c793          	not	a5,a5
 750:	fec42703          	lw	a4,-20(s0)
 754:	8ff9                	and	a5,a5,a4
 756:	fef42623          	sw	a5,-20(s0)
 75a:	a819                	j	770 <set_gpio_pin_irq_en+0x4e>
 75c:	fdc42783          	lw	a5,-36(s0)
 760:	4705                	li	a4,1
 762:	00f717b3          	sll	a5,a4,a5
 766:	fec42703          	lw	a4,-20(s0)
 76a:	8fd9                	or	a5,a5,a4
 76c:	fef42623          	sw	a5,-20(s0)
 770:	1a1017b7          	lui	a5,0x1a101
 774:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
 776:	fec42703          	lw	a4,-20(s0)
 77a:	c398                	sw	a4,0(a5)
 77c:	0001                	nop
 77e:	5432                	lw	s0,44(sp)
 780:	6145                	add	sp,sp,48
 782:	8082                	ret

00000784 <set_gpio_pin_irq_type>:
 784:	7179                	add	sp,sp,-48
 786:	d622                	sw	s0,44(sp)
 788:	1800                	add	s0,sp,48
 78a:	fca42e23          	sw	a0,-36(s0)
 78e:	fcb42c23          	sw	a1,-40(s0)
 792:	1a1017b7          	lui	a5,0x1a101
 796:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
 798:	439c                	lw	a5,0(a5)
 79a:	fef42623          	sw	a5,-20(s0)
 79e:	1a1017b7          	lui	a5,0x1a101
 7a2:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
 7a4:	439c                	lw	a5,0(a5)
 7a6:	fef42423          	sw	a5,-24(s0)
 7aa:	fd842783          	lw	a5,-40(s0)
 7ae:	8b85                	and	a5,a5,1
 7b0:	ef91                	bnez	a5,7cc <set_gpio_pin_irq_type+0x48>
 7b2:	fdc42783          	lw	a5,-36(s0)
 7b6:	4705                	li	a4,1
 7b8:	00f717b3          	sll	a5,a4,a5
 7bc:	fff7c793          	not	a5,a5
 7c0:	fec42703          	lw	a4,-20(s0)
 7c4:	8ff9                	and	a5,a5,a4
 7c6:	fef42623          	sw	a5,-20(s0)
 7ca:	a819                	j	7e0 <set_gpio_pin_irq_type+0x5c>
 7cc:	fdc42783          	lw	a5,-36(s0)
 7d0:	4705                	li	a4,1
 7d2:	00f717b3          	sll	a5,a4,a5
 7d6:	fec42703          	lw	a4,-20(s0)
 7da:	8fd9                	or	a5,a5,a4
 7dc:	fef42623          	sw	a5,-20(s0)
 7e0:	fd842783          	lw	a5,-40(s0)
 7e4:	8b89                	and	a5,a5,2
 7e6:	ef91                	bnez	a5,802 <set_gpio_pin_irq_type+0x7e>
 7e8:	fdc42783          	lw	a5,-36(s0)
 7ec:	4705                	li	a4,1
 7ee:	00f717b3          	sll	a5,a4,a5
 7f2:	fff7c793          	not	a5,a5
 7f6:	fe842703          	lw	a4,-24(s0)
 7fa:	8ff9                	and	a5,a5,a4
 7fc:	fef42423          	sw	a5,-24(s0)
 800:	a819                	j	816 <set_gpio_pin_irq_type+0x92>
 802:	fdc42783          	lw	a5,-36(s0)
 806:	4705                	li	a4,1
 808:	00f717b3          	sll	a5,a4,a5
 80c:	fe842703          	lw	a4,-24(s0)
 810:	8fd9                	or	a5,a5,a4
 812:	fef42423          	sw	a5,-24(s0)
 816:	1a1017b7          	lui	a5,0x1a101
 81a:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
 81c:	fec42703          	lw	a4,-20(s0)
 820:	c398                	sw	a4,0(a5)
 822:	1a1017b7          	lui	a5,0x1a101
 826:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
 828:	fe842703          	lw	a4,-24(s0)
 82c:	c398                	sw	a4,0(a5)
 82e:	0001                	nop
 830:	5432                	lw	s0,44(sp)
 832:	6145                	add	sp,sp,48
 834:	8082                	ret

00000836 <get_gpio_irq_status>:
 836:	1141                	add	sp,sp,-16
 838:	c622                	sw	s0,12(sp)
 83a:	0800                	add	s0,sp,16
 83c:	1a1017b7          	lui	a5,0x1a101
 840:	07e1                	add	a5,a5,24 # 1a101018 <_stack_start+0x19ff9018>
 842:	439c                	lw	a5,0(a5)
 844:	853e                	mv	a0,a5
 846:	4432                	lw	s0,12(sp)
 848:	0141                	add	sp,sp,16
 84a:	8082                	ret

0000084c <uart_set_cfg>:
 84c:	1101                	add	sp,sp,-32
 84e:	ce22                	sw	s0,28(sp)
 850:	1000                	add	s0,sp,32
 852:	fea42623          	sw	a0,-20(s0)
 856:	87ae                	mv	a5,a1
 858:	fef41523          	sh	a5,-22(s0)
 85c:	1a1077b7          	lui	a5,0x1a107
 860:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 862:	4398                	lw	a4,0(a5)
 864:	1a1077b7          	lui	a5,0x1a107
 868:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 86a:	00276713          	or	a4,a4,2
 86e:	c398                	sw	a4,0(a5)
 870:	1a1007b7          	lui	a5,0x1a100
 874:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
 876:	08300713          	li	a4,131
 87a:	c398                	sw	a4,0(a5)
 87c:	fea45783          	lhu	a5,-22(s0)
 880:	83a1                	srl	a5,a5,0x8
 882:	07c2                	sll	a5,a5,0x10
 884:	83c1                	srl	a5,a5,0x10
 886:	873e                	mv	a4,a5
 888:	1a1007b7          	lui	a5,0x1a100
 88c:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 88e:	0ff77713          	zext.b	a4,a4
 892:	c398                	sw	a4,0(a5)
 894:	fea45703          	lhu	a4,-22(s0)
 898:	1a1007b7          	lui	a5,0x1a100
 89c:	0ff77713          	zext.b	a4,a4
 8a0:	c398                	sw	a4,0(a5)
 8a2:	1a1007b7          	lui	a5,0x1a100
 8a6:	07a1                	add	a5,a5,8 # 1a100008 <_stack_start+0x19ff8008>
 8a8:	0a700713          	li	a4,167
 8ac:	c398                	sw	a4,0(a5)
 8ae:	1a1007b7          	lui	a5,0x1a100
 8b2:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
 8b4:	470d                	li	a4,3
 8b6:	c398                	sw	a4,0(a5)
 8b8:	1a1007b7          	lui	a5,0x1a100
 8bc:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 8be:	439c                	lw	a5,0(a5)
 8c0:	0f07f713          	and	a4,a5,240
 8c4:	1a1007b7          	lui	a5,0x1a100
 8c8:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 8ca:	00276713          	or	a4,a4,2
 8ce:	c398                	sw	a4,0(a5)
 8d0:	0001                	nop
 8d2:	4472                	lw	s0,28(sp)
 8d4:	6105                	add	sp,sp,32
 8d6:	8082                	ret

000008d8 <uart_send>:
 8d8:	7179                	add	sp,sp,-48
 8da:	d622                	sw	s0,44(sp)
 8dc:	1800                	add	s0,sp,48
 8de:	fca42e23          	sw	a0,-36(s0)
 8e2:	fcb42c23          	sw	a1,-40(s0)
 8e6:	a891                	j	93a <uart_send+0x62>
 8e8:	0001                	nop
 8ea:	1a1007b7          	lui	a5,0x1a100
 8ee:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 8f0:	439c                	lw	a5,0(a5)
 8f2:	0207f793          	and	a5,a5,32
 8f6:	dbf5                	beqz	a5,8ea <uart_send+0x12>
 8f8:	fe042623          	sw	zero,-20(s0)
 8fc:	a035                	j	928 <uart_send+0x50>
 8fe:	fdc42783          	lw	a5,-36(s0)
 902:	00178713          	add	a4,a5,1
 906:	fce42e23          	sw	a4,-36(s0)
 90a:	0007c703          	lbu	a4,0(a5)
 90e:	1a1007b7          	lui	a5,0x1a100
 912:	c398                	sw	a4,0(a5)
 914:	fd842783          	lw	a5,-40(s0)
 918:	17fd                	add	a5,a5,-1 # 1a0fffff <_stack_start+0x19ff7fff>
 91a:	fcf42c23          	sw	a5,-40(s0)
 91e:	fec42783          	lw	a5,-20(s0)
 922:	0785                	add	a5,a5,1
 924:	fef42623          	sw	a5,-20(s0)
 928:	fec42703          	lw	a4,-20(s0)
 92c:	03f00793          	li	a5,63
 930:	00e7e563          	bltu	a5,a4,93a <uart_send+0x62>
 934:	fd842783          	lw	a5,-40(s0)
 938:	f3f9                	bnez	a5,8fe <uart_send+0x26>
 93a:	fd842783          	lw	a5,-40(s0)
 93e:	f7cd                	bnez	a5,8e8 <uart_send+0x10>
 940:	0001                	nop
 942:	0001                	nop
 944:	5432                	lw	s0,44(sp)
 946:	6145                	add	sp,sp,48
 948:	8082                	ret

0000094a <uart_getchar>:
 94a:	1141                	add	sp,sp,-16
 94c:	c622                	sw	s0,12(sp)
 94e:	0800                	add	s0,sp,16
 950:	0001                	nop
 952:	1a1007b7          	lui	a5,0x1a100
 956:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 958:	439c                	lw	a5,0(a5)
 95a:	0017f713          	and	a4,a5,1
 95e:	4785                	li	a5,1
 960:	fef719e3          	bne	a4,a5,952 <uart_getchar+0x8>
 964:	1a1007b7          	lui	a5,0x1a100
 968:	439c                	lw	a5,0(a5)
 96a:	0ff7f793          	zext.b	a5,a5
 96e:	853e                	mv	a0,a5
 970:	4432                	lw	s0,12(sp)
 972:	0141                	add	sp,sp,16
 974:	8082                	ret

00000976 <uart_sendchar>:
 976:	1101                	add	sp,sp,-32
 978:	ce22                	sw	s0,28(sp)
 97a:	1000                	add	s0,sp,32
 97c:	87aa                	mv	a5,a0
 97e:	fef407a3          	sb	a5,-17(s0)
 982:	0001                	nop
 984:	1a1007b7          	lui	a5,0x1a100
 988:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 98a:	439c                	lw	a5,0(a5)
 98c:	0207f793          	and	a5,a5,32
 990:	dbf5                	beqz	a5,984 <uart_sendchar+0xe>
 992:	1a1007b7          	lui	a5,0x1a100
 996:	fef44703          	lbu	a4,-17(s0)
 99a:	c398                	sw	a4,0(a5)
 99c:	0001                	nop
 99e:	4472                	lw	s0,28(sp)
 9a0:	6105                	add	sp,sp,32
 9a2:	8082                	ret

000009a4 <uart_wait_tx_done>:
 9a4:	1141                	add	sp,sp,-16
 9a6:	c622                	sw	s0,12(sp)
 9a8:	0800                	add	s0,sp,16
 9aa:	0001                	nop
 9ac:	1a1007b7          	lui	a5,0x1a100
 9b0:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 9b2:	439c                	lw	a5,0(a5)
 9b4:	0407f793          	and	a5,a5,64
 9b8:	dbf5                	beqz	a5,9ac <uart_wait_tx_done+0x8>
 9ba:	0001                	nop
 9bc:	0001                	nop
 9be:	4432                	lw	s0,12(sp)
 9c0:	0141                	add	sp,sp,16
 9c2:	8082                	ret

000009c4 <exit>:
 9c4:	1101                	add	sp,sp,-32
 9c6:	ce06                	sw	ra,28(sp)
 9c8:	cc22                	sw	s0,24(sp)
 9ca:	1000                	add	s0,sp,32
 9cc:	fea42623          	sw	a0,-20(s0)
 9d0:	fec42503          	lw	a0,-20(s0)
 9d4:	2011                	jal	9d8 <eoc>
 9d6:	a001                	j	9d6 <exit+0x12>

000009d8 <eoc>:
 9d8:	1101                	add	sp,sp,-32
 9da:	ce06                	sw	ra,28(sp)
 9dc:	cc22                	sw	s0,24(sp)
 9de:	1000                	add	s0,sp,32
 9e0:	fea42623          	sw	a0,-20(s0)
 9e4:	fec42783          	lw	a5,-20(s0)
 9e8:	c799                	beqz	a5,9f6 <eoc+0x1e>
 9ea:	1a1077b7          	lui	a5,0x1a107
 9ee:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
 9f0:	4705                	li	a4,1
 9f2:	c398                	sw	a4,0(a5)
 9f4:	a031                	j	a00 <eoc+0x28>
 9f6:	1a1077b7          	lui	a5,0x1a107
 9fa:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
 9fc:	0007a023          	sw	zero,0(a5)
 a00:	1a1077b7          	lui	a5,0x1a107
 a04:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 a06:	4398                	lw	a4,0(a5)
 a08:	1a1077b7          	lui	a5,0x1a107
 a0c:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 a0e:	00476713          	or	a4,a4,4
 a12:	c398                	sw	a4,0(a5)
 a14:	4585                	li	a1,1
 a16:	4521                	li	a0,8
 a18:	3ea1                	jal	570 <set_pin_function>
 a1a:	4585                	li	a1,1
 a1c:	4521                	li	a0,8
 a1e:	3ef1                	jal	5fa <set_gpio_pin_direction>
 a20:	4585                	li	a1,1
 a22:	4521                	li	a0,8
 a24:	31a5                	jal	68c <set_gpio_pin_value>
 a26:	0001                	nop
 a28:	40f2                	lw	ra,28(sp)
 a2a:	4462                	lw	s0,24(sp)
 a2c:	6105                	add	sp,sp,32
 a2e:	8082                	ret

00000a30 <sleep_busy>:
 a30:	7179                	add	sp,sp,-48
 a32:	d622                	sw	s0,44(sp)
 a34:	1800                	add	s0,sp,48
 a36:	fca42e23          	sw	a0,-36(s0)
 a3a:	fe042623          	sw	zero,-20(s0)
 a3e:	a039                	j	a4c <sleep_busy+0x1c>
 a40:	0001                	nop
 a42:	fec42783          	lw	a5,-20(s0)
 a46:	0785                	add	a5,a5,1
 a48:	fef42623          	sw	a5,-20(s0)
 a4c:	fdc42783          	lw	a5,-36(s0)
 a50:	fec42703          	lw	a4,-20(s0)
 a54:	fef746e3          	blt	a4,a5,a40 <sleep_busy+0x10>
 a58:	0001                	nop
 a5a:	0001                	nop
 a5c:	5432                	lw	s0,44(sp)
 a5e:	6145                	add	sp,sp,48
 a60:	8082                	ret

00000a62 <ISR_I2C>:
 a62:	1141                	add	sp,sp,-16
 a64:	c622                	sw	s0,12(sp)
 a66:	0800                	add	s0,sp,16
 a68:	a001                	j	a68 <ISR_I2C+0x6>

00000a6a <ISR_UART>:
 a6a:	1141                	add	sp,sp,-16
 a6c:	c622                	sw	s0,12(sp)
 a6e:	0800                	add	s0,sp,16
 a70:	a001                	j	a70 <ISR_UART+0x6>

00000a72 <ISR_GPIO>:
 a72:	1141                	add	sp,sp,-16
 a74:	c622                	sw	s0,12(sp)
 a76:	0800                	add	s0,sp,16
 a78:	a001                	j	a78 <ISR_GPIO+0x6>

00000a7a <ISR_SPIM0>:
 a7a:	1141                	add	sp,sp,-16
 a7c:	c622                	sw	s0,12(sp)
 a7e:	0800                	add	s0,sp,16
 a80:	a001                	j	a80 <ISR_SPIM0+0x6>

00000a82 <ISR_SPIM1>:
 a82:	1141                	add	sp,sp,-16
 a84:	c622                	sw	s0,12(sp)
 a86:	0800                	add	s0,sp,16
 a88:	a001                	j	a88 <ISR_SPIM1+0x6>

00000a8a <ISR_TA_OVF>:
 a8a:	1141                	add	sp,sp,-16
 a8c:	c622                	sw	s0,12(sp)
 a8e:	0800                	add	s0,sp,16
 a90:	a001                	j	a90 <ISR_TA_OVF+0x6>

00000a92 <ISR_TA_CMP>:
 a92:	1141                	add	sp,sp,-16
 a94:	c622                	sw	s0,12(sp)
 a96:	0800                	add	s0,sp,16
 a98:	a001                	j	a98 <ISR_TA_CMP+0x6>

00000a9a <ISR_TB_OVF>:
 a9a:	1141                	add	sp,sp,-16
 a9c:	c622                	sw	s0,12(sp)
 a9e:	0800                	add	s0,sp,16
 aa0:	a001                	j	aa0 <ISR_TB_OVF+0x6>

00000aa2 <ISR_TB_CMP>:
 aa2:	1141                	add	sp,sp,-16
 aa4:	c622                	sw	s0,12(sp)
 aa6:	0800                	add	s0,sp,16
 aa8:	a001                	j	aa8 <ISR_TB_CMP+0x6>

00000aaa <default_exception_handler_c>:
 aaa:	1141                	add	sp,sp,-16
 aac:	c622                	sw	s0,12(sp)
 aae:	0800                	add	s0,sp,16
 ab0:	a001                	j	ab0 <default_exception_handler_c+0x6>

00000ab2 <illegal_insn_handler_c>:
 ab2:	1141                	add	sp,sp,-16
 ab4:	c622                	sw	s0,12(sp)
 ab6:	0800                	add	s0,sp,16
 ab8:	a001                	j	ab8 <illegal_insn_handler_c+0x6>

00000aba <ecall_insn_handler_c>:
 aba:	1141                	add	sp,sp,-16
 abc:	c622                	sw	s0,12(sp)
 abe:	0800                	add	s0,sp,16
 ac0:	a001                	j	ac0 <ecall_insn_handler_c+0x6>

00000ac2 <__CTOR_LIST__>:
	...

00000aca <__CTOR_END__>:
	...

Disassembly of section .text.__libc_init_array:

00000ad4 <__libc_init_array>:
 ad4:	ff010113          	add	sp,sp,-16
 ad8:	00812423          	sw	s0,8(sp)
 adc:	001007b7          	lui	a5,0x100
 ae0:	00100437          	lui	s0,0x100
 ae4:	01212023          	sw	s2,0(sp)
 ae8:	00078793          	mv	a5,a5
 aec:	00040713          	mv	a4,s0
 af0:	00112623          	sw	ra,12(sp)
 af4:	00912223          	sw	s1,4(sp)
 af8:	40e78933          	sub	s2,a5,a4
 afc:	02e78263          	beq	a5,a4,b20 <__libc_init_array+0x4c>
 b00:	40295913          	sra	s2,s2,0x2
 b04:	00040413          	mv	s0,s0
 b08:	00000493          	li	s1,0
 b0c:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
 b10:	00148493          	add	s1,s1,1
 b14:	00440413          	add	s0,s0,4
 b18:	000780e7          	jalr	a5 # 100000 <__init_array_end>
 b1c:	ff24e8e3          	bltu	s1,s2,b0c <__libc_init_array+0x38>
 b20:	00100437          	lui	s0,0x100
 b24:	001007b7          	lui	a5,0x100
 b28:	00078793          	mv	a5,a5
 b2c:	00040713          	mv	a4,s0
 b30:	40e78933          	sub	s2,a5,a4
 b34:	40295913          	sra	s2,s2,0x2
 b38:	02e78063          	beq	a5,a4,b58 <__libc_init_array+0x84>
 b3c:	00040413          	mv	s0,s0
 b40:	00000493          	li	s1,0
 b44:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
 b48:	00148493          	add	s1,s1,1
 b4c:	00440413          	add	s0,s0,4
 b50:	000780e7          	jalr	a5 # 100000 <__init_array_end>
 b54:	ff24e8e3          	bltu	s1,s2,b44 <__libc_init_array+0x70>
 b58:	00c12083          	lw	ra,12(sp)
 b5c:	00812403          	lw	s0,8(sp)
 b60:	00412483          	lw	s1,4(sp)
 b64:	00012903          	lw	s2,0(sp)
 b68:	01010113          	add	sp,sp,16
 b6c:	00008067          	ret

Disassembly of section .bss:

00100000 <KUZNECHIK>:
  100000:	0000                	.2byte	0x0
	...

Disassembly of section .stack:

00106000 <_stack-0x1000>:
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	3241                	.2byte	0x3241
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <__DYNAMIC+0x14>
   c:	0028                	.2byte	0x28
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3376                	.2byte	0x3376
  16:	6932                	.2byte	0x6932
  18:	7032                	.2byte	0x7032
  1a:	5f30                	.2byte	0x5f30
  1c:	326d                	.2byte	0x326d
  1e:	3070                	.2byte	0x3070
  20:	635f 7032 5f30      	.byte	0x5f, 0x63, 0x32, 0x70, 0x30, 0x5f
  26:	6d7a                	.2byte	0x6d7a
  28:	756d                	.2byte	0x756d
  2a:	316c                	.2byte	0x316c
  2c:	3070                	.2byte	0x3070
  2e:	0800                	.2byte	0x800
  30:	0a01                	.2byte	0xa01
  32:	0b              	Address 0x32 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	65653267          	.4byte	0x65653267
   a:	6535                	.2byte	0x6535
   c:	3334                	.2byte	0x3334
   e:	3030                	.2byte	0x3030
  10:	3831                	.2byte	0x3831
  12:	2029                	.2byte	0x2029
  14:	3231                	.2byte	0x3231
  16:	322e                	.2byte	0x322e
  18:	302e                	.2byte	0x302e
  1a:	4700                	.2byte	0x4700
  1c:	203a4343          	.4byte	0x203a4343
  20:	4728                	.2byte	0x4728
  22:	554e                	.2byte	0x554e
  24:	2029                	.2byte	0x2029
  26:	3231                	.2byte	0x3231
  28:	322e                	.2byte	0x322e
  2a:	302e                	.2byte	0x302e
	...
