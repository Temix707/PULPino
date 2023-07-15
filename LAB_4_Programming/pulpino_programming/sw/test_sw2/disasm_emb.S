
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
  5c:	0b80006f          	j	114 <ISR_I2C_ASM>
  60:	0c80006f          	j	128 <ISR_UART_ASM>
  64:	0d80006f          	j	13c <ISR_GPIO_ASM>
  68:	0e80006f          	j	150 <ISR_SPIM0_ASM>
  6c:	0f80006f          	j	164 <ISR_SPIM1_ASM>
  70:	11c0006f          	j	18c <ISR_TA_OVF_ASM>
  74:	1040006f          	j	178 <ISR_TA_CMP_ASM>
  78:	13c0006f          	j	1b4 <ISR_TB_OVF_ASM>
  7c:	1240006f          	j	1a0 <ISR_TB_CMP_ASM>
  80:	00c0006f          	j	8c <_stext>
  84:	1440006f          	j	1c8 <illegal_insn_handler>
  88:	1540006f          	j	1dc <ecall_insn_handler>

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
  dc:	f38d0d13          	add	s10,s10,-200 # 100010 <_bss_end>
  e0:	00100d97          	auipc	s11,0x100
  e4:	f30d8d93          	add	s11,s11,-208 # 100010 <_bss_end>
  e8:	01bd5763          	bge	s10,s11,f6 <zero_loop_end>

000000ec <zero_loop>:
  ec:	000d2023          	sw	zero,0(s10)
  f0:	0d11                	add	s10,s10,4
  f2:	ffaddde3          	bge	s11,s10,ec <zero_loop>

000000f6 <zero_loop_end>:
  f6:	2fad                	jal	870 <__libc_init_array>

000000f8 <main_entry>:
  f8:	4501                	li	a0,0
  fa:	4585                	li	a1,1
  fc:	4ec000ef          	jal	5e8 <uart_set_cfg>
 100:	4501                	li	a0,0
 102:	4581                	li	a1,0
 104:	186000ef          	jal	28a <main>
 108:	842a                	mv	s0,a0
 10a:	636000ef          	jal	740 <uart_wait_tx_done>
 10e:	8522                	mv	a0,s0
 110:	650000ef          	jal	760 <exit>

00000114 <ISR_I2C_ASM>:
 114:	711d                	add	sp,sp,-96
 116:	ce86                	sw	ra,92(sp)
 118:	0d8000ef          	jal	1f0 <store_regs>
 11c:	00000097          	auipc	ra,0x0
 120:	11e08093          	add	ra,ra,286 # 23a <end_except>
 124:	6da0006f          	j	7fe <ISR_I2C>

00000128 <ISR_UART_ASM>:
 128:	711d                	add	sp,sp,-96
 12a:	ce86                	sw	ra,92(sp)
 12c:	0c4000ef          	jal	1f0 <store_regs>
 130:	00000097          	auipc	ra,0x0
 134:	10a08093          	add	ra,ra,266 # 23a <end_except>
 138:	6ce0006f          	j	806 <ISR_UART>

0000013c <ISR_GPIO_ASM>:
 13c:	711d                	add	sp,sp,-96
 13e:	ce86                	sw	ra,92(sp)
 140:	0b0000ef          	jal	1f0 <store_regs>
 144:	00000097          	auipc	ra,0x0
 148:	0f608093          	add	ra,ra,246 # 23a <end_except>
 14c:	6c20006f          	j	80e <ISR_GPIO>

00000150 <ISR_SPIM0_ASM>:
 150:	711d                	add	sp,sp,-96
 152:	ce86                	sw	ra,92(sp)
 154:	09c000ef          	jal	1f0 <store_regs>
 158:	00000097          	auipc	ra,0x0
 15c:	0e208093          	add	ra,ra,226 # 23a <end_except>
 160:	6b60006f          	j	816 <ISR_SPIM0>

00000164 <ISR_SPIM1_ASM>:
 164:	711d                	add	sp,sp,-96
 166:	ce86                	sw	ra,92(sp)
 168:	088000ef          	jal	1f0 <store_regs>
 16c:	00000097          	auipc	ra,0x0
 170:	0ce08093          	add	ra,ra,206 # 23a <end_except>
 174:	6aa0006f          	j	81e <ISR_SPIM1>

00000178 <ISR_TA_CMP_ASM>:
 178:	711d                	add	sp,sp,-96
 17a:	ce86                	sw	ra,92(sp)
 17c:	074000ef          	jal	1f0 <store_regs>
 180:	00000097          	auipc	ra,0x0
 184:	0ba08093          	add	ra,ra,186 # 23a <end_except>
 188:	6a60006f          	j	82e <ISR_TA_CMP>

0000018c <ISR_TA_OVF_ASM>:
 18c:	711d                	add	sp,sp,-96
 18e:	ce86                	sw	ra,92(sp)
 190:	060000ef          	jal	1f0 <store_regs>
 194:	00000097          	auipc	ra,0x0
 198:	0a608093          	add	ra,ra,166 # 23a <end_except>
 19c:	68a0006f          	j	826 <ISR_TA_OVF>

000001a0 <ISR_TB_CMP_ASM>:
 1a0:	711d                	add	sp,sp,-96
 1a2:	ce86                	sw	ra,92(sp)
 1a4:	04c000ef          	jal	1f0 <store_regs>
 1a8:	00000097          	auipc	ra,0x0
 1ac:	09208093          	add	ra,ra,146 # 23a <end_except>
 1b0:	68e0006f          	j	83e <ISR_TB_CMP>

000001b4 <ISR_TB_OVF_ASM>:
 1b4:	711d                	add	sp,sp,-96
 1b6:	ce86                	sw	ra,92(sp)
 1b8:	038000ef          	jal	1f0 <store_regs>
 1bc:	00000097          	auipc	ra,0x0
 1c0:	07e08093          	add	ra,ra,126 # 23a <end_except>
 1c4:	6720006f          	j	836 <ISR_TB_OVF>

000001c8 <illegal_insn_handler>:
 1c8:	711d                	add	sp,sp,-96
 1ca:	ce86                	sw	ra,92(sp)
 1cc:	024000ef          	jal	1f0 <store_regs>
 1d0:	00000097          	auipc	ra,0x0
 1d4:	06a08093          	add	ra,ra,106 # 23a <end_except>
 1d8:	6760006f          	j	84e <illegal_insn_handler_c>

000001dc <ecall_insn_handler>:
 1dc:	711d                	add	sp,sp,-96
 1de:	ce86                	sw	ra,92(sp)
 1e0:	010000ef          	jal	1f0 <store_regs>
 1e4:	00000097          	auipc	ra,0x0
 1e8:	05608093          	add	ra,ra,86 # 23a <end_except>
 1ec:	66a0006f          	j	856 <ecall_insn_handler_c>

000001f0 <store_regs>:
 1f0:	c00e                	sw	gp,0(sp)
 1f2:	c212                	sw	tp,4(sp)
 1f4:	c416                	sw	t0,8(sp)
 1f6:	c61a                	sw	t1,12(sp)
 1f8:	c81e                	sw	t2,16(sp)
 1fa:	ca2a                	sw	a0,20(sp)
 1fc:	cc2e                	sw	a1,24(sp)
 1fe:	ce32                	sw	a2,28(sp)
 200:	d036                	sw	a3,32(sp)
 202:	d23a                	sw	a4,36(sp)
 204:	d43e                	sw	a5,40(sp)
 206:	d642                	sw	a6,44(sp)
 208:	d846                	sw	a7,48(sp)
 20a:	da72                	sw	t3,52(sp)
 20c:	dc76                	sw	t4,56(sp)
 20e:	de7a                	sw	t5,60(sp)
 210:	c0fe                	sw	t6,64(sp)
 212:	7b002e73          	csrr	t3,dcsr
 216:	7b102ef3          	csrr	t4,dpc
 21a:	7b202f73          	csrr	t5,dscratch0
 21e:	c2f2                	sw	t3,68(sp)
 220:	c4f6                	sw	t4,72(sp)
 222:	c6fa                	sw	t5,76(sp)
 224:	7b402e73          	csrr	t3,0x7b4
 228:	7b502ef3          	csrr	t4,0x7b5
 22c:	7b602f73          	csrr	t5,0x7b6
 230:	c8f2                	sw	t3,80(sp)
 232:	caf6                	sw	t4,84(sp)
 234:	ccfa                	sw	t5,88(sp)
 236:	00008067          	ret

0000023a <end_except>:
 23a:	4e46                	lw	t3,80(sp)
 23c:	4ed6                	lw	t4,84(sp)
 23e:	4f66                	lw	t5,88(sp)
 240:	7b4e1073          	csrw	0x7b4,t3
 244:	7b5e9073          	csrw	0x7b5,t4
 248:	7b6f1073          	csrw	0x7b6,t5
 24c:	4e16                	lw	t3,68(sp)
 24e:	4ea6                	lw	t4,72(sp)
 250:	4f36                	lw	t5,76(sp)
 252:	7b0e1073          	csrw	dcsr,t3
 256:	7b1e9073          	csrw	dpc,t4
 25a:	7b2f1073          	csrw	dscratch0,t5
 25e:	4182                	lw	gp,0(sp)
 260:	4212                	lw	tp,4(sp)
 262:	42a2                	lw	t0,8(sp)
 264:	4332                	lw	t1,12(sp)
 266:	43c2                	lw	t2,16(sp)
 268:	4552                	lw	a0,20(sp)
 26a:	45e2                	lw	a1,24(sp)
 26c:	4672                	lw	a2,28(sp)
 26e:	5682                	lw	a3,32(sp)
 270:	5712                	lw	a4,36(sp)
 272:	57a2                	lw	a5,40(sp)
 274:	5832                	lw	a6,44(sp)
 276:	58c2                	lw	a7,48(sp)
 278:	5e52                	lw	t3,52(sp)
 27a:	5ee2                	lw	t4,56(sp)
 27c:	5f72                	lw	t5,60(sp)
 27e:	4f86                	lw	t6,64(sp)
 280:	40f6                	lw	ra,92(sp)
 282:	6125                	add	sp,sp,96
 284:	30200073          	mret

00000288 <_fini>:
 288:	8082                	ret

0000028a <main>:
 28a:	1101                	add	sp,sp,-32
 28c:	ce06                	sw	ra,28(sp)
 28e:	cc22                	sw	s0,24(sp)
 290:	1000                	add	s0,sp,32
 292:	14500593          	li	a1,325
 296:	4501                	li	a0,0
 298:	2e81                	jal	5e8 <uart_set_cfg>
 29a:	45b5                	li	a1,13
 29c:	001007b7          	lui	a5,0x100
 2a0:	00078513          	mv	a0,a5
 2a4:	2ec1                	jal	674 <uart_send>
 2a6:	2969                	jal	740 <uart_wait_tx_done>
 2a8:	4585                	li	a1,1
 2aa:	457d                	li	a0,31
 2ac:	2085                	jal	30c <set_pin_function>
 2ae:	4585                	li	a1,1
 2b0:	457d                	li	a0,31
 2b2:	20d5                	jal	396 <set_gpio_pin_direction>
 2b4:	4581                	li	a1,0
 2b6:	457d                	li	a0,31
 2b8:	2a85                	jal	428 <set_gpio_pin_value>
 2ba:	fe042623          	sw	zero,-20(s0)
 2be:	a039                	j	2cc <main+0x42>
 2c0:	0001                	nop
 2c2:	fec42783          	lw	a5,-20(s0)
 2c6:	0785                	add	a5,a5,1 # 100001 <__init_array_end+0x1>
 2c8:	fef42623          	sw	a5,-20(s0)
 2cc:	fec42703          	lw	a4,-20(s0)
 2d0:	000f47b7          	lui	a5,0xf4
 2d4:	23f78793          	add	a5,a5,575 # f423f <_stack_len+0xf223f>
 2d8:	fee7d4e3          	bge	a5,a4,2c0 <main+0x36>
 2dc:	4585                	li	a1,1
 2de:	457d                	li	a0,31
 2e0:	22a1                	jal	428 <set_gpio_pin_value>
 2e2:	fe042423          	sw	zero,-24(s0)
 2e6:	a039                	j	2f4 <main+0x6a>
 2e8:	0001                	nop
 2ea:	fe842783          	lw	a5,-24(s0)
 2ee:	0785                	add	a5,a5,1
 2f0:	fef42423          	sw	a5,-24(s0)
 2f4:	fe842703          	lw	a4,-24(s0)
 2f8:	000f47b7          	lui	a5,0xf4
 2fc:	23f78793          	add	a5,a5,575 # f423f <_stack_len+0xf223f>
 300:	fee7d4e3          	bge	a5,a4,2e8 <main+0x5e>
 304:	4581                	li	a1,0
 306:	457d                	li	a0,31
 308:	2205                	jal	428 <set_gpio_pin_value>
 30a:	bf45                	j	2ba <main+0x30>

0000030c <set_pin_function>:
 30c:	7179                	add	sp,sp,-48
 30e:	d622                	sw	s0,44(sp)
 310:	1800                	add	s0,sp,48
 312:	fca42e23          	sw	a0,-36(s0)
 316:	fcb42c23          	sw	a1,-40(s0)
 31a:	1a1077b7          	lui	a5,0x1a107
 31e:	439c                	lw	a5,0(a5)
 320:	fef42623          	sw	a5,-20(s0)
 324:	fdc42783          	lw	a5,-36(s0)
 328:	4705                	li	a4,1
 32a:	00f717b3          	sll	a5,a4,a5
 32e:	fff7c713          	not	a4,a5
 332:	fec42783          	lw	a5,-20(s0)
 336:	8ff9                	and	a5,a5,a4
 338:	fef42623          	sw	a5,-20(s0)
 33c:	fdc42783          	lw	a5,-36(s0)
 340:	fd842703          	lw	a4,-40(s0)
 344:	00f71733          	sll	a4,a4,a5
 348:	fec42783          	lw	a5,-20(s0)
 34c:	8fd9                	or	a5,a5,a4
 34e:	fef42623          	sw	a5,-20(s0)
 352:	1a1077b7          	lui	a5,0x1a107
 356:	fec42703          	lw	a4,-20(s0)
 35a:	c398                	sw	a4,0(a5)
 35c:	0001                	nop
 35e:	5432                	lw	s0,44(sp)
 360:	6145                	add	sp,sp,48
 362:	8082                	ret

00000364 <get_pin_function>:
 364:	7179                	add	sp,sp,-48
 366:	d622                	sw	s0,44(sp)
 368:	1800                	add	s0,sp,48
 36a:	fca42e23          	sw	a0,-36(s0)
 36e:	1a1077b7          	lui	a5,0x1a107
 372:	439c                	lw	a5,0(a5)
 374:	fef42623          	sw	a5,-20(s0)
 378:	fec42703          	lw	a4,-20(s0)
 37c:	fdc42783          	lw	a5,-36(s0)
 380:	40f757b3          	sra	a5,a4,a5
 384:	8b85                	and	a5,a5,1
 386:	fef42623          	sw	a5,-20(s0)
 38a:	fec42783          	lw	a5,-20(s0)
 38e:	853e                	mv	a0,a5
 390:	5432                	lw	s0,44(sp)
 392:	6145                	add	sp,sp,48
 394:	8082                	ret

00000396 <set_gpio_pin_direction>:
 396:	7179                	add	sp,sp,-48
 398:	d622                	sw	s0,44(sp)
 39a:	1800                	add	s0,sp,48
 39c:	fca42e23          	sw	a0,-36(s0)
 3a0:	fcb42c23          	sw	a1,-40(s0)
 3a4:	1a1017b7          	lui	a5,0x1a101
 3a8:	439c                	lw	a5,0(a5)
 3aa:	fef42623          	sw	a5,-20(s0)
 3ae:	fd842783          	lw	a5,-40(s0)
 3b2:	ef91                	bnez	a5,3ce <set_gpio_pin_direction+0x38>
 3b4:	fdc42783          	lw	a5,-36(s0)
 3b8:	4705                	li	a4,1
 3ba:	00f717b3          	sll	a5,a4,a5
 3be:	fff7c713          	not	a4,a5
 3c2:	fec42783          	lw	a5,-20(s0)
 3c6:	8ff9                	and	a5,a5,a4
 3c8:	fef42623          	sw	a5,-20(s0)
 3cc:	a819                	j	3e2 <set_gpio_pin_direction+0x4c>
 3ce:	fdc42783          	lw	a5,-36(s0)
 3d2:	4705                	li	a4,1
 3d4:	00f71733          	sll	a4,a4,a5
 3d8:	fec42783          	lw	a5,-20(s0)
 3dc:	8fd9                	or	a5,a5,a4
 3de:	fef42623          	sw	a5,-20(s0)
 3e2:	1a1017b7          	lui	a5,0x1a101
 3e6:	fec42703          	lw	a4,-20(s0)
 3ea:	c398                	sw	a4,0(a5)
 3ec:	0001                	nop
 3ee:	5432                	lw	s0,44(sp)
 3f0:	6145                	add	sp,sp,48
 3f2:	8082                	ret

000003f4 <get_gpio_pin_direction>:
 3f4:	7179                	add	sp,sp,-48
 3f6:	d622                	sw	s0,44(sp)
 3f8:	1800                	add	s0,sp,48
 3fa:	fca42e23          	sw	a0,-36(s0)
 3fe:	1a1017b7          	lui	a5,0x1a101
 402:	439c                	lw	a5,0(a5)
 404:	fef42623          	sw	a5,-20(s0)
 408:	fec42703          	lw	a4,-20(s0)
 40c:	fdc42783          	lw	a5,-36(s0)
 410:	0786                	sll	a5,a5,0x1
 412:	40f757b3          	sra	a5,a4,a5
 416:	8b85                	and	a5,a5,1
 418:	fef42623          	sw	a5,-20(s0)
 41c:	fec42783          	lw	a5,-20(s0)
 420:	853e                	mv	a0,a5
 422:	5432                	lw	s0,44(sp)
 424:	6145                	add	sp,sp,48
 426:	8082                	ret

00000428 <set_gpio_pin_value>:
 428:	7179                	add	sp,sp,-48
 42a:	d622                	sw	s0,44(sp)
 42c:	1800                	add	s0,sp,48
 42e:	fca42e23          	sw	a0,-36(s0)
 432:	fcb42c23          	sw	a1,-40(s0)
 436:	1a1017b7          	lui	a5,0x1a101
 43a:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
 43c:	439c                	lw	a5,0(a5)
 43e:	fef42623          	sw	a5,-20(s0)
 442:	fd842783          	lw	a5,-40(s0)
 446:	ef91                	bnez	a5,462 <set_gpio_pin_value+0x3a>
 448:	fdc42783          	lw	a5,-36(s0)
 44c:	4705                	li	a4,1
 44e:	00f717b3          	sll	a5,a4,a5
 452:	fff7c713          	not	a4,a5
 456:	fec42783          	lw	a5,-20(s0)
 45a:	8ff9                	and	a5,a5,a4
 45c:	fef42623          	sw	a5,-20(s0)
 460:	a819                	j	476 <set_gpio_pin_value+0x4e>
 462:	fdc42783          	lw	a5,-36(s0)
 466:	4705                	li	a4,1
 468:	00f71733          	sll	a4,a4,a5
 46c:	fec42783          	lw	a5,-20(s0)
 470:	8fd9                	or	a5,a5,a4
 472:	fef42623          	sw	a5,-20(s0)
 476:	1a1017b7          	lui	a5,0x1a101
 47a:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
 47c:	fec42703          	lw	a4,-20(s0)
 480:	c398                	sw	a4,0(a5)
 482:	0001                	nop
 484:	5432                	lw	s0,44(sp)
 486:	6145                	add	sp,sp,48
 488:	8082                	ret

0000048a <get_gpio_pin_value>:
 48a:	7179                	add	sp,sp,-48
 48c:	d622                	sw	s0,44(sp)
 48e:	1800                	add	s0,sp,48
 490:	fca42e23          	sw	a0,-36(s0)
 494:	1a1017b7          	lui	a5,0x1a101
 498:	0791                	add	a5,a5,4 # 1a101004 <_stack_start+0x19ff9004>
 49a:	439c                	lw	a5,0(a5)
 49c:	fef42623          	sw	a5,-20(s0)
 4a0:	fec42703          	lw	a4,-20(s0)
 4a4:	fdc42783          	lw	a5,-36(s0)
 4a8:	40f757b3          	sra	a5,a4,a5
 4ac:	8b85                	and	a5,a5,1
 4ae:	fef42623          	sw	a5,-20(s0)
 4b2:	fec42783          	lw	a5,-20(s0)
 4b6:	853e                	mv	a0,a5
 4b8:	5432                	lw	s0,44(sp)
 4ba:	6145                	add	sp,sp,48
 4bc:	8082                	ret

000004be <set_gpio_pin_irq_en>:
 4be:	7179                	add	sp,sp,-48
 4c0:	d622                	sw	s0,44(sp)
 4c2:	1800                	add	s0,sp,48
 4c4:	fca42e23          	sw	a0,-36(s0)
 4c8:	fcb42c23          	sw	a1,-40(s0)
 4cc:	1a1017b7          	lui	a5,0x1a101
 4d0:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
 4d2:	439c                	lw	a5,0(a5)
 4d4:	fef42623          	sw	a5,-20(s0)
 4d8:	fd842783          	lw	a5,-40(s0)
 4dc:	ef91                	bnez	a5,4f8 <set_gpio_pin_irq_en+0x3a>
 4de:	fdc42783          	lw	a5,-36(s0)
 4e2:	4705                	li	a4,1
 4e4:	00f717b3          	sll	a5,a4,a5
 4e8:	fff7c793          	not	a5,a5
 4ec:	fec42703          	lw	a4,-20(s0)
 4f0:	8ff9                	and	a5,a5,a4
 4f2:	fef42623          	sw	a5,-20(s0)
 4f6:	a819                	j	50c <set_gpio_pin_irq_en+0x4e>
 4f8:	fdc42783          	lw	a5,-36(s0)
 4fc:	4705                	li	a4,1
 4fe:	00f717b3          	sll	a5,a4,a5
 502:	fec42703          	lw	a4,-20(s0)
 506:	8fd9                	or	a5,a5,a4
 508:	fef42623          	sw	a5,-20(s0)
 50c:	1a1017b7          	lui	a5,0x1a101
 510:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
 512:	fec42703          	lw	a4,-20(s0)
 516:	c398                	sw	a4,0(a5)
 518:	0001                	nop
 51a:	5432                	lw	s0,44(sp)
 51c:	6145                	add	sp,sp,48
 51e:	8082                	ret

00000520 <set_gpio_pin_irq_type>:
 520:	7179                	add	sp,sp,-48
 522:	d622                	sw	s0,44(sp)
 524:	1800                	add	s0,sp,48
 526:	fca42e23          	sw	a0,-36(s0)
 52a:	fcb42c23          	sw	a1,-40(s0)
 52e:	1a1017b7          	lui	a5,0x1a101
 532:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
 534:	439c                	lw	a5,0(a5)
 536:	fef42623          	sw	a5,-20(s0)
 53a:	1a1017b7          	lui	a5,0x1a101
 53e:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
 540:	439c                	lw	a5,0(a5)
 542:	fef42423          	sw	a5,-24(s0)
 546:	fd842783          	lw	a5,-40(s0)
 54a:	8b85                	and	a5,a5,1
 54c:	ef91                	bnez	a5,568 <set_gpio_pin_irq_type+0x48>
 54e:	fdc42783          	lw	a5,-36(s0)
 552:	4705                	li	a4,1
 554:	00f717b3          	sll	a5,a4,a5
 558:	fff7c793          	not	a5,a5
 55c:	fec42703          	lw	a4,-20(s0)
 560:	8ff9                	and	a5,a5,a4
 562:	fef42623          	sw	a5,-20(s0)
 566:	a819                	j	57c <set_gpio_pin_irq_type+0x5c>
 568:	fdc42783          	lw	a5,-36(s0)
 56c:	4705                	li	a4,1
 56e:	00f717b3          	sll	a5,a4,a5
 572:	fec42703          	lw	a4,-20(s0)
 576:	8fd9                	or	a5,a5,a4
 578:	fef42623          	sw	a5,-20(s0)
 57c:	fd842783          	lw	a5,-40(s0)
 580:	8b89                	and	a5,a5,2
 582:	ef91                	bnez	a5,59e <set_gpio_pin_irq_type+0x7e>
 584:	fdc42783          	lw	a5,-36(s0)
 588:	4705                	li	a4,1
 58a:	00f717b3          	sll	a5,a4,a5
 58e:	fff7c793          	not	a5,a5
 592:	fe842703          	lw	a4,-24(s0)
 596:	8ff9                	and	a5,a5,a4
 598:	fef42423          	sw	a5,-24(s0)
 59c:	a819                	j	5b2 <set_gpio_pin_irq_type+0x92>
 59e:	fdc42783          	lw	a5,-36(s0)
 5a2:	4705                	li	a4,1
 5a4:	00f717b3          	sll	a5,a4,a5
 5a8:	fe842703          	lw	a4,-24(s0)
 5ac:	8fd9                	or	a5,a5,a4
 5ae:	fef42423          	sw	a5,-24(s0)
 5b2:	1a1017b7          	lui	a5,0x1a101
 5b6:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
 5b8:	fec42703          	lw	a4,-20(s0)
 5bc:	c398                	sw	a4,0(a5)
 5be:	1a1017b7          	lui	a5,0x1a101
 5c2:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
 5c4:	fe842703          	lw	a4,-24(s0)
 5c8:	c398                	sw	a4,0(a5)
 5ca:	0001                	nop
 5cc:	5432                	lw	s0,44(sp)
 5ce:	6145                	add	sp,sp,48
 5d0:	8082                	ret

000005d2 <get_gpio_irq_status>:
 5d2:	1141                	add	sp,sp,-16
 5d4:	c622                	sw	s0,12(sp)
 5d6:	0800                	add	s0,sp,16
 5d8:	1a1017b7          	lui	a5,0x1a101
 5dc:	07e1                	add	a5,a5,24 # 1a101018 <_stack_start+0x19ff9018>
 5de:	439c                	lw	a5,0(a5)
 5e0:	853e                	mv	a0,a5
 5e2:	4432                	lw	s0,12(sp)
 5e4:	0141                	add	sp,sp,16
 5e6:	8082                	ret

000005e8 <uart_set_cfg>:
 5e8:	1101                	add	sp,sp,-32
 5ea:	ce22                	sw	s0,28(sp)
 5ec:	1000                	add	s0,sp,32
 5ee:	fea42623          	sw	a0,-20(s0)
 5f2:	87ae                	mv	a5,a1
 5f4:	fef41523          	sh	a5,-22(s0)
 5f8:	1a1077b7          	lui	a5,0x1a107
 5fc:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 5fe:	4398                	lw	a4,0(a5)
 600:	1a1077b7          	lui	a5,0x1a107
 604:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 606:	00276713          	or	a4,a4,2
 60a:	c398                	sw	a4,0(a5)
 60c:	1a1007b7          	lui	a5,0x1a100
 610:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
 612:	08300713          	li	a4,131
 616:	c398                	sw	a4,0(a5)
 618:	fea45783          	lhu	a5,-22(s0)
 61c:	83a1                	srl	a5,a5,0x8
 61e:	07c2                	sll	a5,a5,0x10
 620:	83c1                	srl	a5,a5,0x10
 622:	873e                	mv	a4,a5
 624:	1a1007b7          	lui	a5,0x1a100
 628:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 62a:	0ff77713          	zext.b	a4,a4
 62e:	c398                	sw	a4,0(a5)
 630:	fea45703          	lhu	a4,-22(s0)
 634:	1a1007b7          	lui	a5,0x1a100
 638:	0ff77713          	zext.b	a4,a4
 63c:	c398                	sw	a4,0(a5)
 63e:	1a1007b7          	lui	a5,0x1a100
 642:	07a1                	add	a5,a5,8 # 1a100008 <_stack_start+0x19ff8008>
 644:	0a700713          	li	a4,167
 648:	c398                	sw	a4,0(a5)
 64a:	1a1007b7          	lui	a5,0x1a100
 64e:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
 650:	470d                	li	a4,3
 652:	c398                	sw	a4,0(a5)
 654:	1a1007b7          	lui	a5,0x1a100
 658:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 65a:	439c                	lw	a5,0(a5)
 65c:	0f07f713          	and	a4,a5,240
 660:	1a1007b7          	lui	a5,0x1a100
 664:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
 666:	00276713          	or	a4,a4,2
 66a:	c398                	sw	a4,0(a5)
 66c:	0001                	nop
 66e:	4472                	lw	s0,28(sp)
 670:	6105                	add	sp,sp,32
 672:	8082                	ret

00000674 <uart_send>:
 674:	7179                	add	sp,sp,-48
 676:	d622                	sw	s0,44(sp)
 678:	1800                	add	s0,sp,48
 67a:	fca42e23          	sw	a0,-36(s0)
 67e:	fcb42c23          	sw	a1,-40(s0)
 682:	a891                	j	6d6 <uart_send+0x62>
 684:	0001                	nop
 686:	1a1007b7          	lui	a5,0x1a100
 68a:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 68c:	439c                	lw	a5,0(a5)
 68e:	0207f793          	and	a5,a5,32
 692:	dbf5                	beqz	a5,686 <uart_send+0x12>
 694:	fe042623          	sw	zero,-20(s0)
 698:	a035                	j	6c4 <uart_send+0x50>
 69a:	fdc42783          	lw	a5,-36(s0)
 69e:	00178713          	add	a4,a5,1
 6a2:	fce42e23          	sw	a4,-36(s0)
 6a6:	0007c703          	lbu	a4,0(a5)
 6aa:	1a1007b7          	lui	a5,0x1a100
 6ae:	c398                	sw	a4,0(a5)
 6b0:	fd842783          	lw	a5,-40(s0)
 6b4:	17fd                	add	a5,a5,-1 # 1a0fffff <_stack_start+0x19ff7fff>
 6b6:	fcf42c23          	sw	a5,-40(s0)
 6ba:	fec42783          	lw	a5,-20(s0)
 6be:	0785                	add	a5,a5,1
 6c0:	fef42623          	sw	a5,-20(s0)
 6c4:	fec42703          	lw	a4,-20(s0)
 6c8:	03f00793          	li	a5,63
 6cc:	00e7e563          	bltu	a5,a4,6d6 <uart_send+0x62>
 6d0:	fd842783          	lw	a5,-40(s0)
 6d4:	f3f9                	bnez	a5,69a <uart_send+0x26>
 6d6:	fd842783          	lw	a5,-40(s0)
 6da:	f7cd                	bnez	a5,684 <uart_send+0x10>
 6dc:	0001                	nop
 6de:	0001                	nop
 6e0:	5432                	lw	s0,44(sp)
 6e2:	6145                	add	sp,sp,48
 6e4:	8082                	ret

000006e6 <uart_getchar>:
 6e6:	1141                	add	sp,sp,-16
 6e8:	c622                	sw	s0,12(sp)
 6ea:	0800                	add	s0,sp,16
 6ec:	0001                	nop
 6ee:	1a1007b7          	lui	a5,0x1a100
 6f2:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 6f4:	439c                	lw	a5,0(a5)
 6f6:	0017f713          	and	a4,a5,1
 6fa:	4785                	li	a5,1
 6fc:	fef719e3          	bne	a4,a5,6ee <uart_getchar+0x8>
 700:	1a1007b7          	lui	a5,0x1a100
 704:	439c                	lw	a5,0(a5)
 706:	0ff7f793          	zext.b	a5,a5
 70a:	853e                	mv	a0,a5
 70c:	4432                	lw	s0,12(sp)
 70e:	0141                	add	sp,sp,16
 710:	8082                	ret

00000712 <uart_sendchar>:
 712:	1101                	add	sp,sp,-32
 714:	ce22                	sw	s0,28(sp)
 716:	1000                	add	s0,sp,32
 718:	87aa                	mv	a5,a0
 71a:	fef407a3          	sb	a5,-17(s0)
 71e:	0001                	nop
 720:	1a1007b7          	lui	a5,0x1a100
 724:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 726:	439c                	lw	a5,0(a5)
 728:	0207f793          	and	a5,a5,32
 72c:	dbf5                	beqz	a5,720 <uart_sendchar+0xe>
 72e:	1a1007b7          	lui	a5,0x1a100
 732:	fef44703          	lbu	a4,-17(s0)
 736:	c398                	sw	a4,0(a5)
 738:	0001                	nop
 73a:	4472                	lw	s0,28(sp)
 73c:	6105                	add	sp,sp,32
 73e:	8082                	ret

00000740 <uart_wait_tx_done>:
 740:	1141                	add	sp,sp,-16
 742:	c622                	sw	s0,12(sp)
 744:	0800                	add	s0,sp,16
 746:	0001                	nop
 748:	1a1007b7          	lui	a5,0x1a100
 74c:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
 74e:	439c                	lw	a5,0(a5)
 750:	0407f793          	and	a5,a5,64
 754:	dbf5                	beqz	a5,748 <uart_wait_tx_done+0x8>
 756:	0001                	nop
 758:	0001                	nop
 75a:	4432                	lw	s0,12(sp)
 75c:	0141                	add	sp,sp,16
 75e:	8082                	ret

00000760 <exit>:
 760:	1101                	add	sp,sp,-32
 762:	ce06                	sw	ra,28(sp)
 764:	cc22                	sw	s0,24(sp)
 766:	1000                	add	s0,sp,32
 768:	fea42623          	sw	a0,-20(s0)
 76c:	fec42503          	lw	a0,-20(s0)
 770:	2011                	jal	774 <eoc>
 772:	a001                	j	772 <exit+0x12>

00000774 <eoc>:
 774:	1101                	add	sp,sp,-32
 776:	ce06                	sw	ra,28(sp)
 778:	cc22                	sw	s0,24(sp)
 77a:	1000                	add	s0,sp,32
 77c:	fea42623          	sw	a0,-20(s0)
 780:	fec42783          	lw	a5,-20(s0)
 784:	c799                	beqz	a5,792 <eoc+0x1e>
 786:	1a1077b7          	lui	a5,0x1a107
 78a:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
 78c:	4705                	li	a4,1
 78e:	c398                	sw	a4,0(a5)
 790:	a031                	j	79c <eoc+0x28>
 792:	1a1077b7          	lui	a5,0x1a107
 796:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
 798:	0007a023          	sw	zero,0(a5)
 79c:	1a1077b7          	lui	a5,0x1a107
 7a0:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 7a2:	4398                	lw	a4,0(a5)
 7a4:	1a1077b7          	lui	a5,0x1a107
 7a8:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
 7aa:	00476713          	or	a4,a4,4
 7ae:	c398                	sw	a4,0(a5)
 7b0:	4585                	li	a1,1
 7b2:	4521                	li	a0,8
 7b4:	3ea1                	jal	30c <set_pin_function>
 7b6:	4585                	li	a1,1
 7b8:	4521                	li	a0,8
 7ba:	3ef1                	jal	396 <set_gpio_pin_direction>
 7bc:	4585                	li	a1,1
 7be:	4521                	li	a0,8
 7c0:	31a5                	jal	428 <set_gpio_pin_value>
 7c2:	0001                	nop
 7c4:	40f2                	lw	ra,28(sp)
 7c6:	4462                	lw	s0,24(sp)
 7c8:	6105                	add	sp,sp,32
 7ca:	8082                	ret

000007cc <sleep_busy>:
 7cc:	7179                	add	sp,sp,-48
 7ce:	d622                	sw	s0,44(sp)
 7d0:	1800                	add	s0,sp,48
 7d2:	fca42e23          	sw	a0,-36(s0)
 7d6:	fe042623          	sw	zero,-20(s0)
 7da:	a039                	j	7e8 <sleep_busy+0x1c>
 7dc:	0001                	nop
 7de:	fec42783          	lw	a5,-20(s0)
 7e2:	0785                	add	a5,a5,1
 7e4:	fef42623          	sw	a5,-20(s0)
 7e8:	fdc42783          	lw	a5,-36(s0)
 7ec:	fec42703          	lw	a4,-20(s0)
 7f0:	fef746e3          	blt	a4,a5,7dc <sleep_busy+0x10>
 7f4:	0001                	nop
 7f6:	0001                	nop
 7f8:	5432                	lw	s0,44(sp)
 7fa:	6145                	add	sp,sp,48
 7fc:	8082                	ret

000007fe <ISR_I2C>:
 7fe:	1141                	add	sp,sp,-16
 800:	c622                	sw	s0,12(sp)
 802:	0800                	add	s0,sp,16
 804:	a001                	j	804 <ISR_I2C+0x6>

00000806 <ISR_UART>:
 806:	1141                	add	sp,sp,-16
 808:	c622                	sw	s0,12(sp)
 80a:	0800                	add	s0,sp,16
 80c:	a001                	j	80c <ISR_UART+0x6>

0000080e <ISR_GPIO>:
 80e:	1141                	add	sp,sp,-16
 810:	c622                	sw	s0,12(sp)
 812:	0800                	add	s0,sp,16
 814:	a001                	j	814 <ISR_GPIO+0x6>

00000816 <ISR_SPIM0>:
 816:	1141                	add	sp,sp,-16
 818:	c622                	sw	s0,12(sp)
 81a:	0800                	add	s0,sp,16
 81c:	a001                	j	81c <ISR_SPIM0+0x6>

0000081e <ISR_SPIM1>:
 81e:	1141                	add	sp,sp,-16
 820:	c622                	sw	s0,12(sp)
 822:	0800                	add	s0,sp,16
 824:	a001                	j	824 <ISR_SPIM1+0x6>

00000826 <ISR_TA_OVF>:
 826:	1141                	add	sp,sp,-16
 828:	c622                	sw	s0,12(sp)
 82a:	0800                	add	s0,sp,16
 82c:	a001                	j	82c <ISR_TA_OVF+0x6>

0000082e <ISR_TA_CMP>:
 82e:	1141                	add	sp,sp,-16
 830:	c622                	sw	s0,12(sp)
 832:	0800                	add	s0,sp,16
 834:	a001                	j	834 <ISR_TA_CMP+0x6>

00000836 <ISR_TB_OVF>:
 836:	1141                	add	sp,sp,-16
 838:	c622                	sw	s0,12(sp)
 83a:	0800                	add	s0,sp,16
 83c:	a001                	j	83c <ISR_TB_OVF+0x6>

0000083e <ISR_TB_CMP>:
 83e:	1141                	add	sp,sp,-16
 840:	c622                	sw	s0,12(sp)
 842:	0800                	add	s0,sp,16
 844:	a001                	j	844 <ISR_TB_CMP+0x6>

00000846 <default_exception_handler_c>:
 846:	1141                	add	sp,sp,-16
 848:	c622                	sw	s0,12(sp)
 84a:	0800                	add	s0,sp,16
 84c:	a001                	j	84c <default_exception_handler_c+0x6>

0000084e <illegal_insn_handler_c>:
 84e:	1141                	add	sp,sp,-16
 850:	c622                	sw	s0,12(sp)
 852:	0800                	add	s0,sp,16
 854:	a001                	j	854 <illegal_insn_handler_c+0x6>

00000856 <ecall_insn_handler_c>:
 856:	1141                	add	sp,sp,-16
 858:	c622                	sw	s0,12(sp)
 85a:	0800                	add	s0,sp,16
 85c:	a001                	j	85c <ecall_insn_handler_c+0x6>

0000085e <__CTOR_LIST__>:
	...

00000866 <__CTOR_END__>:
	...

Disassembly of section .text.__libc_init_array:

00000870 <__libc_init_array>:
 870:	ff010113          	add	sp,sp,-16
 874:	00812423          	sw	s0,8(sp)
 878:	001007b7          	lui	a5,0x100
 87c:	00100437          	lui	s0,0x100
 880:	01212023          	sw	s2,0(sp)
 884:	00078793          	mv	a5,a5
 888:	00040713          	mv	a4,s0
 88c:	00112623          	sw	ra,12(sp)
 890:	00912223          	sw	s1,4(sp)
 894:	40e78933          	sub	s2,a5,a4
 898:	02e78263          	beq	a5,a4,8bc <__libc_init_array+0x4c>
 89c:	40295913          	sra	s2,s2,0x2
 8a0:	00040413          	mv	s0,s0
 8a4:	00000493          	li	s1,0
 8a8:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
 8ac:	00148493          	add	s1,s1,1
 8b0:	00440413          	add	s0,s0,4
 8b4:	000780e7          	jalr	a5 # 100000 <__init_array_end>
 8b8:	ff24e8e3          	bltu	s1,s2,8a8 <__libc_init_array+0x38>
 8bc:	00100437          	lui	s0,0x100
 8c0:	001007b7          	lui	a5,0x100
 8c4:	00078793          	mv	a5,a5
 8c8:	00040713          	mv	a4,s0
 8cc:	40e78933          	sub	s2,a5,a4
 8d0:	40295913          	sra	s2,s2,0x2
 8d4:	02e78063          	beq	a5,a4,8f4 <__libc_init_array+0x84>
 8d8:	00040413          	mv	s0,s0
 8dc:	00000493          	li	s1,0
 8e0:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
 8e4:	00148493          	add	s1,s1,1
 8e8:	00440413          	add	s0,s0,4
 8ec:	000780e7          	jalr	a5 # 100000 <__init_array_end>
 8f0:	ff24e8e3          	bltu	s1,s2,8e0 <__libc_init_array+0x70>
 8f4:	00c12083          	lw	ra,12(sp)
 8f8:	00812403          	lw	s0,8(sp)
 8fc:	00412483          	lw	s1,4(sp)
 900:	00012903          	lw	s2,0(sp)
 904:	01010113          	add	sp,sp,16
 908:	00008067          	ret

Disassembly of section .rodata:

00100000 <__init_array_end>:
  100000:	6548                	.2byte	0x6548
  100002:	6c6c                	.2byte	0x6c6c
  100004:	6f77206f          	j	172efa <_stack_start+0x6aefa>
  100008:	6c72                	.2byte	0x6c72
  10000a:	2164                	.2byte	0x2164
  10000c:	000a                	.2byte	0xa

Disassembly of section .shbss:

0010000e <.shbss>:
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
