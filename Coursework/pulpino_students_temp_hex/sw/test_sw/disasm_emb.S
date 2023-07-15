
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
      dc:	0c8d0d13          	add	s10,s10,200 # 1001a0 <_bss_end>
      e0:	00100d97          	auipc	s11,0x100
      e4:	0c0d8d93          	add	s11,s11,192 # 1001a0 <_bss_end>
      e8:	01bd5763          	bge	s10,s11,f6 <zero_loop_end>

000000ec <zero_loop>:
      ec:	000d2023          	sw	zero,0(s10)
      f0:	0d11                	add	s10,s10,4
      f2:	ffaddde3          	bge	s11,s10,ec <zero_loop>

000000f6 <zero_loop_end>:
      f6:	0fe020ef          	jal	21f4 <__DTOR_END__>

000000fa <main_entry>:
      fa:	4501                	li	a0,0
      fc:	4585                	li	a1,1
      fe:	728000ef          	jal	826 <uart_set_cfg>
     102:	4501                	li	a0,0
     104:	4581                	li	a1,0
     106:	27a000ef          	jal	380 <main>
     10a:	842a                	mv	s0,a0
     10c:	073000ef          	jal	97e <uart_wait_tx_done>
     110:	8522                	mv	a0,s0
     112:	08d000ef          	jal	99e <exit>

00000116 <ISR_I2C_ASM>:
     116:	711d                	add	sp,sp,-96
     118:	ce86                	sw	ra,92(sp)
     11a:	0d8000ef          	jal	1f2 <store_regs>
     11e:	00000097          	auipc	ra,0x0
     122:	11e08093          	add	ra,ra,286 # 23c <end_except>
     126:	2360106f          	j	135c <ISR_I2C>

0000012a <ISR_UART_ASM>:
     12a:	711d                	add	sp,sp,-96
     12c:	ce86                	sw	ra,92(sp)
     12e:	0c4000ef          	jal	1f2 <store_regs>
     132:	00000097          	auipc	ra,0x0
     136:	10a08093          	add	ra,ra,266 # 23c <end_except>
     13a:	22a0106f          	j	1364 <ISR_UART>

0000013e <ISR_GPIO_ASM>:
     13e:	711d                	add	sp,sp,-96
     140:	ce86                	sw	ra,92(sp)
     142:	0b0000ef          	jal	1f2 <store_regs>
     146:	00000097          	auipc	ra,0x0
     14a:	0f608093          	add	ra,ra,246 # 23c <end_except>
     14e:	21e0106f          	j	136c <ISR_GPIO>

00000152 <ISR_SPIM0_ASM>:
     152:	711d                	add	sp,sp,-96
     154:	ce86                	sw	ra,92(sp)
     156:	09c000ef          	jal	1f2 <store_regs>
     15a:	00000097          	auipc	ra,0x0
     15e:	0e208093          	add	ra,ra,226 # 23c <end_except>
     162:	2120106f          	j	1374 <ISR_SPIM0>

00000166 <ISR_SPIM1_ASM>:
     166:	711d                	add	sp,sp,-96
     168:	ce86                	sw	ra,92(sp)
     16a:	088000ef          	jal	1f2 <store_regs>
     16e:	00000097          	auipc	ra,0x0
     172:	0ce08093          	add	ra,ra,206 # 23c <end_except>
     176:	2060106f          	j	137c <ISR_SPIM1>

0000017a <ISR_TA_CMP_ASM>:
     17a:	711d                	add	sp,sp,-96
     17c:	ce86                	sw	ra,92(sp)
     17e:	074000ef          	jal	1f2 <store_regs>
     182:	00000097          	auipc	ra,0x0
     186:	0ba08093          	add	ra,ra,186 # 23c <end_except>
     18a:	2020106f          	j	138c <ISR_TA_CMP>

0000018e <ISR_TA_OVF_ASM>:
     18e:	711d                	add	sp,sp,-96
     190:	ce86                	sw	ra,92(sp)
     192:	060000ef          	jal	1f2 <store_regs>
     196:	00000097          	auipc	ra,0x0
     19a:	0a608093          	add	ra,ra,166 # 23c <end_except>
     19e:	1e60106f          	j	1384 <ISR_TA_OVF>

000001a2 <ISR_TB_CMP_ASM>:
     1a2:	711d                	add	sp,sp,-96
     1a4:	ce86                	sw	ra,92(sp)
     1a6:	04c000ef          	jal	1f2 <store_regs>
     1aa:	00000097          	auipc	ra,0x0
     1ae:	09208093          	add	ra,ra,146 # 23c <end_except>
     1b2:	1ea0106f          	j	139c <ISR_TB_CMP>

000001b6 <ISR_TB_OVF_ASM>:
     1b6:	711d                	add	sp,sp,-96
     1b8:	ce86                	sw	ra,92(sp)
     1ba:	038000ef          	jal	1f2 <store_regs>
     1be:	00000097          	auipc	ra,0x0
     1c2:	07e08093          	add	ra,ra,126 # 23c <end_except>
     1c6:	1ce0106f          	j	1394 <ISR_TB_OVF>

000001ca <illegal_insn_handler>:
     1ca:	711d                	add	sp,sp,-96
     1cc:	ce86                	sw	ra,92(sp)
     1ce:	024000ef          	jal	1f2 <store_regs>
     1d2:	00000097          	auipc	ra,0x0
     1d6:	06a08093          	add	ra,ra,106 # 23c <end_except>
     1da:	22c0106f          	j	1406 <illegal_insn_handler_c>

000001de <ecall_insn_handler>:
     1de:	711d                	add	sp,sp,-96
     1e0:	ce86                	sw	ra,92(sp)
     1e2:	010000ef          	jal	1f2 <store_regs>
     1e6:	00000097          	auipc	ra,0x0
     1ea:	05608093          	add	ra,ra,86 # 23c <end_except>
     1ee:	2200106f          	j	140e <ecall_insn_handler_c>

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

0000028c <hex_init>:
     28c:	1141                	add	sp,sp,-16
     28e:	c622                	sw	s0,12(sp)
     290:	0800                	add	s0,sp,16
     292:	1a1077b7          	lui	a5,0x1a107
     296:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     298:	4398                	lw	a4,0(a5)
     29a:	1a1077b7          	lui	a5,0x1a107
     29e:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     2a0:	10076713          	or	a4,a4,256
     2a4:	c398                	sw	a4,0(a5)
     2a6:	0001                	nop
     2a8:	4432                	lw	s0,12(sp)
     2aa:	0141                	add	sp,sp,16
     2ac:	8082                	ret

000002ae <hex_out>:
     2ae:	1101                	add	sp,sp,-32
     2b0:	ce22                	sw	s0,28(sp)
     2b2:	1000                	add	s0,sp,32
     2b4:	fea42623          	sw	a0,-20(s0)
     2b8:	1a1087b7          	lui	a5,0x1a108
     2bc:	fec42703          	lw	a4,-20(s0)
     2c0:	4318                	lw	a4,0(a4)
     2c2:	c398                	sw	a4,0(a5)
     2c4:	1a1087b7          	lui	a5,0x1a108
     2c8:	0791                	add	a5,a5,4 # 1a108004 <_stack_start+0x1a000004>
     2ca:	fec42703          	lw	a4,-20(s0)
     2ce:	4358                	lw	a4,4(a4)
     2d0:	c398                	sw	a4,0(a5)
     2d2:	0001                	nop
     2d4:	4472                	lw	s0,28(sp)
     2d6:	6105                	add	sp,sp,32
     2d8:	8082                	ret

000002da <temp_init>:
     2da:	1101                	add	sp,sp,-32
     2dc:	ce22                	sw	s0,28(sp)
     2de:	1000                	add	s0,sp,32
     2e0:	1a1077b7          	lui	a5,0x1a107
     2e4:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     2e6:	4398                	lw	a4,0(a5)
     2e8:	1a1077b7          	lui	a5,0x1a107
     2ec:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     2ee:	20076713          	or	a4,a4,512
     2f2:	c398                	sw	a4,0(a5)
     2f4:	004c57b7          	lui	a5,0x4c5
     2f8:	b4078793          	add	a5,a5,-1216 # 4c4b40 <_stack_start+0x3bcb40>
     2fc:	fef42623          	sw	a5,-20(s0)
     300:	a031                	j	30c <temp_init+0x32>
     302:	fec42783          	lw	a5,-20(s0)
     306:	17fd                	add	a5,a5,-1
     308:	fef42623          	sw	a5,-20(s0)
     30c:	fec42783          	lw	a5,-20(s0)
     310:	fef049e3          	bgtz	a5,302 <temp_init+0x28>
     314:	0001                	nop
     316:	0001                	nop
     318:	4472                	lw	s0,28(sp)
     31a:	6105                	add	sp,sp,32
     31c:	8082                	ret

0000031e <temp_get>:
     31e:	1101                	add	sp,sp,-32
     320:	ce06                	sw	ra,28(sp)
     322:	cc22                	sw	s0,24(sp)
     324:	1000                	add	s0,sp,32
     326:	1a1097b7          	lui	a5,0x1a109
     32a:	439c                	lw	a5,0(a5)
     32c:	fef42623          	sw	a5,-20(s0)
     330:	fec42783          	lw	a5,-20(s0)
     334:	87b1                	sra	a5,a5,0xc
     336:	8b85                	and	a5,a5,1
     338:	fef42423          	sw	a5,-24(s0)
     33c:	fec42703          	lw	a4,-20(s0)
     340:	6785                	lui	a5,0x1
     342:	17fd                	add	a5,a5,-1 # fff <qprint+0x227>
     344:	8ff9                	and	a5,a5,a4
     346:	fef42623          	sw	a5,-20(s0)
     34a:	fe842783          	lw	a5,-24(s0)
     34e:	c799                	beqz	a5,35c <temp_get+0x3e>
     350:	fec42703          	lw	a4,-20(s0)
     354:	77f9                	lui	a5,0xffffe
     356:	97ba                	add	a5,a5,a4
     358:	fef42623          	sw	a5,-20(s0)
     35c:	fec42503          	lw	a0,-20(s0)
     360:	525010ef          	jal	2084 <__floatsisf>
     364:	872a                	mv	a4,a0
     366:	001007b7          	lui	a5,0x100
     36a:	0447a583          	lw	a1,68(a5) # 100044 <__init_array_end+0x44>
     36e:	853a                	mv	a0,a4
     370:	0a8010ef          	jal	1418 <__divsf3>
     374:	87aa                	mv	a5,a0
     376:	853e                	mv	a0,a5
     378:	40f2                	lw	ra,28(sp)
     37a:	4462                	lw	s0,24(sp)
     37c:	6105                	add	sp,sp,32
     37e:	8082                	ret

00000380 <main>:
     380:	7139                	add	sp,sp,-64
     382:	de06                	sw	ra,60(sp)
     384:	dc22                	sw	s0,56(sp)
     386:	da26                	sw	s1,52(sp)
     388:	0080                	add	s0,sp,64
     38a:	030010ef          	jal	13ba <start_timer>
     38e:	45ed                	li	a1,27
     390:	4501                	li	a0,0
     392:	2951                	jal	826 <uart_set_cfg>
     394:	3de5                	jal	28c <hex_init>
     396:	3791                	jal	2da <temp_init>
     398:	001007b7          	lui	a5,0x100
     39c:	00078513          	mv	a0,a5
     3a0:	515000ef          	jal	10b4 <puts>
     3a4:	02faf7b7          	lui	a5,0x2faf
     3a8:	08078793          	add	a5,a5,128 # 2faf080 <_stack_start+0x2ea7080>
     3ac:	fef42223          	sw	a5,-28(s0)
     3b0:	4795                	li	a5,5
     3b2:	fef42023          	sw	a5,-32(s0)
     3b6:	fe042623          	sw	zero,-20(s0)
     3ba:	7eb000ef          	jal	13a4 <reset_timer>
     3be:	3785                	jal	31e <temp_get>
     3c0:	fea42423          	sw	a0,-24(s0)
     3c4:	4485                	li	s1,1
     3c6:	00000593          	li	a1,0
     3ca:	fe842503          	lw	a0,-24(s0)
     3ce:	37a010ef          	jal	1748 <__lesf2>
     3d2:	87aa                	mv	a5,a0
     3d4:	0007c363          	bltz	a5,3da <main+0x5a>
     3d8:	4481                	li	s1,0
     3da:	0ff4f793          	zext.b	a5,s1
     3de:	fcf42e23          	sw	a5,-36(s0)
     3e2:	fdc42783          	lw	a5,-36(s0)
     3e6:	cb81                	beqz	a5,3f6 <main+0x76>
     3e8:	fe842703          	lw	a4,-24(s0)
     3ec:	800007b7          	lui	a5,0x80000
     3f0:	8fb9                	xor	a5,a5,a4
     3f2:	fef42423          	sw	a5,-24(s0)
     3f6:	fe842503          	lw	a0,-24(s0)
     3fa:	41b010ef          	jal	2014 <__fixsfsi>
     3fe:	87aa                	mv	a5,a0
     400:	fcf42c23          	sw	a5,-40(s0)
     404:	fd842503          	lw	a0,-40(s0)
     408:	47d010ef          	jal	2084 <__floatsisf>
     40c:	87aa                	mv	a5,a0
     40e:	85be                	mv	a1,a5
     410:	fe842503          	lw	a0,-24(s0)
     414:	744010ef          	jal	1b58 <__subsf3>
     418:	87aa                	mv	a5,a0
     41a:	873e                	mv	a4,a5
     41c:	001007b7          	lui	a5,0x100
     420:	0487a583          	lw	a1,72(a5) # 100048 <__init_array_end+0x48>
     424:	853a                	mv	a0,a4
     426:	3fe010ef          	jal	1824 <__mulsf3>
     42a:	87aa                	mv	a5,a0
     42c:	853e                	mv	a0,a5
     42e:	3e7010ef          	jal	2014 <__fixsfsi>
     432:	87aa                	mv	a5,a0
     434:	fcf42a23          	sw	a5,-44(s0)
     438:	fd442703          	lw	a4,-44(s0)
     43c:	47a9                	li	a5,10
     43e:	02f767b3          	rem	a5,a4,a5
     442:	0ff7f793          	zext.b	a5,a5
     446:	03078793          	add	a5,a5,48
     44a:	0ff7f793          	zext.b	a5,a5
     44e:	fcf40623          	sb	a5,-52(s0)
     452:	fd442703          	lw	a4,-44(s0)
     456:	47a9                	li	a5,10
     458:	02f74733          	div	a4,a4,a5
     45c:	47a9                	li	a5,10
     45e:	02f767b3          	rem	a5,a4,a5
     462:	0ff7f793          	zext.b	a5,a5
     466:	03078793          	add	a5,a5,48
     46a:	0ff7f793          	zext.b	a5,a5
     46e:	fcf406a3          	sb	a5,-51(s0)
     472:	02e00793          	li	a5,46
     476:	fcf40723          	sb	a5,-50(s0)
     47a:	fd842703          	lw	a4,-40(s0)
     47e:	47a9                	li	a5,10
     480:	02f767b3          	rem	a5,a4,a5
     484:	0ff7f793          	zext.b	a5,a5
     488:	03078793          	add	a5,a5,48
     48c:	0ff7f793          	zext.b	a5,a5
     490:	fcf407a3          	sb	a5,-49(s0)
     494:	fd842703          	lw	a4,-40(s0)
     498:	47a9                	li	a5,10
     49a:	02f74733          	div	a4,a4,a5
     49e:	47a9                	li	a5,10
     4a0:	02f767b3          	rem	a5,a4,a5
     4a4:	0ff7f793          	zext.b	a5,a5
     4a8:	03078793          	add	a5,a5,48
     4ac:	0ff7f793          	zext.b	a5,a5
     4b0:	fcf40823          	sb	a5,-48(s0)
     4b4:	fd842703          	lw	a4,-40(s0)
     4b8:	06400793          	li	a5,100
     4bc:	02f74733          	div	a4,a4,a5
     4c0:	47a9                	li	a5,10
     4c2:	02f767b3          	rem	a5,a4,a5
     4c6:	0ff7f793          	zext.b	a5,a5
     4ca:	03078793          	add	a5,a5,48
     4ce:	0ff7f793          	zext.b	a5,a5
     4d2:	fcf408a3          	sb	a5,-47(s0)
     4d6:	fdc42783          	lw	a5,-36(s0)
     4da:	c781                	beqz	a5,4e2 <main+0x162>
     4dc:	02d00793          	li	a5,45
     4e0:	a019                	j	4e6 <main+0x166>
     4e2:	02000793          	li	a5,32
     4e6:	fcf40923          	sb	a5,-46(s0)
     4ea:	02000793          	li	a5,32
     4ee:	fcf409a3          	sb	a5,-45(s0)
     4f2:	fcc40793          	add	a5,s0,-52
     4f6:	853e                	mv	a0,a5
     4f8:	3b5d                	jal	2ae <hex_out>
     4fa:	fec42703          	lw	a4,-20(s0)
     4fe:	fe042783          	lw	a5,-32(s0)
     502:	02f767b3          	rem	a5,a4,a5
     506:	e785                	bnez	a5,52e <main+0x1ae>
     508:	fdc42783          	lw	a5,-36(s0)
     50c:	c781                	beqz	a5,514 <main+0x194>
     50e:	02d00793          	li	a5,45
     512:	a019                	j	518 <main+0x198>
     514:	02b00793          	li	a5,43
     518:	fd442683          	lw	a3,-44(s0)
     51c:	fd842603          	lw	a2,-40(s0)
     520:	85be                	mv	a1,a5
     522:	001007b7          	lui	a5,0x100
     526:	01878513          	add	a0,a5,24 # 100018 <__init_array_end+0x18>
     52a:	33b000ef          	jal	1064 <printf>
     52e:	fec42783          	lw	a5,-20(s0)
     532:	0785                	add	a5,a5,1
     534:	fef42623          	sw	a5,-20(s0)
     538:	0001                	nop
     53a:	6b1000ef          	jal	13ea <get_time>
     53e:	872a                	mv	a4,a0
     540:	fe442783          	lw	a5,-28(s0)
     544:	fef74be3          	blt	a4,a5,53a <main+0x1ba>
     548:	bd8d                	j	3ba <main+0x3a>

0000054a <set_pin_function>:
     54a:	7179                	add	sp,sp,-48
     54c:	d622                	sw	s0,44(sp)
     54e:	1800                	add	s0,sp,48
     550:	fca42e23          	sw	a0,-36(s0)
     554:	fcb42c23          	sw	a1,-40(s0)
     558:	1a1077b7          	lui	a5,0x1a107
     55c:	439c                	lw	a5,0(a5)
     55e:	fef42623          	sw	a5,-20(s0)
     562:	fdc42783          	lw	a5,-36(s0)
     566:	4705                	li	a4,1
     568:	00f717b3          	sll	a5,a4,a5
     56c:	fff7c713          	not	a4,a5
     570:	fec42783          	lw	a5,-20(s0)
     574:	8ff9                	and	a5,a5,a4
     576:	fef42623          	sw	a5,-20(s0)
     57a:	fdc42783          	lw	a5,-36(s0)
     57e:	fd842703          	lw	a4,-40(s0)
     582:	00f71733          	sll	a4,a4,a5
     586:	fec42783          	lw	a5,-20(s0)
     58a:	8fd9                	or	a5,a5,a4
     58c:	fef42623          	sw	a5,-20(s0)
     590:	1a1077b7          	lui	a5,0x1a107
     594:	fec42703          	lw	a4,-20(s0)
     598:	c398                	sw	a4,0(a5)
     59a:	0001                	nop
     59c:	5432                	lw	s0,44(sp)
     59e:	6145                	add	sp,sp,48
     5a0:	8082                	ret

000005a2 <get_pin_function>:
     5a2:	7179                	add	sp,sp,-48
     5a4:	d622                	sw	s0,44(sp)
     5a6:	1800                	add	s0,sp,48
     5a8:	fca42e23          	sw	a0,-36(s0)
     5ac:	1a1077b7          	lui	a5,0x1a107
     5b0:	439c                	lw	a5,0(a5)
     5b2:	fef42623          	sw	a5,-20(s0)
     5b6:	fec42703          	lw	a4,-20(s0)
     5ba:	fdc42783          	lw	a5,-36(s0)
     5be:	40f757b3          	sra	a5,a4,a5
     5c2:	8b85                	and	a5,a5,1
     5c4:	fef42623          	sw	a5,-20(s0)
     5c8:	fec42783          	lw	a5,-20(s0)
     5cc:	853e                	mv	a0,a5
     5ce:	5432                	lw	s0,44(sp)
     5d0:	6145                	add	sp,sp,48
     5d2:	8082                	ret

000005d4 <set_gpio_pin_direction>:
     5d4:	7179                	add	sp,sp,-48
     5d6:	d622                	sw	s0,44(sp)
     5d8:	1800                	add	s0,sp,48
     5da:	fca42e23          	sw	a0,-36(s0)
     5de:	fcb42c23          	sw	a1,-40(s0)
     5e2:	1a1017b7          	lui	a5,0x1a101
     5e6:	439c                	lw	a5,0(a5)
     5e8:	fef42623          	sw	a5,-20(s0)
     5ec:	fd842783          	lw	a5,-40(s0)
     5f0:	ef91                	bnez	a5,60c <set_gpio_pin_direction+0x38>
     5f2:	fdc42783          	lw	a5,-36(s0)
     5f6:	4705                	li	a4,1
     5f8:	00f717b3          	sll	a5,a4,a5
     5fc:	fff7c713          	not	a4,a5
     600:	fec42783          	lw	a5,-20(s0)
     604:	8ff9                	and	a5,a5,a4
     606:	fef42623          	sw	a5,-20(s0)
     60a:	a819                	j	620 <set_gpio_pin_direction+0x4c>
     60c:	fdc42783          	lw	a5,-36(s0)
     610:	4705                	li	a4,1
     612:	00f71733          	sll	a4,a4,a5
     616:	fec42783          	lw	a5,-20(s0)
     61a:	8fd9                	or	a5,a5,a4
     61c:	fef42623          	sw	a5,-20(s0)
     620:	1a1017b7          	lui	a5,0x1a101
     624:	fec42703          	lw	a4,-20(s0)
     628:	c398                	sw	a4,0(a5)
     62a:	0001                	nop
     62c:	5432                	lw	s0,44(sp)
     62e:	6145                	add	sp,sp,48
     630:	8082                	ret

00000632 <get_gpio_pin_direction>:
     632:	7179                	add	sp,sp,-48
     634:	d622                	sw	s0,44(sp)
     636:	1800                	add	s0,sp,48
     638:	fca42e23          	sw	a0,-36(s0)
     63c:	1a1017b7          	lui	a5,0x1a101
     640:	439c                	lw	a5,0(a5)
     642:	fef42623          	sw	a5,-20(s0)
     646:	fec42703          	lw	a4,-20(s0)
     64a:	fdc42783          	lw	a5,-36(s0)
     64e:	0786                	sll	a5,a5,0x1
     650:	40f757b3          	sra	a5,a4,a5
     654:	8b85                	and	a5,a5,1
     656:	fef42623          	sw	a5,-20(s0)
     65a:	fec42783          	lw	a5,-20(s0)
     65e:	853e                	mv	a0,a5
     660:	5432                	lw	s0,44(sp)
     662:	6145                	add	sp,sp,48
     664:	8082                	ret

00000666 <set_gpio_pin_value>:
     666:	7179                	add	sp,sp,-48
     668:	d622                	sw	s0,44(sp)
     66a:	1800                	add	s0,sp,48
     66c:	fca42e23          	sw	a0,-36(s0)
     670:	fcb42c23          	sw	a1,-40(s0)
     674:	1a1017b7          	lui	a5,0x1a101
     678:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
     67a:	439c                	lw	a5,0(a5)
     67c:	fef42623          	sw	a5,-20(s0)
     680:	fd842783          	lw	a5,-40(s0)
     684:	ef91                	bnez	a5,6a0 <set_gpio_pin_value+0x3a>
     686:	fdc42783          	lw	a5,-36(s0)
     68a:	4705                	li	a4,1
     68c:	00f717b3          	sll	a5,a4,a5
     690:	fff7c713          	not	a4,a5
     694:	fec42783          	lw	a5,-20(s0)
     698:	8ff9                	and	a5,a5,a4
     69a:	fef42623          	sw	a5,-20(s0)
     69e:	a819                	j	6b4 <set_gpio_pin_value+0x4e>
     6a0:	fdc42783          	lw	a5,-36(s0)
     6a4:	4705                	li	a4,1
     6a6:	00f71733          	sll	a4,a4,a5
     6aa:	fec42783          	lw	a5,-20(s0)
     6ae:	8fd9                	or	a5,a5,a4
     6b0:	fef42623          	sw	a5,-20(s0)
     6b4:	1a1017b7          	lui	a5,0x1a101
     6b8:	07a1                	add	a5,a5,8 # 1a101008 <_stack_start+0x19ff9008>
     6ba:	fec42703          	lw	a4,-20(s0)
     6be:	c398                	sw	a4,0(a5)
     6c0:	0001                	nop
     6c2:	5432                	lw	s0,44(sp)
     6c4:	6145                	add	sp,sp,48
     6c6:	8082                	ret

000006c8 <get_gpio_pin_value>:
     6c8:	7179                	add	sp,sp,-48
     6ca:	d622                	sw	s0,44(sp)
     6cc:	1800                	add	s0,sp,48
     6ce:	fca42e23          	sw	a0,-36(s0)
     6d2:	1a1017b7          	lui	a5,0x1a101
     6d6:	0791                	add	a5,a5,4 # 1a101004 <_stack_start+0x19ff9004>
     6d8:	439c                	lw	a5,0(a5)
     6da:	fef42623          	sw	a5,-20(s0)
     6de:	fec42703          	lw	a4,-20(s0)
     6e2:	fdc42783          	lw	a5,-36(s0)
     6e6:	40f757b3          	sra	a5,a4,a5
     6ea:	8b85                	and	a5,a5,1
     6ec:	fef42623          	sw	a5,-20(s0)
     6f0:	fec42783          	lw	a5,-20(s0)
     6f4:	853e                	mv	a0,a5
     6f6:	5432                	lw	s0,44(sp)
     6f8:	6145                	add	sp,sp,48
     6fa:	8082                	ret

000006fc <set_gpio_pin_irq_en>:
     6fc:	7179                	add	sp,sp,-48
     6fe:	d622                	sw	s0,44(sp)
     700:	1800                	add	s0,sp,48
     702:	fca42e23          	sw	a0,-36(s0)
     706:	fcb42c23          	sw	a1,-40(s0)
     70a:	1a1017b7          	lui	a5,0x1a101
     70e:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
     710:	439c                	lw	a5,0(a5)
     712:	fef42623          	sw	a5,-20(s0)
     716:	fd842783          	lw	a5,-40(s0)
     71a:	ef91                	bnez	a5,736 <set_gpio_pin_irq_en+0x3a>
     71c:	fdc42783          	lw	a5,-36(s0)
     720:	4705                	li	a4,1
     722:	00f717b3          	sll	a5,a4,a5
     726:	fff7c793          	not	a5,a5
     72a:	fec42703          	lw	a4,-20(s0)
     72e:	8ff9                	and	a5,a5,a4
     730:	fef42623          	sw	a5,-20(s0)
     734:	a819                	j	74a <set_gpio_pin_irq_en+0x4e>
     736:	fdc42783          	lw	a5,-36(s0)
     73a:	4705                	li	a4,1
     73c:	00f717b3          	sll	a5,a4,a5
     740:	fec42703          	lw	a4,-20(s0)
     744:	8fd9                	or	a5,a5,a4
     746:	fef42623          	sw	a5,-20(s0)
     74a:	1a1017b7          	lui	a5,0x1a101
     74e:	07b1                	add	a5,a5,12 # 1a10100c <_stack_start+0x19ff900c>
     750:	fec42703          	lw	a4,-20(s0)
     754:	c398                	sw	a4,0(a5)
     756:	0001                	nop
     758:	5432                	lw	s0,44(sp)
     75a:	6145                	add	sp,sp,48
     75c:	8082                	ret

0000075e <set_gpio_pin_irq_type>:
     75e:	7179                	add	sp,sp,-48
     760:	d622                	sw	s0,44(sp)
     762:	1800                	add	s0,sp,48
     764:	fca42e23          	sw	a0,-36(s0)
     768:	fcb42c23          	sw	a1,-40(s0)
     76c:	1a1017b7          	lui	a5,0x1a101
     770:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
     772:	439c                	lw	a5,0(a5)
     774:	fef42623          	sw	a5,-20(s0)
     778:	1a1017b7          	lui	a5,0x1a101
     77c:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
     77e:	439c                	lw	a5,0(a5)
     780:	fef42423          	sw	a5,-24(s0)
     784:	fd842783          	lw	a5,-40(s0)
     788:	8b85                	and	a5,a5,1
     78a:	ef91                	bnez	a5,7a6 <set_gpio_pin_irq_type+0x48>
     78c:	fdc42783          	lw	a5,-36(s0)
     790:	4705                	li	a4,1
     792:	00f717b3          	sll	a5,a4,a5
     796:	fff7c793          	not	a5,a5
     79a:	fec42703          	lw	a4,-20(s0)
     79e:	8ff9                	and	a5,a5,a4
     7a0:	fef42623          	sw	a5,-20(s0)
     7a4:	a819                	j	7ba <set_gpio_pin_irq_type+0x5c>
     7a6:	fdc42783          	lw	a5,-36(s0)
     7aa:	4705                	li	a4,1
     7ac:	00f717b3          	sll	a5,a4,a5
     7b0:	fec42703          	lw	a4,-20(s0)
     7b4:	8fd9                	or	a5,a5,a4
     7b6:	fef42623          	sw	a5,-20(s0)
     7ba:	fd842783          	lw	a5,-40(s0)
     7be:	8b89                	and	a5,a5,2
     7c0:	ef91                	bnez	a5,7dc <set_gpio_pin_irq_type+0x7e>
     7c2:	fdc42783          	lw	a5,-36(s0)
     7c6:	4705                	li	a4,1
     7c8:	00f717b3          	sll	a5,a4,a5
     7cc:	fff7c793          	not	a5,a5
     7d0:	fe842703          	lw	a4,-24(s0)
     7d4:	8ff9                	and	a5,a5,a4
     7d6:	fef42423          	sw	a5,-24(s0)
     7da:	a819                	j	7f0 <set_gpio_pin_irq_type+0x92>
     7dc:	fdc42783          	lw	a5,-36(s0)
     7e0:	4705                	li	a4,1
     7e2:	00f717b3          	sll	a5,a4,a5
     7e6:	fe842703          	lw	a4,-24(s0)
     7ea:	8fd9                	or	a5,a5,a4
     7ec:	fef42423          	sw	a5,-24(s0)
     7f0:	1a1017b7          	lui	a5,0x1a101
     7f4:	07c1                	add	a5,a5,16 # 1a101010 <_stack_start+0x19ff9010>
     7f6:	fec42703          	lw	a4,-20(s0)
     7fa:	c398                	sw	a4,0(a5)
     7fc:	1a1017b7          	lui	a5,0x1a101
     800:	07d1                	add	a5,a5,20 # 1a101014 <_stack_start+0x19ff9014>
     802:	fe842703          	lw	a4,-24(s0)
     806:	c398                	sw	a4,0(a5)
     808:	0001                	nop
     80a:	5432                	lw	s0,44(sp)
     80c:	6145                	add	sp,sp,48
     80e:	8082                	ret

00000810 <get_gpio_irq_status>:
     810:	1141                	add	sp,sp,-16
     812:	c622                	sw	s0,12(sp)
     814:	0800                	add	s0,sp,16
     816:	1a1017b7          	lui	a5,0x1a101
     81a:	07e1                	add	a5,a5,24 # 1a101018 <_stack_start+0x19ff9018>
     81c:	439c                	lw	a5,0(a5)
     81e:	853e                	mv	a0,a5
     820:	4432                	lw	s0,12(sp)
     822:	0141                	add	sp,sp,16
     824:	8082                	ret

00000826 <uart_set_cfg>:
     826:	1101                	add	sp,sp,-32
     828:	ce22                	sw	s0,28(sp)
     82a:	1000                	add	s0,sp,32
     82c:	fea42623          	sw	a0,-20(s0)
     830:	87ae                	mv	a5,a1
     832:	fef41523          	sh	a5,-22(s0)
     836:	1a1077b7          	lui	a5,0x1a107
     83a:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     83c:	4398                	lw	a4,0(a5)
     83e:	1a1077b7          	lui	a5,0x1a107
     842:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     844:	00276713          	or	a4,a4,2
     848:	c398                	sw	a4,0(a5)
     84a:	1a1007b7          	lui	a5,0x1a100
     84e:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
     850:	08300713          	li	a4,131
     854:	c398                	sw	a4,0(a5)
     856:	fea45783          	lhu	a5,-22(s0)
     85a:	83a1                	srl	a5,a5,0x8
     85c:	07c2                	sll	a5,a5,0x10
     85e:	83c1                	srl	a5,a5,0x10
     860:	873e                	mv	a4,a5
     862:	1a1007b7          	lui	a5,0x1a100
     866:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
     868:	0ff77713          	zext.b	a4,a4
     86c:	c398                	sw	a4,0(a5)
     86e:	fea45703          	lhu	a4,-22(s0)
     872:	1a1007b7          	lui	a5,0x1a100
     876:	0ff77713          	zext.b	a4,a4
     87a:	c398                	sw	a4,0(a5)
     87c:	1a1007b7          	lui	a5,0x1a100
     880:	07a1                	add	a5,a5,8 # 1a100008 <_stack_start+0x19ff8008>
     882:	0a700713          	li	a4,167
     886:	c398                	sw	a4,0(a5)
     888:	1a1007b7          	lui	a5,0x1a100
     88c:	07b1                	add	a5,a5,12 # 1a10000c <_stack_start+0x19ff800c>
     88e:	470d                	li	a4,3
     890:	c398                	sw	a4,0(a5)
     892:	1a1007b7          	lui	a5,0x1a100
     896:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
     898:	439c                	lw	a5,0(a5)
     89a:	0f07f713          	and	a4,a5,240
     89e:	1a1007b7          	lui	a5,0x1a100
     8a2:	0791                	add	a5,a5,4 # 1a100004 <_stack_start+0x19ff8004>
     8a4:	00276713          	or	a4,a4,2
     8a8:	c398                	sw	a4,0(a5)
     8aa:	0001                	nop
     8ac:	4472                	lw	s0,28(sp)
     8ae:	6105                	add	sp,sp,32
     8b0:	8082                	ret

000008b2 <uart_send>:
     8b2:	7179                	add	sp,sp,-48
     8b4:	d622                	sw	s0,44(sp)
     8b6:	1800                	add	s0,sp,48
     8b8:	fca42e23          	sw	a0,-36(s0)
     8bc:	fcb42c23          	sw	a1,-40(s0)
     8c0:	a891                	j	914 <uart_send+0x62>
     8c2:	0001                	nop
     8c4:	1a1007b7          	lui	a5,0x1a100
     8c8:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
     8ca:	439c                	lw	a5,0(a5)
     8cc:	0207f793          	and	a5,a5,32
     8d0:	dbf5                	beqz	a5,8c4 <uart_send+0x12>
     8d2:	fe042623          	sw	zero,-20(s0)
     8d6:	a035                	j	902 <uart_send+0x50>
     8d8:	fdc42783          	lw	a5,-36(s0)
     8dc:	00178713          	add	a4,a5,1
     8e0:	fce42e23          	sw	a4,-36(s0)
     8e4:	0007c703          	lbu	a4,0(a5)
     8e8:	1a1007b7          	lui	a5,0x1a100
     8ec:	c398                	sw	a4,0(a5)
     8ee:	fd842783          	lw	a5,-40(s0)
     8f2:	17fd                	add	a5,a5,-1 # 1a0fffff <_stack_start+0x19ff7fff>
     8f4:	fcf42c23          	sw	a5,-40(s0)
     8f8:	fec42783          	lw	a5,-20(s0)
     8fc:	0785                	add	a5,a5,1
     8fe:	fef42623          	sw	a5,-20(s0)
     902:	fec42703          	lw	a4,-20(s0)
     906:	03f00793          	li	a5,63
     90a:	00e7e563          	bltu	a5,a4,914 <uart_send+0x62>
     90e:	fd842783          	lw	a5,-40(s0)
     912:	f3f9                	bnez	a5,8d8 <uart_send+0x26>
     914:	fd842783          	lw	a5,-40(s0)
     918:	f7cd                	bnez	a5,8c2 <uart_send+0x10>
     91a:	0001                	nop
     91c:	0001                	nop
     91e:	5432                	lw	s0,44(sp)
     920:	6145                	add	sp,sp,48
     922:	8082                	ret

00000924 <uart_getchar>:
     924:	1141                	add	sp,sp,-16
     926:	c622                	sw	s0,12(sp)
     928:	0800                	add	s0,sp,16
     92a:	0001                	nop
     92c:	1a1007b7          	lui	a5,0x1a100
     930:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
     932:	439c                	lw	a5,0(a5)
     934:	0017f713          	and	a4,a5,1
     938:	4785                	li	a5,1
     93a:	fef719e3          	bne	a4,a5,92c <uart_getchar+0x8>
     93e:	1a1007b7          	lui	a5,0x1a100
     942:	439c                	lw	a5,0(a5)
     944:	0ff7f793          	zext.b	a5,a5
     948:	853e                	mv	a0,a5
     94a:	4432                	lw	s0,12(sp)
     94c:	0141                	add	sp,sp,16
     94e:	8082                	ret

00000950 <uart_sendchar>:
     950:	1101                	add	sp,sp,-32
     952:	ce22                	sw	s0,28(sp)
     954:	1000                	add	s0,sp,32
     956:	87aa                	mv	a5,a0
     958:	fef407a3          	sb	a5,-17(s0)
     95c:	0001                	nop
     95e:	1a1007b7          	lui	a5,0x1a100
     962:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
     964:	439c                	lw	a5,0(a5)
     966:	0207f793          	and	a5,a5,32
     96a:	dbf5                	beqz	a5,95e <uart_sendchar+0xe>
     96c:	1a1007b7          	lui	a5,0x1a100
     970:	fef44703          	lbu	a4,-17(s0)
     974:	c398                	sw	a4,0(a5)
     976:	0001                	nop
     978:	4472                	lw	s0,28(sp)
     97a:	6105                	add	sp,sp,32
     97c:	8082                	ret

0000097e <uart_wait_tx_done>:
     97e:	1141                	add	sp,sp,-16
     980:	c622                	sw	s0,12(sp)
     982:	0800                	add	s0,sp,16
     984:	0001                	nop
     986:	1a1007b7          	lui	a5,0x1a100
     98a:	07d1                	add	a5,a5,20 # 1a100014 <_stack_start+0x19ff8014>
     98c:	439c                	lw	a5,0(a5)
     98e:	0407f793          	and	a5,a5,64
     992:	dbf5                	beqz	a5,986 <uart_wait_tx_done+0x8>
     994:	0001                	nop
     996:	0001                	nop
     998:	4432                	lw	s0,12(sp)
     99a:	0141                	add	sp,sp,16
     99c:	8082                	ret

0000099e <exit>:
     99e:	1101                	add	sp,sp,-32
     9a0:	ce06                	sw	ra,28(sp)
     9a2:	cc22                	sw	s0,24(sp)
     9a4:	1000                	add	s0,sp,32
     9a6:	fea42623          	sw	a0,-20(s0)
     9aa:	fec42503          	lw	a0,-20(s0)
     9ae:	2011                	jal	9b2 <eoc>
     9b0:	a001                	j	9b0 <exit+0x12>

000009b2 <eoc>:
     9b2:	1101                	add	sp,sp,-32
     9b4:	ce06                	sw	ra,28(sp)
     9b6:	cc22                	sw	s0,24(sp)
     9b8:	1000                	add	s0,sp,32
     9ba:	fea42623          	sw	a0,-20(s0)
     9be:	fec42783          	lw	a5,-20(s0)
     9c2:	c799                	beqz	a5,9d0 <eoc+0x1e>
     9c4:	1a1077b7          	lui	a5,0x1a107
     9c8:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
     9ca:	4705                	li	a4,1
     9cc:	c398                	sw	a4,0(a5)
     9ce:	a031                	j	9da <eoc+0x28>
     9d0:	1a1077b7          	lui	a5,0x1a107
     9d4:	07d1                	add	a5,a5,20 # 1a107014 <_stack_start+0x19fff014>
     9d6:	0007a023          	sw	zero,0(a5)
     9da:	1a1077b7          	lui	a5,0x1a107
     9de:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     9e0:	4398                	lw	a4,0(a5)
     9e2:	1a1077b7          	lui	a5,0x1a107
     9e6:	0791                	add	a5,a5,4 # 1a107004 <_stack_start+0x19fff004>
     9e8:	00476713          	or	a4,a4,4
     9ec:	c398                	sw	a4,0(a5)
     9ee:	4585                	li	a1,1
     9f0:	4521                	li	a0,8
     9f2:	3ea1                	jal	54a <set_pin_function>
     9f4:	4585                	li	a1,1
     9f6:	4521                	li	a0,8
     9f8:	3ef1                	jal	5d4 <set_gpio_pin_direction>
     9fa:	4585                	li	a1,1
     9fc:	4521                	li	a0,8
     9fe:	31a5                	jal	666 <set_gpio_pin_value>
     a00:	0001                	nop
     a02:	40f2                	lw	ra,28(sp)
     a04:	4462                	lw	s0,24(sp)
     a06:	6105                	add	sp,sp,32
     a08:	8082                	ret

00000a0a <sleep_busy>:
     a0a:	7179                	add	sp,sp,-48
     a0c:	d622                	sw	s0,44(sp)
     a0e:	1800                	add	s0,sp,48
     a10:	fca42e23          	sw	a0,-36(s0)
     a14:	fe042623          	sw	zero,-20(s0)
     a18:	a039                	j	a26 <sleep_busy+0x1c>
     a1a:	0001                	nop
     a1c:	fec42783          	lw	a5,-20(s0)
     a20:	0785                	add	a5,a5,1
     a22:	fef42623          	sw	a5,-20(s0)
     a26:	fdc42783          	lw	a5,-36(s0)
     a2a:	fec42703          	lw	a4,-20(s0)
     a2e:	fef746e3          	blt	a4,a5,a1a <sleep_busy+0x10>
     a32:	0001                	nop
     a34:	0001                	nop
     a36:	5432                	lw	s0,44(sp)
     a38:	6145                	add	sp,sp,48
     a3a:	8082                	ret

00000a3c <divu10>:
     a3c:	7179                	add	sp,sp,-48
     a3e:	d622                	sw	s0,44(sp)
     a40:	1800                	add	s0,sp,48
     a42:	fca42e23          	sw	a0,-36(s0)
     a46:	fdc42783          	lw	a5,-36(s0)
     a4a:	0017d713          	srl	a4,a5,0x1
     a4e:	fdc42783          	lw	a5,-36(s0)
     a52:	8389                	srl	a5,a5,0x2
     a54:	97ba                	add	a5,a5,a4
     a56:	fef42623          	sw	a5,-20(s0)
     a5a:	fec42783          	lw	a5,-20(s0)
     a5e:	8391                	srl	a5,a5,0x4
     a60:	fec42703          	lw	a4,-20(s0)
     a64:	97ba                	add	a5,a5,a4
     a66:	fef42623          	sw	a5,-20(s0)
     a6a:	fec42783          	lw	a5,-20(s0)
     a6e:	83a1                	srl	a5,a5,0x8
     a70:	fec42703          	lw	a4,-20(s0)
     a74:	97ba                	add	a5,a5,a4
     a76:	fef42623          	sw	a5,-20(s0)
     a7a:	fec42783          	lw	a5,-20(s0)
     a7e:	83c1                	srl	a5,a5,0x10
     a80:	fec42703          	lw	a4,-20(s0)
     a84:	97ba                	add	a5,a5,a4
     a86:	fef42623          	sw	a5,-20(s0)
     a8a:	fec42783          	lw	a5,-20(s0)
     a8e:	838d                	srl	a5,a5,0x3
     a90:	fef42623          	sw	a5,-20(s0)
     a94:	fec42703          	lw	a4,-20(s0)
     a98:	87ba                	mv	a5,a4
     a9a:	078a                	sll	a5,a5,0x2
     a9c:	97ba                	add	a5,a5,a4
     a9e:	0786                	sll	a5,a5,0x1
     aa0:	873e                	mv	a4,a5
     aa2:	fdc42783          	lw	a5,-36(s0)
     aa6:	8f99                	sub	a5,a5,a4
     aa8:	fef42423          	sw	a5,-24(s0)
     aac:	fe842783          	lw	a5,-24(s0)
     ab0:	0799                	add	a5,a5,6
     ab2:	0047d713          	srl	a4,a5,0x4
     ab6:	fec42783          	lw	a5,-20(s0)
     aba:	97ba                	add	a5,a5,a4
     abc:	853e                	mv	a0,a5
     abe:	5432                	lw	s0,44(sp)
     ac0:	6145                	add	sp,sp,48
     ac2:	8082                	ret

00000ac4 <remu10>:
     ac4:	1101                	add	sp,sp,-32
     ac6:	ce22                	sw	s0,28(sp)
     ac8:	1000                	add	s0,sp,32
     aca:	fea42623          	sw	a0,-20(s0)
     ace:	fec42703          	lw	a4,-20(s0)
     ad2:	1999a7b7          	lui	a5,0x1999a
     ad6:	99978793          	add	a5,a5,-1639 # 19999999 <_stack_start+0x19891999>
     ada:	02f70733          	mul	a4,a4,a5
     ade:	fec42783          	lw	a5,-20(s0)
     ae2:	8385                	srl	a5,a5,0x1
     ae4:	973e                	add	a4,a4,a5
     ae6:	fec42783          	lw	a5,-20(s0)
     aea:	838d                	srl	a5,a5,0x3
     aec:	97ba                	add	a5,a5,a4
     aee:	83f1                	srl	a5,a5,0x1c
     af0:	fef42623          	sw	a5,-20(s0)
     af4:	001007b7          	lui	a5,0x100
     af8:	19078713          	add	a4,a5,400 # 100190 <remu10_table>
     afc:	fec42783          	lw	a5,-20(s0)
     b00:	97ba                	add	a5,a5,a4
     b02:	0007c783          	lbu	a5,0(a5)
     b06:	853e                	mv	a0,a5
     b08:	4472                	lw	s0,28(sp)
     b0a:	6105                	add	sp,sp,32
     b0c:	8082                	ret

00000b0e <putchar>:
     b0e:	1101                	add	sp,sp,-32
     b10:	ce06                	sw	ra,28(sp)
     b12:	cc22                	sw	s0,24(sp)
     b14:	1000                	add	s0,sp,32
     b16:	fea42623          	sw	a0,-20(s0)
     b1a:	fec42783          	lw	a5,-20(s0)
     b1e:	0ff7f793          	zext.b	a5,a5
     b22:	853e                	mv	a0,a5
     b24:	3535                	jal	950 <uart_sendchar>
     b26:	fec42783          	lw	a5,-20(s0)
     b2a:	853e                	mv	a0,a5
     b2c:	40f2                	lw	ra,28(sp)
     b2e:	4462                	lw	s0,24(sp)
     b30:	6105                	add	sp,sp,32
     b32:	8082                	ret

00000b34 <qprintchar>:
     b34:	1101                	add	sp,sp,-32
     b36:	ce06                	sw	ra,28(sp)
     b38:	cc22                	sw	s0,24(sp)
     b3a:	1000                	add	s0,sp,32
     b3c:	fea42623          	sw	a0,-20(s0)
     b40:	feb42423          	sw	a1,-24(s0)
     b44:	fec42783          	lw	a5,-20(s0)
     b48:	c39d                	beqz	a5,b6e <qprintchar+0x3a>
     b4a:	fec42783          	lw	a5,-20(s0)
     b4e:	439c                	lw	a5,0(a5)
     b50:	fe842703          	lw	a4,-24(s0)
     b54:	0ff77713          	zext.b	a4,a4
     b58:	00e78023          	sb	a4,0(a5)
     b5c:	fec42783          	lw	a5,-20(s0)
     b60:	439c                	lw	a5,0(a5)
     b62:	00178713          	add	a4,a5,1
     b66:	fec42783          	lw	a5,-20(s0)
     b6a:	c398                	sw	a4,0(a5)
     b6c:	a039                	j	b7a <qprintchar+0x46>
     b6e:	fe842783          	lw	a5,-24(s0)
     b72:	0ff7f793          	zext.b	a5,a5
     b76:	853e                	mv	a0,a5
     b78:	3f59                	jal	b0e <putchar>
     b7a:	0001                	nop
     b7c:	40f2                	lw	ra,28(sp)
     b7e:	4462                	lw	s0,24(sp)
     b80:	6105                	add	sp,sp,32
     b82:	8082                	ret

00000b84 <qprints>:
     b84:	7179                	add	sp,sp,-48
     b86:	d606                	sw	ra,44(sp)
     b88:	d422                	sw	s0,40(sp)
     b8a:	d226                	sw	s1,36(sp)
     b8c:	d04a                	sw	s2,32(sp)
     b8e:	ce4e                	sw	s3,28(sp)
     b90:	cc52                	sw	s4,24(sp)
     b92:	1800                	add	s0,sp,48
     b94:	fca42e23          	sw	a0,-36(s0)
     b98:	fcb42c23          	sw	a1,-40(s0)
     b9c:	fcc42a23          	sw	a2,-44(s0)
     ba0:	fcd42823          	sw	a3,-48(s0)
     ba4:	4481                	li	s1,0
     ba6:	02000a13          	li	s4,32
     baa:	fd442783          	lw	a5,-44(s0)
     bae:	02f05e63          	blez	a5,bea <qprints+0x66>
     bb2:	4901                	li	s2,0
     bb4:	fd842983          	lw	s3,-40(s0)
     bb8:	a019                	j	bbe <qprints+0x3a>
     bba:	0905                	add	s2,s2,1
     bbc:	0985                	add	s3,s3,1
     bbe:	0009c783          	lbu	a5,0(s3)
     bc2:	ffe5                	bnez	a5,bba <qprints+0x36>
     bc4:	fd442783          	lw	a5,-44(s0)
     bc8:	00f94563          	blt	s2,a5,bd2 <qprints+0x4e>
     bcc:	fc042a23          	sw	zero,-44(s0)
     bd0:	a039                	j	bde <qprints+0x5a>
     bd2:	fd442783          	lw	a5,-44(s0)
     bd6:	412787b3          	sub	a5,a5,s2
     bda:	fcf42a23          	sw	a5,-44(s0)
     bde:	fd042783          	lw	a5,-48(s0)
     be2:	8b89                	and	a5,a5,2
     be4:	c399                	beqz	a5,bea <qprints+0x66>
     be6:	03000a13          	li	s4,48
     bea:	fd042783          	lw	a5,-48(s0)
     bee:	8b85                	and	a5,a5,1
     bf0:	ef9d                	bnez	a5,c2e <qprints+0xaa>
     bf2:	a819                	j	c08 <qprints+0x84>
     bf4:	85d2                	mv	a1,s4
     bf6:	fdc42503          	lw	a0,-36(s0)
     bfa:	3f2d                	jal	b34 <qprintchar>
     bfc:	0485                	add	s1,s1,1
     bfe:	fd442783          	lw	a5,-44(s0)
     c02:	17fd                	add	a5,a5,-1
     c04:	fcf42a23          	sw	a5,-44(s0)
     c08:	fd442783          	lw	a5,-44(s0)
     c0c:	fef044e3          	bgtz	a5,bf4 <qprints+0x70>
     c10:	a839                	j	c2e <qprints+0xaa>
     c12:	fd842783          	lw	a5,-40(s0)
     c16:	0007c783          	lbu	a5,0(a5)
     c1a:	85be                	mv	a1,a5
     c1c:	fdc42503          	lw	a0,-36(s0)
     c20:	3f11                	jal	b34 <qprintchar>
     c22:	0485                	add	s1,s1,1
     c24:	fd842783          	lw	a5,-40(s0)
     c28:	0785                	add	a5,a5,1
     c2a:	fcf42c23          	sw	a5,-40(s0)
     c2e:	fd842783          	lw	a5,-40(s0)
     c32:	0007c783          	lbu	a5,0(a5)
     c36:	fff1                	bnez	a5,c12 <qprints+0x8e>
     c38:	a819                	j	c4e <qprints+0xca>
     c3a:	85d2                	mv	a1,s4
     c3c:	fdc42503          	lw	a0,-36(s0)
     c40:	3dd5                	jal	b34 <qprintchar>
     c42:	0485                	add	s1,s1,1
     c44:	fd442783          	lw	a5,-44(s0)
     c48:	17fd                	add	a5,a5,-1
     c4a:	fcf42a23          	sw	a5,-44(s0)
     c4e:	fd442783          	lw	a5,-44(s0)
     c52:	fef044e3          	bgtz	a5,c3a <qprints+0xb6>
     c56:	87a6                	mv	a5,s1
     c58:	853e                	mv	a0,a5
     c5a:	50b2                	lw	ra,44(sp)
     c5c:	5422                	lw	s0,40(sp)
     c5e:	5492                	lw	s1,36(sp)
     c60:	5902                	lw	s2,32(sp)
     c62:	49f2                	lw	s3,28(sp)
     c64:	4a62                	lw	s4,24(sp)
     c66:	6145                	add	sp,sp,48
     c68:	8082                	ret

00000c6a <qprinti>:
     c6a:	7159                	add	sp,sp,-112
     c6c:	d686                	sw	ra,108(sp)
     c6e:	d4a2                	sw	s0,104(sp)
     c70:	d2a6                	sw	s1,100(sp)
     c72:	d0ca                	sw	s2,96(sp)
     c74:	cece                	sw	s3,92(sp)
     c76:	1880                	add	s0,sp,112
     c78:	faa42623          	sw	a0,-84(s0)
     c7c:	fab42423          	sw	a1,-88(s0)
     c80:	fac42223          	sw	a2,-92(s0)
     c84:	fad42023          	sw	a3,-96(s0)
     c88:	f8e42e23          	sw	a4,-100(s0)
     c8c:	f8f42c23          	sw	a5,-104(s0)
     c90:	87c2                	mv	a5,a6
     c92:	f8f40ba3          	sb	a5,-105(s0)
     c96:	4981                	li	s3,0
     c98:	4901                	li	s2,0
     c9a:	fa842783          	lw	a5,-88(s0)
     c9e:	fcf42e23          	sw	a5,-36(s0)
     ca2:	fa842783          	lw	a5,-88(s0)
     ca6:	e39d                	bnez	a5,ccc <qprinti+0x62>
     ca8:	03000793          	li	a5,48
     cac:	faf40c23          	sb	a5,-72(s0)
     cb0:	fa040ca3          	sb	zero,-71(s0)
     cb4:	fb840793          	add	a5,s0,-72
     cb8:	f9842683          	lw	a3,-104(s0)
     cbc:	f9c42603          	lw	a2,-100(s0)
     cc0:	85be                	mv	a1,a5
     cc2:	fac42503          	lw	a0,-84(s0)
     cc6:	3d7d                	jal	b84 <qprints>
     cc8:	87aa                	mv	a5,a0
     cca:	a8fd                	j	dc8 <qprinti+0x15e>
     ccc:	fa042783          	lw	a5,-96(s0)
     cd0:	c38d                	beqz	a5,cf2 <qprinti+0x88>
     cd2:	fa442703          	lw	a4,-92(s0)
     cd6:	47a9                	li	a5,10
     cd8:	00f71d63          	bne	a4,a5,cf2 <qprinti+0x88>
     cdc:	fa842783          	lw	a5,-88(s0)
     ce0:	0007d963          	bgez	a5,cf2 <qprinti+0x88>
     ce4:	4985                	li	s3,1
     ce6:	fa842783          	lw	a5,-88(s0)
     cea:	40f007b3          	neg	a5,a5
     cee:	fcf42e23          	sw	a5,-36(s0)
     cf2:	fb840493          	add	s1,s0,-72
     cf6:	04fd                	add	s1,s1,31
     cf8:	00048023          	sb	zero,0(s1)
     cfc:	fa442703          	lw	a4,-92(s0)
     d00:	47c1                	li	a5,16
     d02:	06f71c63          	bne	a4,a5,d7a <qprinti+0x110>
     d06:	a0a1                	j	d4e <qprinti+0xe4>
     d08:	fdc42783          	lw	a5,-36(s0)
     d0c:	8bbd                	and	a5,a5,15
     d0e:	fcf42c23          	sw	a5,-40(s0)
     d12:	fd842703          	lw	a4,-40(s0)
     d16:	47a5                	li	a5,9
     d18:	00e7db63          	bge	a5,a4,d2e <qprinti+0xc4>
     d1c:	f9744783          	lbu	a5,-105(s0)
     d20:	fc678793          	add	a5,a5,-58
     d24:	fd842703          	lw	a4,-40(s0)
     d28:	97ba                	add	a5,a5,a4
     d2a:	fcf42c23          	sw	a5,-40(s0)
     d2e:	fd842783          	lw	a5,-40(s0)
     d32:	0ff7f793          	zext.b	a5,a5
     d36:	14fd                	add	s1,s1,-1
     d38:	03078793          	add	a5,a5,48
     d3c:	0ff7f793          	zext.b	a5,a5
     d40:	00f48023          	sb	a5,0(s1)
     d44:	fdc42783          	lw	a5,-36(s0)
     d48:	8391                	srl	a5,a5,0x4
     d4a:	fcf42e23          	sw	a5,-36(s0)
     d4e:	fdc42783          	lw	a5,-36(s0)
     d52:	fbdd                	bnez	a5,d08 <qprinti+0x9e>
     d54:	a035                	j	d80 <qprinti+0x116>
     d56:	fdc42503          	lw	a0,-36(s0)
     d5a:	33ad                	jal	ac4 <remu10>
     d5c:	87aa                	mv	a5,a0
     d5e:	0ff7f793          	zext.b	a5,a5
     d62:	14fd                	add	s1,s1,-1
     d64:	03078793          	add	a5,a5,48
     d68:	0ff7f793          	zext.b	a5,a5
     d6c:	00f48023          	sb	a5,0(s1)
     d70:	fdc42503          	lw	a0,-36(s0)
     d74:	31e1                	jal	a3c <divu10>
     d76:	fca42e23          	sw	a0,-36(s0)
     d7a:	fdc42783          	lw	a5,-36(s0)
     d7e:	ffe1                	bnez	a5,d56 <qprinti+0xec>
     d80:	02098a63          	beqz	s3,db4 <qprinti+0x14a>
     d84:	f9c42783          	lw	a5,-100(s0)
     d88:	c38d                	beqz	a5,daa <qprinti+0x140>
     d8a:	f9842783          	lw	a5,-104(s0)
     d8e:	8b89                	and	a5,a5,2
     d90:	cf89                	beqz	a5,daa <qprinti+0x140>
     d92:	02d00593          	li	a1,45
     d96:	fac42503          	lw	a0,-84(s0)
     d9a:	3b69                	jal	b34 <qprintchar>
     d9c:	0905                	add	s2,s2,1
     d9e:	f9c42783          	lw	a5,-100(s0)
     da2:	17fd                	add	a5,a5,-1
     da4:	f8f42e23          	sw	a5,-100(s0)
     da8:	a031                	j	db4 <qprinti+0x14a>
     daa:	14fd                	add	s1,s1,-1
     dac:	02d00793          	li	a5,45
     db0:	00f48023          	sb	a5,0(s1)
     db4:	f9842683          	lw	a3,-104(s0)
     db8:	f9c42603          	lw	a2,-100(s0)
     dbc:	85a6                	mv	a1,s1
     dbe:	fac42503          	lw	a0,-84(s0)
     dc2:	33c9                	jal	b84 <qprints>
     dc4:	87aa                	mv	a5,a0
     dc6:	97ca                	add	a5,a5,s2
     dc8:	853e                	mv	a0,a5
     dca:	50b6                	lw	ra,108(sp)
     dcc:	5426                	lw	s0,104(sp)
     dce:	5496                	lw	s1,100(sp)
     dd0:	5906                	lw	s2,96(sp)
     dd2:	49f6                	lw	s3,92(sp)
     dd4:	6165                	add	sp,sp,112
     dd6:	8082                	ret

00000dd8 <qprint>:
     dd8:	7139                	add	sp,sp,-64
     dda:	de06                	sw	ra,60(sp)
     ddc:	dc22                	sw	s0,56(sp)
     dde:	da26                	sw	s1,52(sp)
     de0:	d84a                	sw	s2,48(sp)
     de2:	d64e                	sw	s3,44(sp)
     de4:	0080                	add	s0,sp,64
     de6:	fca42623          	sw	a0,-52(s0)
     dea:	fcb42423          	sw	a1,-56(s0)
     dee:	fcc42223          	sw	a2,-60(s0)
     df2:	4481                	li	s1,0
     df4:	ac3d                	j	1032 <_min_stack+0x32>
     df6:	fc842783          	lw	a5,-56(s0)
     dfa:	0007c703          	lbu	a4,0(a5)
     dfe:	02500793          	li	a5,37
     e02:	20f71763          	bne	a4,a5,1010 <_min_stack+0x10>
     e06:	fc842783          	lw	a5,-56(s0)
     e0a:	0785                	add	a5,a5,1
     e0c:	fcf42423          	sw	a5,-56(s0)
     e10:	4981                	li	s3,0
     e12:	894e                	mv	s2,s3
     e14:	fc842783          	lw	a5,-56(s0)
     e18:	0007c783          	lbu	a5,0(a5)
     e1c:	22078263          	beqz	a5,1040 <_min_stack+0x40>
     e20:	fc842783          	lw	a5,-56(s0)
     e24:	0007c703          	lbu	a4,0(a5)
     e28:	02500793          	li	a5,37
     e2c:	1ef70463          	beq	a4,a5,1014 <_min_stack+0x14>
     e30:	fc842783          	lw	a5,-56(s0)
     e34:	0007c703          	lbu	a4,0(a5)
     e38:	02d00793          	li	a5,45
     e3c:	02f71063          	bne	a4,a5,e5c <qprint+0x84>
     e40:	fc842783          	lw	a5,-56(s0)
     e44:	0785                	add	a5,a5,1
     e46:	fcf42423          	sw	a5,-56(s0)
     e4a:	4985                	li	s3,1
     e4c:	a801                	j	e5c <qprint+0x84>
     e4e:	fc842783          	lw	a5,-56(s0)
     e52:	0785                	add	a5,a5,1
     e54:	fcf42423          	sw	a5,-56(s0)
     e58:	0029e993          	or	s3,s3,2
     e5c:	fc842783          	lw	a5,-56(s0)
     e60:	0007c703          	lbu	a4,0(a5)
     e64:	03000793          	li	a5,48
     e68:	fef703e3          	beq	a4,a5,e4e <qprint+0x76>
     e6c:	a015                	j	e90 <qprint+0xb8>
     e6e:	87ca                	mv	a5,s2
     e70:	078a                	sll	a5,a5,0x2
     e72:	97ca                	add	a5,a5,s2
     e74:	0786                	sll	a5,a5,0x1
     e76:	893e                	mv	s2,a5
     e78:	fc842783          	lw	a5,-56(s0)
     e7c:	0007c783          	lbu	a5,0(a5)
     e80:	fd078793          	add	a5,a5,-48
     e84:	993e                	add	s2,s2,a5
     e86:	fc842783          	lw	a5,-56(s0)
     e8a:	0785                	add	a5,a5,1
     e8c:	fcf42423          	sw	a5,-56(s0)
     e90:	fc842783          	lw	a5,-56(s0)
     e94:	0007c703          	lbu	a4,0(a5)
     e98:	02f00793          	li	a5,47
     e9c:	00e7fa63          	bgeu	a5,a4,eb0 <qprint+0xd8>
     ea0:	fc842783          	lw	a5,-56(s0)
     ea4:	0007c703          	lbu	a4,0(a5)
     ea8:	03900793          	li	a5,57
     eac:	fce7f1e3          	bgeu	a5,a4,e6e <qprint+0x96>
     eb0:	fc842783          	lw	a5,-56(s0)
     eb4:	0007c703          	lbu	a4,0(a5)
     eb8:	07300793          	li	a5,115
     ebc:	02f71b63          	bne	a4,a5,ef2 <qprint+0x11a>
     ec0:	fc442783          	lw	a5,-60(s0)
     ec4:	00478713          	add	a4,a5,4
     ec8:	fce42223          	sw	a4,-60(s0)
     ecc:	0007a083          	lw	ra,0(a5)
     ed0:	00008463          	beqz	ra,ed8 <qprint+0x100>
     ed4:	8786                	mv	a5,ra
     ed6:	a029                	j	ee0 <qprint+0x108>
     ed8:	001007b7          	lui	a5,0x100
     edc:	04c78793          	add	a5,a5,76 # 10004c <__init_array_end+0x4c>
     ee0:	86ce                	mv	a3,s3
     ee2:	864a                	mv	a2,s2
     ee4:	85be                	mv	a1,a5
     ee6:	fcc42503          	lw	a0,-52(s0)
     eea:	3969                	jal	b84 <qprints>
     eec:	87aa                	mv	a5,a0
     eee:	94be                	add	s1,s1,a5
     ef0:	aa25                	j	1028 <_min_stack+0x28>
     ef2:	fc842783          	lw	a5,-56(s0)
     ef6:	0007c703          	lbu	a4,0(a5)
     efa:	06400793          	li	a5,100
     efe:	02f71563          	bne	a4,a5,f28 <qprint+0x150>
     f02:	fc442783          	lw	a5,-60(s0)
     f06:	00478713          	add	a4,a5,4
     f0a:	fce42223          	sw	a4,-60(s0)
     f0e:	438c                	lw	a1,0(a5)
     f10:	06100813          	li	a6,97
     f14:	87ce                	mv	a5,s3
     f16:	874a                	mv	a4,s2
     f18:	4685                	li	a3,1
     f1a:	4629                	li	a2,10
     f1c:	fcc42503          	lw	a0,-52(s0)
     f20:	33a9                	jal	c6a <qprinti>
     f22:	87aa                	mv	a5,a0
     f24:	94be                	add	s1,s1,a5
     f26:	a209                	j	1028 <_min_stack+0x28>
     f28:	fc842783          	lw	a5,-56(s0)
     f2c:	0007c703          	lbu	a4,0(a5)
     f30:	07500793          	li	a5,117
     f34:	02f71663          	bne	a4,a5,f60 <qprint+0x188>
     f38:	fc442783          	lw	a5,-60(s0)
     f3c:	00478713          	add	a4,a5,4
     f40:	fce42223          	sw	a4,-60(s0)
     f44:	439c                	lw	a5,0(a5)
     f46:	85be                	mv	a1,a5
     f48:	06100813          	li	a6,97
     f4c:	87ce                	mv	a5,s3
     f4e:	874a                	mv	a4,s2
     f50:	4681                	li	a3,0
     f52:	4629                	li	a2,10
     f54:	fcc42503          	lw	a0,-52(s0)
     f58:	3b09                	jal	c6a <qprinti>
     f5a:	87aa                	mv	a5,a0
     f5c:	94be                	add	s1,s1,a5
     f5e:	a0e9                	j	1028 <_min_stack+0x28>
     f60:	fc842783          	lw	a5,-56(s0)
     f64:	0007c703          	lbu	a4,0(a5)
     f68:	07800793          	li	a5,120
     f6c:	02f71663          	bne	a4,a5,f98 <qprint+0x1c0>
     f70:	fc442783          	lw	a5,-60(s0)
     f74:	00478713          	add	a4,a5,4
     f78:	fce42223          	sw	a4,-60(s0)
     f7c:	439c                	lw	a5,0(a5)
     f7e:	85be                	mv	a1,a5
     f80:	06100813          	li	a6,97
     f84:	87ce                	mv	a5,s3
     f86:	874a                	mv	a4,s2
     f88:	4681                	li	a3,0
     f8a:	4641                	li	a2,16
     f8c:	fcc42503          	lw	a0,-52(s0)
     f90:	39e9                	jal	c6a <qprinti>
     f92:	87aa                	mv	a5,a0
     f94:	94be                	add	s1,s1,a5
     f96:	a849                	j	1028 <_min_stack+0x28>
     f98:	fc842783          	lw	a5,-56(s0)
     f9c:	0007c703          	lbu	a4,0(a5)
     fa0:	05800793          	li	a5,88
     fa4:	02f71663          	bne	a4,a5,fd0 <qprint+0x1f8>
     fa8:	fc442783          	lw	a5,-60(s0)
     fac:	00478713          	add	a4,a5,4
     fb0:	fce42223          	sw	a4,-60(s0)
     fb4:	439c                	lw	a5,0(a5)
     fb6:	85be                	mv	a1,a5
     fb8:	04100813          	li	a6,65
     fbc:	87ce                	mv	a5,s3
     fbe:	874a                	mv	a4,s2
     fc0:	4681                	li	a3,0
     fc2:	4641                	li	a2,16
     fc4:	fcc42503          	lw	a0,-52(s0)
     fc8:	314d                	jal	c6a <qprinti>
     fca:	87aa                	mv	a5,a0
     fcc:	94be                	add	s1,s1,a5
     fce:	a8a9                	j	1028 <_min_stack+0x28>
     fd0:	fc842783          	lw	a5,-56(s0)
     fd4:	0007c703          	lbu	a4,0(a5)
     fd8:	06300793          	li	a5,99
     fdc:	04f71663          	bne	a4,a5,1028 <_min_stack+0x28>
     fe0:	fc442783          	lw	a5,-60(s0)
     fe4:	00478713          	add	a4,a5,4
     fe8:	fce42223          	sw	a4,-60(s0)
     fec:	439c                	lw	a5,0(a5)
     fee:	0ff7f793          	zext.b	a5,a5
     ff2:	fcf40e23          	sb	a5,-36(s0)
     ff6:	fc040ea3          	sb	zero,-35(s0)
     ffa:	fdc40793          	add	a5,s0,-36
     ffe:	86ce                	mv	a3,s3
    1000:	864a                	mv	a2,s2
    1002:	85be                	mv	a1,a5
    1004:	fcc42503          	lw	a0,-52(s0)
    1008:	3eb5                	jal	b84 <qprints>
    100a:	87aa                	mv	a5,a0
    100c:	94be                	add	s1,s1,a5
    100e:	a829                	j	1028 <_min_stack+0x28>
    1010:	0001                	nop
    1012:	a011                	j	1016 <_min_stack+0x16>
    1014:	0001                	nop
    1016:	fc842783          	lw	a5,-56(s0)
    101a:	0007c783          	lbu	a5,0(a5)
    101e:	85be                	mv	a1,a5
    1020:	fcc42503          	lw	a0,-52(s0)
    1024:	3e01                	jal	b34 <qprintchar>
    1026:	0485                	add	s1,s1,1
    1028:	fc842783          	lw	a5,-56(s0)
    102c:	0785                	add	a5,a5,1
    102e:	fcf42423          	sw	a5,-56(s0)
    1032:	fc842783          	lw	a5,-56(s0)
    1036:	0007c783          	lbu	a5,0(a5)
    103a:	da079ee3          	bnez	a5,df6 <qprint+0x1e>
    103e:	a011                	j	1042 <_min_stack+0x42>
    1040:	0001                	nop
    1042:	fcc42783          	lw	a5,-52(s0)
    1046:	c791                	beqz	a5,1052 <_min_stack+0x52>
    1048:	fcc42783          	lw	a5,-52(s0)
    104c:	439c                	lw	a5,0(a5)
    104e:	00078023          	sb	zero,0(a5)
    1052:	87a6                	mv	a5,s1
    1054:	853e                	mv	a0,a5
    1056:	50f2                	lw	ra,60(sp)
    1058:	5462                	lw	s0,56(sp)
    105a:	54d2                	lw	s1,52(sp)
    105c:	5942                	lw	s2,48(sp)
    105e:	59b2                	lw	s3,44(sp)
    1060:	6121                	add	sp,sp,64
    1062:	8082                	ret

00001064 <printf>:
    1064:	715d                	add	sp,sp,-80
    1066:	d606                	sw	ra,44(sp)
    1068:	d422                	sw	s0,40(sp)
    106a:	1800                	add	s0,sp,48
    106c:	fca42e23          	sw	a0,-36(s0)
    1070:	c04c                	sw	a1,4(s0)
    1072:	c410                	sw	a2,8(s0)
    1074:	c454                	sw	a3,12(s0)
    1076:	c818                	sw	a4,16(s0)
    1078:	c85c                	sw	a5,20(s0)
    107a:	01042c23          	sw	a6,24(s0)
    107e:	01142e23          	sw	a7,28(s0)
    1082:	02040793          	add	a5,s0,32
    1086:	fcf42c23          	sw	a5,-40(s0)
    108a:	fd842783          	lw	a5,-40(s0)
    108e:	1791                	add	a5,a5,-28
    1090:	fef42423          	sw	a5,-24(s0)
    1094:	fe842783          	lw	a5,-24(s0)
    1098:	863e                	mv	a2,a5
    109a:	fdc42583          	lw	a1,-36(s0)
    109e:	4501                	li	a0,0
    10a0:	3b25                	jal	dd8 <qprint>
    10a2:	fea42623          	sw	a0,-20(s0)
    10a6:	fec42783          	lw	a5,-20(s0)
    10aa:	853e                	mv	a0,a5
    10ac:	50b2                	lw	ra,44(sp)
    10ae:	5422                	lw	s0,40(sp)
    10b0:	6161                	add	sp,sp,80
    10b2:	8082                	ret

000010b4 <puts>:
    10b4:	7179                	add	sp,sp,-48
    10b6:	d606                	sw	ra,44(sp)
    10b8:	d422                	sw	s0,40(sp)
    10ba:	1800                	add	s0,sp,48
    10bc:	fca42e23          	sw	a0,-36(s0)
    10c0:	fe042623          	sw	zero,-20(s0)
    10c4:	a839                	j	10e2 <puts+0x2e>
    10c6:	fec42783          	lw	a5,-20(s0)
    10ca:	00178713          	add	a4,a5,1
    10ce:	fee42623          	sw	a4,-20(s0)
    10d2:	873e                	mv	a4,a5
    10d4:	fdc42783          	lw	a5,-36(s0)
    10d8:	97ba                	add	a5,a5,a4
    10da:	0007c783          	lbu	a5,0(a5)
    10de:	853e                	mv	a0,a5
    10e0:	343d                	jal	b0e <putchar>
    10e2:	fec42783          	lw	a5,-20(s0)
    10e6:	fdc42703          	lw	a4,-36(s0)
    10ea:	97ba                	add	a5,a5,a4
    10ec:	0007c783          	lbu	a5,0(a5)
    10f0:	fbf9                	bnez	a5,10c6 <puts+0x12>
    10f2:	4529                	li	a0,10
    10f4:	3c29                	jal	b0e <putchar>
    10f6:	fec42783          	lw	a5,-20(s0)
    10fa:	853e                	mv	a0,a5
    10fc:	50b2                	lw	ra,44(sp)
    10fe:	5422                	lw	s0,40(sp)
    1100:	6145                	add	sp,sp,48
    1102:	8082                	ret

00001104 <strcmp>:
    1104:	7179                	add	sp,sp,-48
    1106:	d622                	sw	s0,44(sp)
    1108:	1800                	add	s0,sp,48
    110a:	fca42e23          	sw	a0,-36(s0)
    110e:	fcb42c23          	sw	a1,-40(s0)
    1112:	fdc42703          	lw	a4,-36(s0)
    1116:	fd842783          	lw	a5,-40(s0)
    111a:	8fd9                	or	a5,a5,a4
    111c:	8b8d                	and	a5,a5,3
    111e:	e7c9                	bnez	a5,11a8 <strcmp+0xa4>
    1120:	fdc42783          	lw	a5,-36(s0)
    1124:	fef42623          	sw	a5,-20(s0)
    1128:	fd842783          	lw	a5,-40(s0)
    112c:	fef42423          	sw	a5,-24(s0)
    1130:	a089                	j	1172 <strcmp+0x6e>
    1132:	fec42783          	lw	a5,-20(s0)
    1136:	4398                	lw	a4,0(a5)
    1138:	feff07b7          	lui	a5,0xfeff0
    113c:	eff78793          	add	a5,a5,-257 # fefefeff <_stack_start+0xfeee7eff>
    1140:	973e                	add	a4,a4,a5
    1142:	fec42783          	lw	a5,-20(s0)
    1146:	439c                	lw	a5,0(a5)
    1148:	fff7c793          	not	a5,a5
    114c:	8f7d                	and	a4,a4,a5
    114e:	808087b7          	lui	a5,0x80808
    1152:	08078793          	add	a5,a5,128 # 80808080 <_stack_start+0x80700080>
    1156:	8ff9                	and	a5,a5,a4
    1158:	c399                	beqz	a5,115e <strcmp+0x5a>
    115a:	4781                	li	a5,0
    115c:	a041                	j	11dc <strcmp+0xd8>
    115e:	fec42783          	lw	a5,-20(s0)
    1162:	0791                	add	a5,a5,4
    1164:	fef42623          	sw	a5,-20(s0)
    1168:	fe842783          	lw	a5,-24(s0)
    116c:	0791                	add	a5,a5,4
    116e:	fef42423          	sw	a5,-24(s0)
    1172:	fec42783          	lw	a5,-20(s0)
    1176:	4398                	lw	a4,0(a5)
    1178:	fe842783          	lw	a5,-24(s0)
    117c:	439c                	lw	a5,0(a5)
    117e:	faf70ae3          	beq	a4,a5,1132 <strcmp+0x2e>
    1182:	fec42783          	lw	a5,-20(s0)
    1186:	fcf42e23          	sw	a5,-36(s0)
    118a:	fe842783          	lw	a5,-24(s0)
    118e:	fcf42c23          	sw	a5,-40(s0)
    1192:	a819                	j	11a8 <strcmp+0xa4>
    1194:	fdc42783          	lw	a5,-36(s0)
    1198:	0785                	add	a5,a5,1
    119a:	fcf42e23          	sw	a5,-36(s0)
    119e:	fd842783          	lw	a5,-40(s0)
    11a2:	0785                	add	a5,a5,1
    11a4:	fcf42c23          	sw	a5,-40(s0)
    11a8:	fdc42783          	lw	a5,-36(s0)
    11ac:	0007c783          	lbu	a5,0(a5)
    11b0:	cb99                	beqz	a5,11c6 <strcmp+0xc2>
    11b2:	fdc42783          	lw	a5,-36(s0)
    11b6:	0007c703          	lbu	a4,0(a5)
    11ba:	fd842783          	lw	a5,-40(s0)
    11be:	0007c783          	lbu	a5,0(a5)
    11c2:	fcf709e3          	beq	a4,a5,1194 <strcmp+0x90>
    11c6:	fdc42783          	lw	a5,-36(s0)
    11ca:	0007c783          	lbu	a5,0(a5)
    11ce:	873e                	mv	a4,a5
    11d0:	fd842783          	lw	a5,-40(s0)
    11d4:	0007c783          	lbu	a5,0(a5)
    11d8:	40f707b3          	sub	a5,a4,a5
    11dc:	853e                	mv	a0,a5
    11de:	5432                	lw	s0,44(sp)
    11e0:	6145                	add	sp,sp,48
    11e2:	8082                	ret

000011e4 <memset>:
    11e4:	7179                	add	sp,sp,-48
    11e6:	d622                	sw	s0,44(sp)
    11e8:	1800                	add	s0,sp,48
    11ea:	fca42e23          	sw	a0,-36(s0)
    11ee:	fcb42c23          	sw	a1,-40(s0)
    11f2:	fcc42a23          	sw	a2,-44(s0)
    11f6:	fdc42783          	lw	a5,-36(s0)
    11fa:	fef42623          	sw	a5,-20(s0)
    11fe:	a015                	j	1222 <memset+0x3e>
    1200:	fec42783          	lw	a5,-20(s0)
    1204:	00178713          	add	a4,a5,1
    1208:	fee42623          	sw	a4,-20(s0)
    120c:	fd842703          	lw	a4,-40(s0)
    1210:	0ff77713          	zext.b	a4,a4
    1214:	00e78023          	sb	a4,0(a5)
    1218:	fd442783          	lw	a5,-44(s0)
    121c:	17fd                	add	a5,a5,-1
    121e:	fcf42a23          	sw	a5,-44(s0)
    1222:	fd442783          	lw	a5,-44(s0)
    1226:	ffe9                	bnez	a5,1200 <memset+0x1c>
    1228:	fdc42783          	lw	a5,-36(s0)
    122c:	853e                	mv	a0,a5
    122e:	5432                	lw	s0,44(sp)
    1230:	6145                	add	sp,sp,48
    1232:	8082                	ret

00001234 <strcpy>:
    1234:	7179                	add	sp,sp,-48
    1236:	d622                	sw	s0,44(sp)
    1238:	1800                	add	s0,sp,48
    123a:	fca42e23          	sw	a0,-36(s0)
    123e:	fcb42c23          	sw	a1,-40(s0)
    1242:	fdc42783          	lw	a5,-36(s0)
    1246:	fef42623          	sw	a5,-20(s0)
    124a:	fd842783          	lw	a5,-40(s0)
    124e:	fef42423          	sw	a5,-24(s0)
    1252:	a01d                	j	1278 <strcpy+0x44>
    1254:	fe842783          	lw	a5,-24(s0)
    1258:	0007c703          	lbu	a4,0(a5)
    125c:	fec42783          	lw	a5,-20(s0)
    1260:	00e78023          	sb	a4,0(a5)
    1264:	fec42783          	lw	a5,-20(s0)
    1268:	0785                	add	a5,a5,1
    126a:	fef42623          	sw	a5,-20(s0)
    126e:	fe842783          	lw	a5,-24(s0)
    1272:	0785                	add	a5,a5,1
    1274:	fef42423          	sw	a5,-24(s0)
    1278:	fe842783          	lw	a5,-24(s0)
    127c:	0007c783          	lbu	a5,0(a5)
    1280:	fbf1                	bnez	a5,1254 <strcpy+0x20>
    1282:	fdc42783          	lw	a5,-36(s0)
    1286:	853e                	mv	a0,a5
    1288:	5432                	lw	s0,44(sp)
    128a:	6145                	add	sp,sp,48
    128c:	8082                	ret

0000128e <strlen>:
    128e:	7179                	add	sp,sp,-48
    1290:	d622                	sw	s0,44(sp)
    1292:	1800                	add	s0,sp,48
    1294:	fca42e23          	sw	a0,-36(s0)
    1298:	fdc42783          	lw	a5,-36(s0)
    129c:	fef42623          	sw	a5,-20(s0)
    12a0:	fe042423          	sw	zero,-24(s0)
    12a4:	fec42783          	lw	a5,-20(s0)
    12a8:	eb81                	bnez	a5,12b8 <strlen+0x2a>
    12aa:	4781                	li	a5,0
    12ac:	a00d                	j	12ce <strlen+0x40>
    12ae:	fe842783          	lw	a5,-24(s0)
    12b2:	0785                	add	a5,a5,1
    12b4:	fef42423          	sw	a5,-24(s0)
    12b8:	fec42783          	lw	a5,-20(s0)
    12bc:	00178713          	add	a4,a5,1
    12c0:	fee42623          	sw	a4,-20(s0)
    12c4:	0007c783          	lbu	a5,0(a5)
    12c8:	f3fd                	bnez	a5,12ae <strlen+0x20>
    12ca:	fe842783          	lw	a5,-24(s0)
    12ce:	853e                	mv	a0,a5
    12d0:	5432                	lw	s0,44(sp)
    12d2:	6145                	add	sp,sp,48
    12d4:	8082                	ret

000012d6 <sprintf>:
    12d6:	715d                	add	sp,sp,-80
    12d8:	d606                	sw	ra,44(sp)
    12da:	d422                	sw	s0,40(sp)
    12dc:	1800                	add	s0,sp,48
    12de:	fca42e23          	sw	a0,-36(s0)
    12e2:	fcb42c23          	sw	a1,-40(s0)
    12e6:	c410                	sw	a2,8(s0)
    12e8:	c454                	sw	a3,12(s0)
    12ea:	c818                	sw	a4,16(s0)
    12ec:	c85c                	sw	a5,20(s0)
    12ee:	01042c23          	sw	a6,24(s0)
    12f2:	01142e23          	sw	a7,28(s0)
    12f6:	02040793          	add	a5,s0,32
    12fa:	fcf42a23          	sw	a5,-44(s0)
    12fe:	fd442783          	lw	a5,-44(s0)
    1302:	17a1                	add	a5,a5,-24
    1304:	fef42423          	sw	a5,-24(s0)
    1308:	fe842703          	lw	a4,-24(s0)
    130c:	fdc40793          	add	a5,s0,-36
    1310:	863a                	mv	a2,a4
    1312:	fd842583          	lw	a1,-40(s0)
    1316:	853e                	mv	a0,a5
    1318:	34c1                	jal	dd8 <qprint>
    131a:	fea42623          	sw	a0,-20(s0)
    131e:	fec42783          	lw	a5,-20(s0)
    1322:	853e                	mv	a0,a5
    1324:	50b2                	lw	ra,44(sp)
    1326:	5422                	lw	s0,40(sp)
    1328:	6161                	add	sp,sp,80
    132a:	8082                	ret

0000132c <vsprintf>:
    132c:	1101                	add	sp,sp,-32
    132e:	ce06                	sw	ra,28(sp)
    1330:	cc22                	sw	s0,24(sp)
    1332:	1000                	add	s0,sp,32
    1334:	fea42623          	sw	a0,-20(s0)
    1338:	feb42423          	sw	a1,-24(s0)
    133c:	fec42223          	sw	a2,-28(s0)
    1340:	fec40793          	add	a5,s0,-20
    1344:	fe442603          	lw	a2,-28(s0)
    1348:	fe842583          	lw	a1,-24(s0)
    134c:	853e                	mv	a0,a5
    134e:	3469                	jal	dd8 <qprint>
    1350:	87aa                	mv	a5,a0
    1352:	853e                	mv	a0,a5
    1354:	40f2                	lw	ra,28(sp)
    1356:	4462                	lw	s0,24(sp)
    1358:	6105                	add	sp,sp,32
    135a:	8082                	ret

0000135c <ISR_I2C>:
    135c:	1141                	add	sp,sp,-16
    135e:	c622                	sw	s0,12(sp)
    1360:	0800                	add	s0,sp,16
    1362:	a001                	j	1362 <ISR_I2C+0x6>

00001364 <ISR_UART>:
    1364:	1141                	add	sp,sp,-16
    1366:	c622                	sw	s0,12(sp)
    1368:	0800                	add	s0,sp,16
    136a:	a001                	j	136a <ISR_UART+0x6>

0000136c <ISR_GPIO>:
    136c:	1141                	add	sp,sp,-16
    136e:	c622                	sw	s0,12(sp)
    1370:	0800                	add	s0,sp,16
    1372:	a001                	j	1372 <ISR_GPIO+0x6>

00001374 <ISR_SPIM0>:
    1374:	1141                	add	sp,sp,-16
    1376:	c622                	sw	s0,12(sp)
    1378:	0800                	add	s0,sp,16
    137a:	a001                	j	137a <ISR_SPIM0+0x6>

0000137c <ISR_SPIM1>:
    137c:	1141                	add	sp,sp,-16
    137e:	c622                	sw	s0,12(sp)
    1380:	0800                	add	s0,sp,16
    1382:	a001                	j	1382 <ISR_SPIM1+0x6>

00001384 <ISR_TA_OVF>:
    1384:	1141                	add	sp,sp,-16
    1386:	c622                	sw	s0,12(sp)
    1388:	0800                	add	s0,sp,16
    138a:	a001                	j	138a <ISR_TA_OVF+0x6>

0000138c <ISR_TA_CMP>:
    138c:	1141                	add	sp,sp,-16
    138e:	c622                	sw	s0,12(sp)
    1390:	0800                	add	s0,sp,16
    1392:	a001                	j	1392 <ISR_TA_CMP+0x6>

00001394 <ISR_TB_OVF>:
    1394:	1141                	add	sp,sp,-16
    1396:	c622                	sw	s0,12(sp)
    1398:	0800                	add	s0,sp,16
    139a:	a001                	j	139a <ISR_TB_OVF+0x6>

0000139c <ISR_TB_CMP>:
    139c:	1141                	add	sp,sp,-16
    139e:	c622                	sw	s0,12(sp)
    13a0:	0800                	add	s0,sp,16
    13a2:	a001                	j	13a2 <ISR_TB_CMP+0x6>

000013a4 <reset_timer>:
    13a4:	1141                	add	sp,sp,-16
    13a6:	c622                	sw	s0,12(sp)
    13a8:	0800                	add	s0,sp,16
    13aa:	1a1037b7          	lui	a5,0x1a103
    13ae:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19ffb000>
    13b2:	0001                	nop
    13b4:	4432                	lw	s0,12(sp)
    13b6:	0141                	add	sp,sp,16
    13b8:	8082                	ret

000013ba <start_timer>:
    13ba:	1141                	add	sp,sp,-16
    13bc:	c622                	sw	s0,12(sp)
    13be:	0800                	add	s0,sp,16
    13c0:	1a1037b7          	lui	a5,0x1a103
    13c4:	0791                	add	a5,a5,4 # 1a103004 <_stack_start+0x19ffb004>
    13c6:	4705                	li	a4,1
    13c8:	c398                	sw	a4,0(a5)
    13ca:	0001                	nop
    13cc:	4432                	lw	s0,12(sp)
    13ce:	0141                	add	sp,sp,16
    13d0:	8082                	ret

000013d2 <stop_timer>:
    13d2:	1141                	add	sp,sp,-16
    13d4:	c622                	sw	s0,12(sp)
    13d6:	0800                	add	s0,sp,16
    13d8:	1a1037b7          	lui	a5,0x1a103
    13dc:	0791                	add	a5,a5,4 # 1a103004 <_stack_start+0x19ffb004>
    13de:	0007a023          	sw	zero,0(a5)
    13e2:	0001                	nop
    13e4:	4432                	lw	s0,12(sp)
    13e6:	0141                	add	sp,sp,16
    13e8:	8082                	ret

000013ea <get_time>:
    13ea:	1141                	add	sp,sp,-16
    13ec:	c622                	sw	s0,12(sp)
    13ee:	0800                	add	s0,sp,16
    13f0:	1a1037b7          	lui	a5,0x1a103
    13f4:	439c                	lw	a5,0(a5)
    13f6:	853e                	mv	a0,a5
    13f8:	4432                	lw	s0,12(sp)
    13fa:	0141                	add	sp,sp,16
    13fc:	8082                	ret

000013fe <default_exception_handler_c>:
    13fe:	1141                	add	sp,sp,-16
    1400:	c622                	sw	s0,12(sp)
    1402:	0800                	add	s0,sp,16
    1404:	a001                	j	1404 <default_exception_handler_c+0x6>

00001406 <illegal_insn_handler_c>:
    1406:	1141                	add	sp,sp,-16
    1408:	c622                	sw	s0,12(sp)
    140a:	0800                	add	s0,sp,16
    140c:	a001                	j	140c <illegal_insn_handler_c+0x6>

0000140e <ecall_insn_handler_c>:
    140e:	1141                	add	sp,sp,-16
    1410:	c622                	sw	s0,12(sp)
    1412:	0800                	add	s0,sp,16
    1414:	a001                	j	1414 <ecall_insn_handler_c+0x6>
	...

00001418 <__divsf3>:
    1418:	fe010113          	add	sp,sp,-32
    141c:	00912a23          	sw	s1,20(sp)
    1420:	01755493          	srl	s1,a0,0x17
    1424:	01212823          	sw	s2,16(sp)
    1428:	01312623          	sw	s3,12(sp)
    142c:	01412423          	sw	s4,8(sp)
    1430:	00951713          	sll	a4,a0,0x9
    1434:	00112e23          	sw	ra,28(sp)
    1438:	00812c23          	sw	s0,24(sp)
    143c:	01512223          	sw	s5,4(sp)
    1440:	0ff4f493          	zext.b	s1,s1
    1444:	00058a13          	mv	s4,a1
    1448:	00975993          	srl	s3,a4,0x9
    144c:	01f55913          	srl	s2,a0,0x1f
    1450:	08048463          	beqz	s1,14d8 <__divsf3+0xc0>
    1454:	0ff00793          	li	a5,255
    1458:	0af48063          	beq	s1,a5,14f8 <__divsf3+0xe0>
    145c:	00399713          	sll	a4,s3,0x3
    1460:	040007b7          	lui	a5,0x4000
    1464:	00f769b3          	or	s3,a4,a5
    1468:	f8148493          	add	s1,s1,-127
    146c:	00000a93          	li	s5,0
    1470:	017a5793          	srl	a5,s4,0x17
    1474:	009a1413          	sll	s0,s4,0x9
    1478:	0ff7f793          	zext.b	a5,a5
    147c:	00945413          	srl	s0,s0,0x9
    1480:	01fa5a13          	srl	s4,s4,0x1f
    1484:	08078a63          	beqz	a5,1518 <__divsf3+0x100>
    1488:	0ff00713          	li	a4,255
    148c:	0ae78663          	beq	a5,a4,1538 <__divsf3+0x120>
    1490:	00341413          	sll	s0,s0,0x3
    1494:	04000737          	lui	a4,0x4000
    1498:	00e46433          	or	s0,s0,a4
    149c:	f8178793          	add	a5,a5,-127 # 3ffff81 <_stack_start+0x3ef7f81>
    14a0:	00000693          	li	a3,0
    14a4:	40f484b3          	sub	s1,s1,a5
    14a8:	002a9793          	sll	a5,s5,0x2
    14ac:	00d7e7b3          	or	a5,a5,a3
    14b0:	fff78793          	add	a5,a5,-1
    14b4:	00e00713          	li	a4,14
    14b8:	01494633          	xor	a2,s2,s4
    14bc:	0cf76663          	bltu	a4,a5,1588 <__divsf3+0x170>
    14c0:	00100737          	lui	a4,0x100
    14c4:	00279793          	sll	a5,a5,0x2
    14c8:	05470713          	add	a4,a4,84 # 100054 <__init_array_end+0x54>
    14cc:	00e787b3          	add	a5,a5,a4
    14d0:	0007a783          	lw	a5,0(a5)
    14d4:	00078067          	jr	a5
    14d8:	02098a63          	beqz	s3,150c <__divsf3+0xf4>
    14dc:	00098513          	mv	a0,s3
    14e0:	4b9000ef          	jal	2198 <__clzsi2>
    14e4:	ffb50793          	add	a5,a0,-5
    14e8:	f8a00493          	li	s1,-118
    14ec:	00f999b3          	sll	s3,s3,a5
    14f0:	40a484b3          	sub	s1,s1,a0
    14f4:	f79ff06f          	j	146c <__divsf3+0x54>
    14f8:	0ff00493          	li	s1,255
    14fc:	00300a93          	li	s5,3
    1500:	f60998e3          	bnez	s3,1470 <__divsf3+0x58>
    1504:	00200a93          	li	s5,2
    1508:	f69ff06f          	j	1470 <__divsf3+0x58>
    150c:	00000493          	li	s1,0
    1510:	00100a93          	li	s5,1
    1514:	f5dff06f          	j	1470 <__divsf3+0x58>
    1518:	02040a63          	beqz	s0,154c <__divsf3+0x134>
    151c:	00040513          	mv	a0,s0
    1520:	479000ef          	jal	2198 <__clzsi2>
    1524:	ffb50793          	add	a5,a0,-5
    1528:	00f41433          	sll	s0,s0,a5
    152c:	f8a00793          	li	a5,-118
    1530:	40a787b3          	sub	a5,a5,a0
    1534:	f6dff06f          	j	14a0 <__divsf3+0x88>
    1538:	0ff00793          	li	a5,255
    153c:	00300693          	li	a3,3
    1540:	f60412e3          	bnez	s0,14a4 <__divsf3+0x8c>
    1544:	00200693          	li	a3,2
    1548:	f5dff06f          	j	14a4 <__divsf3+0x8c>
    154c:	00000793          	li	a5,0
    1550:	00100693          	li	a3,1
    1554:	f51ff06f          	j	14a4 <__divsf3+0x8c>
    1558:	00090613          	mv	a2,s2
    155c:	00098413          	mv	s0,s3
    1560:	000a8693          	mv	a3,s5
    1564:	00200793          	li	a5,2
    1568:	1cf68a63          	beq	a3,a5,173c <__divsf3+0x324>
    156c:	00300793          	li	a5,3
    1570:	1af68e63          	beq	a3,a5,172c <__divsf3+0x314>
    1574:	00100793          	li	a5,1
    1578:	0af69c63          	bne	a3,a5,1630 <__divsf3+0x218>
    157c:	00000793          	li	a5,0
    1580:	00000713          	li	a4,0
    1584:	0f40006f          	j	1678 <__divsf3+0x260>
    1588:	00541593          	sll	a1,s0,0x5
    158c:	1289f463          	bgeu	s3,s0,16b4 <__divsf3+0x29c>
    1590:	fff48493          	add	s1,s1,-1
    1594:	00000793          	li	a5,0
    1598:	0105d513          	srl	a0,a1,0x10
    159c:	02a9d8b3          	divu	a7,s3,a0
    15a0:	000106b7          	lui	a3,0x10
    15a4:	fff68693          	add	a3,a3,-1 # ffff <__DTOR_END__+0xde0b>
    15a8:	00d5f6b3          	and	a3,a1,a3
    15ac:	0107d793          	srl	a5,a5,0x10
    15b0:	02a9f733          	remu	a4,s3,a0
    15b4:	00088413          	mv	s0,a7
    15b8:	03168833          	mul	a6,a3,a7
    15bc:	01071713          	sll	a4,a4,0x10
    15c0:	00e7e7b3          	or	a5,a5,a4
    15c4:	0107fe63          	bgeu	a5,a6,15e0 <__divsf3+0x1c8>
    15c8:	00f587b3          	add	a5,a1,a5
    15cc:	fff88413          	add	s0,a7,-1
    15d0:	00b7e863          	bltu	a5,a1,15e0 <__divsf3+0x1c8>
    15d4:	0107f663          	bgeu	a5,a6,15e0 <__divsf3+0x1c8>
    15d8:	ffe88413          	add	s0,a7,-2
    15dc:	00b787b3          	add	a5,a5,a1
    15e0:	410787b3          	sub	a5,a5,a6
    15e4:	02a7d833          	divu	a6,a5,a0
    15e8:	02a7f7b3          	remu	a5,a5,a0
    15ec:	03068733          	mul	a4,a3,a6
    15f0:	01079793          	sll	a5,a5,0x10
    15f4:	00080693          	mv	a3,a6
    15f8:	02e7f263          	bgeu	a5,a4,161c <__divsf3+0x204>
    15fc:	00b78533          	add	a0,a5,a1
    1600:	00f538b3          	sltu	a7,a0,a5
    1604:	fff80693          	add	a3,a6,-1
    1608:	00050793          	mv	a5,a0
    160c:	00089863          	bnez	a7,161c <__divsf3+0x204>
    1610:	00e57663          	bgeu	a0,a4,161c <__divsf3+0x204>
    1614:	ffe80693          	add	a3,a6,-2
    1618:	00b507b3          	add	a5,a0,a1
    161c:	01041413          	sll	s0,s0,0x10
    1620:	40e787b3          	sub	a5,a5,a4
    1624:	00d46433          	or	s0,s0,a3
    1628:	00f037b3          	snez	a5,a5
    162c:	00f46433          	or	s0,s0,a5
    1630:	07f48713          	add	a4,s1,127
    1634:	08e05a63          	blez	a4,16c8 <__divsf3+0x2b0>
    1638:	00747793          	and	a5,s0,7
    163c:	00078a63          	beqz	a5,1650 <__divsf3+0x238>
    1640:	00f47793          	and	a5,s0,15
    1644:	00400693          	li	a3,4
    1648:	00d78463          	beq	a5,a3,1650 <__divsf3+0x238>
    164c:	00440413          	add	s0,s0,4
    1650:	080007b7          	lui	a5,0x8000
    1654:	00f477b3          	and	a5,s0,a5
    1658:	00078a63          	beqz	a5,166c <__divsf3+0x254>
    165c:	f80007b7          	lui	a5,0xf8000
    1660:	fff78793          	add	a5,a5,-1 # f7ffffff <_stack_start+0xf7ef7fff>
    1664:	00f47433          	and	s0,s0,a5
    1668:	08048713          	add	a4,s1,128
    166c:	0fe00793          	li	a5,254
    1670:	0ce7c663          	blt	a5,a4,173c <__divsf3+0x324>
    1674:	00345793          	srl	a5,s0,0x3
    1678:	01c12083          	lw	ra,28(sp)
    167c:	01812403          	lw	s0,24(sp)
    1680:	00979793          	sll	a5,a5,0x9
    1684:	01771713          	sll	a4,a4,0x17
    1688:	0097d793          	srl	a5,a5,0x9
    168c:	00f76733          	or	a4,a4,a5
    1690:	01f61513          	sll	a0,a2,0x1f
    1694:	01412483          	lw	s1,20(sp)
    1698:	01012903          	lw	s2,16(sp)
    169c:	00c12983          	lw	s3,12(sp)
    16a0:	00812a03          	lw	s4,8(sp)
    16a4:	00412a83          	lw	s5,4(sp)
    16a8:	00a76533          	or	a0,a4,a0
    16ac:	02010113          	add	sp,sp,32
    16b0:	00008067          	ret
    16b4:	01f99793          	sll	a5,s3,0x1f
    16b8:	0019d993          	srl	s3,s3,0x1
    16bc:	eddff06f          	j	1598 <__divsf3+0x180>
    16c0:	000a0613          	mv	a2,s4
    16c4:	ea1ff06f          	j	1564 <__divsf3+0x14c>
    16c8:	00100693          	li	a3,1
    16cc:	00070c63          	beqz	a4,16e4 <__divsf3+0x2cc>
    16d0:	40e686b3          	sub	a3,a3,a4
    16d4:	01b00593          	li	a1,27
    16d8:	00000793          	li	a5,0
    16dc:	00000713          	li	a4,0
    16e0:	f8d5cce3          	blt	a1,a3,1678 <__divsf3+0x260>
    16e4:	09e48493          	add	s1,s1,158
    16e8:	00d456b3          	srl	a3,s0,a3
    16ec:	00941433          	sll	s0,s0,s1
    16f0:	00803433          	snez	s0,s0
    16f4:	0086e7b3          	or	a5,a3,s0
    16f8:	0077f713          	and	a4,a5,7
    16fc:	00070a63          	beqz	a4,1710 <__divsf3+0x2f8>
    1700:	00f7f713          	and	a4,a5,15
    1704:	00400693          	li	a3,4
    1708:	00d70463          	beq	a4,a3,1710 <__divsf3+0x2f8>
    170c:	00478793          	add	a5,a5,4
    1710:	04000737          	lui	a4,0x4000
    1714:	00e7f733          	and	a4,a5,a4
    1718:	0037d793          	srl	a5,a5,0x3
    171c:	f4070ee3          	beqz	a4,1678 <__divsf3+0x260>
    1720:	00000793          	li	a5,0
    1724:	00100713          	li	a4,1
    1728:	f51ff06f          	j	1678 <__divsf3+0x260>
    172c:	004007b7          	lui	a5,0x400
    1730:	0ff00713          	li	a4,255
    1734:	00000613          	li	a2,0
    1738:	f41ff06f          	j	1678 <__divsf3+0x260>
    173c:	00000793          	li	a5,0
    1740:	0ff00713          	li	a4,255
    1744:	f35ff06f          	j	1678 <__divsf3+0x260>

00001748 <__lesf2>:
    1748:	00800737          	lui	a4,0x800
    174c:	fff70713          	add	a4,a4,-1 # 7fffff <_stack_start+0x6f7fff>
    1750:	01755693          	srl	a3,a0,0x17
    1754:	00a77633          	and	a2,a4,a0
    1758:	01f55793          	srl	a5,a0,0x1f
    175c:	0ff6f693          	zext.b	a3,a3
    1760:	0175d513          	srl	a0,a1,0x17
    1764:	0ff00813          	li	a6,255
    1768:	00b77733          	and	a4,a4,a1
    176c:	0ff57513          	zext.b	a0,a0
    1770:	01f5d593          	srl	a1,a1,0x1f
    1774:	03069863          	bne	a3,a6,17a4 <__lesf2+0x5c>
    1778:	08061e63          	bnez	a2,1814 <__lesf2+0xcc>
    177c:	00d50a63          	beq	a0,a3,1790 <__lesf2+0x48>
    1780:	00100513          	li	a0,1
    1784:	06078c63          	beqz	a5,17fc <__lesf2+0xb4>
    1788:	fff00513          	li	a0,-1
    178c:	00008067          	ret
    1790:	00200513          	li	a0,2
    1794:	06071463          	bnez	a4,17fc <__lesf2+0xb4>
    1798:	feb794e3          	bne	a5,a1,1780 <__lesf2+0x38>
    179c:	00000513          	li	a0,0
    17a0:	00008067          	ret
    17a4:	03051463          	bne	a0,a6,17cc <__lesf2+0x84>
    17a8:	00200513          	li	a0,2
    17ac:	04071863          	bnez	a4,17fc <__lesf2+0xb4>
    17b0:	00069463          	bnez	a3,17b8 <__lesf2+0x70>
    17b4:	04060863          	beqz	a2,1804 <__lesf2+0xbc>
    17b8:	fcb794e3          	bne	a5,a1,1780 <__lesf2+0x38>
    17bc:	fff00513          	li	a0,-1
    17c0:	02078e63          	beqz	a5,17fc <__lesf2+0xb4>
    17c4:	00078513          	mv	a0,a5
    17c8:	00008067          	ret
    17cc:	02068263          	beqz	a3,17f0 <__lesf2+0xa8>
    17d0:	fa0508e3          	beqz	a0,1780 <__lesf2+0x38>
    17d4:	fab796e3          	bne	a5,a1,1780 <__lesf2+0x38>
    17d8:	fad544e3          	blt	a0,a3,1780 <__lesf2+0x38>
    17dc:	fea6c0e3          	blt	a3,a0,17bc <__lesf2+0x74>
    17e0:	fac760e3          	bltu	a4,a2,1780 <__lesf2+0x38>
    17e4:	00000513          	li	a0,0
    17e8:	00e67a63          	bgeu	a2,a4,17fc <__lesf2+0xb4>
    17ec:	fd1ff06f          	j	17bc <__lesf2+0x74>
    17f0:	fc0512e3          	bnez	a0,17b4 <__lesf2+0x6c>
    17f4:	00071663          	bnez	a4,1800 <__lesf2+0xb8>
    17f8:	f80614e3          	bnez	a2,1780 <__lesf2+0x38>
    17fc:	00008067          	ret
    1800:	00061e63          	bnez	a2,181c <__lesf2+0xd4>
    1804:	fff00513          	li	a0,-1
    1808:	fe058ae3          	beqz	a1,17fc <__lesf2+0xb4>
    180c:	00058513          	mv	a0,a1
    1810:	00008067          	ret
    1814:	00200513          	li	a0,2
    1818:	00008067          	ret
    181c:	fcb782e3          	beq	a5,a1,17e0 <__lesf2+0x98>
    1820:	f61ff06f          	j	1780 <__lesf2+0x38>

00001824 <__mulsf3>:
    1824:	fe010113          	add	sp,sp,-32
    1828:	01212823          	sw	s2,16(sp)
    182c:	01755913          	srl	s2,a0,0x17
    1830:	00912a23          	sw	s1,20(sp)
    1834:	01312623          	sw	s3,12(sp)
    1838:	01512223          	sw	s5,4(sp)
    183c:	00951493          	sll	s1,a0,0x9
    1840:	00112e23          	sw	ra,28(sp)
    1844:	00812c23          	sw	s0,24(sp)
    1848:	01412423          	sw	s4,8(sp)
    184c:	0ff97913          	zext.b	s2,s2
    1850:	00058a93          	mv	s5,a1
    1854:	0094d493          	srl	s1,s1,0x9
    1858:	01f55993          	srl	s3,a0,0x1f
    185c:	18090663          	beqz	s2,19e8 <__mulsf3+0x1c4>
    1860:	0ff00793          	li	a5,255
    1864:	1af90263          	beq	s2,a5,1a08 <__mulsf3+0x1e4>
    1868:	00349493          	sll	s1,s1,0x3
    186c:	040007b7          	lui	a5,0x4000
    1870:	00f4e4b3          	or	s1,s1,a5
    1874:	f8190913          	add	s2,s2,-127
    1878:	00000a13          	li	s4,0
    187c:	017ad793          	srl	a5,s5,0x17
    1880:	009a9413          	sll	s0,s5,0x9
    1884:	0ff7f793          	zext.b	a5,a5
    1888:	00945413          	srl	s0,s0,0x9
    188c:	01fada93          	srl	s5,s5,0x1f
    1890:	18078c63          	beqz	a5,1a28 <__mulsf3+0x204>
    1894:	0ff00713          	li	a4,255
    1898:	1ae78863          	beq	a5,a4,1a48 <__mulsf3+0x224>
    189c:	00341413          	sll	s0,s0,0x3
    18a0:	04000737          	lui	a4,0x4000
    18a4:	00e46433          	or	s0,s0,a4
    18a8:	f8178793          	add	a5,a5,-127 # 3ffff81 <_stack_start+0x3ef7f81>
    18ac:	00000713          	li	a4,0
    18b0:	00f90933          	add	s2,s2,a5
    18b4:	002a1793          	sll	a5,s4,0x2
    18b8:	00e7e7b3          	or	a5,a5,a4
    18bc:	00a00693          	li	a3,10
    18c0:	0159c533          	xor	a0,s3,s5
    18c4:	00190613          	add	a2,s2,1
    18c8:	1ef6c463          	blt	a3,a5,1ab0 <__mulsf3+0x28c>
    18cc:	00200693          	li	a3,2
    18d0:	18f6cc63          	blt	a3,a5,1a68 <__mulsf3+0x244>
    18d4:	fff78793          	add	a5,a5,-1
    18d8:	00100693          	li	a3,1
    18dc:	1af6f863          	bgeu	a3,a5,1a8c <__mulsf3+0x268>
    18e0:	000108b7          	lui	a7,0x10
    18e4:	fff88813          	add	a6,a7,-1 # ffff <__DTOR_END__+0xde0b>
    18e8:	0104d713          	srl	a4,s1,0x10
    18ec:	01045793          	srl	a5,s0,0x10
    18f0:	010476b3          	and	a3,s0,a6
    18f4:	0104f4b3          	and	s1,s1,a6
    18f8:	029685b3          	mul	a1,a3,s1
    18fc:	02d706b3          	mul	a3,a4,a3
    1900:	0105d413          	srl	s0,a1,0x10
    1904:	02f70733          	mul	a4,a4,a5
    1908:	029787b3          	mul	a5,a5,s1
    190c:	00d787b3          	add	a5,a5,a3
    1910:	00f40433          	add	s0,s0,a5
    1914:	00d47463          	bgeu	s0,a3,191c <__mulsf3+0xf8>
    1918:	01170733          	add	a4,a4,a7
    191c:	010477b3          	and	a5,s0,a6
    1920:	01079793          	sll	a5,a5,0x10
    1924:	0105f5b3          	and	a1,a1,a6
    1928:	00b787b3          	add	a5,a5,a1
    192c:	00679693          	sll	a3,a5,0x6
    1930:	01045413          	srl	s0,s0,0x10
    1934:	00d036b3          	snez	a3,a3
    1938:	01a7d793          	srl	a5,a5,0x1a
    193c:	00e40433          	add	s0,s0,a4
    1940:	00f6e7b3          	or	a5,a3,a5
    1944:	00641413          	sll	s0,s0,0x6
    1948:	00f46433          	or	s0,s0,a5
    194c:	080007b7          	lui	a5,0x8000
    1950:	00f477b3          	and	a5,s0,a5
    1954:	16078e63          	beqz	a5,1ad0 <__mulsf3+0x2ac>
    1958:	00145793          	srl	a5,s0,0x1
    195c:	00147413          	and	s0,s0,1
    1960:	0087e433          	or	s0,a5,s0
    1964:	07f60713          	add	a4,a2,127
    1968:	16e05863          	blez	a4,1ad8 <__mulsf3+0x2b4>
    196c:	00747793          	and	a5,s0,7
    1970:	00078a63          	beqz	a5,1984 <__mulsf3+0x160>
    1974:	00f47793          	and	a5,s0,15
    1978:	00400693          	li	a3,4
    197c:	00d78463          	beq	a5,a3,1984 <__mulsf3+0x160>
    1980:	00440413          	add	s0,s0,4
    1984:	080007b7          	lui	a5,0x8000
    1988:	00f477b3          	and	a5,s0,a5
    198c:	00078a63          	beqz	a5,19a0 <__mulsf3+0x17c>
    1990:	f80007b7          	lui	a5,0xf8000
    1994:	fff78793          	add	a5,a5,-1 # f7ffffff <_stack_start+0xf7ef7fff>
    1998:	00f47433          	and	s0,s0,a5
    199c:	08060713          	add	a4,a2,128
    19a0:	0fe00793          	li	a5,254
    19a4:	1ae7c463          	blt	a5,a4,1b4c <__mulsf3+0x328>
    19a8:	00345793          	srl	a5,s0,0x3
    19ac:	01c12083          	lw	ra,28(sp)
    19b0:	01812403          	lw	s0,24(sp)
    19b4:	00979793          	sll	a5,a5,0x9
    19b8:	01771713          	sll	a4,a4,0x17
    19bc:	0097d793          	srl	a5,a5,0x9
    19c0:	00f76733          	or	a4,a4,a5
    19c4:	01f51513          	sll	a0,a0,0x1f
    19c8:	01412483          	lw	s1,20(sp)
    19cc:	01012903          	lw	s2,16(sp)
    19d0:	00c12983          	lw	s3,12(sp)
    19d4:	00812a03          	lw	s4,8(sp)
    19d8:	00412a83          	lw	s5,4(sp)
    19dc:	00a76533          	or	a0,a4,a0
    19e0:	02010113          	add	sp,sp,32
    19e4:	00008067          	ret
    19e8:	02048a63          	beqz	s1,1a1c <__mulsf3+0x1f8>
    19ec:	00048513          	mv	a0,s1
    19f0:	7a8000ef          	jal	2198 <__clzsi2>
    19f4:	ffb50793          	add	a5,a0,-5
    19f8:	f8a00913          	li	s2,-118
    19fc:	00f494b3          	sll	s1,s1,a5
    1a00:	40a90933          	sub	s2,s2,a0
    1a04:	e75ff06f          	j	1878 <__mulsf3+0x54>
    1a08:	0ff00913          	li	s2,255
    1a0c:	00300a13          	li	s4,3
    1a10:	e60496e3          	bnez	s1,187c <__mulsf3+0x58>
    1a14:	00200a13          	li	s4,2
    1a18:	e65ff06f          	j	187c <__mulsf3+0x58>
    1a1c:	00000913          	li	s2,0
    1a20:	00100a13          	li	s4,1
    1a24:	e59ff06f          	j	187c <__mulsf3+0x58>
    1a28:	02040a63          	beqz	s0,1a5c <__mulsf3+0x238>
    1a2c:	00040513          	mv	a0,s0
    1a30:	768000ef          	jal	2198 <__clzsi2>
    1a34:	ffb50793          	add	a5,a0,-5
    1a38:	00f41433          	sll	s0,s0,a5
    1a3c:	f8a00793          	li	a5,-118
    1a40:	40a787b3          	sub	a5,a5,a0
    1a44:	e69ff06f          	j	18ac <__mulsf3+0x88>
    1a48:	0ff00793          	li	a5,255
    1a4c:	00300713          	li	a4,3
    1a50:	e60410e3          	bnez	s0,18b0 <__mulsf3+0x8c>
    1a54:	00200713          	li	a4,2
    1a58:	e59ff06f          	j	18b0 <__mulsf3+0x8c>
    1a5c:	00000793          	li	a5,0
    1a60:	00100713          	li	a4,1
    1a64:	e4dff06f          	j	18b0 <__mulsf3+0x8c>
    1a68:	00100693          	li	a3,1
    1a6c:	00f697b3          	sll	a5,a3,a5
    1a70:	5307f693          	and	a3,a5,1328
    1a74:	04069863          	bnez	a3,1ac4 <__mulsf3+0x2a0>
    1a78:	2407f693          	and	a3,a5,576
    1a7c:	0c069063          	bnez	a3,1b3c <__mulsf3+0x318>
    1a80:	0887f793          	and	a5,a5,136
    1a84:	e4078ee3          	beqz	a5,18e0 <__mulsf3+0xbc>
    1a88:	000a8513          	mv	a0,s5
    1a8c:	00200793          	li	a5,2
    1a90:	0af70e63          	beq	a4,a5,1b4c <__mulsf3+0x328>
    1a94:	00300793          	li	a5,3
    1a98:	0af70263          	beq	a4,a5,1b3c <__mulsf3+0x318>
    1a9c:	00100793          	li	a5,1
    1aa0:	ecf712e3          	bne	a4,a5,1964 <__mulsf3+0x140>
    1aa4:	00000793          	li	a5,0
    1aa8:	00000713          	li	a4,0
    1aac:	f01ff06f          	j	19ac <__mulsf3+0x188>
    1ab0:	00f00693          	li	a3,15
    1ab4:	08d78463          	beq	a5,a3,1b3c <__mulsf3+0x318>
    1ab8:	00b00693          	li	a3,11
    1abc:	00098513          	mv	a0,s3
    1ac0:	fcd784e3          	beq	a5,a3,1a88 <__mulsf3+0x264>
    1ac4:	00048413          	mv	s0,s1
    1ac8:	000a0713          	mv	a4,s4
    1acc:	fc1ff06f          	j	1a8c <__mulsf3+0x268>
    1ad0:	00090613          	mv	a2,s2
    1ad4:	e91ff06f          	j	1964 <__mulsf3+0x140>
    1ad8:	00100693          	li	a3,1
    1adc:	00070c63          	beqz	a4,1af4 <__mulsf3+0x2d0>
    1ae0:	40e686b3          	sub	a3,a3,a4
    1ae4:	01b00593          	li	a1,27
    1ae8:	00000793          	li	a5,0
    1aec:	00000713          	li	a4,0
    1af0:	ead5cee3          	blt	a1,a3,19ac <__mulsf3+0x188>
    1af4:	09e60613          	add	a2,a2,158
    1af8:	00d456b3          	srl	a3,s0,a3
    1afc:	00c41433          	sll	s0,s0,a2
    1b00:	00803433          	snez	s0,s0
    1b04:	0086e7b3          	or	a5,a3,s0
    1b08:	0077f713          	and	a4,a5,7
    1b0c:	00070a63          	beqz	a4,1b20 <__mulsf3+0x2fc>
    1b10:	00f7f713          	and	a4,a5,15
    1b14:	00400693          	li	a3,4
    1b18:	00d70463          	beq	a4,a3,1b20 <__mulsf3+0x2fc>
    1b1c:	00478793          	add	a5,a5,4
    1b20:	04000737          	lui	a4,0x4000
    1b24:	00e7f733          	and	a4,a5,a4
    1b28:	0037d793          	srl	a5,a5,0x3
    1b2c:	e80700e3          	beqz	a4,19ac <__mulsf3+0x188>
    1b30:	00000793          	li	a5,0
    1b34:	00100713          	li	a4,1
    1b38:	e75ff06f          	j	19ac <__mulsf3+0x188>
    1b3c:	004007b7          	lui	a5,0x400
    1b40:	0ff00713          	li	a4,255
    1b44:	00000513          	li	a0,0
    1b48:	e65ff06f          	j	19ac <__mulsf3+0x188>
    1b4c:	00000793          	li	a5,0
    1b50:	0ff00713          	li	a4,255
    1b54:	e59ff06f          	j	19ac <__mulsf3+0x188>

00001b58 <__subsf3>:
    1b58:	00800737          	lui	a4,0x800
    1b5c:	ff010113          	add	sp,sp,-16
    1b60:	01755793          	srl	a5,a0,0x17
    1b64:	fff70713          	add	a4,a4,-1 # 7fffff <_stack_start+0x6f7fff>
    1b68:	0175d613          	srl	a2,a1,0x17
    1b6c:	00912223          	sw	s1,4(sp)
    1b70:	01212023          	sw	s2,0(sp)
    1b74:	00a776b3          	and	a3,a4,a0
    1b78:	0ff7f913          	zext.b	s2,a5
    1b7c:	00112623          	sw	ra,12(sp)
    1b80:	00b777b3          	and	a5,a4,a1
    1b84:	00812423          	sw	s0,8(sp)
    1b88:	0ff67613          	zext.b	a2,a2
    1b8c:	0ff00813          	li	a6,255
    1b90:	01f55493          	srl	s1,a0,0x1f
    1b94:	01f5d593          	srl	a1,a1,0x1f
    1b98:	00369513          	sll	a0,a3,0x3
    1b9c:	00379793          	sll	a5,a5,0x3
    1ba0:	09061e63          	bne	a2,a6,1c3c <__subsf3+0xe4>
    1ba4:	f0190713          	add	a4,s2,-255
    1ba8:	00078e63          	beqz	a5,1bc4 <__subsf3+0x6c>
    1bac:	00058693          	mv	a3,a1
    1bb0:	2ab49063          	bne	s1,a1,1e50 <__subsf3+0x2f8>
    1bb4:	1c070463          	beqz	a4,1d7c <__subsf3+0x224>
    1bb8:	0c091463          	bnez	s2,1c80 <__subsf3+0x128>
    1bbc:	0ff00913          	li	s2,255
    1bc0:	1700006f          	j	1d30 <__subsf3+0x1d8>
    1bc4:	0015c693          	xor	a3,a1,1
    1bc8:	28d49e63          	bne	s1,a3,1e64 <__subsf3+0x30c>
    1bcc:	1a070863          	beqz	a4,1d7c <__subsf3+0x224>
    1bd0:	fe0906e3          	beqz	s2,1bbc <__subsf3+0x64>
    1bd4:	0ff00913          	li	s2,255
    1bd8:	04000737          	lui	a4,0x4000
    1bdc:	00e7f733          	and	a4,a5,a4
    1be0:	40070463          	beqz	a4,1fe8 <__subsf3+0x490>
    1be4:	00190913          	add	s2,s2,1
    1be8:	0ff00713          	li	a4,255
    1bec:	00000413          	li	s0,0
    1bf0:	00e90a63          	beq	s2,a4,1c04 <__subsf3+0xac>
    1bf4:	0037d413          	srl	s0,a5,0x3
    1bf8:	1f8007b7          	lui	a5,0x1f800
    1bfc:	fff78793          	add	a5,a5,-1 # 1f7fffff <_stack_start+0x1f6f7fff>
    1c00:	00f47433          	and	s0,s0,a5
    1c04:	01791793          	sll	a5,s2,0x17
    1c08:	7f800737          	lui	a4,0x7f800
    1c0c:	00941413          	sll	s0,s0,0x9
    1c10:	00945413          	srl	s0,s0,0x9
    1c14:	00e7f7b3          	and	a5,a5,a4
    1c18:	00c12083          	lw	ra,12(sp)
    1c1c:	0087e7b3          	or	a5,a5,s0
    1c20:	00812403          	lw	s0,8(sp)
    1c24:	01f49513          	sll	a0,s1,0x1f
    1c28:	00012903          	lw	s2,0(sp)
    1c2c:	00412483          	lw	s1,4(sp)
    1c30:	00a7e533          	or	a0,a5,a0
    1c34:	01010113          	add	sp,sp,16
    1c38:	00008067          	ret
    1c3c:	0015c693          	xor	a3,a1,1
    1c40:	40c90733          	sub	a4,s2,a2
    1c44:	18d49a63          	bne	s1,a3,1dd8 <__subsf3+0x280>
    1c48:	0ce05663          	blez	a4,1d14 <__subsf3+0x1bc>
    1c4c:	02061e63          	bnez	a2,1c88 <__subsf3+0x130>
    1c50:	38078463          	beqz	a5,1fd8 <__subsf3+0x480>
    1c54:	fff70693          	add	a3,a4,-1 # 7f7fffff <_stack_start+0x7f6f7fff>
    1c58:	02069063          	bnez	a3,1c78 <__subsf3+0x120>
    1c5c:	00a787b3          	add	a5,a5,a0
    1c60:	04000737          	lui	a4,0x4000
    1c64:	00e7f733          	and	a4,a5,a4
    1c68:	00200913          	li	s2,2
    1c6c:	08071663          	bnez	a4,1cf8 <__subsf3+0x1a0>
    1c70:	00100913          	li	s2,1
    1c74:	0300006f          	j	1ca4 <__subsf3+0x14c>
    1c78:	03071063          	bne	a4,a6,1c98 <__subsf3+0x140>
    1c7c:	00050793          	mv	a5,a0
    1c80:	0ff00913          	li	s2,255
    1c84:	0200006f          	j	1ca4 <__subsf3+0x14c>
    1c88:	35090c63          	beq	s2,a6,1fe0 <__subsf3+0x488>
    1c8c:	040006b7          	lui	a3,0x4000
    1c90:	00d7e7b3          	or	a5,a5,a3
    1c94:	00070693          	mv	a3,a4
    1c98:	01b00713          	li	a4,27
    1c9c:	02d75263          	bge	a4,a3,1cc0 <__subsf3+0x168>
    1ca0:	00150793          	add	a5,a0,1
    1ca4:	0077f713          	and	a4,a5,7
    1ca8:	f20708e3          	beqz	a4,1bd8 <__subsf3+0x80>
    1cac:	00f7f713          	and	a4,a5,15
    1cb0:	00400693          	li	a3,4
    1cb4:	f2d702e3          	beq	a4,a3,1bd8 <__subsf3+0x80>
    1cb8:	00478793          	add	a5,a5,4
    1cbc:	f1dff06f          	j	1bd8 <__subsf3+0x80>
    1cc0:	02000713          	li	a4,32
    1cc4:	40d70733          	sub	a4,a4,a3
    1cc8:	00e79733          	sll	a4,a5,a4
    1ccc:	00d7d633          	srl	a2,a5,a3
    1cd0:	00e03733          	snez	a4,a4
    1cd4:	00e667b3          	or	a5,a2,a4
    1cd8:	00a787b3          	add	a5,a5,a0
    1cdc:	04000737          	lui	a4,0x4000
    1ce0:	00e7f733          	and	a4,a5,a4
    1ce4:	fc0700e3          	beqz	a4,1ca4 <__subsf3+0x14c>
    1ce8:	00190913          	add	s2,s2,1
    1cec:	0ff00713          	li	a4,255
    1cf0:	00000413          	li	s0,0
    1cf4:	f0e908e3          	beq	s2,a4,1c04 <__subsf3+0xac>
    1cf8:	7e000737          	lui	a4,0x7e000
    1cfc:	0017f693          	and	a3,a5,1
    1d00:	fff70713          	add	a4,a4,-1 # 7dffffff <_stack_start+0x7def7fff>
    1d04:	0017d793          	srl	a5,a5,0x1
    1d08:	00e7f7b3          	and	a5,a5,a4
    1d0c:	00d7e7b3          	or	a5,a5,a3
    1d10:	f95ff06f          	j	1ca4 <__subsf3+0x14c>
    1d14:	06070463          	beqz	a4,1d7c <__subsf3+0x224>
    1d18:	412606b3          	sub	a3,a2,s2
    1d1c:	00090863          	beqz	s2,1d2c <__subsf3+0x1d4>
    1d20:	04000737          	lui	a4,0x4000
    1d24:	00e56533          	or	a0,a0,a4
    1d28:	01c0006f          	j	1d44 <__subsf3+0x1ec>
    1d2c:	00068913          	mv	s2,a3
    1d30:	f6050ae3          	beqz	a0,1ca4 <__subsf3+0x14c>
    1d34:	fff90693          	add	a3,s2,-1
    1d38:	f20682e3          	beqz	a3,1c5c <__subsf3+0x104>
    1d3c:	0ff00713          	li	a4,255
    1d40:	f6e902e3          	beq	s2,a4,1ca4 <__subsf3+0x14c>
    1d44:	01b00713          	li	a4,27
    1d48:	00d75863          	bge	a4,a3,1d58 <__subsf3+0x200>
    1d4c:	00178793          	add	a5,a5,1
    1d50:	00060913          	mv	s2,a2
    1d54:	f51ff06f          	j	1ca4 <__subsf3+0x14c>
    1d58:	02000713          	li	a4,32
    1d5c:	40d70733          	sub	a4,a4,a3
    1d60:	00e51733          	sll	a4,a0,a4
    1d64:	00d555b3          	srl	a1,a0,a3
    1d68:	00e03733          	snez	a4,a4
    1d6c:	00e5e733          	or	a4,a1,a4
    1d70:	00e787b3          	add	a5,a5,a4
    1d74:	00060913          	mv	s2,a2
    1d78:	f65ff06f          	j	1cdc <__subsf3+0x184>
    1d7c:	00190713          	add	a4,s2,1
    1d80:	0fe77693          	and	a3,a4,254
    1d84:	02069e63          	bnez	a3,1dc0 <__subsf3+0x268>
    1d88:	02091663          	bnez	s2,1db4 <__subsf3+0x25c>
    1d8c:	f0050ce3          	beqz	a0,1ca4 <__subsf3+0x14c>
    1d90:	24078863          	beqz	a5,1fe0 <__subsf3+0x488>
    1d94:	00a787b3          	add	a5,a5,a0
    1d98:	04000737          	lui	a4,0x4000
    1d9c:	00e7f733          	and	a4,a5,a4
    1da0:	f00702e3          	beqz	a4,1ca4 <__subsf3+0x14c>
    1da4:	fc000737          	lui	a4,0xfc000
    1da8:	fff70713          	add	a4,a4,-1 # fbffffff <_stack_start+0xfbef7fff>
    1dac:	00e7f7b3          	and	a5,a5,a4
    1db0:	ec1ff06f          	j	1c70 <__subsf3+0x118>
    1db4:	ec0506e3          	beqz	a0,1c80 <__subsf3+0x128>
    1db8:	ec0782e3          	beqz	a5,1c7c <__subsf3+0x124>
    1dbc:	1980006f          	j	1f54 <__subsf3+0x3fc>
    1dc0:	0ff00693          	li	a3,255
    1dc4:	22d70e63          	beq	a4,a3,2000 <_stack_len>
    1dc8:	00f507b3          	add	a5,a0,a5
    1dcc:	0017d793          	srl	a5,a5,0x1
    1dd0:	00070913          	mv	s2,a4
    1dd4:	ed1ff06f          	j	1ca4 <__subsf3+0x14c>
    1dd8:	0ae05063          	blez	a4,1e78 <__subsf3+0x320>
    1ddc:	06061063          	bnez	a2,1e3c <__subsf3+0x2e4>
    1de0:	1e078c63          	beqz	a5,1fd8 <__subsf3+0x480>
    1de4:	fff70693          	add	a3,a4,-1
    1de8:	00069863          	bnez	a3,1df8 <__subsf3+0x2a0>
    1dec:	40f507b3          	sub	a5,a0,a5
    1df0:	00100913          	li	s2,1
    1df4:	0300006f          	j	1e24 <__subsf3+0x2cc>
    1df8:	e90702e3          	beq	a4,a6,1c7c <__subsf3+0x124>
    1dfc:	01b00613          	li	a2,27
    1e00:	00100713          	li	a4,1
    1e04:	00d64e63          	blt	a2,a3,1e20 <__subsf3+0x2c8>
    1e08:	02000713          	li	a4,32
    1e0c:	40d70733          	sub	a4,a4,a3
    1e10:	00e79733          	sll	a4,a5,a4
    1e14:	00d7d633          	srl	a2,a5,a3
    1e18:	00e03733          	snez	a4,a4
    1e1c:	00e66733          	or	a4,a2,a4
    1e20:	40e507b3          	sub	a5,a0,a4
    1e24:	04000437          	lui	s0,0x4000
    1e28:	0087f733          	and	a4,a5,s0
    1e2c:	e6070ce3          	beqz	a4,1ca4 <__subsf3+0x14c>
    1e30:	fff40413          	add	s0,s0,-1 # 3ffffff <_stack_start+0x3ef7fff>
    1e34:	0087f433          	and	s0,a5,s0
    1e38:	1440006f          	j	1f7c <__subsf3+0x424>
    1e3c:	1b090263          	beq	s2,a6,1fe0 <__subsf3+0x488>
    1e40:	040006b7          	lui	a3,0x4000
    1e44:	00d7e7b3          	or	a5,a5,a3
    1e48:	00070693          	mv	a3,a4
    1e4c:	fb1ff06f          	j	1dfc <__subsf3+0x2a4>
    1e50:	0a070663          	beqz	a4,1efc <__subsf3+0x3a4>
    1e54:	04090663          	beqz	s2,1ea0 <__subsf3+0x348>
    1e58:	0ff00913          	li	s2,255
    1e5c:	00058493          	mv	s1,a1
    1e60:	e45ff06f          	j	1ca4 <__subsf3+0x14c>
    1e64:	08070c63          	beqz	a4,1efc <__subsf3+0x3a4>
    1e68:	04090263          	beqz	s2,1eac <__subsf3+0x354>
    1e6c:	0ff00913          	li	s2,255
    1e70:	00068493          	mv	s1,a3
    1e74:	d65ff06f          	j	1bd8 <__subsf3+0x80>
    1e78:	08070263          	beqz	a4,1efc <__subsf3+0x3a4>
    1e7c:	412605b3          	sub	a1,a2,s2
    1e80:	06091663          	bnez	s2,1eec <__subsf3+0x394>
    1e84:	00068493          	mv	s1,a3
    1e88:	00058913          	mv	s2,a1
    1e8c:	e0050ce3          	beqz	a0,1ca4 <__subsf3+0x14c>
    1e90:	fff90593          	add	a1,s2,-1
    1e94:	02059063          	bnez	a1,1eb4 <__subsf3+0x35c>
    1e98:	40a787b3          	sub	a5,a5,a0
    1e9c:	f55ff06f          	j	1df0 <__subsf3+0x298>
    1ea0:	00058493          	mv	s1,a1
    1ea4:	0ff00913          	li	s2,255
    1ea8:	fe5ff06f          	j	1e8c <__subsf3+0x334>
    1eac:	00068493          	mv	s1,a3
    1eb0:	ff5ff06f          	j	1ea4 <__subsf3+0x34c>
    1eb4:	0ff00713          	li	a4,255
    1eb8:	dee906e3          	beq	s2,a4,1ca4 <__subsf3+0x14c>
    1ebc:	01b00693          	li	a3,27
    1ec0:	00100713          	li	a4,1
    1ec4:	00b6ce63          	blt	a3,a1,1ee0 <__subsf3+0x388>
    1ec8:	02000713          	li	a4,32
    1ecc:	40b70733          	sub	a4,a4,a1
    1ed0:	00e51733          	sll	a4,a0,a4
    1ed4:	00b556b3          	srl	a3,a0,a1
    1ed8:	00e03733          	snez	a4,a4
    1edc:	00e6e733          	or	a4,a3,a4
    1ee0:	40e787b3          	sub	a5,a5,a4
    1ee4:	00060913          	mv	s2,a2
    1ee8:	f3dff06f          	j	1e24 <__subsf3+0x2cc>
    1eec:	04000737          	lui	a4,0x4000
    1ef0:	00e56533          	or	a0,a0,a4
    1ef4:	00068493          	mv	s1,a3
    1ef8:	fc5ff06f          	j	1ebc <__subsf3+0x364>
    1efc:	00190713          	add	a4,s2,1
    1f00:	0fe77713          	and	a4,a4,254
    1f04:	06071063          	bnez	a4,1f64 <__subsf3+0x40c>
    1f08:	04091063          	bnez	s2,1f48 <__subsf3+0x3f0>
    1f0c:	00051863          	bnez	a0,1f1c <__subsf3+0x3c4>
    1f10:	0e078e63          	beqz	a5,200c <_stack_len+0xc>
    1f14:	00068493          	mv	s1,a3
    1f18:	d8dff06f          	j	1ca4 <__subsf3+0x14c>
    1f1c:	0c078263          	beqz	a5,1fe0 <__subsf3+0x488>
    1f20:	40f50433          	sub	s0,a0,a5
    1f24:	04000737          	lui	a4,0x4000
    1f28:	00e47733          	and	a4,s0,a4
    1f2c:	00070663          	beqz	a4,1f38 <__subsf3+0x3e0>
    1f30:	40a787b3          	sub	a5,a5,a0
    1f34:	fe1ff06f          	j	1f14 <__subsf3+0x3bc>
    1f38:	00040793          	mv	a5,s0
    1f3c:	d60414e3          	bnez	s0,1ca4 <__subsf3+0x14c>
    1f40:	00000493          	li	s1,0
    1f44:	cc1ff06f          	j	1c04 <__subsf3+0xac>
    1f48:	e60518e3          	bnez	a0,1db8 <__subsf3+0x260>
    1f4c:	00068493          	mv	s1,a3
    1f50:	d20798e3          	bnez	a5,1c80 <__subsf3+0x128>
    1f54:	00000493          	li	s1,0
    1f58:	0ff00913          	li	s2,255
    1f5c:	00400437          	lui	s0,0x400
    1f60:	ca5ff06f          	j	1c04 <__subsf3+0xac>
    1f64:	40f50433          	sub	s0,a0,a5
    1f68:	04000737          	lui	a4,0x4000
    1f6c:	00e47733          	and	a4,s0,a4
    1f70:	04070463          	beqz	a4,1fb8 <__subsf3+0x460>
    1f74:	40a78433          	sub	s0,a5,a0
    1f78:	00068493          	mv	s1,a3
    1f7c:	00040513          	mv	a0,s0
    1f80:	218000ef          	jal	2198 <__clzsi2>
    1f84:	ffb50513          	add	a0,a0,-5
    1f88:	00a41433          	sll	s0,s0,a0
    1f8c:	03254c63          	blt	a0,s2,1fc4 <__subsf3+0x46c>
    1f90:	41250533          	sub	a0,a0,s2
    1f94:	00150513          	add	a0,a0,1
    1f98:	02000713          	li	a4,32
    1f9c:	40a70733          	sub	a4,a4,a0
    1fa0:	00a457b3          	srl	a5,s0,a0
    1fa4:	00e41433          	sll	s0,s0,a4
    1fa8:	00803433          	snez	s0,s0
    1fac:	0087e7b3          	or	a5,a5,s0
    1fb0:	00000913          	li	s2,0
    1fb4:	cf1ff06f          	j	1ca4 <__subsf3+0x14c>
    1fb8:	fc0412e3          	bnez	s0,1f7c <__subsf3+0x424>
    1fbc:	00000913          	li	s2,0
    1fc0:	f81ff06f          	j	1f40 <__subsf3+0x3e8>
    1fc4:	fc0007b7          	lui	a5,0xfc000
    1fc8:	fff78793          	add	a5,a5,-1 # fbffffff <_stack_start+0xfbef7fff>
    1fcc:	40a90933          	sub	s2,s2,a0
    1fd0:	00f477b3          	and	a5,s0,a5
    1fd4:	cd1ff06f          	j	1ca4 <__subsf3+0x14c>
    1fd8:	00050793          	mv	a5,a0
    1fdc:	df5ff06f          	j	1dd0 <__subsf3+0x278>
    1fe0:	00050793          	mv	a5,a0
    1fe4:	cc1ff06f          	j	1ca4 <__subsf3+0x14c>
    1fe8:	0037d413          	srl	s0,a5,0x3
    1fec:	0ff00793          	li	a5,255
    1ff0:	c0f91ae3          	bne	s2,a5,1c04 <__subsf3+0xac>
    1ff4:	c00408e3          	beqz	s0,1c04 <__subsf3+0xac>
    1ff8:	00400437          	lui	s0,0x400
    1ffc:	f45ff06f          	j	1f40 <__subsf3+0x3e8>
    2000:	0ff00913          	li	s2,255
    2004:	00000413          	li	s0,0
    2008:	bfdff06f          	j	1c04 <__subsf3+0xac>
    200c:	00000413          	li	s0,0
    2010:	f31ff06f          	j	1f40 <__subsf3+0x3e8>

00002014 <__fixsfsi>:
    2014:	00800637          	lui	a2,0x800
    2018:	01755713          	srl	a4,a0,0x17
    201c:	fff60793          	add	a5,a2,-1 # 7fffff <_stack_start+0x6f7fff>
    2020:	0ff77713          	zext.b	a4,a4
    2024:	07e00593          	li	a1,126
    2028:	00a7f7b3          	and	a5,a5,a0
    202c:	01f55693          	srl	a3,a0,0x1f
    2030:	04e5d663          	bge	a1,a4,207c <__fixsfsi+0x68>
    2034:	09d00593          	li	a1,157
    2038:	00e5da63          	bge	a1,a4,204c <__fixsfsi+0x38>
    203c:	80000537          	lui	a0,0x80000
    2040:	fff54513          	not	a0,a0
    2044:	00a68533          	add	a0,a3,a0
    2048:	00008067          	ret
    204c:	00c7e533          	or	a0,a5,a2
    2050:	09500793          	li	a5,149
    2054:	00e7dc63          	bge	a5,a4,206c <__fixsfsi+0x58>
    2058:	f6a70713          	add	a4,a4,-150 # 3ffff6a <_stack_start+0x3ef7f6a>
    205c:	00e51533          	sll	a0,a0,a4
    2060:	02068063          	beqz	a3,2080 <__fixsfsi+0x6c>
    2064:	40a00533          	neg	a0,a0
    2068:	00008067          	ret
    206c:	09600793          	li	a5,150
    2070:	40e787b3          	sub	a5,a5,a4
    2074:	00f55533          	srl	a0,a0,a5
    2078:	fe9ff06f          	j	2060 <__fixsfsi+0x4c>
    207c:	00000513          	li	a0,0
    2080:	00008067          	ret

00002084 <__floatsisf>:
    2084:	ff010113          	add	sp,sp,-16
    2088:	00112623          	sw	ra,12(sp)
    208c:	00812423          	sw	s0,8(sp)
    2090:	00912223          	sw	s1,4(sp)
    2094:	00050793          	mv	a5,a0
    2098:	0e050663          	beqz	a0,2184 <__floatsisf+0x100>
    209c:	41f55713          	sra	a4,a0,0x1f
    20a0:	00a74433          	xor	s0,a4,a0
    20a4:	40e40433          	sub	s0,s0,a4
    20a8:	01f55493          	srl	s1,a0,0x1f
    20ac:	00040513          	mv	a0,s0
    20b0:	0e8000ef          	jal	2198 <__clzsi2>
    20b4:	09e00793          	li	a5,158
    20b8:	40a787b3          	sub	a5,a5,a0
    20bc:	09600713          	li	a4,150
    20c0:	04f74063          	blt	a4,a5,2100 <__floatsisf+0x7c>
    20c4:	00800713          	li	a4,8
    20c8:	0ce50463          	beq	a0,a4,2190 <__floatsisf+0x10c>
    20cc:	ff850513          	add	a0,a0,-8 # 7ffffff8 <_stack_start+0x7fef7ff8>
    20d0:	00a41433          	sll	s0,s0,a0
    20d4:	00941413          	sll	s0,s0,0x9
    20d8:	00945413          	srl	s0,s0,0x9
    20dc:	01779793          	sll	a5,a5,0x17
    20e0:	00c12083          	lw	ra,12(sp)
    20e4:	0087e7b3          	or	a5,a5,s0
    20e8:	00812403          	lw	s0,8(sp)
    20ec:	01f49513          	sll	a0,s1,0x1f
    20f0:	00a7e533          	or	a0,a5,a0
    20f4:	00412483          	lw	s1,4(sp)
    20f8:	01010113          	add	sp,sp,16
    20fc:	00008067          	ret
    2100:	09900713          	li	a4,153
    2104:	06f75663          	bge	a4,a5,2170 <__floatsisf+0xec>
    2108:	00500713          	li	a4,5
    210c:	40a70733          	sub	a4,a4,a0
    2110:	01b50693          	add	a3,a0,27
    2114:	00e45733          	srl	a4,s0,a4
    2118:	00d41433          	sll	s0,s0,a3
    211c:	00803433          	snez	s0,s0
    2120:	00876433          	or	s0,a4,s0
    2124:	fc000737          	lui	a4,0xfc000
    2128:	fff70713          	add	a4,a4,-1 # fbffffff <_stack_start+0xfbef7fff>
    212c:	00747693          	and	a3,s0,7
    2130:	00e47733          	and	a4,s0,a4
    2134:	00068a63          	beqz	a3,2148 <__floatsisf+0xc4>
    2138:	00f47413          	and	s0,s0,15
    213c:	00400693          	li	a3,4
    2140:	00d40463          	beq	s0,a3,2148 <__floatsisf+0xc4>
    2144:	00470713          	add	a4,a4,4
    2148:	040006b7          	lui	a3,0x4000
    214c:	00d776b3          	and	a3,a4,a3
    2150:	00068c63          	beqz	a3,2168 <__floatsisf+0xe4>
    2154:	fc0007b7          	lui	a5,0xfc000
    2158:	fff78793          	add	a5,a5,-1 # fbffffff <_stack_start+0xfbef7fff>
    215c:	00f77733          	and	a4,a4,a5
    2160:	09f00793          	li	a5,159
    2164:	40a787b3          	sub	a5,a5,a0
    2168:	00375413          	srl	s0,a4,0x3
    216c:	f69ff06f          	j	20d4 <__floatsisf+0x50>
    2170:	00500693          	li	a3,5
    2174:	ffb50713          	add	a4,a0,-5
    2178:	fad506e3          	beq	a0,a3,2124 <__floatsisf+0xa0>
    217c:	00e41433          	sll	s0,s0,a4
    2180:	fa5ff06f          	j	2124 <__floatsisf+0xa0>
    2184:	00000493          	li	s1,0
    2188:	00000413          	li	s0,0
    218c:	f49ff06f          	j	20d4 <__floatsisf+0x50>
    2190:	09600793          	li	a5,150
    2194:	f41ff06f          	j	20d4 <__floatsisf+0x50>

00002198 <__clzsi2>:
    2198:	000107b7          	lui	a5,0x10
    219c:	02f57a63          	bgeu	a0,a5,21d0 <__clzsi2+0x38>
    21a0:	10053793          	sltiu	a5,a0,256
    21a4:	0017c793          	xor	a5,a5,1
    21a8:	00379793          	sll	a5,a5,0x3
    21ac:	00100737          	lui	a4,0x100
    21b0:	02000693          	li	a3,32
    21b4:	40f686b3          	sub	a3,a3,a5
    21b8:	00f55533          	srl	a0,a0,a5
    21bc:	09070793          	add	a5,a4,144 # 100090 <__clz_tab>
    21c0:	00a787b3          	add	a5,a5,a0
    21c4:	0007c503          	lbu	a0,0(a5) # 10000 <__DTOR_END__+0xde0c>
    21c8:	40a68533          	sub	a0,a3,a0
    21cc:	00008067          	ret
    21d0:	01000737          	lui	a4,0x1000
    21d4:	01000793          	li	a5,16
    21d8:	fce56ae3          	bltu	a0,a4,21ac <__clzsi2+0x14>
    21dc:	01800793          	li	a5,24
    21e0:	fcdff06f          	j	21ac <__clzsi2+0x14>

000021e4 <__CTOR_LIST__>:
	...

000021ec <__CTOR_END__>:
	...

Disassembly of section .text.__libc_init_array:

000021f4 <__libc_init_array>:
    21f4:	ff010113          	add	sp,sp,-16
    21f8:	00812423          	sw	s0,8(sp)
    21fc:	001007b7          	lui	a5,0x100
    2200:	00100437          	lui	s0,0x100
    2204:	01212023          	sw	s2,0(sp)
    2208:	00078793          	mv	a5,a5
    220c:	00040713          	mv	a4,s0
    2210:	00112623          	sw	ra,12(sp)
    2214:	00912223          	sw	s1,4(sp)
    2218:	40e78933          	sub	s2,a5,a4
    221c:	02e78263          	beq	a5,a4,2240 <__libc_init_array+0x4c>
    2220:	40295913          	sra	s2,s2,0x2
    2224:	00040413          	mv	s0,s0
    2228:	00000493          	li	s1,0
    222c:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
    2230:	00148493          	add	s1,s1,1
    2234:	00440413          	add	s0,s0,4
    2238:	000780e7          	jalr	a5 # 100000 <__init_array_end>
    223c:	ff24e8e3          	bltu	s1,s2,222c <__libc_init_array+0x38>
    2240:	00100437          	lui	s0,0x100
    2244:	001007b7          	lui	a5,0x100
    2248:	00078793          	mv	a5,a5
    224c:	00040713          	mv	a4,s0
    2250:	40e78933          	sub	s2,a5,a4
    2254:	40295913          	sra	s2,s2,0x2
    2258:	02e78063          	beq	a5,a4,2278 <__libc_init_array+0x84>
    225c:	00040413          	mv	s0,s0
    2260:	00000493          	li	s1,0
    2264:	00042783          	lw	a5,0(s0) # 100000 <__init_array_end>
    2268:	00148493          	add	s1,s1,1
    226c:	00440413          	add	s0,s0,4
    2270:	000780e7          	jalr	a5 # 100000 <__init_array_end>
    2274:	ff24e8e3          	bltu	s1,s2,2264 <__libc_init_array+0x70>
    2278:	00c12083          	lw	ra,12(sp)
    227c:	00812403          	lw	s0,8(sp)
    2280:	00412483          	lw	s1,4(sp)
    2284:	00012903          	lw	s2,0(sp)
    2288:	01010113          	add	sp,sp,16
    228c:	00008067          	ret

Disassembly of section .rodata:

00100000 <__init_array_end>:
  100000:	6554                	.2byte	0x6554
  100002:	6d72                	.2byte	0x6d72
  100004:	74656d6f          	jal	s10,15674a <_stack_start+0x4e74a>
  100008:	7265                	.2byte	0x7265
  10000a:	7320                	.2byte	0x7320
  10000c:	6174                	.2byte	0x6174
  10000e:	7472                	.2byte	0x7472
  100010:	6465                	.2byte	0x6465
  100012:	0d21                	.2byte	0xd21
  100014:	0000                	.2byte	0x0
  100016:	0000                	.2byte	0x0
  100018:	6554                	.2byte	0x6554
  10001a:	706d                	.2byte	0x706d
  10001c:	7265                	.2byte	0x7265
  10001e:	7461                	.2byte	0x7461
  100020:	7275                	.2byte	0x7275
  100022:	2c65                	.2byte	0x2c65
  100024:	6320                	.2byte	0x6320
  100026:	6c65                	.2byte	0x6c65
  100028:	73756973          	csrrs	s2,mhpmevent23h,10
  10002c:	6420                	.2byte	0x6420
  10002e:	6765                	.2byte	0x6765
  100030:	6572                	.2byte	0x6572
  100032:	3a65                	.2byte	0x3a65
  100034:	2520                	.2byte	0x2520
  100036:	2e642563          	.4byte	0x2e642563
  10003a:	3025                	.2byte	0x3025
  10003c:	6432                	.2byte	0x6432
  10003e:	0a0d                	.2byte	0xa0d
  100040:	0000                	.2byte	0x0
  100042:	0000                	.2byte	0x0
  100044:	0000                	.2byte	0x0
  100046:	4180                	.2byte	0x4180
  100048:	0000                	.2byte	0x0
  10004a:	42c8                	.2byte	0x42c8
  10004c:	6e28                	.2byte	0x6e28
  10004e:	6c75                	.2byte	0x6c75
  100050:	296c                	.2byte	0x296c
  100052:	0000                	.2byte	0x0
  100054:	173c                	.2byte	0x173c
  100056:	0000                	.2byte	0x0
  100058:	157c                	.2byte	0x157c
  10005a:	0000                	.2byte	0x0
  10005c:	16c0                	.2byte	0x16c0
  10005e:	0000                	.2byte	0x0
  100060:	157c                	.2byte	0x157c
  100062:	0000                	.2byte	0x0
  100064:	172c                	.2byte	0x172c
  100066:	0000                	.2byte	0x0
  100068:	157c                	.2byte	0x157c
  10006a:	0000                	.2byte	0x0
  10006c:	16c0                	.2byte	0x16c0
  10006e:	0000                	.2byte	0x0
  100070:	173c                	.2byte	0x173c
  100072:	0000                	.2byte	0x0
  100074:	173c                	.2byte	0x173c
  100076:	0000                	.2byte	0x0
  100078:	172c                	.2byte	0x172c
  10007a:	0000                	.2byte	0x0
  10007c:	16c0                	.2byte	0x16c0
  10007e:	0000                	.2byte	0x0
  100080:	1558                	.2byte	0x1558
  100082:	0000                	.2byte	0x0
  100084:	1558                	.2byte	0x1558
  100086:	0000                	.2byte	0x0
  100088:	1558                	.2byte	0x1558
  10008a:	0000                	.2byte	0x0
  10008c:	172c                	.2byte	0x172c
	...

00100090 <__clz_tab>:
  100090:	0100                	.2byte	0x100
  100092:	0202                	.2byte	0x202
  100094:	03030303          	lb	t1,48(t1)
  100098:	0404                	.2byte	0x404
  10009a:	0404                	.2byte	0x404
  10009c:	0404                	.2byte	0x404
  10009e:	0404                	.2byte	0x404
  1000a0:	0505                	.2byte	0x505
  1000a2:	0505                	.2byte	0x505
  1000a4:	0505                	.2byte	0x505
  1000a6:	0505                	.2byte	0x505
  1000a8:	0505                	.2byte	0x505
  1000aa:	0505                	.2byte	0x505
  1000ac:	0505                	.2byte	0x505
  1000ae:	0505                	.2byte	0x505
  1000b0:	0606                	.2byte	0x606
  1000b2:	0606                	.2byte	0x606
  1000b4:	0606                	.2byte	0x606
  1000b6:	0606                	.2byte	0x606
  1000b8:	0606                	.2byte	0x606
  1000ba:	0606                	.2byte	0x606
  1000bc:	0606                	.2byte	0x606
  1000be:	0606                	.2byte	0x606
  1000c0:	0606                	.2byte	0x606
  1000c2:	0606                	.2byte	0x606
  1000c4:	0606                	.2byte	0x606
  1000c6:	0606                	.2byte	0x606
  1000c8:	0606                	.2byte	0x606
  1000ca:	0606                	.2byte	0x606
  1000cc:	0606                	.2byte	0x606
  1000ce:	0606                	.2byte	0x606
  1000d0:	07070707          	.4byte	0x7070707
  1000d4:	07070707          	.4byte	0x7070707
  1000d8:	07070707          	.4byte	0x7070707
  1000dc:	07070707          	.4byte	0x7070707
  1000e0:	07070707          	.4byte	0x7070707
  1000e4:	07070707          	.4byte	0x7070707
  1000e8:	07070707          	.4byte	0x7070707
  1000ec:	07070707          	.4byte	0x7070707
  1000f0:	07070707          	.4byte	0x7070707
  1000f4:	07070707          	.4byte	0x7070707
  1000f8:	07070707          	.4byte	0x7070707
  1000fc:	07070707          	.4byte	0x7070707
  100100:	07070707          	.4byte	0x7070707
  100104:	07070707          	.4byte	0x7070707
  100108:	07070707          	.4byte	0x7070707
  10010c:	07070707          	.4byte	0x7070707
  100110:	0808                	.2byte	0x808
  100112:	0808                	.2byte	0x808
  100114:	0808                	.2byte	0x808
  100116:	0808                	.2byte	0x808
  100118:	0808                	.2byte	0x808
  10011a:	0808                	.2byte	0x808
  10011c:	0808                	.2byte	0x808
  10011e:	0808                	.2byte	0x808
  100120:	0808                	.2byte	0x808
  100122:	0808                	.2byte	0x808
  100124:	0808                	.2byte	0x808
  100126:	0808                	.2byte	0x808
  100128:	0808                	.2byte	0x808
  10012a:	0808                	.2byte	0x808
  10012c:	0808                	.2byte	0x808
  10012e:	0808                	.2byte	0x808
  100130:	0808                	.2byte	0x808
  100132:	0808                	.2byte	0x808
  100134:	0808                	.2byte	0x808
  100136:	0808                	.2byte	0x808
  100138:	0808                	.2byte	0x808
  10013a:	0808                	.2byte	0x808
  10013c:	0808                	.2byte	0x808
  10013e:	0808                	.2byte	0x808
  100140:	0808                	.2byte	0x808
  100142:	0808                	.2byte	0x808
  100144:	0808                	.2byte	0x808
  100146:	0808                	.2byte	0x808
  100148:	0808                	.2byte	0x808
  10014a:	0808                	.2byte	0x808
  10014c:	0808                	.2byte	0x808
  10014e:	0808                	.2byte	0x808
  100150:	0808                	.2byte	0x808
  100152:	0808                	.2byte	0x808
  100154:	0808                	.2byte	0x808
  100156:	0808                	.2byte	0x808
  100158:	0808                	.2byte	0x808
  10015a:	0808                	.2byte	0x808
  10015c:	0808                	.2byte	0x808
  10015e:	0808                	.2byte	0x808
  100160:	0808                	.2byte	0x808
  100162:	0808                	.2byte	0x808
  100164:	0808                	.2byte	0x808
  100166:	0808                	.2byte	0x808
  100168:	0808                	.2byte	0x808
  10016a:	0808                	.2byte	0x808
  10016c:	0808                	.2byte	0x808
  10016e:	0808                	.2byte	0x808
  100170:	0808                	.2byte	0x808
  100172:	0808                	.2byte	0x808
  100174:	0808                	.2byte	0x808
  100176:	0808                	.2byte	0x808
  100178:	0808                	.2byte	0x808
  10017a:	0808                	.2byte	0x808
  10017c:	0808                	.2byte	0x808
  10017e:	0808                	.2byte	0x808
  100180:	0808                	.2byte	0x808
  100182:	0808                	.2byte	0x808
  100184:	0808                	.2byte	0x808
  100186:	0808                	.2byte	0x808
  100188:	0808                	.2byte	0x808
  10018a:	0808                	.2byte	0x808
  10018c:	0808                	.2byte	0x808
  10018e:	0808                	.2byte	0x808

Disassembly of section .data:

00100190 <remu10_table>:
  100190:	0100                	.2byte	0x100
  100192:	0202                	.2byte	0x202
  100194:	05040303          	lb	t1,80(s0)
  100198:	0605                	.2byte	0x605
  10019a:	08080707          	.4byte	0x8080707
  10019e:	0009                	.2byte	0x9

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

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	035c                	.2byte	0x35c
       2:	0000                	.2byte	0x0
       4:	0005                	.2byte	0x5
       6:	0401                	.2byte	0x401
       8:	0000                	.2byte	0x0
       a:	0000                	.2byte	0x0
       c:	130a                	.2byte	0x130a
       e:	0000                	.2byte	0x0
      10:	1d00                	.2byte	0x1d00
      12:	0064                	.2byte	0x64
      14:	0000                	.2byte	0x0
      16:	0000                	.2byte	0x0
      18:	0000                	.2byte	0x0
      1a:	1418                	.2byte	0x1418
      1c:	0000                	.2byte	0x0
      1e:	0330                	.2byte	0x330
      20:	0000                	.2byte	0x0
      22:	0000                	.2byte	0x0
      24:	0000                	.2byte	0x0
      26:	bb040403          	lb	s0,-1104(s0)
      2a:	0004                	.2byte	0x4
      2c:	0b00                	.2byte	0xb00
      2e:	0504                	.2byte	0x504
      30:	6e69                	.2byte	0x6e69
      32:	0074                	.2byte	0x74
      34:	14060103          	lb	sp,320(a2)
      38:	0001                	.2byte	0x1
      3a:	0300                	.2byte	0x300
      3c:	0508                	.2byte	0x508
      3e:	0218                	.2byte	0x218
      40:	0000                	.2byte	0x0
      42:	12080103          	lb	sp,288(a6)
      46:	0001                	.2byte	0x1
      48:	0300                	.2byte	0x300
      4a:	0704                	.2byte	0x704
      4c:	01d4                	.2byte	0x1d4
      4e:	0000                	.2byte	0x0
      50:	ca070803          	lb	a6,-864(a4) # fffca0 <_stack_start+0xef7ca0>
      54:	0001                	.2byte	0x1
      56:	0300                	.2byte	0x300
      58:	0702                	.2byte	0x702
      5a:	00000143          	.4byte	0x143
      5e:	520c                	.2byte	0x520c
      60:	0002                	.2byte	0x2
      62:	0200                	.2byte	0x200
      64:	0f45                	.2byte	0xf45
      66:	0026                	.2byte	0x26
      68:	0000                	.2byte	0x0
      6a:	040d                	.2byte	0x40d
      6c:	4a02                	.2byte	0x4a02
      6e:	00009a03          	lh	s4,0(ra)
      72:	0600                	.2byte	0x600
      74:	01c5                	.2byte	0x1c5
      76:	0000                	.2byte	0x0
      78:	4951                	.2byte	0x4951
      7a:	0000                	.2byte	0x0
      7c:	1700                	.2byte	0x1700
      7e:	0e00                	.2byte	0xe00
      80:	7865                	.2byte	0x7865
      82:	0070                	.2byte	0x70
      84:	5202                	.2byte	0x5202
      86:	490e                	.2byte	0x490e
      88:	0000                	.2byte	0x0
      8a:	0800                	.2byte	0x800
      8c:	013e0617          	auipc	a2,0x13e0
      90:	0000                	.2byte	0x0
      92:	00004953          	.4byte	0x4953
      96:	0100                	.2byte	0x100
      98:	001f 460f 0002      	.byte	0x1f, 0x00, 0x0f, 0x46, 0x02, 0x00
      9e:	0400                	.2byte	0x400
      a0:	4702                	.2byte	0x4702
      a2:	0000c007          	.4byte	0xc007
      a6:	1000                	.2byte	0x1000
      a8:	6c66                	.2byte	0x6c66
      aa:	0074                	.2byte	0x74
      ac:	4902                	.2byte	0x4902
      ae:	5e0a                	.2byte	0x5e0a
      b0:	0000                	.2byte	0x0
      b2:	1100                	.2byte	0x1100
      b4:	0226                	.2byte	0x226
      b6:	0000                	.2byte	0x0
      b8:	5502                	.2byte	0x5502
      ba:	6a05                	.2byte	0x6a05
      bc:	0000                	.2byte	0x0
      be:	0000                	.2byte	0x0
      c0:	3512                	.2byte	0x3512
      c2:	0001                	.2byte	0x1
      c4:	0100                	.2byte	0x100
      c6:	005e0123          	sb	t0,2(t3)
      ca:	0000                	.2byte	0x0
      cc:	1418                	.2byte	0x1418
      ce:	0000                	.2byte	0x0
      d0:	0330                	.2byte	0x330
      d2:	0000                	.2byte	0x0
      d4:	9c01                	.2byte	0x9c01
      d6:	0348                	.2byte	0x348
      d8:	0000                	.2byte	0x0
      da:	12006107          	.4byte	0x12006107
      de:	005e                	.2byte	0x5e
      e0:	0000                	.2byte	0x0
      e2:	000c                	.2byte	0xc
      e4:	0000                	.2byte	0x0
      e6:	1c006207          	.4byte	0x1c006207
      ea:	005e                	.2byte	0x5e
      ec:	0000                	.2byte	0x0
      ee:	005e                	.2byte	0x5e
      f0:	0000                	.2byte	0x0
      f2:	d601                	.2byte	0xd601
      f4:	0000                	.2byte	0x0
      f6:	2500                	.2byte	0x2500
      f8:	002d                	.2byte	0x2d
      fa:	0000                	.2byte	0x0
      fc:	00b6                	.2byte	0xb6
      fe:	0000                	.2byte	0x0
     100:	00029013          	sll	zero,t0,0x0
     104:	0100                	.2byte	0x100
     106:	0325                	.2byte	0x325
     108:	002d                	.2byte	0x2d
     10a:	0000                	.2byte	0x0
     10c:	0200                	.2byte	0x200
     10e:	5f41                	.2byte	0x5f41
     110:	03260063          	beq	a2,s2,130 <ISR_UART_ASM+0x6>
     114:	0348                	.2byte	0x348
     116:	0000                	.2byte	0x0
     118:	000000cf          	.4byte	0xcf
     11c:	4102                	.2byte	0x4102
     11e:	735f 2600 4803      	.byte	0x5f, 0x73, 0x00, 0x26, 0x03, 0x48
     124:	fd000003          	lb	zero,-48(zero) # ffffffd0 <_stack_start+0xffef7fd0>
     128:	0000                	.2byte	0x0
     12a:	0200                	.2byte	0x200
     12c:	5f41                	.2byte	0x5f41
     12e:	0065                	.2byte	0x65
     130:	0326                	.2byte	0x326
     132:	0348                	.2byte	0x348
     134:	0000                	.2byte	0x0
     136:	011e                	.2byte	0x11e
     138:	0000                	.2byte	0x0
     13a:	4102                	.2byte	0x4102
     13c:	665f 2600 4f03      	.byte	0x5f, 0x66, 0x00, 0x26, 0x03, 0x4f
     142:	99000003          	lb	zero,-1648(zero) # fffff990 <_stack_start+0xffef7990>
     146:	0001                	.2byte	0x1
     148:	0200                	.2byte	0x200
     14a:	5f42                	.2byte	0x5f42
     14c:	03270063          	beq	a4,s2,16c <ISR_SPIM1_ASM+0x6>
     150:	0348                	.2byte	0x348
     152:	0000                	.2byte	0x0
     154:	01e2                	.2byte	0x1e2
     156:	0000                	.2byte	0x0
     158:	4202                	.2byte	0x4202
     15a:	735f 2700 4803      	.byte	0x5f, 0x73, 0x00, 0x27, 0x03, 0x48
     160:	1b000003          	lb	zero,432(zero) # 1b0 <ISR_TB_CMP_ASM+0xe>
     164:	0002                	.2byte	0x2
     166:	0200                	.2byte	0x200
     168:	5f42                	.2byte	0x5f42
     16a:	0065                	.2byte	0x65
     16c:	03480327          	.4byte	0x3480327
     170:	0000                	.2byte	0x0
     172:	024c                	.2byte	0x24c
     174:	0000                	.2byte	0x0
     176:	4202                	.2byte	0x4202
     178:	665f 2700 4f03      	.byte	0x5f, 0x66, 0x00, 0x27, 0x03, 0x4f
     17e:	98000003          	lb	zero,-1664(zero) # fffff980 <_stack_start+0xffef7980>
     182:	0002                	.2byte	0x2
     184:	0200                	.2byte	0x200
     186:	5f52                	.2byte	0x5f52
     188:	03280063          	beq	a6,s2,1a8 <ISR_TB_CMP_ASM+0x6>
     18c:	0348                	.2byte	0x348
     18e:	0000                	.2byte	0x0
     190:	02e1                	.2byte	0x2e1
     192:	0000                	.2byte	0x0
     194:	5202                	.2byte	0x5202
     196:	735f 2800 4803      	.byte	0x5f, 0x73, 0x00, 0x28, 0x03, 0x48
     19c:	10000003          	lb	zero,256(zero) # 100 <main_entry+0x6>
     1a0:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
     1a4:	5f52                	.2byte	0x5f52
     1a6:	0065                	.2byte	0x65
     1a8:	0328                	.2byte	0x328
     1aa:	0348                	.2byte	0x348
     1ac:	0000                	.2byte	0x0
     1ae:	0368                	.2byte	0x368
     1b0:	0000                	.2byte	0x0
     1b2:	5202                	.2byte	0x5202
     1b4:	665f 2800 4f03      	.byte	0x5f, 0x66, 0x00, 0x28, 0x03, 0x4f
     1ba:	b6000003          	lb	zero,-1184(zero) # fffffb60 <_stack_start+0xffef7b60>
     1be:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
     1c2:	0072                	.2byte	0x72
     1c4:	0a29                	.2byte	0xa29
     1c6:	005e                	.2byte	0x5e
     1c8:	0000                	.2byte	0x0
     1ca:	03fd                	.2byte	0x3fd
     1cc:	0000                	.2byte	0x0
     1ce:	0c05                	.2byte	0xc05
     1d0:	0000                	.2byte	0x0
     1d2:	e200                	.2byte	0xe200
     1d4:	0001                	.2byte	0x1
     1d6:	0400                	.2byte	0x400
     1d8:	0120                	.2byte	0x120
     1da:	0000                	.2byte	0x0
     1dc:	9a2c                	.2byte	0x9a2c
     1de:	0000                	.2byte	0x0
     1e0:	0000                	.2byte	0x0
     1e2:	4305                	.2byte	0x4305
     1e4:	0000                	.2byte	0x0
     1e6:	0300                	.2byte	0x300
     1e8:	0002                	.2byte	0x2
     1ea:	0100                	.2byte	0x100
     1ec:	0275                	.2byte	0x275
     1ee:	0000                	.2byte	0x0
     1f0:	482c                	.2byte	0x482c
     1f2:	1b000003          	lb	zero,432(zero) # 1b0 <ISR_TB_CMP_ASM+0xe>
     1f6:	0004                	.2byte	0x4
     1f8:	0800                	.2byte	0x800
     1fa:	14e4                	.2byte	0x14e4
     1fc:	0000                	.2byte	0x0
     1fe:	0356                	.2byte	0x356
     200:	0000                	.2byte	0x0
     202:	0500                	.2byte	0x500
     204:	0056                	.2byte	0x56
     206:	0000                	.2byte	0x0
     208:	00000217          	auipc	tp,0x0
     20c:	2004                	.2byte	0x2004
     20e:	0001                	.2byte	0x1
     210:	2d00                	.2byte	0x2d00
     212:	009a                	.2byte	0x9a
     214:	0000                	.2byte	0x0
     216:	0500                	.2byte	0x500
     218:	0000007b          	.4byte	0x7b
     21c:	0238                	.2byte	0x238
     21e:	0000                	.2byte	0x0
     220:	7501                	.2byte	0x7501
     222:	0002                	.2byte	0x2
     224:	2d00                	.2byte	0x2d00
     226:	0348                	.2byte	0x348
     228:	0000                	.2byte	0x0
     22a:	0429                	.2byte	0x429
     22c:	0000                	.2byte	0x0
     22e:	2408                	.2byte	0x2408
     230:	0015                	.2byte	0x15
     232:	5600                	.2byte	0x5600
     234:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
     238:	8e05                	.2byte	0x8e05
     23a:	0000                	.2byte	0x0
     23c:	f100                	.2byte	0xf100
     23e:	0002                	.2byte	0x2
     240:	0100                	.2byte	0x100
     242:	016d                	.2byte	0x16d
     244:	0000                	.2byte	0x0
     246:	4f2e                	.2byte	0x4f2e
     248:	37000003          	lb	zero,880(zero) # 370 <temp_get+0x52>
     24c:	0004                	.2byte	0x4
     24e:	0100                	.2byte	0x100
     250:	0259                	.2byte	0x259
     252:	0000                	.2byte	0x0
     254:	4f2e                	.2byte	0x4f2e
     256:	4e000003          	lb	zero,1248(zero) # 4e0 <main+0x160>
     25a:	0004                	.2byte	0x4
     25c:	0100                	.2byte	0x100
     25e:	01fd                	.2byte	0x1fd
     260:	0000                	.2byte	0x0
     262:	4f2e                	.2byte	0x4f2e
     264:	71000003          	lb	zero,1808(zero) # 710 <set_gpio_pin_irq_en+0x14>
     268:	0004                	.2byte	0x4
     26a:	0100                	.2byte	0x100
     26c:	0189                	.2byte	0x189
     26e:	0000                	.2byte	0x0
     270:	4f2e                	.2byte	0x4f2e
     272:	8f000003          	lb	zero,-1808(zero) # fffff8f0 <_stack_start+0xffef78f0>
     276:	0004                	.2byte	0x4
     278:	0100                	.2byte	0x100
     27a:	0000022b          	.4byte	0x22b
     27e:	4f2e                	.2byte	0x4f2e
     280:	ab000003          	lb	zero,-1360(zero) # fffffab0 <_stack_start+0xffef7ab0>
     284:	0004                	.2byte	0x4
     286:	0900                	.2byte	0x900
     288:	00a1                	.2byte	0xa1
     28a:	0000                	.2byte	0x0
     28c:	0d01                	.2byte	0xd01
     28e:	0001                	.2byte	0x1
     290:	2e00                	.2byte	0x2e00
     292:	0000034f          	.4byte	0x34f
     296:	04c2                	.2byte	0x4c2
     298:	0000                	.2byte	0x0
     29a:	f801                	.2byte	0xf801
     29c:	0001                	.2byte	0x1
     29e:	2e00                	.2byte	0x2e00
     2a0:	0000034f          	.4byte	0x34f
     2a4:	04dd                	.2byte	0x4dd
     2a6:	0000                	.2byte	0x0
     2a8:	c001                	.2byte	0xc001
     2aa:	0001                	.2byte	0x1
     2ac:	2e00                	.2byte	0x2e00
     2ae:	0000034f          	.4byte	0x34f
     2b2:	04fa                	.2byte	0x4fa
     2b4:	0000                	.2byte	0x0
     2b6:	bb01                	.2byte	0xbb01
     2b8:	0001                	.2byte	0x1
     2ba:	2e00                	.2byte	0x2e00
     2bc:	0000034f          	.4byte	0x34f
     2c0:	0511                	.2byte	0x511
     2c2:	0000                	.2byte	0x0
     2c4:	c801                	.2byte	0xc801
     2c6:	0000                	.2byte	0x0
     2c8:	2e00                	.2byte	0x2e00
     2ca:	0000034f          	.4byte	0x34f
     2ce:	0528                	.2byte	0x528
     2d0:	0000                	.2byte	0x0
     2d2:	c301                	.2byte	0xc301
     2d4:	0000                	.2byte	0x0
     2d6:	2e00                	.2byte	0x2e00
     2d8:	0000034f          	.4byte	0x34f
     2dc:	056a                	.2byte	0x56a
     2de:	0000                	.2byte	0x0
     2e0:	5f02                	.2byte	0x5f02
     2e2:	6d5f 2e00 4f03      	.byte	0x5f, 0x6d, 0x00, 0x2e, 0x03, 0x4f
     2e8:	ac000003          	lb	zero,-1344(zero) # fffffac0 <_stack_start+0xffef7ac0>
     2ec:	0005                	.2byte	0x5
     2ee:	0000                	.2byte	0x0
     2f0:	1400                	.2byte	0x1400
     2f2:	16c8                	.2byte	0x16c8
     2f4:	0000                	.2byte	0x0
     2f6:	0064                	.2byte	0x64
     2f8:	0000                	.2byte	0x0
     2fa:	00000337          	lui	t1,0x0
     2fe:	db01                	.2byte	0xdb01
     300:	0000                	.2byte	0x0
     302:	2f00                	.2byte	0x2f00
     304:	002d                	.2byte	0x2d
     306:	0000                	.2byte	0x0
     308:	000005d3          	.4byte	0x5d3
     30c:	0415                	.2byte	0x415
     30e:	01a4                	.2byte	0x1a4
     310:	0000                	.2byte	0x0
     312:	0003482f          	.4byte	0x3482f
     316:	0400                	.2byte	0x400
     318:	01e1                	.2byte	0x1e1
     31a:	0000                	.2byte	0x0
     31c:	0003482f          	.4byte	0x3482f
     320:	0400                	.2byte	0x400
     322:	0156                	.2byte	0x156
     324:	0000                	.2byte	0x0
     326:	0003482f          	.4byte	0x3482f
     32a:	0400                	.2byte	0x400
     32c:	00f6                	.2byte	0xf6
     32e:	0000                	.2byte	0x0
     330:	00034f2f          	.4byte	0x34f2f
     334:	0000                	.2byte	0x0
     336:	0900                	.2byte	0x900
     338:	00bd                	.2byte	0xbd
     33a:	0000                	.2byte	0x0
     33c:	0004                	.2byte	0x4
     33e:	0000                	.2byte	0x0
     340:	2f00                	.2byte	0x2f00
     342:	009a                	.2byte	0x9a
     344:	0000                	.2byte	0x0
     346:	0000                	.2byte	0x0
     348:	1d050403          	lb	s0,464(a0)
     34c:	0002                	.2byte	0x2
     34e:	0300                	.2byte	0x300
     350:	0704                	.2byte	0x704
     352:	000001cf          	.4byte	0x1cf
     356:	cd16                	.2byte	0xcd16
     358:	0000                	.2byte	0x0
     35a:	cd00                	.2byte	0xcd00
     35c:	0000                	.2byte	0x0
     35e:	0000                	.2byte	0x0
     360:	01f8                	.2byte	0x1f8
     362:	0000                	.2byte	0x0
     364:	0005                	.2byte	0x5
     366:	0401                	.2byte	0x401
     368:	014c                	.2byte	0x14c
     36a:	0000                	.2byte	0x0
     36c:	0000130b          	.4byte	0x130b
     370:	1d00                	.2byte	0x1d00
     372:	00e4                	.2byte	0xe4
     374:	0000                	.2byte	0x0
     376:	0000                	.2byte	0x0
     378:	0000                	.2byte	0x0
     37a:	1748                	.2byte	0x1748
     37c:	0000                	.2byte	0x0
     37e:	00dc                	.2byte	0xdc
     380:	0000                	.2byte	0x0
     382:	0818                	.2byte	0x818
     384:	0000                	.2byte	0x0
     386:	0401                	.2byte	0x401
     388:	bb04                	.2byte	0xbb04
     38a:	0004                	.2byte	0x4
     38c:	0400                	.2byte	0x400
     38e:	02c0                	.2byte	0x2c0
     390:	0000                	.2byte	0x0
     392:	5002                	.2byte	0x5002
     394:	390d                	.2byte	0x390d
     396:	0000                	.2byte	0x0
     398:	0c00                	.2byte	0xc00
     39a:	0504                	.2byte	0x504
     39c:	6e69                	.2byte	0x6e69
     39e:	0074                	.2byte	0x74
     3a0:	0101                	.2byte	0x101
     3a2:	1406                	.2byte	0x1406
     3a4:	0001                	.2byte	0x1
     3a6:	0100                	.2byte	0x100
     3a8:	0508                	.2byte	0x508
     3aa:	0218                	.2byte	0x218
     3ac:	0000                	.2byte	0x0
     3ae:	0101                	.2byte	0x101
     3b0:	1208                	.2byte	0x1208
     3b2:	0001                	.2byte	0x1
     3b4:	0100                	.2byte	0x100
     3b6:	0704                	.2byte	0x704
     3b8:	01d4                	.2byte	0x1d4
     3ba:	0000                	.2byte	0x0
     3bc:	0801                	.2byte	0x801
     3be:	0001ca07          	.4byte	0x1ca07
     3c2:	0100                	.2byte	0x100
     3c4:	0702                	.2byte	0x702
     3c6:	00000143          	.4byte	0x143
     3ca:	5204                	.2byte	0x5204
     3cc:	0002                	.2byte	0x2
     3ce:	0300                	.2byte	0x300
     3d0:	0f45                	.2byte	0xf45
     3d2:	0026                	.2byte	0x26
     3d4:	0000                	.2byte	0x0
     3d6:	040d                	.2byte	0x40d
     3d8:	a6034a03          	lbu	s4,-1440(t1) # fffffa60 <_stack_start+0xffef7a60>
     3dc:	0000                	.2byte	0x0
     3de:	0500                	.2byte	0x500
     3e0:	01c5                	.2byte	0x1c5
     3e2:	0000                	.2byte	0x0
     3e4:	5551                	.2byte	0x5551
     3e6:	0000                	.2byte	0x0
     3e8:	1700                	.2byte	0x1700
     3ea:	0e00                	.2byte	0xe00
     3ec:	7865                	.2byte	0x7865
     3ee:	0070                	.2byte	0x70
     3f0:	550e5203          	lhu	tp,1360(t3)
     3f4:	0000                	.2byte	0x0
     3f6:	0800                	.2byte	0x800
     3f8:	013e0517          	auipc	a0,0x13e0
     3fc:	0000                	.2byte	0x0
     3fe:	00005553          	.4byte	0x5553
     402:	0100                	.2byte	0x100
     404:	001f 460f 0002      	.byte	0x1f, 0x00, 0x0f, 0x46, 0x02, 0x00
     40a:	0400                	.2byte	0x400
     40c:	cc074703          	lbu	a4,-832(a4)
     410:	0000                	.2byte	0x0
     412:	1000                	.2byte	0x1000
     414:	6c66                	.2byte	0x6c66
     416:	0074                	.2byte	0x74
     418:	6a0a4903          	lbu	s2,1696(s4)
     41c:	0000                	.2byte	0x0
     41e:	1100                	.2byte	0x1100
     420:	0226                	.2byte	0x226
     422:	0000                	.2byte	0x0
     424:	76055503          	lhu	a0,1888(a0) # 13e0b58 <_stack_start+0x12d8b58>
     428:	0000                	.2byte	0x0
     42a:	0000                	.2byte	0x0
     42c:	a612                	.2byte	0xa612
     42e:	0002                	.2byte	0x2
     430:	0100                	.2byte	0x100
     432:	002d0123          	sb	sp,2(s10)
     436:	0000                	.2byte	0x0
     438:	1748                	.2byte	0x1748
     43a:	0000                	.2byte	0x0
     43c:	00dc                	.2byte	0xdc
     43e:	0000                	.2byte	0x0
     440:	9c01                	.2byte	0x9c01
     442:	01ed                	.2byte	0x1ed
     444:	0000                	.2byte	0x0
     446:	6106                	.2byte	0x6106
     448:	1100                	.2byte	0x1100
     44a:	006a                	.2byte	0x6a
     44c:	0000                	.2byte	0x0
     44e:	05ec                	.2byte	0x5ec
     450:	0000                	.2byte	0x0
     452:	6206                	.2byte	0x6206
     454:	1b00                	.2byte	0x1b00
     456:	006a                	.2byte	0x6a
     458:	0000                	.2byte	0x0
     45a:	0608                	.2byte	0x608
     45c:	0000                	.2byte	0x0
     45e:	0000d607          	.4byte	0xd607
     462:	3900                	.2byte	0x3900
     464:	0000                	.2byte	0x0
     466:	0700                	.2byte	0x700
     468:	0290                	.2byte	0x290
     46a:	0000                	.2byte	0x0
     46c:	0039                	.2byte	0x39
     46e:	0000                	.2byte	0x0
     470:	4108                	.2byte	0x4108
     472:	635f 2600 01ed      	.byte	0x5f, 0x63, 0x00, 0x26, 0xed, 0x01
     478:	0000                	.2byte	0x0
     47a:	4102                	.2byte	0x4102
     47c:	735f 2600 ed03      	.byte	0x5f, 0x73, 0x00, 0x26, 0x03, 0xed
     482:	0001                	.2byte	0x1
     484:	0100                	.2byte	0x100
     486:	025f 5f41 0065      	.byte	0x5f, 0x02, 0x41, 0x5f, 0x65, 0x00
     48c:	0326                	.2byte	0x326
     48e:	01ed                	.2byte	0x1ed
     490:	0000                	.2byte	0x0
     492:	5d01                	.2byte	0x5d01
     494:	4102                	.2byte	0x4102
     496:	665f 2600 f403      	.byte	0x5f, 0x66, 0x00, 0x26, 0x03, 0xf4
     49c:	0001                	.2byte	0x1
     49e:	0100                	.2byte	0x100
     4a0:	085c                	.2byte	0x85c
     4a2:	5f42                	.2byte	0x5f42
     4a4:	ed270063          	beq	a4,s2,fffffb64 <_stack_start+0xffef7b64>
     4a8:	0001                	.2byte	0x1
     4aa:	0200                	.2byte	0x200
     4ac:	5f42                	.2byte	0x5f42
     4ae:	03270073          	.4byte	0x3270073
     4b2:	01ed                	.2byte	0x1ed
     4b4:	0000                	.2byte	0x0
     4b6:	5b01                	.2byte	0x5b01
     4b8:	655f4213          	xor	tp,t5,1621
     4bc:	0100                	.2byte	0x100
     4be:	01ed0327          	.4byte	0x1ed0327
     4c2:	0000                	.2byte	0x0
     4c4:	0624                	.2byte	0x624
     4c6:	0000                	.2byte	0x0
     4c8:	4202                	.2byte	0x4202
     4ca:	665f 2700 f403      	.byte	0x5f, 0x66, 0x00, 0x27, 0x03, 0xf4
     4d0:	0001                	.2byte	0x1
     4d2:	0100                	.2byte	0x100
     4d4:	025e                	.2byte	0x25e
     4d6:	0072                	.2byte	0x72
     4d8:	0b28                	.2byte	0xb28
     4da:	002d                	.2byte	0x2d
     4dc:	0000                	.2byte	0x0
     4de:	5a01                	.2byte	0x5a01
     4e0:	4814                	.2byte	0x4814
     4e2:	18000017          	auipc	zero,0x18000
     4e6:	0000                	.2byte	0x0
     4e8:	9800                	.2byte	0x9800
     4ea:	0001                	.2byte	0x1
     4ec:	0300                	.2byte	0x300
     4ee:	0120                	.2byte	0x120
     4f0:	0000                	.2byte	0x0
     4f2:	0000a62b          	.4byte	0xa62b
     4f6:	0000                	.2byte	0x0
     4f8:	dc15                	.2byte	0xdc15
     4fa:	0000                	.2byte	0x0
     4fc:	ac00                	.2byte	0xac00
     4fe:	0001                	.2byte	0x1
     500:	0300                	.2byte	0x300
     502:	0120                	.2byte	0x120
     504:	0000                	.2byte	0x0
     506:	a62c                	.2byte	0xa62c
     508:	0000                	.2byte	0x0
     50a:	0000                	.2byte	0x0
     50c:	bc09                	.2byte	0xbc09
     50e:	0001                	.2byte	0x1
     510:	0300                	.2byte	0x300
     512:	0295                	.2byte	0x295
     514:	0000                	.2byte	0x0
     516:	392d                	.2byte	0x392d
     518:	0000                	.2byte	0x0
     51a:	0000                	.2byte	0x0
     51c:	cc09                	.2byte	0xcc09
     51e:	0001                	.2byte	0x1
     520:	0300                	.2byte	0x300
     522:	0295                	.2byte	0x295
     524:	0000                	.2byte	0x0
     526:	392d                	.2byte	0x392d
     528:	0000                	.2byte	0x0
     52a:	0000                	.2byte	0x0
     52c:	ef16                	.2byte	0xef16
     52e:	0000                	.2byte	0x0
     530:	0a00                	.2byte	0xa00
     532:	02ae                	.2byte	0x2ae
     534:	0000                	.2byte	0x0
     536:	0039                	.2byte	0x39
     538:	0000                	.2byte	0x0
     53a:	067d                	.2byte	0x67d
     53c:	0000                	.2byte	0x0
     53e:	ce0a                	.2byte	0xce0a
     540:	0002                	.2byte	0x2
     542:	3900                	.2byte	0x3900
     544:	0000                	.2byte	0x0
     546:	9c00                	.2byte	0x9c00
     548:	0006                	.2byte	0x6
     54a:	0000                	.2byte	0x0
     54c:	0100                	.2byte	0x100
     54e:	0504                	.2byte	0x504
     550:	021d                	.2byte	0x21d
     552:	0000                	.2byte	0x0
     554:	0401                	.2byte	0x401
     556:	0001cf07          	.4byte	0x1cf07
     55a:	0000                	.2byte	0x0
     55c:	0350                	.2byte	0x350
     55e:	0000                	.2byte	0x0
     560:	0005                	.2byte	0x5
     562:	0401                	.2byte	0x401
     564:	000002ab          	.4byte	0x2ab
     568:	0000130b          	.4byte	0x130b
     56c:	1d00                	.2byte	0x1d00
     56e:	00000133          	add	sp,zero,zero
     572:	0000                	.2byte	0x0
     574:	0000                	.2byte	0x0
     576:	1824                	.2byte	0x1824
     578:	0000                	.2byte	0x0
     57a:	0334                	.2byte	0x334
     57c:	0000                	.2byte	0x0
     57e:	0b0e                	.2byte	0xb0e
     580:	0000                	.2byte	0x0
     582:	bb040403          	lb	s0,-1104(s0)
     586:	0004                	.2byte	0x4
     588:	0c00                	.2byte	0xc00
     58a:	0504                	.2byte	0x504
     58c:	6e69                	.2byte	0x6e69
     58e:	0074                	.2byte	0x74
     590:	14060103          	lb	sp,320(a2) # 13e01cc <_stack_start+0x12d81cc>
     594:	0001                	.2byte	0x1
     596:	0300                	.2byte	0x300
     598:	0508                	.2byte	0x508
     59a:	0218                	.2byte	0x218
     59c:	0000                	.2byte	0x0
     59e:	12080103          	lb	sp,288(a6)
     5a2:	0001                	.2byte	0x1
     5a4:	0300                	.2byte	0x300
     5a6:	0704                	.2byte	0x704
     5a8:	01d4                	.2byte	0x1d4
     5aa:	0000                	.2byte	0x0
     5ac:	ca070803          	lb	a6,-864(a4)
     5b0:	0001                	.2byte	0x1
     5b2:	0d00                	.2byte	0xd00
     5b4:	031c                	.2byte	0x31c
     5b6:	0000                	.2byte	0x0
     5b8:	4e02                	.2byte	0x4e02
     5ba:	1601                	.2byte	0x1601
     5bc:	0064                	.2byte	0x64
     5be:	0000                	.2byte	0x0
     5c0:	43070203          	lb	tp,1072(a4)
     5c4:	0001                	.2byte	0x1
     5c6:	0e00                	.2byte	0xe00
     5c8:	0252                	.2byte	0x252
     5ca:	0000                	.2byte	0x0
     5cc:	260f4503          	lbu	a0,608(t5)
     5d0:	0000                	.2byte	0x0
     5d2:	0f00                	.2byte	0xf00
     5d4:	0304                	.2byte	0x304
     5d6:	034a                	.2byte	0x34a
     5d8:	000000a7          	.4byte	0xa7
     5dc:	c506                	.2byte	0xc506
     5de:	0001                	.2byte	0x1
     5e0:	5100                	.2byte	0x5100
     5e2:	0049                	.2byte	0x49
     5e4:	0000                	.2byte	0x0
     5e6:	65100017          	auipc	zero,0x65100
     5ea:	7078                	.2byte	0x7078
     5ec:	0300                	.2byte	0x300
     5ee:	0e52                	.2byte	0xe52
     5f0:	0049                	.2byte	0x49
     5f2:	0000                	.2byte	0x0
     5f4:	1708                	.2byte	0x1708
     5f6:	3e06                	.2byte	0x3e06
     5f8:	0001                	.2byte	0x1
     5fa:	5300                	.2byte	0x5300
     5fc:	0049                	.2byte	0x49
     5fe:	0000                	.2byte	0x0
     600:	1f01                	.2byte	0x1f01
     602:	1100                	.2byte	0x1100
     604:	0246                	.2byte	0x246
     606:	0000                	.2byte	0x0
     608:	0304                	.2byte	0x304
     60a:	00cd0747          	.4byte	0xcd0747
     60e:	0000                	.2byte	0x0
     610:	6612                	.2byte	0x6612
     612:	746c                	.2byte	0x746c
     614:	0300                	.2byte	0x300
     616:	0a49                	.2byte	0xa49
     618:	0000006b          	.4byte	0x6b
     61c:	00022613          	slti	a2,tp,0
     620:	0300                	.2byte	0x300
     622:	0555                	.2byte	0x555
     624:	00000077          	.4byte	0x77
     628:	1400                	.2byte	0x1400
     62a:	0342                	.2byte	0x342
     62c:	0000                	.2byte	0x0
     62e:	2301                	.2byte	0x2301
     630:	6b01                	.2byte	0x6b01
     632:	0000                	.2byte	0x0
     634:	2400                	.2byte	0x2400
     636:	0018                	.2byte	0x18
     638:	3400                	.2byte	0x3400
     63a:	01000003          	lb	zero,16(zero) # 10 <__DYNAMIC+0x10>
     63e:	3c9c                	.2byte	0x3c9c
     640:	07000003          	lb	zero,112(zero) # 70 <__DYNAMIC+0x70>
     644:	0061                	.2byte	0x61
     646:	6b12                	.2byte	0x6b12
     648:	0000                	.2byte	0x0
     64a:	cd00                	.2byte	0xcd00
     64c:	0006                	.2byte	0x6
     64e:	0700                	.2byte	0x700
     650:	0062                	.2byte	0x62
     652:	6b1c                	.2byte	0x6b1c
     654:	0000                	.2byte	0x0
     656:	1f00                	.2byte	0x1f00
     658:	01000007          	.4byte	0x1000007
     65c:	00d6                	.2byte	0xd6
     65e:	0000                	.2byte	0x0
     660:	2d25                	.2byte	0x2d25
     662:	0000                	.2byte	0x0
     664:	7700                	.2byte	0x7700
     666:	15000007          	.4byte	0x15000007
     66a:	0290                	.2byte	0x290
     66c:	0000                	.2byte	0x0
     66e:	2501                	.2byte	0x2501
     670:	00002d03          	lw	s10,0(zero) # 0 <__DYNAMIC>
     674:	0000                	.2byte	0x0
     676:	4102                	.2byte	0x4102
     678:	635f 2600 3c03      	.byte	0x5f, 0x63, 0x00, 0x26, 0x03, 0x3c
     67e:	90000003          	lb	zero,-1792(zero) # fffff900 <_stack_start+0xffef7900>
     682:	02000007          	.4byte	0x2000007
     686:	5f41                	.2byte	0x5f41
     688:	03260073          	.4byte	0x3260073
     68c:	033c                	.2byte	0x33c
     68e:	0000                	.2byte	0x0
     690:	000007b3          	add	a5,zero,zero
     694:	4102                	.2byte	0x4102
     696:	655f 2600 3c03      	.byte	0x5f, 0x65, 0x00, 0x26, 0x03, 0x3c
     69c:	d4000003          	lb	zero,-704(zero) # fffffd40 <_stack_start+0xffef7d40>
     6a0:	02000007          	.4byte	0x2000007
     6a4:	5f41                	.2byte	0x5f41
     6a6:	0066                	.2byte	0x66
     6a8:	0326                	.2byte	0x326
     6aa:	00000343          	.4byte	0x343
     6ae:	0000084f          	.4byte	0x84f
     6b2:	4202                	.2byte	0x4202
     6b4:	635f 2700 3c03      	.byte	0x5f, 0x63, 0x00, 0x27, 0x03, 0x3c
     6ba:	a2000003          	lb	zero,-1504(zero) # fffffa20 <_stack_start+0xffef7a20>
     6be:	0008                	.2byte	0x8
     6c0:	0200                	.2byte	0x200
     6c2:	5f42                	.2byte	0x5f42
     6c4:	03270073          	.4byte	0x3270073
     6c8:	033c                	.2byte	0x33c
     6ca:	0000                	.2byte	0x0
     6cc:	08d0                	.2byte	0x8d0
     6ce:	0000                	.2byte	0x0
     6d0:	4202                	.2byte	0x4202
     6d2:	655f 2700 3c03      	.byte	0x5f, 0x65, 0x00, 0x27, 0x03, 0x3c
     6d8:	f1000003          	lb	zero,-240(zero) # ffffff10 <_stack_start+0xffef7f10>
     6dc:	0008                	.2byte	0x8
     6de:	0200                	.2byte	0x200
     6e0:	5f42                	.2byte	0x5f42
     6e2:	0066                	.2byte	0x66
     6e4:	03430327          	.4byte	0x3430327
     6e8:	0000                	.2byte	0x0
     6ea:	093d                	.2byte	0x93d
     6ec:	0000                	.2byte	0x0
     6ee:	5202                	.2byte	0x5202
     6f0:	635f 2800 3c03      	.byte	0x5f, 0x63, 0x00, 0x28, 0x03, 0x3c
     6f6:	7b000003          	lb	zero,1968(zero) # 7b0 <set_gpio_pin_irq_type+0x52>
     6fa:	0009                	.2byte	0x9
     6fc:	0200                	.2byte	0x200
     6fe:	5f52                	.2byte	0x5f52
     700:	03280073          	.4byte	0x3280073
     704:	033c                	.2byte	0x33c
     706:	0000                	.2byte	0x0
     708:	099f 0000 5202      	.byte	0x9f, 0x09, 0x00, 0x00, 0x02, 0x52
     70e:	655f 2800 3c03      	.byte	0x5f, 0x65, 0x00, 0x28, 0x03, 0x3c
     714:	02000003          	lb	zero,32(zero) # 20 <__DYNAMIC+0x20>
     718:	000a                	.2byte	0xa
     71a:	0200                	.2byte	0x200
     71c:	5f52                	.2byte	0x5f52
     71e:	0066                	.2byte	0x66
     720:	0328                	.2byte	0x328
     722:	00000343          	.4byte	0x343
     726:	0a52                	.2byte	0xa52
     728:	0000                	.2byte	0x0
     72a:	7202                	.2byte	0x7202
     72c:	2900                	.2byte	0x2900
     72e:	6b0a                	.2byte	0x6b0a
     730:	0000                	.2byte	0x0
     732:	a400                	.2byte	0xa400
     734:	000a                	.2byte	0xa
     736:	0500                	.2byte	0x500
     738:	0129                	.2byte	0x129
     73a:	0000                	.2byte	0x0
     73c:	000001ef          	jal	gp,73c <set_gpio_pin_irq_en+0x40>
     740:	2004                	.2byte	0x2004
     742:	0001                	.2byte	0x1
     744:	2c00                	.2byte	0x2c00
     746:	000000a7          	.4byte	0xa7
     74a:	0500                	.2byte	0x500
     74c:	0160                	.2byte	0x160
     74e:	0000                	.2byte	0x0
     750:	0210                	.2byte	0x210
     752:	0000                	.2byte	0x0
     754:	7501                	.2byte	0x7501
     756:	0002                	.2byte	0x2
     758:	2c00                	.2byte	0x2c00
     75a:	033c                	.2byte	0x33c
     75c:	0000                	.2byte	0x0
     75e:	0ac2                	.2byte	0xac2
     760:	0000                	.2byte	0x0
     762:	f408                	.2byte	0xf408
     764:	0019                	.2byte	0x19
     766:	4a00                	.2byte	0x4a00
     768:	00000003          	lb	zero,0(zero) # 0 <__DYNAMIC>
     76c:	7305                	.2byte	0x7305
     76e:	0001                	.2byte	0x1
     770:	2400                	.2byte	0x2400
     772:	0002                	.2byte	0x2
     774:	0400                	.2byte	0x400
     776:	0120                	.2byte	0x120
     778:	0000                	.2byte	0x0
     77a:	a72d                	.2byte	0xa72d
     77c:	0000                	.2byte	0x0
     77e:	0000                	.2byte	0x0
     780:	9805                	.2byte	0x9805
     782:	0001                	.2byte	0x1
     784:	4500                	.2byte	0x4500
     786:	0002                	.2byte	0x2
     788:	0100                	.2byte	0x100
     78a:	0275                	.2byte	0x275
     78c:	0000                	.2byte	0x0
     78e:	3c2d                	.2byte	0x3c2d
     790:	d0000003          	lb	zero,-768(zero) # fffffd00 <_stack_start+0xffef7d00>
     794:	000a                	.2byte	0xa
     796:	0800                	.2byte	0x800
     798:	1a34                	.2byte	0x1a34
     79a:	0000                	.2byte	0x0
     79c:	034a                	.2byte	0x34a
     79e:	0000                	.2byte	0x0
     7a0:	0900                	.2byte	0x900
     7a2:	18e0                	.2byte	0x18e0
     7a4:	0000                	.2byte	0x0
     7a6:	006c                	.2byte	0x6c
     7a8:	0000                	.2byte	0x0
     7aa:	02e5                	.2byte	0x2e5
     7ac:	0000                	.2byte	0x0
     7ae:	e001                	.2byte	0xe001
     7b0:	0002                	.2byte	0x2
     7b2:	2e00                	.2byte	0x2e00
     7b4:	00000343          	.4byte	0x343
     7b8:	0ade                	.2byte	0xade
     7ba:	0000                	.2byte	0x0
     7bc:	f901                	.2byte	0xf901
     7be:	0002                	.2byte	0x2
     7c0:	2e00                	.2byte	0x2e00
     7c2:	00000343          	.4byte	0x343
     7c6:	0b00                	.2byte	0xb00
     7c8:	0000                	.2byte	0x0
     7ca:	ab0a                	.2byte	0xab0a
     7cc:	0001                	.2byte	0x1
     7ce:	0100                	.2byte	0x100
     7d0:	0324                	.2byte	0x324
     7d2:	0000                	.2byte	0x0
     7d4:	432e                	.2byte	0x432e
     7d6:	1e000003          	lb	zero,480(zero) # 1e0 <ecall_insn_handler+0x2>
     7da:	0100000b          	.4byte	0x100000b
     7de:	0329                	.2byte	0x329
     7e0:	0000                	.2byte	0x0
     7e2:	432e                	.2byte	0x432e
     7e4:	2a000003          	lb	zero,672(zero) # 2a0 <hex_init+0x14>
     7e8:	0100000b          	.4byte	0x100000b
     7ec:	032e                	.2byte	0x32e
     7ee:	0000                	.2byte	0x0
     7f0:	432e                	.2byte	0x432e
     7f2:	51000003          	lb	zero,1296(zero) # 510 <main+0x190>
     7f6:	0100000b          	.4byte	0x100000b
     7fa:	00000333          	add	t1,zero,zero
     7fe:	432e                	.2byte	0x432e
     800:	5d000003          	lb	zero,1488(zero) # 5d0 <get_pin_function+0x2e>
     804:	0100000b          	.4byte	0x100000b
     808:	00000317          	auipc	t1,0x0
     80c:	572e                	.2byte	0x572e
     80e:	0000                	.2byte	0x0
     810:	7400                	.2byte	0x7400
     812:	0100000b          	.4byte	0x100000b
     816:	033d                	.2byte	0x33d
     818:	0000                	.2byte	0x0
     81a:	572e                	.2byte	0x572e
     81c:	0000                	.2byte	0x0
     81e:	8000                	.2byte	0x8000
     820:	0100000b          	.4byte	0x100000b
     824:	0312                	.2byte	0x312
     826:	0000                	.2byte	0x0
     828:	572e                	.2byte	0x572e
     82a:	0000                	.2byte	0x0
     82c:	8c00                	.2byte	0x8c00
     82e:	0100000b          	.4byte	0x100000b
     832:	0338                	.2byte	0x338
     834:	0000                	.2byte	0x0
     836:	572e                	.2byte	0x572e
     838:	0000                	.2byte	0x0
     83a:	9800                	.2byte	0x9800
     83c:	0000000b          	.4byte	0xb
     840:	0900                	.2byte	0x900
     842:	1ad8                	.2byte	0x1ad8
     844:	0000                	.2byte	0x0
     846:	0064                	.2byte	0x64
     848:	0000                	.2byte	0x0
     84a:	0000032b          	.4byte	0x32b
     84e:	db01                	.2byte	0xdb01
     850:	0000                	.2byte	0x0
     852:	2f00                	.2byte	0x2f00
     854:	002d                	.2byte	0x2d
     856:	0000                	.2byte	0x0
     858:	0ba4                	.2byte	0xba4
     85a:	0000                	.2byte	0x0
     85c:	0416                	.2byte	0x416
     85e:	01a4                	.2byte	0x1a4
     860:	0000                	.2byte	0x0
     862:	00033c2f          	.4byte	0x33c2f
     866:	0400                	.2byte	0x400
     868:	01e1                	.2byte	0x1e1
     86a:	0000                	.2byte	0x0
     86c:	00033c2f          	.4byte	0x33c2f
     870:	0400                	.2byte	0x400
     872:	0156                	.2byte	0x156
     874:	0000                	.2byte	0x0
     876:	00033c2f          	.4byte	0x33c2f
     87a:	0400                	.2byte	0x400
     87c:	00f6                	.2byte	0xf6
     87e:	0000                	.2byte	0x0
     880:	0003432f          	.4byte	0x3432f
     884:	0000                	.2byte	0x0
     886:	0a00                	.2byte	0xa00
     888:	000001c7          	.4byte	0x1c7
     88c:	0004                	.2byte	0x4
     88e:	0000                	.2byte	0x0
     890:	2f00                	.2byte	0x2f00
     892:	000000a7          	.4byte	0xa7
     896:	0000                	.2byte	0x0
     898:	1d050403          	lb	s0,464(a0)
     89c:	0002                	.2byte	0x2
     89e:	0300                	.2byte	0x300
     8a0:	0704                	.2byte	0x704
     8a2:	000001cf          	.4byte	0x1cf
     8a6:	0000cd17          	auipc	s10,0xc
     8aa:	cd00                	.2byte	0xcd00
     8ac:	0000                	.2byte	0x0
     8ae:	0000                	.2byte	0x0
     8b0:	02e8                	.2byte	0x2e8
     8b2:	0000                	.2byte	0x0
     8b4:	0005                	.2byte	0x5
     8b6:	0401                	.2byte	0x401
     8b8:	0406                	.2byte	0x406
     8ba:	0000                	.2byte	0x0
     8bc:	0000130b          	.4byte	0x130b
     8c0:	1d00                	.2byte	0x1d00
     8c2:	017d                	.2byte	0x17d
     8c4:	0000                	.2byte	0x0
     8c6:	0000                	.2byte	0x0
     8c8:	0000                	.2byte	0x0
     8ca:	1b58                	.2byte	0x1b58
     8cc:	0000                	.2byte	0x0
     8ce:	04bc                	.2byte	0x4bc
     8d0:	0000                	.2byte	0x0
     8d2:	1289                	.2byte	0x1289
     8d4:	0000                	.2byte	0x0
     8d6:	0402                	.2byte	0x402
     8d8:	bb04                	.2byte	0xbb04
     8da:	0004                	.2byte	0x4
     8dc:	0c00                	.2byte	0xc00
     8de:	0504                	.2byte	0x504
     8e0:	6e69                	.2byte	0x6e69
     8e2:	0074                	.2byte	0x74
     8e4:	0102                	.2byte	0x102
     8e6:	1406                	.2byte	0x1406
     8e8:	0001                	.2byte	0x1
     8ea:	0200                	.2byte	0x200
     8ec:	0508                	.2byte	0x508
     8ee:	0218                	.2byte	0x218
     8f0:	0000                	.2byte	0x0
     8f2:	0102                	.2byte	0x102
     8f4:	1208                	.2byte	0x1208
     8f6:	0001                	.2byte	0x1
     8f8:	0200                	.2byte	0x200
     8fa:	0704                	.2byte	0x704
     8fc:	01d4                	.2byte	0x1d4
     8fe:	0000                	.2byte	0x0
     900:	0802                	.2byte	0x802
     902:	0001ca07          	.4byte	0x1ca07
     906:	0200                	.2byte	0x200
     908:	0702                	.2byte	0x702
     90a:	00000143          	.4byte	0x143
     90e:	520d                	.2byte	0x520d
     910:	0002                	.2byte	0x2
     912:	0200                	.2byte	0x200
     914:	0f45                	.2byte	0xf45
     916:	0026                	.2byte	0x26
     918:	0000                	.2byte	0x0
     91a:	040e                	.2byte	0x40e
     91c:	4a02                	.2byte	0x4a02
     91e:	00009a03          	lh	s4,0(ra)
     922:	0800                	.2byte	0x800
     924:	01c5                	.2byte	0x1c5
     926:	0000                	.2byte	0x0
     928:	4951                	.2byte	0x4951
     92a:	0000                	.2byte	0x0
     92c:	1700                	.2byte	0x1700
     92e:	0f00                	.2byte	0xf00
     930:	7865                	.2byte	0x7865
     932:	0070                	.2byte	0x70
     934:	5202                	.2byte	0x5202
     936:	490e                	.2byte	0x490e
     938:	0000                	.2byte	0x0
     93a:	0800                	.2byte	0x800
     93c:	013e0817          	auipc	a6,0x13e0
     940:	0000                	.2byte	0x0
     942:	00004953          	.4byte	0x4953
     946:	0100                	.2byte	0x100
     948:	001f 4610 0002      	.byte	0x1f, 0x00, 0x10, 0x46, 0x02, 0x00
     94e:	0400                	.2byte	0x400
     950:	4702                	.2byte	0x4702
     952:	0000c007          	.4byte	0xc007
     956:	1100                	.2byte	0x1100
     958:	6c66                	.2byte	0x6c66
     95a:	0074                	.2byte	0x74
     95c:	4902                	.2byte	0x4902
     95e:	5e0a                	.2byte	0x5e0a
     960:	0000                	.2byte	0x0
     962:	1200                	.2byte	0x1200
     964:	0226                	.2byte	0x226
     966:	0000                	.2byte	0x0
     968:	5502                	.2byte	0x5502
     96a:	6a05                	.2byte	0x6a05
     96c:	0000                	.2byte	0x0
     96e:	0000                	.2byte	0x0
     970:	0003eb13          	or	s6,t2,0
     974:	0100                	.2byte	0x100
     976:	005e0123          	sb	t0,2(t3)
     97a:	0000                	.2byte	0x0
     97c:	1b58                	.2byte	0x1b58
     97e:	0000                	.2byte	0x0
     980:	04bc                	.2byte	0x4bc
     982:	0000                	.2byte	0x0
     984:	9c01                	.2byte	0x9c01
     986:	02d4                	.2byte	0x2d4
     988:	0000                	.2byte	0x0
     98a:	6109                	.2byte	0x6109
     98c:	1200                	.2byte	0x1200
     98e:	005e                	.2byte	0x5e
     990:	0000                	.2byte	0x0
     992:	0bbd                	.2byte	0xbbd
     994:	0000                	.2byte	0x0
     996:	6209                	.2byte	0x6209
     998:	1c00                	.2byte	0x1c00
     99a:	005e                	.2byte	0x5e
     99c:	0000                	.2byte	0x0
     99e:	0bd9                	.2byte	0xbd9
     9a0:	0000                	.2byte	0x0
     9a2:	d606                	.2byte	0xd606
     9a4:	0000                	.2byte	0x0
     9a6:	2500                	.2byte	0x2500
     9a8:	002d                	.2byte	0x2d
     9aa:	0000                	.2byte	0x0
     9ac:	0bf5                	.2byte	0xbf5
     9ae:	0000                	.2byte	0x0
     9b0:	9014                	.2byte	0x9014
     9b2:	0002                	.2byte	0x2
     9b4:	0100                	.2byte	0x100
     9b6:	0325                	.2byte	0x325
     9b8:	002d                	.2byte	0x2d
     9ba:	0000                	.2byte	0x0
     9bc:	0700                	.2byte	0x700
     9be:	5f41                	.2byte	0x5f41
     9c0:	d4260063          	beq	a2,sp,ffffff00 <_stack_start+0xffef7f00>
     9c4:	0002                	.2byte	0x2
     9c6:	0100                	.2byte	0x100
     9c8:	5f41                	.2byte	0x5f41
     9ca:	03260073          	.4byte	0x3260073
     9ce:	02d4                	.2byte	0x2d4
     9d0:	0000                	.2byte	0x0
     9d2:	0c4a                	.2byte	0xc4a
     9d4:	0000                	.2byte	0x0
     9d6:	4101                	.2byte	0x4101
     9d8:	655f 2600 d403      	.byte	0x5f, 0x65, 0x00, 0x26, 0x03, 0xd4
     9de:	0002                	.2byte	0x2
     9e0:	1100                	.2byte	0x1100
     9e2:	000d                	.2byte	0xd
     9e4:	0100                	.2byte	0x100
     9e6:	5f41                	.2byte	0x5f41
     9e8:	0066                	.2byte	0x66
     9ea:	0326                	.2byte	0x326
     9ec:	000002db          	.4byte	0x2db
     9f0:	0e49                	.2byte	0xe49
     9f2:	0000                	.2byte	0x0
     9f4:	635f4207          	.4byte	0x635f4207
     9f8:	2700                	.2byte	0x2700
     9fa:	02d4                	.2byte	0x2d4
     9fc:	0000                	.2byte	0x0
     9fe:	4201                	.2byte	0x4201
     a00:	735f 2700 d403      	.byte	0x5f, 0x73, 0x00, 0x27, 0x03, 0xd4
     a06:	0002                	.2byte	0x2
     a08:	0b00                	.2byte	0xb00
     a0a:	0100000f          	fence	w,unknown
     a0e:	5f42                	.2byte	0x5f42
     a10:	0065                	.2byte	0x65
     a12:	02d40327          	.4byte	0x2d40327
     a16:	0000                	.2byte	0x0
     a18:	1042                	.2byte	0x1042
     a1a:	0000                	.2byte	0x0
     a1c:	4201                	.2byte	0x4201
     a1e:	665f 2700 db03      	.byte	0x5f, 0x66, 0x00, 0x27, 0x03, 0xdb
     a24:	0002                	.2byte	0x2
     a26:	a600                	.2byte	0xa600
     a28:	0010                	.2byte	0x10
     a2a:	0700                	.2byte	0x700
     a2c:	5f52                	.2byte	0x5f52
     a2e:	d4280063          	beq	a6,sp,ffffff6e <_stack_start+0xffef7f6e>
     a32:	0002                	.2byte	0x2
     a34:	0100                	.2byte	0x100
     a36:	5f52                	.2byte	0x5f52
     a38:	03280073          	.4byte	0x3280073
     a3c:	02d4                	.2byte	0x2d4
     a3e:	0000                	.2byte	0x0
     a40:	11cd                	.2byte	0x11cd
     a42:	0000                	.2byte	0x0
     a44:	5201                	.2byte	0x5201
     a46:	655f 2800 d403      	.byte	0x5f, 0x65, 0x00, 0x28, 0x03, 0xd4
     a4c:	0002                	.2byte	0x2
     a4e:	9f00                	.2byte	0x9f00
     a50:	0012                	.2byte	0x12
     a52:	0100                	.2byte	0x100
     a54:	5f52                	.2byte	0x5f52
     a56:	0066                	.2byte	0x66
     a58:	0328                	.2byte	0x328
     a5a:	000002db          	.4byte	0x2db
     a5e:	000013e7          	.4byte	0x13e7
     a62:	7201                	.2byte	0x7201
     a64:	2900                	.2byte	0x2900
     a66:	5e0a                	.2byte	0x5e0a
     a68:	0000                	.2byte	0x0
     a6a:	4200                	.2byte	0x4200
     a6c:	0015                	.2byte	0x15
     a6e:	0500                	.2byte	0x500
     a70:	01e6                	.2byte	0x1e6
     a72:	0000                	.2byte	0x0
     a74:	000001d3          	.4byte	0x1d3
     a78:	2004                	.2byte	0x2004
     a7a:	0001                	.2byte	0x1
     a7c:	2c00                	.2byte	0x2c00
     a7e:	009a                	.2byte	0x9a
     a80:	0000                	.2byte	0x0
     a82:	0500                	.2byte	0x500
     a84:	0214                	.2byte	0x214
     a86:	0000                	.2byte	0x0
     a88:	000001e7          	jalr	gp,zero # 0 <__DYNAMIC>
     a8c:	2004                	.2byte	0x2004
     a8e:	0001                	.2byte	0x1
     a90:	2d00                	.2byte	0x2d00
     a92:	009a                	.2byte	0x9a
     a94:	0000                	.2byte	0x0
     a96:	0500                	.2byte	0x500
     a98:	0000026f          	jal	tp,a98 <divu10+0x5c>
     a9c:	00000223          	sb	zero,4(zero) # 4 <__DYNAMIC+0x4>
     aa0:	00041403          	lh	s0,0(s0)
     aa4:	9800                	.2byte	0x9800
     aa6:	001c                	.2byte	0x1c
     aa8:	0300                	.2byte	0x300
     aaa:	0419                	.2byte	0x419
     aac:	0000                	.2byte	0x0
     aae:	1d44                	.2byte	0x1d44
     ab0:	0000                	.2byte	0x0
     ab2:	00041e03          	lh	t3,0(s0)
     ab6:	dc00                	.2byte	0xdc00
     ab8:	001c                	.2byte	0x1c
     aba:	0300                	.2byte	0x300
     abc:	0375                	.2byte	0x375
     abe:	0000                	.2byte	0x0
     ac0:	1ca4                	.2byte	0x1ca4
     ac2:	0000                	.2byte	0x0
     ac4:	f406                	.2byte	0xf406
     ac6:	2e000003          	lb	zero,736(zero) # 2e0 <temp_init+0x6>
     aca:	002d                	.2byte	0x2d
     acc:	0000                	.2byte	0x0
     ace:	1560                	.2byte	0x1560
     ad0:	0000                	.2byte	0x0
     ad2:	0500                	.2byte	0x500
     ad4:	0338                	.2byte	0x338
     ad6:	0000                	.2byte	0x0
     ad8:	0285                	.2byte	0x285
     ada:	0000                	.2byte	0x0
     adc:	0003a903          	lw	s2,0(t2)
     ae0:	fc00                	.2byte	0xfc00
     ae2:	001d                	.2byte	0x1d
     ae4:	0300                	.2byte	0x300
     ae6:	03ae                	.2byte	0x3ae
     ae8:	0000                	.2byte	0x0
     aea:	1ebc                	.2byte	0x1ebc
     aec:	0000                	.2byte	0x0
     aee:	0003b303          	.4byte	0x3b303
     af2:	2400                	.2byte	0x2400
     af4:	001e                	.2byte	0x1e
     af6:	0300                	.2byte	0x300
     af8:	03cd                	.2byte	0x3cd
     afa:	0000                	.2byte	0x0
     afc:	1f7c                	.2byte	0x1f7c
     afe:	0000                	.2byte	0x0
     b00:	00040b03          	lb	s6,0(s0)
     b04:	a400                	.2byte	0xa400
     b06:	001c                	.2byte	0x1c
     b08:	0600                	.2byte	0x600
     b0a:	03f4                	.2byte	0x3f4
     b0c:	0000                	.2byte	0x0
     b0e:	2d2e                	.2byte	0x2d2e
     b10:	0000                	.2byte	0x0
     b12:	d900                	.2byte	0xd900
     b14:	0015                	.2byte	0x15
     b16:	0a00                	.2byte	0xa00
     b18:	038a                	.2byte	0x38a
     b1a:	0000                	.2byte	0x0
     b1c:	9306                	.2byte	0x9306
     b1e:	2e000003          	lb	zero,736(zero) # 2e0 <temp_init+0x6>
     b22:	002d                	.2byte	0x2d
     b24:	0000                	.2byte	0x0
     b26:	168d                	.2byte	0x168d
     b28:	0000                	.2byte	0x0
     b2a:	8415                	.2byte	0x8415
     b2c:	001f e200 0002      	.byte	0x1f, 0x00, 0x00, 0xe2, 0x02, 0x00
     b32:	0000                	.2byte	0x0
     b34:	0500                	.2byte	0x500
     b36:	02dc                	.2byte	0x2dc
     b38:	0000                	.2byte	0x0
     b3a:	000002c3          	.4byte	0x2c3
     b3e:	d204                	.2byte	0xd204
     b40:	2f000003          	lb	zero,752(zero) # 2f0 <temp_init+0x16>
     b44:	002d                	.2byte	0x2d
     b46:	0000                	.2byte	0x0
     b48:	0416                	.2byte	0x416
     b4a:	0000034b          	.4byte	0x34b
     b4e:	0002d42f          	.4byte	0x2d42f
     b52:	0400                	.2byte	0x400
     b54:	037e                	.2byte	0x37e
     b56:	0000                	.2byte	0x0
     b58:	0002d42f          	.4byte	0x2d42f
     b5c:	0400                	.2byte	0x400
     b5e:	03b8                	.2byte	0x3b8
     b60:	0000                	.2byte	0x0
     b62:	0002d42f          	.4byte	0x2d42f
     b66:	0400                	.2byte	0x400
     b68:	0360                	.2byte	0x360
     b6a:	0000                	.2byte	0x0
     b6c:	0002db2f          	.4byte	0x2db2f
     b70:	0000                	.2byte	0x0
     b72:	0a00                	.2byte	0xa00
     b74:	031c                	.2byte	0x31c
     b76:	0000                	.2byte	0x0
     b78:	0004                	.2byte	0x4
     b7a:	0000                	.2byte	0x0
     b7c:	2f00                	.2byte	0x2f00
     b7e:	009a                	.2byte	0x9a
     b80:	0000                	.2byte	0x0
     b82:	0000                	.2byte	0x0
     b84:	0402                	.2byte	0x402
     b86:	1d05                	.2byte	0x1d05
     b88:	0002                	.2byte	0x2
     b8a:	0200                	.2byte	0x200
     b8c:	0704                	.2byte	0x704
     b8e:	000001cf          	.4byte	0x1cf
     b92:	0000cd17          	auipc	s10,0xc
     b96:	cd00                	.2byte	0xcd00
     b98:	0000                	.2byte	0x0
     b9a:	0000                	.2byte	0x0
     b9c:	01ad                	.2byte	0x1ad
     b9e:	0000                	.2byte	0x0
     ba0:	0005                	.2byte	0x5
     ba2:	0401                	.2byte	0x401
     ba4:	056a                	.2byte	0x56a
     ba6:	0000                	.2byte	0x0
     ba8:	00001307          	.4byte	0x1307
     bac:	1d00                	.2byte	0x1d00
     bae:	01bd                	.2byte	0x1bd
     bb0:	0000                	.2byte	0x0
     bb2:	0000                	.2byte	0x0
     bb4:	0000                	.2byte	0x0
     bb6:	2014                	.2byte	0x2014
     bb8:	0000                	.2byte	0x0
     bba:	0070                	.2byte	0x70
     bbc:	0000                	.2byte	0x0
     bbe:	1dde                	.2byte	0x1dde
     bc0:	0000                	.2byte	0x0
     bc2:	0401                	.2byte	0x401
     bc4:	bb04                	.2byte	0xbb04
     bc6:	0004                	.2byte	0x4
     bc8:	0800                	.2byte	0x800
     bca:	0504                	.2byte	0x504
     bcc:	6e69                	.2byte	0x6e69
     bce:	0074                	.2byte	0x74
     bd0:	0101                	.2byte	0x101
     bd2:	1406                	.2byte	0x1406
     bd4:	0001                	.2byte	0x1
     bd6:	0300                	.2byte	0x300
     bd8:	042e                	.2byte	0x42e
     bda:	0000                	.2byte	0x0
     bdc:	0148                	.2byte	0x148
     bde:	2d0d                	.2byte	0x2d0d
     be0:	0000                	.2byte	0x0
     be2:	0100                	.2byte	0x100
     be4:	0508                	.2byte	0x508
     be6:	0218                	.2byte	0x218
     be8:	0000                	.2byte	0x0
     bea:	0101                	.2byte	0x101
     bec:	1208                	.2byte	0x1208
     bee:	0001                	.2byte	0x1
     bf0:	0300                	.2byte	0x300
     bf2:	042d                	.2byte	0x42d
     bf4:	0000                	.2byte	0x0
     bf6:	6116014b          	.4byte	0x6116014b
     bfa:	0000                	.2byte	0x0
     bfc:	0100                	.2byte	0x100
     bfe:	0704                	.2byte	0x704
     c00:	01d4                	.2byte	0x1d4
     c02:	0000                	.2byte	0x0
     c04:	0801                	.2byte	0x801
     c06:	0001ca07          	.4byte	0x1ca07
     c0a:	0100                	.2byte	0x100
     c0c:	0702                	.2byte	0x702
     c0e:	00000143          	.4byte	0x143
     c12:	5209                	.2byte	0x5209
     c14:	0002                	.2byte	0x2
     c16:	0300                	.2byte	0x300
     c18:	0f45                	.2byte	0xf45
     c1a:	0026                	.2byte	0x26
     c1c:	0000                	.2byte	0x0
     c1e:	040a                	.2byte	0x40a
     c20:	b2034a03          	lbu	s4,-1248(t1) # 328 <temp_get+0xa>
     c24:	0000                	.2byte	0x0
     c26:	0400                	.2byte	0x400
     c28:	01c5                	.2byte	0x1c5
     c2a:	0000                	.2byte	0x0
     c2c:	6151                	.2byte	0x6151
     c2e:	0000                	.2byte	0x0
     c30:	1700                	.2byte	0x1700
     c32:	0b00                	.2byte	0xb00
     c34:	7865                	.2byte	0x7865
     c36:	0070                	.2byte	0x70
     c38:	610e5203          	lhu	tp,1552(t3)
     c3c:	0000                	.2byte	0x0
     c3e:	0800                	.2byte	0x800
     c40:	013e0417          	auipc	s0,0x13e0
     c44:	0000                	.2byte	0x0
     c46:	00006153          	.4byte	0x6153
     c4a:	0100                	.2byte	0x100
     c4c:	001f 460c 0002      	.byte	0x1f, 0x00, 0x0c, 0x46, 0x02, 0x00
     c52:	0400                	.2byte	0x400
     c54:	d8074703          	lbu	a4,-640(a4)
     c58:	0000                	.2byte	0x0
     c5a:	0d00                	.2byte	0xd00
     c5c:	6c66                	.2byte	0x6c66
     c5e:	0074                	.2byte	0x74
     c60:	760a4903          	lbu	s2,1888(s4)
     c64:	0000                	.2byte	0x0
     c66:	0e00                	.2byte	0xe00
     c68:	0226                	.2byte	0x226
     c6a:	0000                	.2byte	0x0
     c6c:	82055503          	lhu	a0,-2016(a0)
     c70:	0000                	.2byte	0x0
     c72:	0000                	.2byte	0x0
     c74:	0004230f          	.4byte	0x4230f
     c78:	0100                	.2byte	0x100
     c7a:	003b0123          	sb	gp,2(s6)
     c7e:	0000                	.2byte	0x0
     c80:	2014                	.2byte	0x2014
     c82:	0000                	.2byte	0x0
     c84:	0070                	.2byte	0x70
     c86:	0000                	.2byte	0x0
     c88:	9c01                	.2byte	0x9c01
     c8a:	01a2                	.2byte	0x1a2
     c8c:	0000                	.2byte	0x0
     c8e:	6110                	.2byte	0x6110
     c90:	0100                	.2byte	0x100
     c92:	00761323          	sh	t2,6(a2)
     c96:	0000                	.2byte	0x0
     c98:	000016bb          	.4byte	0x16bb
     c9c:	d605                	.2byte	0xd605
     c9e:	0000                	.2byte	0x0
     ca0:	2500                	.2byte	0x2500
     ca2:	002d                	.2byte	0x2d
     ca4:	0000                	.2byte	0x0
     ca6:	170d                	.2byte	0x170d
     ca8:	0000                	.2byte	0x0
     caa:	9011                	.2byte	0x9011
     cac:	0002                	.2byte	0x2
     cae:	0100                	.2byte	0x100
     cb0:	0325                	.2byte	0x325
     cb2:	002d                	.2byte	0x2d
     cb4:	0000                	.2byte	0x0
     cb6:	1200                	.2byte	0x1200
     cb8:	5f41                	.2byte	0x5f41
     cba:	26010063          	beqz	sp,f1a <qprint+0x142>
     cbe:	0001a203          	lw	tp,0(gp)
     cc2:	1300                	.2byte	0x1300
     cc4:	5f41                	.2byte	0x5f41
     cc6:	26010073          	.4byte	0x26010073
     cca:	0001a203          	lw	tp,0(gp)
     cce:	0600                	.2byte	0x600
     cd0:	007d                	.2byte	0x7d
     cd2:	ff08                	.2byte	0xff08
     cd4:	9f1a                	.2byte	0x9f1a
     cd6:	4102                	.2byte	0x4102
     cd8:	655f 2600 a203      	.byte	0x5f, 0x65, 0x00, 0x26, 0x03, 0xa2
     cde:	0001                	.2byte	0x1
     ce0:	1a00                	.2byte	0x1a00
     ce2:	02000017          	auipc	zero,0x2000
     ce6:	5f41                	.2byte	0x5f41
     ce8:	0066                	.2byte	0x66
     cea:	0326                	.2byte	0x326
     cec:	01a9                	.2byte	0x1a9
     cee:	0000                	.2byte	0x0
     cf0:	0000173f 27007202 	.8byte	0x270072020000173f
     cf8:	0000550b          	.4byte	0x550b
     cfc:	6c00                	.2byte	0x6c00
     cfe:	14000017          	auipc	zero,0x14000
     d02:	03b2                	.2byte	0x3b2
     d04:	0000                	.2byte	0x0
     d06:	0179                	.2byte	0x179
     d08:	0000                	.2byte	0x0
     d0a:	2006                	.2byte	0x2006
     d0c:	0001                	.2byte	0x1
     d0e:	2a00                	.2byte	0x2a00
     d10:	00b2                	.2byte	0xb2
     d12:	0000                	.2byte	0x0
     d14:	1500                	.2byte	0x1500
     d16:	0189                	.2byte	0x189
     d18:	0000                	.2byte	0x0
     d1a:	3506                	.2byte	0x3506
     d1c:	0004                	.2byte	0x4
     d1e:	2b00                	.2byte	0x2b00
     d20:	002d                	.2byte	0x2d
     d22:	0000                	.2byte	0x0
     d24:	1600                	.2byte	0x1600
     d26:	204c                	.2byte	0x204c
     d28:	0000                	.2byte	0x0
     d2a:	0030                	.2byte	0x30
     d2c:	0000                	.2byte	0x0
     d2e:	3505                	.2byte	0x3505
     d30:	0004                	.2byte	0x4
     d32:	2b00                	.2byte	0x2b00
     d34:	002d                	.2byte	0x2d
     d36:	0000                	.2byte	0x0
     d38:	17a8                	.2byte	0x17a8
     d3a:	0000                	.2byte	0x0
     d3c:	0000                	.2byte	0x0
     d3e:	0401                	.2byte	0x401
     d40:	1d05                	.2byte	0x1d05
     d42:	0002                	.2byte	0x2
     d44:	0100                	.2byte	0x100
     d46:	0704                	.2byte	0x704
     d48:	000001cf          	.4byte	0x1cf
     d4c:	0f00                	.2byte	0xf00
     d4e:	0002                	.2byte	0x2
     d50:	0500                	.2byte	0x500
     d52:	0100                	.2byte	0x100
     d54:	c704                	.2byte	0xc704
     d56:	0006                	.2byte	0x6
     d58:	0900                	.2byte	0x900
     d5a:	00000013          	nop
     d5e:	fe1d                	.2byte	0xfe1d
     d60:	0001                	.2byte	0x1
     d62:	0000                	.2byte	0x0
     d64:	0000                	.2byte	0x0
     d66:	8400                	.2byte	0x8400
     d68:	0020                	.2byte	0x20
     d6a:	1400                	.2byte	0x1400
     d6c:	0001                	.2byte	0x1
     d6e:	b900                	.2byte	0xb900
     d70:	001f 0100 0404      	.byte	0x1f, 0x00, 0x00, 0x01, 0x04, 0x04
     d76:	000004bb          	.4byte	0x4bb
     d7a:	040a                	.2byte	0x40a
     d7c:	6905                	.2byte	0x6905
     d7e:	746e                	.2byte	0x746e
     d80:	0100                	.2byte	0x100
     d82:	0601                	.2byte	0x601
     d84:	0114                	.2byte	0x114
     d86:	0000                	.2byte	0x0
     d88:	2e06                	.2byte	0x2e06
     d8a:	0004                	.2byte	0x4
     d8c:	4800                	.2byte	0x4800
     d8e:	0d01                	.2byte	0xd01
     d90:	002d                	.2byte	0x2d
     d92:	0000                	.2byte	0x0
     d94:	0801                	.2byte	0x801
     d96:	1805                	.2byte	0x1805
     d98:	0002                	.2byte	0x2
     d9a:	0100                	.2byte	0x100
     d9c:	0801                	.2byte	0x801
     d9e:	0112                	.2byte	0x112
     da0:	0000                	.2byte	0x0
     da2:	2d06                	.2byte	0x2d06
     da4:	0004                	.2byte	0x4
     da6:	4b00                	.2byte	0x4b00
     da8:	1601                	.2byte	0x1601
     daa:	0061                	.2byte	0x61
     dac:	0000                	.2byte	0x0
     dae:	0401                	.2byte	0x401
     db0:	0001d407          	.4byte	0x1d407
     db4:	0100                	.2byte	0x100
     db6:	0708                	.2byte	0x708
     db8:	01ca                	.2byte	0x1ca
     dba:	0000                	.2byte	0x0
     dbc:	0201                	.2byte	0x201
     dbe:	00014307          	.4byte	0x14307
     dc2:	0b00                	.2byte	0xb00
     dc4:	0252                	.2byte	0x252
     dc6:	0000                	.2byte	0x0
     dc8:	260f4503          	lbu	a0,608(t5)
     dcc:	0000                	.2byte	0x0
     dce:	0c00                	.2byte	0xc00
     dd0:	0304                	.2byte	0x304
     dd2:	034a                	.2byte	0x34a
     dd4:	00b2                	.2byte	0xb2
     dd6:	0000                	.2byte	0x0
     dd8:	0001c507          	.4byte	0x1c507
     ddc:	5100                	.2byte	0x5100
     dde:	0061                	.2byte	0x61
     de0:	0000                	.2byte	0x0
     de2:	650d0017          	auipc	zero,0x650d0
     de6:	7078                	.2byte	0x7078
     de8:	0300                	.2byte	0x300
     dea:	0e52                	.2byte	0xe52
     dec:	0061                	.2byte	0x61
     dee:	0000                	.2byte	0x0
     df0:	1708                	.2byte	0x1708
     df2:	00013e07          	.4byte	0x13e07
     df6:	5300                	.2byte	0x5300
     df8:	0061                	.2byte	0x61
     dfa:	0000                	.2byte	0x0
     dfc:	1f01                	.2byte	0x1f01
     dfe:	0e00                	.2byte	0xe00
     e00:	0246                	.2byte	0x246
     e02:	0000                	.2byte	0x0
     e04:	0304                	.2byte	0x304
     e06:	00d80747          	.4byte	0xd80747
     e0a:	0000                	.2byte	0x0
     e0c:	746c660f          	.4byte	0x746c660f
     e10:	0300                	.2byte	0x300
     e12:	0a49                	.2byte	0xa49
     e14:	0076                	.2byte	0x76
     e16:	0000                	.2byte	0x0
     e18:	2610                	.2byte	0x2610
     e1a:	0002                	.2byte	0x2
     e1c:	0300                	.2byte	0x300
     e1e:	0555                	.2byte	0x555
     e20:	0082                	.2byte	0x82
     e22:	0000                	.2byte	0x0
     e24:	1100                	.2byte	0x1100
     e26:	0465                	.2byte	0x465
     e28:	0000                	.2byte	0x0
     e2a:	2301                	.2byte	0x2301
     e2c:	7601                	.2byte	0x7601
     e2e:	0000                	.2byte	0x0
     e30:	8400                	.2byte	0x8400
     e32:	0020                	.2byte	0x20
     e34:	1400                	.2byte	0x1400
     e36:	0001                	.2byte	0x1
     e38:	0100                	.2byte	0x100
     e3a:	fb9c                	.2byte	0xfb9c
     e3c:	0001                	.2byte	0x1
     e3e:	1200                	.2byte	0x1200
     e40:	0069                	.2byte	0x69
     e42:	2301                	.2byte	0x2301
     e44:	3b15                	.2byte	0x3b15
     e46:	0000                	.2byte	0x0
     e48:	c100                	.2byte	0xc100
     e4a:	03000017          	auipc	zero,0x3000
     e4e:	00d6                	.2byte	0xd6
     e50:	0000                	.2byte	0x0
     e52:	2d25                	.2byte	0x2d25
     e54:	0000                	.2byte	0x0
     e56:	ff00                	.2byte	0xff00
     e58:	13000017          	auipc	zero,0x13000
     e5c:	0290                	.2byte	0x290
     e5e:	0000                	.2byte	0x0
     e60:	2501                	.2byte	0x2501
     e62:	00002d03          	lw	s10,0(zero) # 0 <__DYNAMIC>
     e66:	0000                	.2byte	0x0
     e68:	4114                	.2byte	0x4114
     e6a:	635f 0100 0326      	.byte	0x5f, 0x63, 0x00, 0x01, 0x26, 0x03
     e70:	000001fb          	.4byte	0x1fb
     e74:	4104                	.2byte	0x4104
     e76:	735f 2600 fb03      	.byte	0x5f, 0x73, 0x00, 0x26, 0x03, 0xfb
     e7c:	0001                	.2byte	0x1
     e7e:	3000                	.2byte	0x3000
     e80:	0018                	.2byte	0x18
     e82:	0400                	.2byte	0x400
     e84:	5f41                	.2byte	0x5f41
     e86:	0065                	.2byte	0x65
     e88:	0326                	.2byte	0x326
     e8a:	000001fb          	.4byte	0x1fb
     e8e:	1852                	.2byte	0x1852
     e90:	0000                	.2byte	0x0
     e92:	4104                	.2byte	0x4104
     e94:	665f 2600 0203      	.byte	0x5f, 0x66, 0x00, 0x26, 0x03, 0x02
     e9a:	0002                	.2byte	0x2
     e9c:	9f00                	.2byte	0x9f00
     e9e:	0018                	.2byte	0x18
     ea0:	0400                	.2byte	0x400
     ea2:	0061                	.2byte	0x61
     ea4:	00760a27          	.4byte	0x760a27
     ea8:	0000                	.2byte	0x0
     eaa:	000018d7          	.4byte	0x18d7
     eae:	d108                	.2byte	0xd108
     eb0:	ea000003          	lb	zero,-352(zero) # fffffea0 <_stack_start+0xffef7ea0>
     eb4:	0001                	.2byte	0x1
     eb6:	1500                	.2byte	0x1500
     eb8:	0458                	.2byte	0x458
     eba:	0000                	.2byte	0x0
     ebc:	2a01                	.2byte	0x2a01
     ebe:	00213403          	.4byte	0x213403
     ec2:	0500                	.2byte	0x500
     ec4:	03ed                	.2byte	0x3ed
     ec6:	0000                	.2byte	0x0
     ec8:	00044803          	lbu	a6,0(s0) # 13e0c40 <_stack_start+0x12d8c40>
     ecc:	2a00                	.2byte	0x2a00
     ece:	0055                	.2byte	0x55
     ed0:	0000                	.2byte	0x0
     ed2:	18f5                	.2byte	0x18f5
     ed4:	0000                	.2byte	0x0
     ed6:	0908                	.2byte	0x908
     ed8:	0004                	.2byte	0x4
     eda:	aa00                	.2byte	0xaa00
     edc:	0001                	.2byte	0x1
     ede:	0300                	.2byte	0x300
     ee0:	0471                	.2byte	0x471
     ee2:	0000                	.2byte	0x0
     ee4:	2d2a                	.2byte	0x2d2a
     ee6:	0000                	.2byte	0x0
     ee8:	6100                	.2byte	0x6100
     eea:	0019                	.2byte	0x19
     eec:	1600                	.2byte	0x1600
     eee:	20b4                	.2byte	0x20b4
     ef0:	0000                	.2byte	0x0
     ef2:	0209                	.2byte	0x209
     ef4:	0000                	.2byte	0x0
     ef6:	0500                	.2byte	0x500
     ef8:	041c                	.2byte	0x41c
     efa:	0000                	.2byte	0x0
     efc:	0003d203          	lhu	tp,0(t2)
     f00:	2a00                	.2byte	0x2a00
     f02:	002d                	.2byte	0x2d
     f04:	0000                	.2byte	0x0
     f06:	1990                	.2byte	0x1990
     f08:	0000                	.2byte	0x0
     f0a:	034b0217          	auipc	tp,0x34b0
     f0e:	0000                	.2byte	0x0
     f10:	fb2a                	.2byte	0xfb2a
     f12:	0001                	.2byte	0x1
     f14:	0200                	.2byte	0x200
     f16:	037e                	.2byte	0x37e
     f18:	0000                	.2byte	0x0
     f1a:	fb2a                	.2byte	0xfb2a
     f1c:	0001                	.2byte	0x1
     f1e:	0200                	.2byte	0x200
     f20:	03b8                	.2byte	0x3b8
     f22:	0000                	.2byte	0x0
     f24:	fb2a                	.2byte	0xfb2a
     f26:	0001                	.2byte	0x1
     f28:	0200                	.2byte	0x200
     f2a:	0360                	.2byte	0x360
     f2c:	0000                	.2byte	0x0
     f2e:	022a                	.2byte	0x22a
     f30:	0002                	.2byte	0x2
     f32:	0000                	.2byte	0x0
     f34:	0000                	.2byte	0x0
     f36:	0500                	.2byte	0x500
     f38:	0000042f          	.4byte	0x42f
     f3c:	0002                	.2byte	0x2
     f3e:	0000                	.2byte	0x0
     f40:	2b00                	.2byte	0x2b00
     f42:	00b2                	.2byte	0xb2
     f44:	0000                	.2byte	0x0
     f46:	0000                	.2byte	0x0
     f48:	0401                	.2byte	0x401
     f4a:	1d05                	.2byte	0x1d05
     f4c:	0002                	.2byte	0x2
     f4e:	0100                	.2byte	0x100
     f50:	0704                	.2byte	0x704
     f52:	000001cf          	.4byte	0x1cf
     f56:	cd18                	.2byte	0xcd18
     f58:	0000                	.2byte	0x0
     f5a:	cd00                	.2byte	0xcd00
     f5c:	0000                	.2byte	0x0
     f5e:	0000                	.2byte	0x0
     f60:	013e                	.2byte	0x13e
     f62:	0000                	.2byte	0x0
     f64:	0005                	.2byte	0x5
     f66:	0401                	.2byte	0x401
     f68:	0834                	.2byte	0x834
     f6a:	0000                	.2byte	0x0
     f6c:	1304                	.2byte	0x1304
     f6e:	0000                	.2byte	0x0
     f70:	1d00                	.2byte	0x1d00
     f72:	0241                	.2byte	0x241
     f74:	0000                	.2byte	0x0
     f76:	0000                	.2byte	0x0
     f78:	0000                	.2byte	0x0
     f7a:	2198                	.2byte	0x2198
     f7c:	0000                	.2byte	0x0
     f7e:	004c                	.2byte	0x4c
     f80:	0000                	.2byte	0x0
     f82:	231a                	.2byte	0x231a
     f84:	0000                	.2byte	0x0
     f86:	0405                	.2byte	0x405
     f88:	6905                	.2byte	0x6905
     f8a:	746e                	.2byte	0x746e
     f8c:	0100                	.2byte	0x100
     f8e:	0704                	.2byte	0x704
     f90:	01d4                	.2byte	0x1d4
     f92:	0000                	.2byte	0x0
     f94:	0801                	.2byte	0x801
     f96:	1805                	.2byte	0x1805
     f98:	0002                	.2byte	0x2
     f9a:	0100                	.2byte	0x100
     f9c:	0410                	.2byte	0x410
     f9e:	000004a7          	.4byte	0x4a7
     fa2:	0101                	.2byte	0x101
     fa4:	1406                	.2byte	0x1406
     fa6:	0001                	.2byte	0x1
     fa8:	0100                	.2byte	0x100
     faa:	0801                	.2byte	0x801
     fac:	0112                	.2byte	0x112
     fae:	0000                	.2byte	0x0
     fb0:	0201                	.2byte	0x201
     fb2:	c905                	.2byte	0xc905
     fb4:	0004                	.2byte	0x4
     fb6:	0100                	.2byte	0x100
     fb8:	0702                	.2byte	0x702
     fba:	00000143          	.4byte	0x143
     fbe:	0401                	.2byte	0x401
     fc0:	1d05                	.2byte	0x1d05
     fc2:	0002                	.2byte	0x2
     fc4:	0100                	.2byte	0x100
     fc6:	0704                	.2byte	0x704
     fc8:	000001cf          	.4byte	0x1cf
     fcc:	0801                	.2byte	0x801
     fce:	0001ca07          	.4byte	0x1ca07
     fd2:	0100                	.2byte	0x100
     fd4:	0801                	.2byte	0x801
     fd6:	0000011b          	.4byte	0x11b
     fda:	c102                	.2byte	0xc102
     fdc:	0004                	.2byte	0x4
     fde:	7b00                	.2byte	0x7b00
     fe0:	4916                	.2byte	0x4916
     fe2:	0000                	.2byte	0x0
     fe4:	0300                	.2byte	0x300
     fe6:	007a                	.2byte	0x7a
     fe8:	0000                	.2byte	0x0
     fea:	2e02                	.2byte	0x2e02
     fec:	0004                	.2byte	0x4
     fee:	8000                	.2byte	0x8000
     ff0:	0000260f          	.4byte	0x260f
     ff4:	0200                	.2byte	0x200
     ff6:	042d                	.2byte	0x42d
     ff8:	0000                	.2byte	0x0
     ffa:	1681                	.2byte	0x1681
     ffc:	002d                	.2byte	0x2d
     ffe:	0000                	.2byte	0x0
    1000:	0401                	.2byte	0x401
    1002:	bb04                	.2byte	0xbb04
    1004:	0004                	.2byte	0x4
    1006:	0100                	.2byte	0x100
    1008:	0308                	.2byte	0x308
    100a:	000004b3          	add	s1,zero,zero
    100e:	0801                	.2byte	0x801
    1010:	ac04                	.2byte	0xac04
    1012:	0004                	.2byte	0x4
    1014:	0100                	.2byte	0x100
    1016:	0310                	.2byte	0x310
    1018:	0481                	.2byte	0x481
    101a:	0000                	.2byte	0x0
    101c:	2001                	.2byte	0x2001
    101e:	00049f03          	lh	t5,0(s1)
    1022:	0600                	.2byte	0x600
    1024:	0085                	.2byte	0x85
    1026:	0000                	.2byte	0x0
    1028:	000000d3          	.4byte	0xd3
    102c:	00002d07          	.4byte	0x2d07
    1030:	ff00                	.2byte	0xff00
    1032:	0300                	.2byte	0x300
    1034:	000000c3          	.4byte	0xc3
    1038:	9508                	.2byte	0x9508
    103a:	0004                	.2byte	0x4
    103c:	0200                	.2byte	0x200
    103e:	0202                	.2byte	0x202
    1040:	d316                	.2byte	0xd316
    1042:	0000                	.2byte	0x0
    1044:	0900                	.2byte	0x900
    1046:	00cd                	.2byte	0xcd
    1048:	0000                	.2byte	0x0
    104a:	ae01                	.2byte	0xae01
    104c:	0102                	.2byte	0x102
    104e:	0026                	.2byte	0x26
    1050:	0000                	.2byte	0x0
    1052:	2198                	.2byte	0x2198
    1054:	0000                	.2byte	0x0
    1056:	004c                	.2byte	0x4c
    1058:	0000                	.2byte	0x0
    105a:	9c01                	.2byte	0x9c01
    105c:	780a                	.2byte	0x780a
    105e:	0100                	.2byte	0x100
    1060:	02ae                	.2byte	0x2ae
    1062:	9512                	.2byte	0x9512
    1064:	0000                	.2byte	0x0
    1066:	a900                	.2byte	0xa900
    1068:	0019                	.2byte	0x19
    106a:	0b00                	.2byte	0xb00
    106c:	6572                	.2byte	0x6572
    106e:	0074                	.2byte	0x74
    1070:	b001                	.2byte	0xb001
    1072:	0902                	.2byte	0x902
    1074:	008a                	.2byte	0x8a
    1076:	0000                	.2byte	0x0
    1078:	570c                	.2byte	0x570c
    107a:	0004                	.2byte	0x4
    107c:	0d00                	.2byte	0xd00
    107e:	0490                	.2byte	0x490
    1080:	0000                	.2byte	0x0
    1082:	b201                	.2byte	0xb201
    1084:	0302                	.2byte	0x302
    1086:	0095                	.2byte	0x95
    1088:	0000                	.2byte	0x0
    108a:	19ce                	.2byte	0x19ce
    108c:	0000                	.2byte	0x0
    108e:	5f0e                	.2byte	0x5f0e
    1090:	615f 0100 02b2      	.byte	0x5f, 0x61, 0x00, 0x01, 0xb2, 0x02
    1096:	00009503          	lh	a0,0(ra)
    109a:	f300                	.2byte	0xf300
    109c:	0019                	.2byte	0x19
    109e:	0000                	.2byte	0x0
    10a0:	0000                	.2byte	0x0
    10a2:	00d4                	.2byte	0xd4
    10a4:	0000                	.2byte	0x0
    10a6:	0005                	.2byte	0x5
    10a8:	0401                	.2byte	0x401
    10aa:	08fe                	.2byte	0x8fe
    10ac:	0000                	.2byte	0x0
    10ae:	00001303          	lh	t1,0(zero) # 0 <__DYNAMIC>
    10b2:	1d00                	.2byte	0x1d00
    10b4:	0241                	.2byte	0x241
    10b6:	0000                	.2byte	0x0
    10b8:	0000                	.2byte	0x0
    10ba:	0000                	.2byte	0x0
    10bc:	23e5                	.2byte	0x23e5
    10be:	0000                	.2byte	0x0
    10c0:	0404                	.2byte	0x404
    10c2:	6905                	.2byte	0x6905
    10c4:	746e                	.2byte	0x746e
    10c6:	0100                	.2byte	0x100
    10c8:	0704                	.2byte	0x704
    10ca:	01d4                	.2byte	0x1d4
    10cc:	0000                	.2byte	0x0
    10ce:	0801                	.2byte	0x801
    10d0:	1805                	.2byte	0x1805
    10d2:	0002                	.2byte	0x2
    10d4:	0100                	.2byte	0x100
    10d6:	0410                	.2byte	0x410
    10d8:	000004a7          	.4byte	0x4a7
    10dc:	0101                	.2byte	0x101
    10de:	1406                	.2byte	0x1406
    10e0:	0001                	.2byte	0x1
    10e2:	0100                	.2byte	0x100
    10e4:	0801                	.2byte	0x801
    10e6:	0112                	.2byte	0x112
    10e8:	0000                	.2byte	0x0
    10ea:	0201                	.2byte	0x201
    10ec:	c905                	.2byte	0xc905
    10ee:	0004                	.2byte	0x4
    10f0:	0100                	.2byte	0x100
    10f2:	0702                	.2byte	0x702
    10f4:	00000143          	.4byte	0x143
    10f8:	0401                	.2byte	0x401
    10fa:	1d05                	.2byte	0x1d05
    10fc:	0002                	.2byte	0x2
    10fe:	0100                	.2byte	0x100
    1100:	0704                	.2byte	0x704
    1102:	000001cf          	.4byte	0x1cf
    1106:	0801                	.2byte	0x801
    1108:	0001ca07          	.4byte	0x1ca07
    110c:	0100                	.2byte	0x100
    110e:	0801                	.2byte	0x801
    1110:	0000011b          	.4byte	0x11b
    1114:	c105                	.2byte	0xc105
    1116:	0004                	.2byte	0x4
    1118:	0100                	.2byte	0x100
    111a:	0041167b          	.4byte	0x41167b
    111e:	0000                	.2byte	0x0
    1120:	7202                	.2byte	0x7202
    1122:	0000                	.2byte	0x0
    1124:	0100                	.2byte	0x100
    1126:	0404                	.2byte	0x404
    1128:	000004bb          	.4byte	0x4bb
    112c:	0801                	.2byte	0x801
    112e:	0004b303          	.4byte	0x4b303
    1132:	0100                	.2byte	0x100
    1134:	0408                	.2byte	0x408
    1136:	04ac                	.2byte	0x4ac
    1138:	0000                	.2byte	0x0
    113a:	1001                	.2byte	0x1001
    113c:	00048103          	lb	sp,0(s1)
    1140:	0100                	.2byte	0x100
    1142:	0320                	.2byte	0x320
    1144:	049f 0000 7e06      	.byte	0x9f, 0x04, 0x00, 0x00, 0x06, 0x7e
    114a:	0000                	.2byte	0x0
    114c:	b600                	.2byte	0xb600
    114e:	0000                	.2byte	0x0
    1150:	0700                	.2byte	0x700
    1152:	0025                	.2byte	0x25
    1154:	0000                	.2byte	0x0
    1156:	00ff a602 0000 0800 	.byte	0xff, 0x00, 0x02, 0xa6, 0x00, 0x00, 0x00, 0x08, 0x95, 0x04
    115e:	0495 
    1160:	0000                	.2byte	0x0
    1162:	0201                	.2byte	0x201
    1164:	1602                	.2byte	0x1602
    1166:	00b6                	.2byte	0xb6
    1168:	0000                	.2byte	0x0
    116a:	bb09                	.2byte	0xbb09
    116c:	0000                	.2byte	0x0
    116e:	0200                	.2byte	0x200
    1170:	029e                	.2byte	0x29e
    1172:	9003050f          	.4byte	0x9003050f
    1176:	1000                	.2byte	0x1000
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	3401                	.2byte	0x3401
   2:	0300                	.2byte	0x300
   4:	3a0e                	.2byte	0x3a0e
   6:	0121                	.2byte	0x121
   8:	21390b3b          	.4byte	0x21390b3b
   c:	02134903          	lbu	s2,33(t1)
  10:	02000017          	auipc	zero,0x2000
  14:	0034                	.2byte	0x34
  16:	213a0803          	lb	a6,531(s4)
  1a:	3b01                	.2byte	0x3b01
  1c:	490b390b          	.4byte	0x490b390b
  20:	00170213          	add	tp,a4,1
  24:	0300                	.2byte	0x300
  26:	0024                	.2byte	0x24
  28:	0b3e0b0b          	.4byte	0xb3e0b0b
  2c:	00000e03          	lb	t3,0(zero) # 0 <__DYNAMIC>
  30:	3404                	.2byte	0x3404
  32:	0300                	.2byte	0x300
  34:	3a0e                	.2byte	0x3a0e
  36:	0121                	.2byte	0x121
  38:	21390b3b          	.4byte	0x21390b3b
  3c:	00134903          	lbu	s2,1(t1)
  40:	0500                	.2byte	0x500
  42:	1755010b          	.4byte	0x1755010b
  46:	1301                	.2byte	0x1301
  48:	0000                	.2byte	0x0
  4a:	0d06                	.2byte	0xd06
  4c:	0300                	.2byte	0x300
  4e:	3a0e                	.2byte	0x3a0e
  50:	0221                	.2byte	0x221
  52:	21390b3b          	.4byte	0x21390b3b
  56:	490e                	.2byte	0x490e
  58:	6b0b0d13          	add	s10,s6,1712
  5c:	0700000b          	.4byte	0x700000b
  60:	0005                	.2byte	0x5
  62:	213a0803          	lb	a6,531(s4)
  66:	3b01                	.2byte	0x3b01
  68:	2321                	.2byte	0x2321
  6a:	0b39                	.2byte	0xb39
  6c:	1349                	.2byte	0x1349
  6e:	1702                	.2byte	0x1702
  70:	0000                	.2byte	0x0
  72:	4808                	.2byte	0x4808
  74:	7d00                	.2byte	0x7d00
  76:	7f01                	.2byte	0x7f01
  78:	09000013          	li	zero,144
  7c:	1755010b          	.4byte	0x1755010b
  80:	0000                	.2byte	0x0
  82:	110a                	.2byte	0x110a
  84:	2501                	.2byte	0x2501
  86:	130e                	.2byte	0x130e
  88:	1b1f030b          	.4byte	0x1b1f030b
  8c:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
  92:	0b000017          	auipc	zero,0xb000
  96:	0024                	.2byte	0x24
  98:	0b3e0b0b          	.4byte	0xb3e0b0b
  9c:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
  a0:	160c                	.2byte	0x160c
  a2:	0300                	.2byte	0x300
  a4:	3a0e                	.2byte	0x3a0e
  a6:	390b3b0b          	.4byte	0x390b3b0b
  aa:	0013490b          	.4byte	0x13490b
  ae:	0d00                	.2byte	0xd00
  b0:	0b0b0113          	add	sp,s6,176
  b4:	0b3a                	.2byte	0xb3a
  b6:	0b390b3b          	.4byte	0xb390b3b
  ba:	1301                	.2byte	0x1301
  bc:	0000                	.2byte	0x0
  be:	0d0e                	.2byte	0xd0e
  c0:	0300                	.2byte	0x300
  c2:	3a08                	.2byte	0x3a08
  c4:	390b3b0b          	.4byte	0x390b3b0b
  c8:	0d13490b          	.4byte	0xd13490b
  cc:	000b6b0b          	.4byte	0xb6b0b
  d0:	0f00                	.2byte	0xf00
  d2:	0e030117          	auipc	sp,0xe030
  d6:	0b3a0b0b          	.4byte	0xb3a0b0b
  da:	0b390b3b          	.4byte	0xb390b3b
  de:	1301                	.2byte	0x1301
  e0:	0000                	.2byte	0x0
  e2:	0d10                	.2byte	0xd10
  e4:	0300                	.2byte	0x300
  e6:	3a08                	.2byte	0x3a08
  e8:	390b3b0b          	.4byte	0x390b3b0b
  ec:	0013490b          	.4byte	0x13490b
  f0:	1100                	.2byte	0x1100
  f2:	000d                	.2byte	0xd
  f4:	0b3a0e03          	lb	t3,179(s4)
  f8:	0b390b3b          	.4byte	0xb390b3b
  fc:	1349                	.2byte	0x1349
  fe:	0000                	.2byte	0x0
 100:	2e12                	.2byte	0x2e12
 102:	3f01                	.2byte	0x3f01
 104:	0319                	.2byte	0x319
 106:	3a0e                	.2byte	0x3a0e
 108:	390b3b0b          	.4byte	0x390b3b0b
 10c:	4919270b          	.4byte	0x4919270b
 110:	12011113          	.4byte	0x12011113
 114:	4006                	.2byte	0x4006
 116:	7a18                	.2byte	0x7a18
 118:	0119                	.2byte	0x119
 11a:	13000013          	li	zero,304
 11e:	0034                	.2byte	0x34
 120:	0b3a0e03          	lb	t3,179(s4)
 124:	0b390b3b          	.4byte	0xb390b3b
 128:	1349                	.2byte	0x1349
 12a:	0b1c                	.2byte	0xb1c
 12c:	0000                	.2byte	0x0
 12e:	0b14                	.2byte	0xb14
 130:	1101                	.2byte	0x1101
 132:	1201                	.2byte	0x1201
 134:	0106                	.2byte	0x106
 136:	15000013          	li	zero,336
 13a:	0000010b          	.4byte	0x10b
 13e:	2e16                	.2byte	0x2e16
 140:	3f00                	.2byte	0x3f00
 142:	3c19                	.2byte	0x3c19
 144:	6e19                	.2byte	0x6e19
 146:	030e                	.2byte	0x30e
 148:	000e                	.2byte	0xe
 14a:	0000                	.2byte	0x0
 14c:	2401                	.2byte	0x2401
 14e:	0b00                	.2byte	0xb00
 150:	030b3e0b          	.4byte	0x30b3e0b
 154:	000e                	.2byte	0xe
 156:	0200                	.2byte	0x200
 158:	0034                	.2byte	0x34
 15a:	213a0803          	lb	a6,531(s4)
 15e:	3b01                	.2byte	0x3b01
 160:	490b390b          	.4byte	0x490b390b
 164:	00180213          	add	tp,a6,1 # 13e093d <_stack_start+0x12d893d>
 168:	0300                	.2byte	0x300
 16a:	0034                	.2byte	0x34
 16c:	213a0e03          	lb	t3,531(s4)
 170:	3b01                	.2byte	0x3b01
 172:	0321390b          	.4byte	0x321390b
 176:	1349                	.2byte	0x1349
 178:	0000                	.2byte	0x0
 17a:	1604                	.2byte	0x1604
 17c:	0300                	.2byte	0x300
 17e:	3a0e                	.2byte	0x3a0e
 180:	390b3b0b          	.4byte	0x390b3b0b
 184:	0013490b          	.4byte	0x13490b
 188:	0500                	.2byte	0x500
 18a:	000d                	.2byte	0xd
 18c:	213a0e03          	lb	t3,531(s4)
 190:	390b3b03          	.4byte	0x390b3b03
 194:	0e21                	.2byte	0xe21
 196:	1349                	.2byte	0x1349
 198:	0b0d                	.2byte	0xb0d
 19a:	00000b6b          	.4byte	0xb6b
 19e:	0506                	.2byte	0x506
 1a0:	0300                	.2byte	0x300
 1a2:	3a08                	.2byte	0x3a08
 1a4:	0121                	.2byte	0x121
 1a6:	3923213b          	.4byte	0x3923213b
 1aa:	0213490b          	.4byte	0x213490b
 1ae:	07000017          	auipc	zero,0x7000
 1b2:	0034                	.2byte	0x34
 1b4:	213a0e03          	lb	t3,531(s4)
 1b8:	3b01                	.2byte	0x3b01
 1ba:	2521                	.2byte	0x2521
 1bc:	2139                	.2byte	0x2139
 1be:	1c134903          	lbu	s2,449(t1)
 1c2:	0021                	.2byte	0x21
 1c4:	0000                	.2byte	0x0
 1c6:	3408                	.2byte	0x3408
 1c8:	0300                	.2byte	0x300
 1ca:	3a08                	.2byte	0x3a08
 1cc:	0121                	.2byte	0x121
 1ce:	21390b3b          	.4byte	0x21390b3b
 1d2:	00134903          	lbu	s2,1(t1)
 1d6:	0900                	.2byte	0x900
 1d8:	1301010b          	.4byte	0x1301010b
 1dc:	0000                	.2byte	0x0
 1de:	340a                	.2byte	0x340a
 1e0:	0300                	.2byte	0x300
 1e2:	3a0e                	.2byte	0x3a0e
 1e4:	0121                	.2byte	0x121
 1e6:	392d213b          	.4byte	0x392d213b
 1ea:	0321                	.2byte	0x321
 1ec:	1349                	.2byte	0x1349
 1ee:	1702                	.2byte	0x1702
 1f0:	0000                	.2byte	0x0
 1f2:	2501110b          	.4byte	0x2501110b
 1f6:	130e                	.2byte	0x130e
 1f8:	1b1f030b          	.4byte	0x1b1f030b
 1fc:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
 202:	0c000017          	auipc	zero,0xc000
 206:	0024                	.2byte	0x24
 208:	0b3e0b0b          	.4byte	0xb3e0b0b
 20c:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 210:	130d                	.2byte	0x130d
 212:	0b01                	.2byte	0xb01
 214:	3b0b3a0b          	.4byte	0x3b0b3a0b
 218:	010b390b          	.4byte	0x10b390b
 21c:	0e000013          	li	zero,224
 220:	000d                	.2byte	0xd
 222:	0b3a0803          	lb	a6,179(s4)
 226:	0b390b3b          	.4byte	0xb390b3b
 22a:	1349                	.2byte	0x1349
 22c:	0b0d                	.2byte	0xb0d
 22e:	00000b6b          	.4byte	0xb6b
 232:	0301170f          	.4byte	0x301170f
 236:	0b0e                	.2byte	0xb0e
 238:	3b0b3a0b          	.4byte	0x3b0b3a0b
 23c:	010b390b          	.4byte	0x10b390b
 240:	10000013          	li	zero,256
 244:	000d                	.2byte	0xd
 246:	0b3a0803          	lb	a6,179(s4)
 24a:	0b390b3b          	.4byte	0xb390b3b
 24e:	1349                	.2byte	0x1349
 250:	0000                	.2byte	0x0
 252:	0d11                	.2byte	0xd11
 254:	0300                	.2byte	0x300
 256:	3a0e                	.2byte	0x3a0e
 258:	390b3b0b          	.4byte	0x390b3b0b
 25c:	0013490b          	.4byte	0x13490b
 260:	1200                	.2byte	0x1200
 262:	012e                	.2byte	0x12e
 264:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 26c:	0b39                	.2byte	0xb39
 26e:	13491927          	.4byte	0x13491927
 272:	0111                	.2byte	0x111
 274:	0612                	.2byte	0x612
 276:	1840                	.2byte	0x1840
 278:	197a                	.2byte	0x197a
 27a:	1301                	.2byte	0x1301
 27c:	0000                	.2byte	0x0
 27e:	03003413          	sltiu	s0,zero,48
 282:	3a08                	.2byte	0x3a08
 284:	390b3b0b          	.4byte	0x390b3b0b
 288:	0213490b          	.4byte	0x213490b
 28c:	14000017          	auipc	zero,0x14000
 290:	0111010b          	.4byte	0x111010b
 294:	0612                	.2byte	0x612
 296:	1301                	.2byte	0x1301
 298:	0000                	.2byte	0x0
 29a:	0b15                	.2byte	0xb15
 29c:	5501                	.2byte	0x5501
 29e:	00130117          	auipc	sp,0x130
 2a2:	1600                	.2byte	0x1600
 2a4:	1755010b          	.4byte	0x1755010b
 2a8:	0000                	.2byte	0x0
 2aa:	0100                	.2byte	0x100
 2ac:	0034                	.2byte	0x34
 2ae:	213a0e03          	lb	t3,531(s4)
 2b2:	3b01                	.2byte	0x3b01
 2b4:	0321390b          	.4byte	0x321390b
 2b8:	1349                	.2byte	0x1349
 2ba:	1702                	.2byte	0x1702
 2bc:	0000                	.2byte	0x0
 2be:	3402                	.2byte	0x3402
 2c0:	0300                	.2byte	0x300
 2c2:	3a08                	.2byte	0x3a08
 2c4:	0121                	.2byte	0x121
 2c6:	0b390b3b          	.4byte	0xb390b3b
 2ca:	1349                	.2byte	0x1349
 2cc:	1702                	.2byte	0x1702
 2ce:	0000                	.2byte	0x0
 2d0:	0b002403          	lw	s0,176(zero) # b0 <_stext+0x24>
 2d4:	030b3e0b          	.4byte	0x30b3e0b
 2d8:	000e                	.2byte	0xe
 2da:	0400                	.2byte	0x400
 2dc:	0034                	.2byte	0x34
 2de:	213a0e03          	lb	t3,531(s4)
 2e2:	3b01                	.2byte	0x3b01
 2e4:	0321390b          	.4byte	0x321390b
 2e8:	1349                	.2byte	0x1349
 2ea:	0000                	.2byte	0x0
 2ec:	0b05                	.2byte	0xb05
 2ee:	5501                	.2byte	0x5501
 2f0:	00130117          	auipc	sp,0x130
 2f4:	0600                	.2byte	0x600
 2f6:	000d                	.2byte	0xd
 2f8:	213a0e03          	lb	t3,531(s4)
 2fc:	390b3b03          	.4byte	0x390b3b03
 300:	0e21                	.2byte	0xe21
 302:	1349                	.2byte	0x1349
 304:	0b0d                	.2byte	0xb0d
 306:	00000b6b          	.4byte	0xb6b
 30a:	03000507          	.4byte	0x3000507
 30e:	3a08                	.2byte	0x3a08
 310:	0121                	.2byte	0x121
 312:	3923213b          	.4byte	0x3923213b
 316:	0213490b          	.4byte	0x213490b
 31a:	08000017          	auipc	zero,0x8000
 31e:	0048                	.2byte	0x48
 320:	017d                	.2byte	0x17d
 322:	0000137f 11010b09 	.byte	0x7f, 0x13, 0x00, 0x00, 0x09, 0x0b, 0x01, 0x11, 0x01, 0x12, 0x06, 0x01
 32a:	01061201 
 32e:	0a000013          	li	zero,160
 332:	1755010b          	.4byte	0x1755010b
 336:	0000                	.2byte	0x0
 338:	2501110b          	.4byte	0x2501110b
 33c:	130e                	.2byte	0x130e
 33e:	1b1f030b          	.4byte	0x1b1f030b
 342:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
 348:	0c000017          	auipc	zero,0xc000
 34c:	0024                	.2byte	0x24
 34e:	0b3e0b0b          	.4byte	0xb3e0b0b
 352:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 356:	160d                	.2byte	0x160d
 358:	0300                	.2byte	0x300
 35a:	3a0e                	.2byte	0x3a0e
 35c:	39053b0b          	.4byte	0x39053b0b
 360:	0013490b          	.4byte	0x13490b
 364:	0e00                	.2byte	0xe00
 366:	0016                	.2byte	0x16
 368:	0b3a0e03          	lb	t3,179(s4)
 36c:	0b390b3b          	.4byte	0xb390b3b
 370:	1349                	.2byte	0x1349
 372:	0000                	.2byte	0x0
 374:	0b01130f          	.4byte	0xb01130f
 378:	3b0b3a0b          	.4byte	0x3b0b3a0b
 37c:	010b390b          	.4byte	0x10b390b
 380:	10000013          	li	zero,256
 384:	000d                	.2byte	0xd
 386:	0b3a0803          	lb	a6,179(s4)
 38a:	0b390b3b          	.4byte	0xb390b3b
 38e:	1349                	.2byte	0x1349
 390:	0b0d                	.2byte	0xb0d
 392:	00000b6b          	.4byte	0xb6b
 396:	1711                	.2byte	0x1711
 398:	0301                	.2byte	0x301
 39a:	0b0e                	.2byte	0xb0e
 39c:	3b0b3a0b          	.4byte	0x3b0b3a0b
 3a0:	010b390b          	.4byte	0x10b390b
 3a4:	12000013          	li	zero,288
 3a8:	000d                	.2byte	0xd
 3aa:	0b3a0803          	lb	a6,179(s4)
 3ae:	0b390b3b          	.4byte	0xb390b3b
 3b2:	1349                	.2byte	0x1349
 3b4:	0000                	.2byte	0x0
 3b6:	03000d13          	li	s10,48
 3ba:	3a0e                	.2byte	0x3a0e
 3bc:	390b3b0b          	.4byte	0x390b3b0b
 3c0:	0013490b          	.4byte	0x13490b
 3c4:	1400                	.2byte	0x1400
 3c6:	012e                	.2byte	0x12e
 3c8:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 3d0:	0b39                	.2byte	0xb39
 3d2:	13491927          	.4byte	0x13491927
 3d6:	0111                	.2byte	0x111
 3d8:	0612                	.2byte	0x612
 3da:	1840                	.2byte	0x1840
 3dc:	197a                	.2byte	0x197a
 3de:	1301                	.2byte	0x1301
 3e0:	0000                	.2byte	0x0
 3e2:	3415                	.2byte	0x3415
 3e4:	0300                	.2byte	0x300
 3e6:	3a0e                	.2byte	0x3a0e
 3e8:	390b3b0b          	.4byte	0x390b3b0b
 3ec:	1c13490b          	.4byte	0x1c13490b
 3f0:	1600000b          	.4byte	0x1600000b
 3f4:	0000010b          	.4byte	0x10b
 3f8:	3f002e17          	auipc	t3,0x3f002
 3fc:	3c19                	.2byte	0x3c19
 3fe:	6e19                	.2byte	0x6e19
 400:	030e                	.2byte	0x30e
 402:	000e                	.2byte	0xe
 404:	0000                	.2byte	0x0
 406:	3401                	.2byte	0x3401
 408:	0300                	.2byte	0x300
 40a:	3a08                	.2byte	0x3a08
 40c:	0121                	.2byte	0x121
 40e:	0b390b3b          	.4byte	0xb390b3b
 412:	1349                	.2byte	0x1349
 414:	1702                	.2byte	0x1702
 416:	0000                	.2byte	0x0
 418:	2402                	.2byte	0x2402
 41a:	0b00                	.2byte	0xb00
 41c:	030b3e0b          	.4byte	0x30b3e0b
 420:	000e                	.2byte	0xe
 422:	0300                	.2byte	0x300
 424:	000a                	.2byte	0xa
 426:	213a0e03          	lb	t3,531(s4)
 42a:	3b01                	.2byte	0x3b01
 42c:	2e21                	.2byte	0x2e21
 42e:	2139                	.2byte	0x2139
 430:	00011103          	lh	sp,0(sp) # 1302f0 <_stack_start+0x282f0>
 434:	0400                	.2byte	0x400
 436:	0034                	.2byte	0x34
 438:	213a0e03          	lb	t3,531(s4)
 43c:	3b01                	.2byte	0x3b01
 43e:	0321390b          	.4byte	0x321390b
 442:	1349                	.2byte	0x1349
 444:	0000                	.2byte	0x0
 446:	0b05                	.2byte	0xb05
 448:	5501                	.2byte	0x5501
 44a:	00130117          	auipc	sp,0x130
 44e:	0600                	.2byte	0x600
 450:	0034                	.2byte	0x34
 452:	213a0e03          	lb	t3,531(s4)
 456:	3b01                	.2byte	0x3b01
 458:	0321390b          	.4byte	0x321390b
 45c:	1349                	.2byte	0x1349
 45e:	1702                	.2byte	0x1702
 460:	0000                	.2byte	0x0
 462:	03003407          	.4byte	0x3003407
 466:	3a08                	.2byte	0x3a08
 468:	0121                	.2byte	0x121
 46a:	21390b3b          	.4byte	0x21390b3b
 46e:	00134903          	lbu	s2,1(t1)
 472:	0800                	.2byte	0x800
 474:	000d                	.2byte	0xd
 476:	213a0e03          	lb	t3,531(s4)
 47a:	3b02                	.2byte	0x3b02
 47c:	0e21390b          	.4byte	0xe21390b
 480:	1349                	.2byte	0x1349
 482:	0b0d                	.2byte	0xb0d
 484:	00000b6b          	.4byte	0xb6b
 488:	0509                	.2byte	0x509
 48a:	0300                	.2byte	0x300
 48c:	3a08                	.2byte	0x3a08
 48e:	0121                	.2byte	0x121
 490:	3923213b          	.4byte	0x3923213b
 494:	0213490b          	.4byte	0x213490b
 498:	0a000017          	auipc	zero,0xa000
 49c:	1755010b          	.4byte	0x1755010b
 4a0:	0000                	.2byte	0x0
 4a2:	2501110b          	.4byte	0x2501110b
 4a6:	130e                	.2byte	0x130e
 4a8:	1b1f030b          	.4byte	0x1b1f030b
 4ac:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
 4b2:	0c000017          	auipc	zero,0xc000
 4b6:	0024                	.2byte	0x24
 4b8:	0b3e0b0b          	.4byte	0xb3e0b0b
 4bc:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 4c0:	160d                	.2byte	0x160d
 4c2:	0300                	.2byte	0x300
 4c4:	3a0e                	.2byte	0x3a0e
 4c6:	390b3b0b          	.4byte	0x390b3b0b
 4ca:	0013490b          	.4byte	0x13490b
 4ce:	0e00                	.2byte	0xe00
 4d0:	0b0b0113          	add	sp,s6,176
 4d4:	0b3a                	.2byte	0xb3a
 4d6:	0b390b3b          	.4byte	0xb390b3b
 4da:	1301                	.2byte	0x1301
 4dc:	0000                	.2byte	0x0
 4de:	03000d0f          	.4byte	0x3000d0f
 4e2:	3a08                	.2byte	0x3a08
 4e4:	390b3b0b          	.4byte	0x390b3b0b
 4e8:	0d13490b          	.4byte	0xd13490b
 4ec:	000b6b0b          	.4byte	0xb6b0b
 4f0:	1000                	.2byte	0x1000
 4f2:	0e030117          	auipc	sp,0xe030
 4f6:	0b3a0b0b          	.4byte	0xb3a0b0b
 4fa:	0b390b3b          	.4byte	0xb390b3b
 4fe:	1301                	.2byte	0x1301
 500:	0000                	.2byte	0x0
 502:	0d11                	.2byte	0xd11
 504:	0300                	.2byte	0x300
 506:	3a08                	.2byte	0x3a08
 508:	390b3b0b          	.4byte	0x390b3b0b
 50c:	0013490b          	.4byte	0x13490b
 510:	1200                	.2byte	0x1200
 512:	000d                	.2byte	0xd
 514:	0b3a0e03          	lb	t3,179(s4)
 518:	0b390b3b          	.4byte	0xb390b3b
 51c:	1349                	.2byte	0x1349
 51e:	0000                	.2byte	0x0
 520:	3f012e13          	slti	t3,sp,1008
 524:	0319                	.2byte	0x319
 526:	3a0e                	.2byte	0x3a0e
 528:	390b3b0b          	.4byte	0x390b3b0b
 52c:	4919270b          	.4byte	0x4919270b
 530:	12011113          	.4byte	0x12011113
 534:	4006                	.2byte	0x4006
 536:	7a18                	.2byte	0x7a18
 538:	0119                	.2byte	0x119
 53a:	14000013          	li	zero,320
 53e:	0034                	.2byte	0x34
 540:	0b3a0e03          	lb	t3,179(s4)
 544:	0b390b3b          	.4byte	0xb390b3b
 548:	1349                	.2byte	0x1349
 54a:	0b1c                	.2byte	0xb1c
 54c:	0000                	.2byte	0x0
 54e:	4815                	.2byte	0x4815
 550:	7d00                	.2byte	0x7d00
 552:	7f01                	.2byte	0x7f01
 554:	16000013          	li	zero,352
 558:	0000010b          	.4byte	0x10b
 55c:	3f002e17          	auipc	t3,0x3f002
 560:	3c19                	.2byte	0x3c19
 562:	6e19                	.2byte	0x6e19
 564:	030e                	.2byte	0x30e
 566:	000e                	.2byte	0xe
 568:	0000                	.2byte	0x0
 56a:	2401                	.2byte	0x2401
 56c:	0b00                	.2byte	0xb00
 56e:	030b3e0b          	.4byte	0x30b3e0b
 572:	000e                	.2byte	0xe
 574:	0200                	.2byte	0x200
 576:	0034                	.2byte	0x34
 578:	213a0803          	lb	a6,531(s4)
 57c:	3b01                	.2byte	0x3b01
 57e:	490b390b          	.4byte	0x490b390b
 582:	00170213          	add	tp,a4,1
 586:	0300                	.2byte	0x300
 588:	0016                	.2byte	0x16
 58a:	213a0e03          	lb	t3,531(s4)
 58e:	3b02                	.2byte	0x3b02
 590:	3905                	.2byte	0x3905
 592:	0013490b          	.4byte	0x13490b
 596:	0400                	.2byte	0x400
 598:	000d                	.2byte	0xd
 59a:	213a0e03          	lb	t3,531(s4)
 59e:	390b3b03          	.4byte	0x390b3b03
 5a2:	0e21                	.2byte	0xe21
 5a4:	1349                	.2byte	0x1349
 5a6:	0b0d                	.2byte	0xb0d
 5a8:	00000b6b          	.4byte	0xb6b
 5ac:	3405                	.2byte	0x3405
 5ae:	0300                	.2byte	0x300
 5b0:	3a0e                	.2byte	0x3a0e
 5b2:	0121                	.2byte	0x121
 5b4:	21390b3b          	.4byte	0x21390b3b
 5b8:	02134903          	lbu	s2,33(t1)
 5bc:	06000017          	auipc	zero,0x6000
 5c0:	0034                	.2byte	0x34
 5c2:	213a0e03          	lb	t3,531(s4)
 5c6:	3b01                	.2byte	0x3b01
 5c8:	0321390b          	.4byte	0x321390b
 5cc:	1349                	.2byte	0x1349
 5ce:	0000                	.2byte	0x0
 5d0:	25011107          	.4byte	0x25011107
 5d4:	130e                	.2byte	0x130e
 5d6:	1b1f030b          	.4byte	0x1b1f030b
 5da:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
 5e0:	08000017          	auipc	zero,0x8000
 5e4:	0024                	.2byte	0x24
 5e6:	0b3e0b0b          	.4byte	0xb3e0b0b
 5ea:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 5ee:	1609                	.2byte	0x1609
 5f0:	0300                	.2byte	0x300
 5f2:	3a0e                	.2byte	0x3a0e
 5f4:	390b3b0b          	.4byte	0x390b3b0b
 5f8:	0013490b          	.4byte	0x13490b
 5fc:	0a00                	.2byte	0xa00
 5fe:	0b0b0113          	add	sp,s6,176
 602:	0b3a                	.2byte	0xb3a
 604:	0b390b3b          	.4byte	0xb390b3b
 608:	1301                	.2byte	0x1301
 60a:	0000                	.2byte	0x0
 60c:	03000d0b          	.4byte	0x3000d0b
 610:	3a08                	.2byte	0x3a08
 612:	390b3b0b          	.4byte	0x390b3b0b
 616:	0d13490b          	.4byte	0xd13490b
 61a:	000b6b0b          	.4byte	0xb6b0b
 61e:	0c00                	.2byte	0xc00
 620:	0e030117          	auipc	sp,0xe030
 624:	0b3a0b0b          	.4byte	0xb3a0b0b
 628:	0b390b3b          	.4byte	0xb390b3b
 62c:	1301                	.2byte	0x1301
 62e:	0000                	.2byte	0x0
 630:	0d0d                	.2byte	0xd0d
 632:	0300                	.2byte	0x300
 634:	3a08                	.2byte	0x3a08
 636:	390b3b0b          	.4byte	0x390b3b0b
 63a:	0013490b          	.4byte	0x13490b
 63e:	0e00                	.2byte	0xe00
 640:	000d                	.2byte	0xd
 642:	0b3a0e03          	lb	t3,179(s4)
 646:	0b390b3b          	.4byte	0xb390b3b
 64a:	1349                	.2byte	0x1349
 64c:	0000                	.2byte	0x0
 64e:	3f012e0f          	.4byte	0x3f012e0f
 652:	0319                	.2byte	0x319
 654:	3a0e                	.2byte	0x3a0e
 656:	390b3b0b          	.4byte	0x390b3b0b
 65a:	4919270b          	.4byte	0x4919270b
 65e:	12011113          	.4byte	0x12011113
 662:	4006                	.2byte	0x4006
 664:	7a18                	.2byte	0x7a18
 666:	0119                	.2byte	0x119
 668:	10000013          	li	zero,256
 66c:	0005                	.2byte	0x5
 66e:	0b3a0803          	lb	a6,179(s4)
 672:	0b390b3b          	.4byte	0xb390b3b
 676:	1349                	.2byte	0x1349
 678:	1702                	.2byte	0x1702
 67a:	0000                	.2byte	0x0
 67c:	3411                	.2byte	0x3411
 67e:	0300                	.2byte	0x300
 680:	3a0e                	.2byte	0x3a0e
 682:	390b3b0b          	.4byte	0x390b3b0b
 686:	1c13490b          	.4byte	0x1c13490b
 68a:	1200000b          	.4byte	0x1200000b
 68e:	0034                	.2byte	0x34
 690:	0b3a0803          	lb	a6,179(s4)
 694:	0b390b3b          	.4byte	0xb390b3b
 698:	1349                	.2byte	0x1349
 69a:	0000                	.2byte	0x0
 69c:	03003413          	sltiu	s0,zero,48
 6a0:	3a08                	.2byte	0x3a08
 6a2:	390b3b0b          	.4byte	0x390b3b0b
 6a6:	0213490b          	.4byte	0x213490b
 6aa:	0018                	.2byte	0x18
 6ac:	1400                	.2byte	0x1400
 6ae:	1755010b          	.4byte	0x1755010b
 6b2:	1301                	.2byte	0x1301
 6b4:	0000                	.2byte	0x0
 6b6:	0b15                	.2byte	0xb15
 6b8:	0101                	.2byte	0x101
 6ba:	16000013          	li	zero,352
 6be:	0111010b          	.4byte	0x111010b
 6c2:	0612                	.2byte	0x612
 6c4:	0000                	.2byte	0x0
 6c6:	0100                	.2byte	0x100
 6c8:	0024                	.2byte	0x24
 6ca:	0b3e0b0b          	.4byte	0xb3e0b0b
 6ce:	00000e03          	lb	t3,0(zero) # 0 <__DYNAMIC>
 6d2:	3402                	.2byte	0x3402
 6d4:	0300                	.2byte	0x300
 6d6:	3a0e                	.2byte	0x3a0e
 6d8:	0121                	.2byte	0x121
 6da:	21390b3b          	.4byte	0x21390b3b
 6de:	00134903          	lbu	s2,1(t1)
 6e2:	0300                	.2byte	0x300
 6e4:	0034                	.2byte	0x34
 6e6:	213a0e03          	lb	t3,531(s4)
 6ea:	3b01                	.2byte	0x3b01
 6ec:	0321390b          	.4byte	0x321390b
 6f0:	1349                	.2byte	0x1349
 6f2:	1702                	.2byte	0x1702
 6f4:	0000                	.2byte	0x0
 6f6:	3404                	.2byte	0x3404
 6f8:	0300                	.2byte	0x300
 6fa:	3a08                	.2byte	0x3a08
 6fc:	0121                	.2byte	0x121
 6fe:	0b390b3b          	.4byte	0xb390b3b
 702:	1349                	.2byte	0x1349
 704:	1702                	.2byte	0x1702
 706:	0000                	.2byte	0x0
 708:	0b05                	.2byte	0xb05
 70a:	5501                	.2byte	0x5501
 70c:	06000017          	auipc	zero,0x6000
 710:	0016                	.2byte	0x16
 712:	213a0e03          	lb	t3,531(s4)
 716:	3b02                	.2byte	0x3b02
 718:	3905                	.2byte	0x3905
 71a:	0013490b          	.4byte	0x13490b
 71e:	0700                	.2byte	0x700
 720:	000d                	.2byte	0xd
 722:	213a0e03          	lb	t3,531(s4)
 726:	390b3b03          	.4byte	0x390b3b03
 72a:	0e21                	.2byte	0xe21
 72c:	1349                	.2byte	0x1349
 72e:	0b0d                	.2byte	0xb0d
 730:	00000b6b          	.4byte	0xb6b
 734:	0b08                	.2byte	0xb08
 736:	5501                	.2byte	0x5501
 738:	00130117          	auipc	sp,0x130
 73c:	0900                	.2byte	0x900
 73e:	0111                	.2byte	0x111
 740:	0e25                	.2byte	0xe25
 742:	1f030b13          	add	s6,t1,496
 746:	01111f1b          	.4byte	0x1111f1b
 74a:	0612                	.2byte	0x612
 74c:	1710                	.2byte	0x1710
 74e:	0000                	.2byte	0x0
 750:	240a                	.2byte	0x240a
 752:	0b00                	.2byte	0xb00
 754:	030b3e0b          	.4byte	0x30b3e0b
 758:	0008                	.2byte	0x8
 75a:	0b00                	.2byte	0xb00
 75c:	0016                	.2byte	0x16
 75e:	0b3a0e03          	lb	t3,179(s4)
 762:	0b390b3b          	.4byte	0xb390b3b
 766:	1349                	.2byte	0x1349
 768:	0000                	.2byte	0x0
 76a:	130c                	.2byte	0x130c
 76c:	0b01                	.2byte	0xb01
 76e:	3b0b3a0b          	.4byte	0x3b0b3a0b
 772:	010b390b          	.4byte	0x10b390b
 776:	0d000013          	li	zero,208
 77a:	000d                	.2byte	0xd
 77c:	0b3a0803          	lb	a6,179(s4)
 780:	0b390b3b          	.4byte	0xb390b3b
 784:	1349                	.2byte	0x1349
 786:	0b0d                	.2byte	0xb0d
 788:	00000b6b          	.4byte	0xb6b
 78c:	170e                	.2byte	0x170e
 78e:	0301                	.2byte	0x301
 790:	0b0e                	.2byte	0xb0e
 792:	3b0b3a0b          	.4byte	0x3b0b3a0b
 796:	010b390b          	.4byte	0x10b390b
 79a:	0f000013          	li	zero,240
 79e:	000d                	.2byte	0xd
 7a0:	0b3a0803          	lb	a6,179(s4)
 7a4:	0b390b3b          	.4byte	0xb390b3b
 7a8:	1349                	.2byte	0x1349
 7aa:	0000                	.2byte	0x0
 7ac:	0d10                	.2byte	0xd10
 7ae:	0300                	.2byte	0x300
 7b0:	3a0e                	.2byte	0x3a0e
 7b2:	390b3b0b          	.4byte	0x390b3b0b
 7b6:	0013490b          	.4byte	0x13490b
 7ba:	1100                	.2byte	0x1100
 7bc:	012e                	.2byte	0x12e
 7be:	0e03193f 0b3b0b3a 	.8byte	0xb3b0b3a0e03193f
 7c6:	0b39                	.2byte	0xb39
 7c8:	13491927          	.4byte	0x13491927
 7cc:	0111                	.2byte	0x111
 7ce:	0612                	.2byte	0x612
 7d0:	1840                	.2byte	0x1840
 7d2:	197a                	.2byte	0x197a
 7d4:	1301                	.2byte	0x1301
 7d6:	0000                	.2byte	0x0
 7d8:	0512                	.2byte	0x512
 7da:	0300                	.2byte	0x300
 7dc:	3a08                	.2byte	0x3a08
 7de:	390b3b0b          	.4byte	0x390b3b0b
 7e2:	0213490b          	.4byte	0x213490b
 7e6:	13000017          	auipc	zero,0x13000
 7ea:	0034                	.2byte	0x34
 7ec:	0b3a0e03          	lb	t3,179(s4)
 7f0:	0b390b3b          	.4byte	0xb390b3b
 7f4:	1349                	.2byte	0x1349
 7f6:	0b1c                	.2byte	0xb1c
 7f8:	0000                	.2byte	0x0
 7fa:	3414                	.2byte	0x3414
 7fc:	0300                	.2byte	0x300
 7fe:	3a08                	.2byte	0x3a08
 800:	390b3b0b          	.4byte	0x390b3b0b
 804:	0013490b          	.4byte	0x13490b
 808:	1500                	.2byte	0x1500
 80a:	000a                	.2byte	0xa
 80c:	0b3a0e03          	lb	t3,179(s4)
 810:	0b390b3b          	.4byte	0xb390b3b
 814:	0111                	.2byte	0x111
 816:	0000                	.2byte	0x0
 818:	4816                	.2byte	0x4816
 81a:	7d00                	.2byte	0x7d00
 81c:	7f01                	.2byte	0x7f01
 81e:	17000013          	li	zero,368
 822:	0000010b          	.4byte	0x10b
 826:	2e18                	.2byte	0x2e18
 828:	3f00                	.2byte	0x3f00
 82a:	3c19                	.2byte	0x3c19
 82c:	6e19                	.2byte	0x6e19
 82e:	030e                	.2byte	0x30e
 830:	000e                	.2byte	0xe
 832:	0000                	.2byte	0x0
 834:	2401                	.2byte	0x2401
 836:	0b00                	.2byte	0xb00
 838:	030b3e0b          	.4byte	0x30b3e0b
 83c:	000e                	.2byte	0xe
 83e:	0200                	.2byte	0x200
 840:	0016                	.2byte	0x16
 842:	213a0e03          	lb	t3,531(s4)
 846:	3b02                	.2byte	0x3b02
 848:	490b390b          	.4byte	0x490b390b
 84c:	03000013          	li	zero,48
 850:	0026                	.2byte	0x26
 852:	1349                	.2byte	0x1349
 854:	0000                	.2byte	0x0
 856:	1104                	.2byte	0x1104
 858:	2501                	.2byte	0x2501
 85a:	130e                	.2byte	0x130e
 85c:	1b1f030b          	.4byte	0x1b1f030b
 860:	111f 1201 1006      	.byte	0x1f, 0x11, 0x01, 0x12, 0x06, 0x10
 866:	05000017          	auipc	zero,0x5000
 86a:	0024                	.2byte	0x24
 86c:	0b3e0b0b          	.4byte	0xb3e0b0b
 870:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 874:	0106                	.2byte	0x106
 876:	4901                	.2byte	0x4901
 878:	00130113          	add	sp,t1,1
 87c:	0700                	.2byte	0x700
 87e:	0021                	.2byte	0x21
 880:	1349                	.2byte	0x1349
 882:	00000b2f          	.4byte	0xb2f
 886:	3408                	.2byte	0x3408
 888:	0300                	.2byte	0x300
 88a:	3a0e                	.2byte	0x3a0e
 88c:	39053b0b          	.4byte	0x39053b0b
 890:	3f13490b          	.4byte	0x3f13490b
 894:	3c19                	.2byte	0x3c19
 896:	0019                	.2byte	0x19
 898:	0900                	.2byte	0x900
 89a:	012e                	.2byte	0x12e
 89c:	0e03193f 053b0b3a 	.8byte	0x53b0b3a0e03193f
 8a4:	0b39                	.2byte	0xb39
 8a6:	13491927          	.4byte	0x13491927
 8aa:	0111                	.2byte	0x111
 8ac:	0612                	.2byte	0x612
 8ae:	1840                	.2byte	0x1840
 8b0:	197a                	.2byte	0x197a
 8b2:	0000                	.2byte	0x0
 8b4:	050a                	.2byte	0x50a
 8b6:	0300                	.2byte	0x300
 8b8:	3a08                	.2byte	0x3a08
 8ba:	39053b0b          	.4byte	0x39053b0b
 8be:	0213490b          	.4byte	0x213490b
 8c2:	0b000017          	auipc	zero,0xb000
 8c6:	0034                	.2byte	0x34
 8c8:	0b3a0803          	lb	a6,179(s4)
 8cc:	0b39053b          	.4byte	0xb39053b
 8d0:	1349                	.2byte	0x1349
 8d2:	0000                	.2byte	0x0
 8d4:	0b0c                	.2byte	0xb0c
 8d6:	5501                	.2byte	0x5501
 8d8:	0d000017          	auipc	zero,0xd000
 8dc:	0034                	.2byte	0x34
 8de:	0b3a0e03          	lb	t3,179(s4)
 8e2:	0b39053b          	.4byte	0xb39053b
 8e6:	1349                	.2byte	0x1349
 8e8:	1702                	.2byte	0x1702
 8ea:	0000                	.2byte	0x0
 8ec:	340e                	.2byte	0x340e
 8ee:	0300                	.2byte	0x300
 8f0:	3a08                	.2byte	0x3a08
 8f2:	39053b0b          	.4byte	0x39053b0b
 8f6:	0213490b          	.4byte	0x213490b
 8fa:	00000017          	auipc	zero,0x0
 8fe:	2401                	.2byte	0x2401
 900:	0b00                	.2byte	0xb00
 902:	030b3e0b          	.4byte	0x30b3e0b
 906:	000e                	.2byte	0xe
 908:	0200                	.2byte	0x200
 90a:	0026                	.2byte	0x26
 90c:	1349                	.2byte	0x1349
 90e:	0000                	.2byte	0x0
 910:	25011103          	lh	sp,592(sp) # 130988 <_stack_start+0x28988>
 914:	130e                	.2byte	0x130e
 916:	1b1f030b          	.4byte	0x1b1f030b
 91a:	101f 0017 0400      	.byte	0x1f, 0x10, 0x17, 0x00, 0x00, 0x04
 920:	0024                	.2byte	0x24
 922:	0b3e0b0b          	.4byte	0xb3e0b0b
 926:	00000803          	lb	a6,0(zero) # 0 <__DYNAMIC>
 92a:	1605                	.2byte	0x1605
 92c:	0300                	.2byte	0x300
 92e:	3a0e                	.2byte	0x3a0e
 930:	390b3b0b          	.4byte	0x390b3b0b
 934:	0013490b          	.4byte	0x13490b
 938:	0600                	.2byte	0x600
 93a:	0101                	.2byte	0x101
 93c:	1349                	.2byte	0x1349
 93e:	1301                	.2byte	0x1301
 940:	0000                	.2byte	0x0
 942:	49002107          	.4byte	0x49002107
 946:	000b2f13          	slti	t5,s6,0
 94a:	0800                	.2byte	0x800
 94c:	0034                	.2byte	0x34
 94e:	0b3a0e03          	lb	t3,179(s4)
 952:	0b39053b          	.4byte	0xb39053b
 956:	1349                	.2byte	0x1349
 958:	193c193f 34090000 	.8byte	0x34090000193c193f
 960:	4700                	.2byte	0x4700
 962:	3b0b3a13          	sltiu	s4,s6,944
 966:	3905                	.2byte	0x3905
 968:	0018020b          	.4byte	0x18020b
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
       0:	05dc                	.2byte	0x5dc
       2:	0000                	.2byte	0x0
       4:	0005                	.2byte	0x5
       6:	0004                	.2byte	0x4
       8:	0000                	.2byte	0x0
       a:	0000                	.2byte	0x0
       c:	00141807          	.4byte	0x141807
      10:	6c00                	.2byte	0x6c00
      12:	0014                	.2byte	0x14
      14:	0100                	.2byte	0x100
      16:	075a                	.2byte	0x75a
      18:	146c                	.2byte	0x146c
      1a:	0000                	.2byte	0x0
      1c:	14d8                	.2byte	0x14d8
      1e:	0000                	.2byte	0x0
      20:	a306                	.2byte	0xa306
      22:	260aa503          	lw	a0,608(s5)
      26:	079f 14d8 0000      	.byte	0x9f, 0x07, 0xd8, 0x14, 0x00, 0x00
      2c:	14e0                	.2byte	0x14e0
      2e:	0000                	.2byte	0x0
      30:	5a01                	.2byte	0x5a01
      32:	0014e007          	.4byte	0x14e007
      36:	f800                	.2byte	0xf800
      38:	0014                	.2byte	0x14
      3a:	0600                	.2byte	0x600
      3c:	0aa503a3          	sb	a0,167(a0)
      40:	9f26                	.2byte	0x9f26
      42:	0014f807          	.4byte	0x14f807
      46:	1800                	.2byte	0x1800
      48:	0015                	.2byte	0x15
      4a:	0100                	.2byte	0x100
      4c:	075a                	.2byte	0x75a
      4e:	1518                	.2byte	0x1518
      50:	0000                	.2byte	0x0
      52:	1748                	.2byte	0x1748
      54:	0000                	.2byte	0x0
      56:	a306                	.2byte	0xa306
      58:	260aa503          	lw	a0,608(s5)
      5c:	009f 1807 0014      	.byte	0x9f, 0x00, 0x07, 0x18, 0x14, 0x00
      62:	6c00                	.2byte	0x6c00
      64:	0014                	.2byte	0x14
      66:	0100                	.2byte	0x100
      68:	146c075b          	.4byte	0x146c075b
      6c:	0000                	.2byte	0x0
      6e:	1484                	.2byte	0x1484
      70:	0000                	.2byte	0x0
      72:	6401                	.2byte	0x6401
      74:	00148407          	.4byte	0x148407
      78:	d800                	.2byte	0xd800
      7a:	0014                	.2byte	0x14
      7c:	0600                	.2byte	0x600
      7e:	0ba503a3          	sb	s10,167(a0)
      82:	9f26                	.2byte	0x9f26
      84:	0014d807          	.4byte	0x14d807
      88:	e300                	.2byte	0xe300
      8a:	0014                	.2byte	0x14
      8c:	0100                	.2byte	0x100
      8e:	14e3075b          	.4byte	0x14e3075b
      92:	0000                	.2byte	0x0
      94:	14f8                	.2byte	0x14f8
      96:	0000                	.2byte	0x0
      98:	6401                	.2byte	0x6401
      9a:	0014f807          	.4byte	0x14f807
      9e:	1800                	.2byte	0x1800
      a0:	0015                	.2byte	0x15
      a2:	0100                	.2byte	0x100
      a4:	1518075b          	.4byte	0x1518075b
      a8:	0000                	.2byte	0x0
      aa:	1748                	.2byte	0x1748
      ac:	0000                	.2byte	0x0
      ae:	a306                	.2byte	0xa306
      b0:	260ba503          	lw	a0,608(s7)
      b4:	009f 1807 0014      	.byte	0x9f, 0x00, 0x07, 0x18, 0x14, 0x00
      ba:	7000                	.2byte	0x7000
      bc:	0014                	.2byte	0x14
      be:	0200                	.2byte	0x200
      c0:	9f30                	.2byte	0x9f30
      c2:	0014d807          	.4byte	0x14d807
      c6:	1800                	.2byte	0x1800
      c8:	0015                	.2byte	0x15
      ca:	0200                	.2byte	0x200
      cc:	9f30                	.2byte	0x9f30
      ce:	0700                	.2byte	0x700
      d0:	146c                	.2byte	0x146c
      d2:	0000                	.2byte	0x0
      d4:	1470                	.2byte	0x1470
      d6:	0000                	.2byte	0x0
      d8:	3002                	.2byte	0x3002
      da:	079f 1470 0000      	.byte	0x9f, 0x07, 0x70, 0x14, 0x00, 0x00
      e0:	14d8                	.2byte	0x14d8
      e2:	0000                	.2byte	0x0
      e4:	6501                	.2byte	0x6501
      e6:	00151807          	.4byte	0x151807
      ea:	a800                	.2byte	0xa800
      ec:	0016                	.2byte	0x16
      ee:	0100                	.2byte	0x100
      f0:	0765                	.2byte	0x765
      f2:	16b4                	.2byte	0x16b4
      f4:	0000                	.2byte	0x0
      f6:	1748                	.2byte	0x1748
      f8:	0000                	.2byte	0x0
      fa:	6501                	.2byte	0x6501
      fc:	0700                	.2byte	0x700
      fe:	1450                	.2byte	0x1450
     100:	0000                	.2byte	0x0
     102:	169c                	.2byte	0x169c
     104:	0000                	.2byte	0x0
     106:	8206                	.2byte	0x8206
     108:	0800                	.2byte	0x800
     10a:	079f1aff 000016b4 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xb4, 0x16, 0x00, 0x00, 0x48, 0x17, 0x00, 0x00
     112:	00001748 
     116:	8206                	.2byte	0x8206
     118:	0800                	.2byte	0x800
     11a:	009f1aff 00144c07 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0x4c, 0x14, 0x00, 0x00, 0x6c, 0x14, 0x00
     122:	00146c00 
     126:	0600                	.2byte	0x600
     128:	0079                	.2byte	0x79
     12a:	ff08                	.2byte	0xff08
     12c:	9f1a                	.2byte	0x9f1a
     12e:	00146c07          	.4byte	0x146c07
     132:	a800                	.2byte	0xa800
     134:	0014                	.2byte	0x14
     136:	0100                	.2byte	0x100
     138:	0759                	.2byte	0x759
     13a:	14d8                	.2byte	0x14d8
     13c:	0000                	.2byte	0x0
     13e:	14ec                	.2byte	0x14ec
     140:	0000                	.2byte	0x0
     142:	7906                	.2byte	0x7906
     144:	0800                	.2byte	0x800
     146:	079f1aff 000014f8 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xf8, 0x14, 0x00, 0x00, 0xfc, 0x14, 0x00, 0x00
     14e:	000014fc 
     152:	7906                	.2byte	0x7906
     154:	0800                	.2byte	0x800
     156:	079f1aff 000014fc 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xfc, 0x14, 0x00, 0x00, 0x0c, 0x15, 0x00, 0x00
     15e:	0000150c 
     162:	7a08                	.2byte	0x7a08
     164:	4700                	.2byte	0x4700
     166:	0825                	.2byte	0x825
     168:	079f1aff 0000150c 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x0c, 0x15, 0x00, 0x00, 0x10, 0x15, 0x00, 0x00
     170:	00001510 
     174:	7906                	.2byte	0x7906
     176:	0800                	.2byte	0x800
     178:	079f1aff 00001510 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x10, 0x15, 0x00, 0x00, 0x18, 0x15, 0x00, 0x00
     180:	00001518 
     184:	7a08                	.2byte	0x7a08
     186:	4700                	.2byte	0x4700
     188:	0825                	.2byte	0x825
     18a:	079f1aff 00001518 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x18, 0x15, 0x00, 0x00, 0x58, 0x15, 0x00, 0x00
     192:	00001558 
     196:	5901                	.2byte	0x5901
     198:	0700                	.2byte	0x700
     19a:	144c                	.2byte	0x144c
     19c:	0000                	.2byte	0x0
     19e:	145c                	.2byte	0x145c
     1a0:	0000                	.2byte	0x0
     1a2:	6301                	.2byte	0x6301
     1a4:	00145c07          	.4byte	0x145c07
     1a8:	6800                	.2byte	0x6800
     1aa:	0014                	.2byte	0x14
     1ac:	0700                	.2byte	0x700
     1ae:	43400083          	lb	ra,1076(zero) # 434 <main+0xb4>
     1b2:	2124                	.2byte	0x2124
     1b4:	079f 1468 0000      	.byte	0x9f, 0x07, 0x68, 0x14, 0x00, 0x00
     1ba:	1598                	.2byte	0x1598
     1bc:	0000                	.2byte	0x0
     1be:	6301                	.2byte	0x6301
     1c0:	0016b407          	.4byte	0x16b407
     1c4:	bc00                	.2byte	0xbc00
     1c6:	0016                	.2byte	0x16
     1c8:	0100                	.2byte	0x100
     1ca:	16c00763          	beq	zero,a2,338 <temp_get+0x1a>
     1ce:	0000                	.2byte	0x0
     1d0:	16c8                	.2byte	0x16c8
     1d2:	0000                	.2byte	0x0
     1d4:	6301                	.2byte	0x6301
     1d6:	00172c07          	.4byte	0x172c07
     1da:	3c00                	.2byte	0x3c00
     1dc:	01000017          	auipc	zero,0x1000
     1e0:	a0070063          	beqz	a4,fffff3e0 <_stack_start+0xffef73e0>
     1e4:	0014                	.2byte	0x14
     1e6:	a400                	.2byte	0xa400
     1e8:	0014                	.2byte	0x14
     1ea:	0200                	.2byte	0x200
     1ec:	9f30                	.2byte	0x9f30
     1ee:	0014a407          	.4byte	0x14a407
     1f2:	d800                	.2byte	0xd800
     1f4:	0014                	.2byte	0x14
     1f6:	0100                	.2byte	0x100
     1f8:	075d                	.2byte	0x75d
     1fa:	1558                	.2byte	0x1558
     1fc:	0000                	.2byte	0x0
     1fe:	1564                	.2byte	0x1564
     200:	0000                	.2byte	0x0
     202:	5d01                	.2byte	0x5d01
     204:	00158807          	.4byte	0x158807
     208:	a400                	.2byte	0xa400
     20a:	0015                	.2byte	0x15
     20c:	0100                	.2byte	0x100
     20e:	075d                	.2byte	0x75d
     210:	16b4                	.2byte	0x16b4
     212:	0000                	.2byte	0x0
     214:	16c8                	.2byte	0x16c8
     216:	0000                	.2byte	0x0
     218:	5d01                	.2byte	0x5d01
     21a:	0700                	.2byte	0x700
     21c:	1484                	.2byte	0x1484
     21e:	0000                	.2byte	0x0
     220:	14d8                	.2byte	0x14d8
     222:	0000                	.2byte	0x0
     224:	8406                	.2byte	0x8406
     226:	0800                	.2byte	0x800
     228:	079f1aff 00001518 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x18, 0x15, 0x00, 0x00, 0xa4, 0x16, 0x00, 0x00
     230:	000016a4 
     234:	8406                	.2byte	0x8406
     236:	0800                	.2byte	0x800
     238:	079f1aff 000016b4 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xb4, 0x16, 0x00, 0x00, 0x48, 0x17, 0x00, 0x00
     240:	00001748 
     244:	8406                	.2byte	0x8406
     246:	0800                	.2byte	0x800
     248:	009f1aff 00148007 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0x80, 0x14, 0x00, 0x00, 0xa0, 0x14, 0x00
     250:	0014a000 
     254:	0600                	.2byte	0x600
     256:	007f ff08 9f1a a007 	.byte	0x7f, 0x00, 0x08, 0xff, 0x1a, 0x9f, 0x07, 0xa0, 0x14, 0x00
     25e:	0014 
     260:	ac00                	.2byte	0xac00
     262:	0014                	.2byte	0x14
     264:	0100                	.2byte	0x100
     266:	075f 1518 0000      	.byte	0x5f, 0x07, 0x18, 0x15, 0x00, 0x00
     26c:	00001523          	sh	zero,10(zero) # a <__DYNAMIC+0xa>
     270:	7f06                	.2byte	0x7f06
     272:	0800                	.2byte	0x800
     274:	079f1aff 00001538 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x38, 0x15, 0x00, 0x00, 0x3c, 0x15, 0x00, 0x00
     27c:	0000153c 
     280:	7f06                	.2byte	0x7f06
     282:	0800                	.2byte	0x800
     284:	079f1aff 0000154c 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x4c, 0x15, 0x00, 0x00, 0x50, 0x15, 0x00, 0x00
     28c:	00001550 
     290:	7f06                	.2byte	0x7f06
     292:	0800                	.2byte	0x800
     294:	009f1aff 00148007 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0x80, 0x14, 0x00, 0x00, 0x90, 0x14, 0x00
     29c:	00149000 
     2a0:	0100                	.2byte	0x100
     2a2:	0758                	.2byte	0x758
     2a4:	1490                	.2byte	0x1490
     2a6:	0000                	.2byte	0x0
     2a8:	1494                	.2byte	0x1494
     2aa:	0000                	.2byte	0x0
     2ac:	40007807          	.4byte	0x40007807
     2b0:	9f212443          	.4byte	0x9f212443
     2b4:	00149c07          	.4byte	0x149c07
     2b8:	d800                	.2byte	0xd800
     2ba:	0014                	.2byte	0x14
     2bc:	0100                	.2byte	0x100
     2be:	0758                	.2byte	0x758
     2c0:	1518                	.2byte	0x1518
     2c2:	0000                	.2byte	0x0
     2c4:	1560                	.2byte	0x1560
     2c6:	0000                	.2byte	0x0
     2c8:	5801                	.2byte	0x5801
     2ca:	00158807          	.4byte	0x158807
     2ce:	b800                	.2byte	0xb800
     2d0:	0015                	.2byte	0x15
     2d2:	0100                	.2byte	0x100
     2d4:	0758                	.2byte	0x758
     2d6:	16b4                	.2byte	0x16b4
     2d8:	0000                	.2byte	0x0
     2da:	16c8                	.2byte	0x16c8
     2dc:	0000                	.2byte	0x0
     2de:	5801                	.2byte	0x5801
     2e0:	0700                	.2byte	0x700
     2e2:	1564                	.2byte	0x1564
     2e4:	0000                	.2byte	0x0
     2e6:	157c                	.2byte	0x157c
     2e8:	0000                	.2byte	0x0
     2ea:	5d01                	.2byte	0x5d01
     2ec:	00158807          	.4byte	0x158807
     2f0:	3000                	.2byte	0x3000
     2f2:	0016                	.2byte	0x16
     2f4:	0200                	.2byte	0x200
     2f6:	9f30                	.2byte	0x9f30
     2f8:	0016b407          	.4byte	0x16b407
     2fc:	c000                	.2byte	0xc000
     2fe:	0016                	.2byte	0x16
     300:	0200                	.2byte	0x200
     302:	9f30                	.2byte	0x9f30
     304:	0016c407          	.4byte	0x16c407
     308:	c800                	.2byte	0xc800
     30a:	0016                	.2byte	0x16
     30c:	0100                	.2byte	0x100
     30e:	005d                	.2byte	0x5d
     310:	0014bc07          	.4byte	0x14bc07
     314:	d800                	.2byte	0xd800
     316:	0014                	.2byte	0x14
     318:	0100                	.2byte	0x100
     31a:	075c                	.2byte	0x75c
     31c:	1558                	.2byte	0x1558
     31e:	0000                	.2byte	0x0
     320:	155c                	.2byte	0x155c
     322:	0000                	.2byte	0x0
     324:	5c01                	.2byte	0x5c01
     326:	00155c07          	.4byte	0x155c07
     32a:	6400                	.2byte	0x6400
     32c:	0015                	.2byte	0x15
     32e:	0600                	.2byte	0x600
     330:	0082                	.2byte	0x82
     332:	0084                	.2byte	0x84
     334:	64079f27          	.4byte	0x64079f27
     338:	0015                	.2byte	0x15
     33a:	c400                	.2byte	0xc400
     33c:	0016                	.2byte	0x16
     33e:	0100                	.2byte	0x100
     340:	075c                	.2byte	0x75c
     342:	16c4                	.2byte	0x16c4
     344:	0000                	.2byte	0x0
     346:	16c8                	.2byte	0x16c8
     348:	0000                	.2byte	0x0
     34a:	8406                	.2byte	0x8406
     34c:	0800                	.2byte	0x800
     34e:	079f1aff 000016c8 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xc8, 0x16, 0x00, 0x00, 0x38, 0x17, 0x00, 0x00
     356:	00001738 
     35a:	5c01                	.2byte	0x5c01
     35c:	00173c07          	.4byte	0x173c07
     360:	4800                	.2byte	0x4800
     362:	01000017          	auipc	zero,0x1000
     366:	005c                	.2byte	0x5c
     368:	0014bc07          	.4byte	0x14bc07
     36c:	d800                	.2byte	0xd800
     36e:	0014                	.2byte	0x14
     370:	0100                	.2byte	0x100
     372:	0759                	.2byte	0x759
     374:	1558                	.2byte	0x1558
     376:	0000                	.2byte	0x0
     378:	1634                	.2byte	0x1634
     37a:	0000                	.2byte	0x0
     37c:	5901                	.2byte	0x5901
     37e:	00163407          	.4byte	0x163407
     382:	8800                	.2byte	0x8800
     384:	0016                	.2byte	0x16
     386:	0100                	.2byte	0x100
     388:	075e                	.2byte	0x75e
     38a:	16b4                	.2byte	0x16b4
     38c:	0000                	.2byte	0x0
     38e:	16c8                	.2byte	0x16c8
     390:	0000                	.2byte	0x0
     392:	5901                	.2byte	0x5901
     394:	0016c807          	.4byte	0x16c807
     398:	d400                	.2byte	0xd400
     39a:	0016                	.2byte	0x16
     39c:	0100                	.2byte	0x100
     39e:	075e                	.2byte	0x75e
     3a0:	16d4                	.2byte	0x16d4
     3a2:	0000                	.2byte	0x0
     3a4:	16e4                	.2byte	0x16e4
     3a6:	0000                	.2byte	0x0
     3a8:	5d01                	.2byte	0x5d01
     3aa:	00172c07          	.4byte	0x172c07
     3ae:	3c00                	.2byte	0x3c00
     3b0:	01000017          	auipc	zero,0x1000
     3b4:	0059                	.2byte	0x59
     3b6:	00156407          	.4byte	0x156407
     3ba:	7c00                	.2byte	0x7c00
     3bc:	0015                	.2byte	0x15
     3be:	0100                	.2byte	0x100
     3c0:	0758                	.2byte	0x758
     3c2:	1630                	.2byte	0x1630
     3c4:	0000                	.2byte	0x0
     3c6:	166c                	.2byte	0x166c
     3c8:	0000                	.2byte	0x0
     3ca:	5801                	.2byte	0x5801
     3cc:	00166c07          	.4byte	0x166c07
     3d0:	7800                	.2byte	0x7800
     3d2:	0016                	.2byte	0x16
     3d4:	0500                	.2byte	0x500
     3d6:	0078                	.2byte	0x78
     3d8:	079f2533          	.4byte	0x79f2533
     3dc:	1678                	.2byte	0x1678
     3de:	0000                	.2byte	0x0
     3e0:	1684                	.2byte	0x1684
     3e2:	0000                	.2byte	0x0
     3e4:	5f01                	.2byte	0x5f01
     3e6:	0016c407          	.4byte	0x16c407
     3ea:	f000                	.2byte	0xf000
     3ec:	0016                	.2byte	0x16
     3ee:	0100                	.2byte	0x100
     3f0:	0758                	.2byte	0x758
     3f2:	16f8                	.2byte	0x16f8
     3f4:	0000                	.2byte	0x0
     3f6:	171c                	.2byte	0x171c
     3f8:	0000                	.2byte	0x0
     3fa:	5f01                	.2byte	0x5f01
     3fc:	0700                	.2byte	0x700
     3fe:	1694                	.2byte	0x1694
     400:	0000                	.2byte	0x0
     402:	16ac                	.2byte	0x16ac
     404:	0000                	.2byte	0x0
     406:	7e08                	.2byte	0x7e08
     408:	7a00                	.2byte	0x7a00
     40a:	2100                	.2byte	0x2100
     40c:	26a9                	.2byte	0x26a9
     40e:	079f 16ac 0000      	.byte	0x9f, 0x07, 0xac, 0x16, 0x00, 0x00
     414:	16b4                	.2byte	0x16b4
     416:	0000                	.2byte	0x0
     418:	5a01                	.2byte	0x5a01
     41a:	0700                	.2byte	0x700
     41c:	14e4                	.2byte	0x14e4
     41e:	0000                	.2byte	0x0
     420:	14f8                	.2byte	0x14f8
     422:	0000                	.2byte	0x0
     424:	9f787a03          	.4byte	0x9f787a03
     428:	0700                	.2byte	0x700
     42a:	1524                	.2byte	0x1524
     42c:	0000                	.2byte	0x0
     42e:	1538                	.2byte	0x1538
     430:	0000                	.2byte	0x0
     432:	9f787a03          	.4byte	0x9f787a03
     436:	0700                	.2byte	0x700
     438:	1594                	.2byte	0x1594
     43a:	0000                	.2byte	0x0
     43c:	1630                	.2byte	0x1630
     43e:	0000                	.2byte	0x0
     440:	6301                	.2byte	0x6301
     442:	0016bc07          	.4byte	0x16bc07
     446:	c000                	.2byte	0xc000
     448:	0016                	.2byte	0x16
     44a:	0100                	.2byte	0x100
     44c:	94070063          	beqz	a4,fffff58c <_stack_start+0xffef758c>
     450:	0015                	.2byte	0x15
     452:	9800                	.2byte	0x9800
     454:	0015                	.2byte	0x15
     456:	0200                	.2byte	0x200
     458:	9f30                	.2byte	0x9f30
     45a:	00159807          	.4byte	0x159807
     45e:	b000                	.2byte	0xb000
     460:	0015                	.2byte	0x15
     462:	0100                	.2byte	0x100
     464:	075f 16b8 0000      	.byte	0x5f, 0x07, 0xb8, 0x16, 0x00, 0x00
     46a:	16c0                	.2byte	0x16c0
     46c:	0000                	.2byte	0x0
     46e:	5f01                	.2byte	0x5f01
     470:	0700                	.2byte	0x700
     472:	161c                	.2byte	0x161c
     474:	0000                	.2byte	0x0
     476:	1620                	.2byte	0x1620
     478:	0000                	.2byte	0x0
     47a:	7808                	.2byte	0x7808
     47c:	4000                	.2byte	0x4000
     47e:	7d24                	.2byte	0x7d24
     480:	2100                	.2byte	0x2100
     482:	079f 1628 0000      	.byte	0x9f, 0x07, 0x28, 0x16, 0x00, 0x00
     488:	1630                	.2byte	0x1630
     48a:	0000                	.2byte	0x0
     48c:	5801                	.2byte	0x5801
     48e:	0700                	.2byte	0x700
     490:	161c                	.2byte	0x161c
     492:	0000                	.2byte	0x0
     494:	1624                	.2byte	0x1624
     496:	0000                	.2byte	0x0
     498:	7f06                	.2byte	0x7f06
     49a:	7e00                	.2byte	0x7e00
     49c:	1c00                	.2byte	0x1c00
     49e:	079f 1624 0000      	.byte	0x9f, 0x07, 0x24, 0x16, 0x00, 0x00
     4a4:	162c                	.2byte	0x162c
     4a6:	0000                	.2byte	0x0
     4a8:	5f01                	.2byte	0x5f01
     4aa:	0700                	.2byte	0x700
     4ac:	158c                	.2byte	0x158c
     4ae:	0000                	.2byte	0x0
     4b0:	1630                	.2byte	0x1630
     4b2:	0000                	.2byte	0x0
     4b4:	5b01                	.2byte	0x5b01
     4b6:	0016b407          	.4byte	0x16b407
     4ba:	c000                	.2byte	0xc000
     4bc:	0016                	.2byte	0x16
     4be:	0100                	.2byte	0x100
     4c0:	9c07005b          	.4byte	0x9c07005b
     4c4:	0015                	.2byte	0x15
     4c6:	0000                	.2byte	0x0
     4c8:	0016                	.2byte	0x16
     4ca:	0100                	.2byte	0x100
     4cc:	075a                	.2byte	0x75a
     4ce:	1600                	.2byte	0x1600
     4d0:	0000                	.2byte	0x0
     4d2:	1630                	.2byte	0x1630
     4d4:	0000                	.2byte	0x0
     4d6:	7b05                	.2byte	0x7b05
     4d8:	4000                	.2byte	0x4000
     4da:	9f25                	.2byte	0x9f25
     4dc:	0700                	.2byte	0x700
     4de:	15ac                	.2byte	0x15ac
     4e0:	0000                	.2byte	0x0
     4e2:	15f8                	.2byte	0x15f8
     4e4:	0000                	.2byte	0x0
     4e6:	5d01                	.2byte	0x5d01
     4e8:	0015f807          	.4byte	0x15f807
     4ec:	3000                	.2byte	0x3000
     4ee:	0016                	.2byte	0x16
     4f0:	0700                	.2byte	0x700
     4f2:	ff0a007b          	.4byte	0xff0a007b
     4f6:	009f1aff 0015ac07 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0xac, 0x15, 0x00, 0x00, 0xd0, 0x15, 0x00
     4fe:	0015d000 
     502:	0100                	.2byte	0x100
     504:	0761                	.2byte	0x761
     506:	15d0                	.2byte	0x15d0
     508:	0000                	.2byte	0x0
     50a:	1620                	.2byte	0x1620
     50c:	0000                	.2byte	0x0
     50e:	5801                	.2byte	0x5801
     510:	0700                	.2byte	0x700
     512:	15e8                	.2byte	0x15e8
     514:	0000                	.2byte	0x0
     516:	1608                	.2byte	0x1608
     518:	0000                	.2byte	0x0
     51a:	6001                	.2byte	0x6001
     51c:	00160807          	.4byte	0x160807
     520:	3000                	.2byte	0x3000
     522:	0016                	.2byte	0x16
     524:	0100                	.2byte	0x100
     526:	005d                	.2byte	0x5d
     528:	0015ac07          	.4byte	0x15ac07
     52c:	b400                	.2byte	0xb400
     52e:	0015                	.2byte	0x15
     530:	0600                	.2byte	0x600
     532:	007a0083          	lb	ra,7(s4)
     536:	9f1d                	.2byte	0x9f1d
     538:	0015b407          	.4byte	0x15b407
     53c:	c000                	.2byte	0xc000
     53e:	0015                	.2byte	0x15
     540:	0100                	.2byte	0x100
     542:	075e                	.2byte	0x75e
     544:	15c0                	.2byte	0x15c0
     546:	0000                	.2byte	0x0
     548:	15c4                	.2byte	0x15c4
     54a:	0000                	.2byte	0x0
     54c:	8306                	.2byte	0x8306
     54e:	7a00                	.2byte	0x7a00
     550:	1d00                	.2byte	0x1d00
     552:	079f 15c4 0000      	.byte	0x9f, 0x07, 0xc4, 0x15, 0x00, 0x00
     558:	15cc                	.2byte	0x15cc
     55a:	0000                	.2byte	0x0
     55c:	5f01                	.2byte	0x5f01
     55e:	0015d007          	.4byte	0x15d007
     562:	ec00                	.2byte	0xec00
     564:	0015                	.2byte	0x15
     566:	0100                	.2byte	0x100
     568:	005f e407 0015      	.byte	0x5f, 0x00, 0x07, 0xe4, 0x15, 0x00
     56e:	ec00                	.2byte	0xec00
     570:	0015                	.2byte	0x15
     572:	0600                	.2byte	0x600
     574:	007f 007a 9f1d ec07 	.byte	0x7f, 0x00, 0x7a, 0x00, 0x1d, 0x9f, 0x07, 0xec, 0x15, 0x00
     57c:	0015 
     57e:	0c00                	.2byte	0xc00
     580:	0016                	.2byte	0x16
     582:	0100                	.2byte	0x100
     584:	075f 160c 0000      	.byte	0x5f, 0x07, 0x0c, 0x16, 0x00, 0x00
     58a:	161c                	.2byte	0x161c
     58c:	0000                	.2byte	0x0
     58e:	5a01                	.2byte	0x5a01
     590:	00161c07          	.4byte	0x161c07
     594:	2400                	.2byte	0x2400
     596:	0016                	.2byte	0x16
     598:	0600                	.2byte	0x600
     59a:	007f 007e 9f1c 2407 	.byte	0x7f, 0x00, 0x7e, 0x00, 0x1c, 0x9f, 0x07, 0x24, 0x16, 0x00
     5a2:	0016 
     5a4:	2c00                	.2byte	0x2c00
     5a6:	0016                	.2byte	0x16
     5a8:	0100                	.2byte	0x100
     5aa:	005f bc07 0015      	.byte	0x5f, 0x00, 0x07, 0xbc, 0x15, 0x00
     5b0:	e800                	.2byte	0xe800
     5b2:	0015                	.2byte	0x15
     5b4:	0100                	.2byte	0x100
     5b6:	0760                	.2byte	0x760
     5b8:	15e8                	.2byte	0x15e8
     5ba:	0000                	.2byte	0x0
     5bc:	15f0                	.2byte	0x15f0
     5be:	0000                	.2byte	0x0
     5c0:	7d06                	.2byte	0x7d06
     5c2:	8100                	.2byte	0x8100
     5c4:	1e00                	.2byte	0x1e00
     5c6:	079f 15f0 0000      	.byte	0x9f, 0x07, 0xf0, 0x15, 0x00, 0x00
     5cc:	1630                	.2byte	0x1630
     5ce:	0000                	.2byte	0x0
     5d0:	5e01                	.2byte	0x5e01
     5d2:	0700                	.2byte	0x700
     5d4:	16c8                	.2byte	0x16c8
     5d6:	0000                	.2byte	0x0
     5d8:	16e4                	.2byte	0x16e4
     5da:	0000                	.2byte	0x0
     5dc:	3102                	.2byte	0x3102
     5de:	009f 00dd 0000      	.byte	0x9f, 0x00, 0xdd, 0x00, 0x00, 0x00
     5e4:	0005                	.2byte	0x5
     5e6:	0004                	.2byte	0x4
     5e8:	0000                	.2byte	0x0
     5ea:	0000                	.2byte	0x0
     5ec:	00174807          	.4byte	0x174807
     5f0:	6400                	.2byte	0x6400
     5f2:	01000017          	auipc	zero,0x1000
     5f6:	075a                	.2byte	0x75a
     5f8:	1764                	.2byte	0x1764
     5fa:	0000                	.2byte	0x0
     5fc:	1824                	.2byte	0x1824
     5fe:	0000                	.2byte	0x0
     600:	a306                	.2byte	0xa306
     602:	260aa503          	lw	a0,608(s5)
     606:	009f 4807 0017      	.byte	0x9f, 0x00, 0x07, 0x48, 0x17, 0x00
     60c:	7400                	.2byte	0x7400
     60e:	01000017          	auipc	zero,0x1000
     612:	1774075b          	.4byte	0x1774075b
     616:	0000                	.2byte	0x0
     618:	1824                	.2byte	0x1824
     61a:	0000                	.2byte	0x0
     61c:	a306                	.2byte	0xa306
     61e:	260ba503          	lw	a0,608(s7)
     622:	009f 7007 0017      	.byte	0x9f, 0x00, 0x07, 0x70, 0x17, 0x00
     628:	8000                	.2byte	0x8000
     62a:	01000017          	auipc	zero,0x1000
     62e:	075a                	.2byte	0x75a
     630:	1790                	.2byte	0x1790
     632:	0000                	.2byte	0x0
     634:	1794                	.2byte	0x1794
     636:	0000                	.2byte	0x0
     638:	5a01                	.2byte	0x5a01
     63a:	0017a407          	.4byte	0x17a407
     63e:	ac00                	.2byte	0xac00
     640:	01000017          	auipc	zero,0x1000
     644:	075a                	.2byte	0x75a
     646:	17cc                	.2byte	0x17cc
     648:	0000                	.2byte	0x0
     64a:	17e8                	.2byte	0x17e8
     64c:	0000                	.2byte	0x0
     64e:	5a01                	.2byte	0x5a01
     650:	0017f007          	.4byte	0x17f007
     654:	fc00                	.2byte	0xfc00
     656:	01000017          	auipc	zero,0x1000
     65a:	075a                	.2byte	0x75a
     65c:	1800                	.2byte	0x1800
     65e:	0000                	.2byte	0x0
     660:	1804                	.2byte	0x1804
     662:	0000                	.2byte	0x0
     664:	5a01                	.2byte	0x5a01
     666:	00181407          	.4byte	0x181407
     66a:	1800                	.2byte	0x1800
     66c:	0018                	.2byte	0x18
     66e:	0100                	.2byte	0x100
     670:	075a                	.2byte	0x75a
     672:	181c                	.2byte	0x181c
     674:	0000                	.2byte	0x0
     676:	1824                	.2byte	0x1824
     678:	0000                	.2byte	0x0
     67a:	5a01                	.2byte	0x5a01
     67c:	0700                	.2byte	0x700
     67e:	17d0                	.2byte	0x17d0
     680:	0000                	.2byte	0x0
     682:	17d4                	.2byte	0x17d4
     684:	0000                	.2byte	0x0
     686:	3002                	.2byte	0x3002
     688:	079f 17f0 0000      	.byte	0x9f, 0x07, 0xf0, 0x17, 0x00, 0x00
     68e:	17fc                	.2byte	0x17fc
     690:	0000                	.2byte	0x0
     692:	7c08                	.2byte	0x7c08
     694:	3000                	.2byte	0x3000
     696:	0829                	.2byte	0x829
     698:	009f1aff 0017b407 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0xb4, 0x17, 0x00, 0x00, 0xbc, 0x17, 0x00
     6a0:	0017bc00 
     6a4:	0200                	.2byte	0x200
     6a6:	9f30                	.2byte	0x9f30
     6a8:	0017f807          	.4byte	0x17f807
     6ac:	fc00                	.2byte	0xfc00
     6ae:	02000017          	auipc	zero,0x2000
     6b2:	9f31                	.2byte	0x9f31
     6b4:	00180007          	.4byte	0x180007
     6b8:	1400                	.2byte	0x1400
     6ba:	0018                	.2byte	0x18
     6bc:	0200                	.2byte	0x200
     6be:	9f30                	.2byte	0x9f30
     6c0:	ec00                	.2byte	0xec00
     6c2:	0004                	.2byte	0x4
     6c4:	0500                	.2byte	0x500
     6c6:	0400                	.2byte	0x400
     6c8:	0000                	.2byte	0x0
     6ca:	0000                	.2byte	0x0
     6cc:	0700                	.2byte	0x700
     6ce:	1824                	.2byte	0x1824
     6d0:	0000                	.2byte	0x0
     6d2:	1878                	.2byte	0x1878
     6d4:	0000                	.2byte	0x0
     6d6:	5a01                	.2byte	0x5a01
     6d8:	00187807          	.4byte	0x187807
     6dc:	e800                	.2byte	0xe800
     6de:	0019                	.2byte	0x19
     6e0:	0600                	.2byte	0x600
     6e2:	0aa503a3          	sb	a0,167(a0)
     6e6:	9f26                	.2byte	0x9f26
     6e8:	0019e807          	.4byte	0x19e807
     6ec:	f000                	.2byte	0xf000
     6ee:	0019                	.2byte	0x19
     6f0:	0100                	.2byte	0x100
     6f2:	075a                	.2byte	0x75a
     6f4:	19f0                	.2byte	0x19f0
     6f6:	0000                	.2byte	0x0
     6f8:	1a08                	.2byte	0x1a08
     6fa:	0000                	.2byte	0x0
     6fc:	a306                	.2byte	0xa306
     6fe:	260aa503          	lw	a0,608(s5)
     702:	079f 1a08 0000      	.byte	0x9f, 0x07, 0x08, 0x1a, 0x00, 0x00
     708:	1a28                	.2byte	0x1a28
     70a:	0000                	.2byte	0x0
     70c:	5a01                	.2byte	0x5a01
     70e:	001a2807          	.4byte	0x1a2807
     712:	5800                	.2byte	0x5800
     714:	0600001b          	.4byte	0x600001b
     718:	0aa503a3          	sb	a0,167(a0)
     71c:	9f26                	.2byte	0x9f26
     71e:	0700                	.2byte	0x700
     720:	1824                	.2byte	0x1824
     722:	0000                	.2byte	0x0
     724:	1878                	.2byte	0x1878
     726:	0000                	.2byte	0x0
     728:	5b01                	.2byte	0x5b01
     72a:	00187807          	.4byte	0x187807
     72e:	9000                	.2byte	0x9000
     730:	0018                	.2byte	0x18
     732:	0100                	.2byte	0x100
     734:	0765                	.2byte	0x765
     736:	1890                	.2byte	0x1890
     738:	0000                	.2byte	0x0
     73a:	19e8                	.2byte	0x19e8
     73c:	0000                	.2byte	0x0
     73e:	a306                	.2byte	0xa306
     740:	260ba503          	lw	a0,608(s7)
     744:	079f 19e8 0000      	.byte	0x9f, 0x07, 0xe8, 0x19, 0x00, 0x00
     74a:	000019f3          	csrrw	s3,ustatus,zero
     74e:	5b01                	.2byte	0x5b01
     750:	0019f307          	.4byte	0x19f307
     754:	0800                	.2byte	0x800
     756:	001a                	.2byte	0x1a
     758:	0100                	.2byte	0x100
     75a:	0765                	.2byte	0x765
     75c:	1a08                	.2byte	0x1a08
     75e:	0000                	.2byte	0x0
     760:	1a28                	.2byte	0x1a28
     762:	0000                	.2byte	0x0
     764:	5b01                	.2byte	0x5b01
     766:	001a2807          	.4byte	0x1a2807
     76a:	5800                	.2byte	0x5800
     76c:	0600001b          	.4byte	0x600001b
     770:	0ba503a3          	sb	s10,167(a0)
     774:	9f26                	.2byte	0x9f26
     776:	0700                	.2byte	0x700
     778:	1824                	.2byte	0x1824
     77a:	0000                	.2byte	0x0
     77c:	187c                	.2byte	0x187c
     77e:	0000                	.2byte	0x0
     780:	3002                	.2byte	0x3002
     782:	079f 19e8 0000      	.byte	0x9f, 0x07, 0xe8, 0x19, 0x00, 0x00
     788:	1a28                	.2byte	0x1a28
     78a:	0000                	.2byte	0x0
     78c:	3002                	.2byte	0x3002
     78e:	009f 7807 0018      	.byte	0x9f, 0x00, 0x07, 0x78, 0x18, 0x00
     794:	7c00                	.2byte	0x7c00
     796:	0018                	.2byte	0x18
     798:	0200                	.2byte	0x200
     79a:	9f30                	.2byte	0x9f30
     79c:	00187c07          	.4byte	0x187c07
     7a0:	d800                	.2byte	0xd800
     7a2:	0019                	.2byte	0x19
     7a4:	0100                	.2byte	0x100
     7a6:	0764                	.2byte	0x764
     7a8:	1a28                	.2byte	0x1a28
     7aa:	0000                	.2byte	0x0
     7ac:	1b58                	.2byte	0x1b58
     7ae:	0000                	.2byte	0x0
     7b0:	6401                	.2byte	0x6401
     7b2:	0700                	.2byte	0x700
     7b4:	185c                	.2byte	0x185c
     7b6:	0000                	.2byte	0x0
     7b8:	19d4                	.2byte	0x19d4
     7ba:	0000                	.2byte	0x0
     7bc:	8306                	.2byte	0x8306
     7be:	0800                	.2byte	0x800
     7c0:	079f1aff 000019e8 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xe8, 0x19, 0x00, 0x00, 0x58, 0x1b, 0x00, 0x00
     7c8:	00001b58 
     7cc:	8306                	.2byte	0x8306
     7ce:	0800                	.2byte	0x800
     7d0:	009f1aff 00185807 	.byte	0xff, 0x1a, 0x9f, 0x00, 0x07, 0x58, 0x18, 0x00, 0x00, 0x78, 0x18, 0x00
     7d8:	00187800 
     7dc:	0600                	.2byte	0x600
     7de:	0082                	.2byte	0x82
     7e0:	ff08                	.2byte	0xff08
     7e2:	9f1a                	.2byte	0x9f1a
     7e4:	00187807          	.4byte	0x187807
     7e8:	b400                	.2byte	0xb400
     7ea:	0018                	.2byte	0x18
     7ec:	0100                	.2byte	0x100
     7ee:	0762                	.2byte	0x762
     7f0:	19e8                	.2byte	0x19e8
     7f2:	0000                	.2byte	0x0
     7f4:	19fc                	.2byte	0x19fc
     7f6:	0000                	.2byte	0x0
     7f8:	8206                	.2byte	0x8206
     7fa:	0800                	.2byte	0x800
     7fc:	079f1aff 00001a08 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x08, 0x1a, 0x00, 0x00, 0x0c, 0x1a, 0x00, 0x00
     804:	00001a0c 
     808:	8206                	.2byte	0x8206
     80a:	0800                	.2byte	0x800
     80c:	079f1aff 00001a0c 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x0c, 0x1a, 0x00, 0x00, 0x1c, 0x1a, 0x00, 0x00
     814:	00001a1c 
     818:	7a08                	.2byte	0x7a08
     81a:	4700                	.2byte	0x4700
     81c:	0825                	.2byte	0x825
     81e:	079f1aff 00001a1c 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x1c, 0x1a, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00
     826:	00001a20 
     82a:	8206                	.2byte	0x8206
     82c:	0800                	.2byte	0x800
     82e:	079f1aff 00001a20 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x20, 0x1a, 0x00, 0x00, 0x28, 0x1a, 0x00, 0x00
     836:	00001a28 
     83a:	7a08                	.2byte	0x7a08
     83c:	4700                	.2byte	0x4700
     83e:	0825                	.2byte	0x825
     840:	079f1aff 00001a28 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x28, 0x1a, 0x00, 0x00, 0x68, 0x1a, 0x00, 0x00
     848:	00001a68 
     84c:	6201                	.2byte	0x6201
     84e:	0700                	.2byte	0x700
     850:	1858                	.2byte	0x1858
     852:	0000                	.2byte	0x0
     854:	1868                	.2byte	0x1868
     856:	0000                	.2byte	0x0
     858:	5901                	.2byte	0x5901
     85a:	00186807          	.4byte	0x186807
     85e:	6c00                	.2byte	0x6c00
     860:	0018                	.2byte	0x18
     862:	0700                	.2byte	0x700
     864:	0079                	.2byte	0x79
     866:	4340                	.2byte	0x4340
     868:	2124                	.2byte	0x2124
     86a:	079f 186c 0000      	.byte	0x9f, 0x07, 0x6c, 0x18, 0x00, 0x00
     870:	1874                	.2byte	0x1874
     872:	0000                	.2byte	0x0
     874:	39007a0b          	.4byte	0x39007a0b
     878:	3924                	.2byte	0x3924
     87a:	4025                	.2byte	0x4025
     87c:	9f212443          	.4byte	0x9f212443
     880:	00187407          	.4byte	0x187407
     884:	f800                	.2byte	0xf800
     886:	0018                	.2byte	0x18
     888:	0100                	.2byte	0x100
     88a:	0759                	.2byte	0x759
     88c:	19e8                	.2byte	0x19e8
     88e:	0000                	.2byte	0x0
     890:	1ad0                	.2byte	0x1ad0
     892:	0000                	.2byte	0x0
     894:	5901                	.2byte	0x5901
     896:	001b3c07          	.4byte	0x1b3c07
     89a:	4c00                	.2byte	0x4c00
     89c:	0100001b          	.4byte	0x100001b
     8a0:	0059                	.2byte	0x59
     8a2:	0018ac07          	.4byte	0x18ac07
     8a6:	b000                	.2byte	0xb000
     8a8:	0018                	.2byte	0x18
     8aa:	0200                	.2byte	0x200
     8ac:	9f30                	.2byte	0x9f30
     8ae:	0018b007          	.4byte	0x18b007
     8b2:	ec00                	.2byte	0xec00
     8b4:	0018                	.2byte	0x18
     8b6:	0100                	.2byte	0x100
     8b8:	075e                	.2byte	0x75e
     8ba:	1a68                	.2byte	0x1a68
     8bc:	0000                	.2byte	0x0
     8be:	1a8c                	.2byte	0x1a8c
     8c0:	0000                	.2byte	0x0
     8c2:	5e01                	.2byte	0x5e01
     8c4:	001ab007          	.4byte	0x1ab007
     8c8:	cc00                	.2byte	0xcc00
     8ca:	001a                	.2byte	0x1a
     8cc:	0100                	.2byte	0x100
     8ce:	005e                	.2byte	0x5e
     8d0:	00189007          	.4byte	0x189007
     8d4:	dc00                	.2byte	0xdc00
     8d6:	0019                	.2byte	0x19
     8d8:	0600                	.2byte	0x600
     8da:	0085                	.2byte	0x85
     8dc:	ff08                	.2byte	0xff08
     8de:	9f1a                	.2byte	0x9f1a
     8e0:	001a2807          	.4byte	0x1a2807
     8e4:	5800                	.2byte	0x5800
     8e6:	0600001b          	.4byte	0x600001b
     8ea:	0085                	.2byte	0x85
     8ec:	ff08                	.2byte	0xff08
     8ee:	9f1a                	.2byte	0x9f1a
     8f0:	0700                	.2byte	0x700
     8f2:	188c                	.2byte	0x188c
     8f4:	0000                	.2byte	0x0
     8f6:	18ac                	.2byte	0x18ac
     8f8:	0000                	.2byte	0x0
     8fa:	7f06                	.2byte	0x7f06
     8fc:	0800                	.2byte	0x800
     8fe:	079f1aff 000018ac 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xac, 0x18, 0x00, 0x00, 0xb8, 0x18, 0x00, 0x00
     906:	000018b8 
     90a:	5f01                	.2byte	0x5f01
     90c:	001a2807          	.4byte	0x1a2807
     910:	3300                	.2byte	0x3300
     912:	001a                	.2byte	0x1a
     914:	0600                	.2byte	0x600
     916:	007f ff08 9f1a 4807 	.byte	0x7f, 0x00, 0x08, 0xff, 0x1a, 0x9f, 0x07, 0x48, 0x1a, 0x00
     91e:	001a 
     920:	4c00                	.2byte	0x4c00
     922:	001a                	.2byte	0x1a
     924:	0600                	.2byte	0x600
     926:	007f ff08 9f1a 5c07 	.byte	0x7f, 0x00, 0x08, 0xff, 0x1a, 0x9f, 0x07, 0x5c, 0x1a, 0x00
     92e:	001a 
     930:	6000                	.2byte	0x6000
     932:	001a                	.2byte	0x1a
     934:	0600                	.2byte	0x600
     936:	007f ff08 9f1a 0700 	.byte	0x7f, 0x00, 0x08, 0xff, 0x1a, 0x9f, 0x00, 0x07, 0x8c, 0x18
     93e:	188c 
     940:	0000                	.2byte	0x0
     942:	189c                	.2byte	0x189c
     944:	0000                	.2byte	0x0
     946:	5801                	.2byte	0x5801
     948:	00189c07          	.4byte	0x189c07
     94c:	a000                	.2byte	0xa000
     94e:	0018                	.2byte	0x18
     950:	0700                	.2byte	0x700
     952:	0078                	.2byte	0x78
     954:	4340                	.2byte	0x4340
     956:	2124                	.2byte	0x2124
     958:	079f 18a8 0000      	.byte	0x9f, 0x07, 0xa8, 0x18, 0x00, 0x00
     95e:	1904                	.2byte	0x1904
     960:	0000                	.2byte	0x0
     962:	5801                	.2byte	0x5801
     964:	001a2807          	.4byte	0x1a2807
     968:	8c00                	.2byte	0x8c00
     96a:	001a                	.2byte	0x1a
     96c:	0100                	.2byte	0x100
     96e:	0758                	.2byte	0x758
     970:	1ab0                	.2byte	0x1ab0
     972:	0000                	.2byte	0x0
     974:	1ac8                	.2byte	0x1ac8
     976:	0000                	.2byte	0x0
     978:	5801                	.2byte	0x5801
     97a:	0700                	.2byte	0x700
     97c:	18e0                	.2byte	0x18e0
     97e:	0000                	.2byte	0x0
     980:	1964                	.2byte	0x1964
     982:	0000                	.2byte	0x0
     984:	3002                	.2byte	0x3002
     986:	079f 1a8c 0000      	.byte	0x9f, 0x07, 0x8c, 0x1a, 0x00, 0x00
     98c:	1aac                	.2byte	0x1aac
     98e:	0000                	.2byte	0x0
     990:	5e01                	.2byte	0x5e01
     992:	001ad007          	.4byte	0x1ad007
     996:	d800                	.2byte	0xd800
     998:	001a                	.2byte	0x1a
     99a:	0200                	.2byte	0x200
     99c:	9f30                	.2byte	0x9f30
     99e:	0700                	.2byte	0x700
     9a0:	18c4                	.2byte	0x18c4
     9a2:	0000                	.2byte	0x0
     9a4:	1964                	.2byte	0x1964
     9a6:	0000                	.2byte	0x0
     9a8:	5a01                	.2byte	0x5a01
     9aa:	0019ac07          	.4byte	0x19ac07
     9ae:	c800                	.2byte	0xc800
     9b0:	0019                	.2byte	0x19
     9b2:	0100                	.2byte	0x100
     9b4:	075a                	.2byte	0x75a
     9b6:	1a68                	.2byte	0x1a68
     9b8:	0000                	.2byte	0x0
     9ba:	1a88                	.2byte	0x1a88
     9bc:	0000                	.2byte	0x0
     9be:	5a01                	.2byte	0x5a01
     9c0:	001a8807          	.4byte	0x1a8807
     9c4:	8c00                	.2byte	0x8c00
     9c6:	001a                	.2byte	0x1a
     9c8:	0600                	.2byte	0x600
     9ca:	00850083          	lb	ra,8(a0)
     9ce:	8c079f27          	.4byte	0x8c079f27
     9d2:	001a                	.2byte	0x1a
     9d4:	c000                	.2byte	0xc000
     9d6:	001a                	.2byte	0x1a
     9d8:	0100                	.2byte	0x100
     9da:	075a                	.2byte	0x75a
     9dc:	1ac0                	.2byte	0x1ac0
     9de:	0000                	.2byte	0x0
     9e0:	1ad0                	.2byte	0x1ad0
     9e2:	0000                	.2byte	0x0
     9e4:	8306                	.2byte	0x8306
     9e6:	8500                	.2byte	0x8500
     9e8:	2700                	.2byte	0x2700
     9ea:	079f 1ad0 0000      	.byte	0x9f, 0x07, 0xd0, 0x1a, 0x00, 0x00
     9f0:	1ad8                	.2byte	0x1ad8
     9f2:	0000                	.2byte	0x0
     9f4:	5a01                	.2byte	0x5a01
     9f6:	001b3c07          	.4byte	0x1b3c07
     9fa:	4800                	.2byte	0x4800
     9fc:	0100001b          	.4byte	0x100001b
     a00:	005a                	.2byte	0x5a
     a02:	0018c807          	.4byte	0x18c807
     a06:	6400                	.2byte	0x6400
     a08:	0019                	.2byte	0x19
     a0a:	0100                	.2byte	0x100
     a0c:	075c                	.2byte	0x75c
     a0e:	1968                	.2byte	0x1968
     a10:	0000                	.2byte	0x0
     a12:	19bc                	.2byte	0x19bc
     a14:	0000                	.2byte	0x0
     a16:	5e01                	.2byte	0x5e01
     a18:	001a6807          	.4byte	0x1a6807
     a1c:	d400                	.2byte	0xd400
     a1e:	001a                	.2byte	0x1a
     a20:	0100                	.2byte	0x100
     a22:	075c                	.2byte	0x75c
     a24:	1ad4                	.2byte	0x1ad4
     a26:	0000                	.2byte	0x0
     a28:	1ad8                	.2byte	0x1ad8
     a2a:	0000                	.2byte	0x0
     a2c:	9f018203          	lb	tp,-1552(gp)
     a30:	001ad807          	.4byte	0x1ad807
     a34:	e400                	.2byte	0xe400
     a36:	001a                	.2byte	0x1a
     a38:	0100                	.2byte	0x100
     a3a:	075e                	.2byte	0x75e
     a3c:	1ae4                	.2byte	0x1ae4
     a3e:	0000                	.2byte	0x0
     a40:	1af4                	.2byte	0x1af4
     a42:	0000                	.2byte	0x0
     a44:	5d01                	.2byte	0x5d01
     a46:	001b3c07          	.4byte	0x1b3c07
     a4a:	4c00                	.2byte	0x4c00
     a4c:	0100001b          	.4byte	0x100001b
     a50:	005c                	.2byte	0x5c
     a52:	00194c07          	.4byte	0x194c07
     a56:	6000                	.2byte	0x6000
     a58:	0019                	.2byte	0x19
     a5a:	0100                	.2byte	0x100
     a5c:	0758                	.2byte	0x758
     a5e:	1984                	.2byte	0x1984
     a60:	0000                	.2byte	0x0
     a62:	19a0                	.2byte	0x19a0
     a64:	0000                	.2byte	0x0
     a66:	5801                	.2byte	0x5801
     a68:	0019a007          	.4byte	0x19a007
     a6c:	ac00                	.2byte	0xac00
     a6e:	0019                	.2byte	0x19
     a70:	0500                	.2byte	0x500
     a72:	0078                	.2byte	0x78
     a74:	079f2533          	.4byte	0x79f2533
     a78:	19ac                	.2byte	0x19ac
     a7a:	0000                	.2byte	0x0
     a7c:	19b8                	.2byte	0x19b8
     a7e:	0000                	.2byte	0x0
     a80:	5f01                	.2byte	0x5f01
     a82:	001a8c07          	.4byte	0x1a8c07
     a86:	b000                	.2byte	0xb000
     a88:	001a                	.2byte	0x1a
     a8a:	0100                	.2byte	0x100
     a8c:	0758                	.2byte	0x758
     a8e:	1ad0                	.2byte	0x1ad0
     a90:	0000                	.2byte	0x0
     a92:	1ad8                	.2byte	0x1ad8
     a94:	0000                	.2byte	0x0
     a96:	5801                	.2byte	0x5801
     a98:	001b0807          	.4byte	0x1b0807
     a9c:	2c00                	.2byte	0x2c00
     a9e:	0100001b          	.4byte	0x100001b
     aa2:	005f c807 0019      	.byte	0x5f, 0x00, 0x07, 0xc8, 0x19, 0x00
     aa8:	e000                	.2byte	0xe000
     aaa:	0019                	.2byte	0x19
     aac:	0800                	.2byte	0x800
     aae:	007e                	.2byte	0x7e
     ab0:	007a                	.2byte	0x7a
     ab2:	a921                	.2byte	0xa921
     ab4:	9f26                	.2byte	0x9f26
     ab6:	0019e007          	.4byte	0x19e007
     aba:	e800                	.2byte	0xe800
     abc:	0019                	.2byte	0x19
     abe:	0100                	.2byte	0x100
     ac0:	005a                	.2byte	0x5a
     ac2:	0019f407          	.4byte	0x19f407
     ac6:	0800                	.2byte	0x800
     ac8:	001a                	.2byte	0x1a
     aca:	0300                	.2byte	0x300
     acc:	787a                	.2byte	0x787a
     ace:	009f 3407 001a      	.byte	0x9f, 0x00, 0x07, 0x34, 0x1a, 0x00
     ad4:	4800                	.2byte	0x4800
     ad6:	001a                	.2byte	0x1a
     ad8:	0300                	.2byte	0x300
     ada:	787a                	.2byte	0x787a
     adc:	009f 2c07 0019      	.byte	0x9f, 0x00, 0x07, 0x2c, 0x19, 0x00
     ae2:	3c00                	.2byte	0x3c00
     ae4:	0019                	.2byte	0x19
     ae6:	0100                	.2byte	0x100
     ae8:	075f 194c 0000      	.byte	0x5f, 0x07, 0x4c, 0x19, 0x00, 0x00
     aee:	1960                	.2byte	0x1960
     af0:	0000                	.2byte	0x0
     af2:	5801                	.2byte	0x5801
     af4:	001ad007          	.4byte	0x1ad007
     af8:	d800                	.2byte	0xd800
     afa:	001a                	.2byte	0x1a
     afc:	0100                	.2byte	0x100
     afe:	0058                	.2byte	0x58
     b00:	00191c07          	.4byte	0x191c07
     b04:	3400                	.2byte	0x3400
     b06:	0019                	.2byte	0x19
     b08:	0800                	.2byte	0x800
     b0a:	0078                	.2byte	0x78
     b0c:	2540                	.2byte	0x2540
     b0e:	007e                	.2byte	0x7e
     b10:	9f22                	.2byte	0x9f22
     b12:	00194007          	.4byte	0x194007
     b16:	4800                	.2byte	0x4800
     b18:	0019                	.2byte	0x19
     b1a:	0100                	.2byte	0x100
     b1c:	0058                	.2byte	0x58
     b1e:	0018fc07          	.4byte	0x18fc07
     b22:	2800                	.2byte	0x2800
     b24:	0019                	.2byte	0x19
     b26:	0100                	.2byte	0x100
     b28:	fc07005b          	.4byte	0xfc07005b
     b2c:	0018                	.2byte	0x18
     b2e:	0c00                	.2byte	0xc00
     b30:	0019                	.2byte	0x19
     b32:	0600                	.2byte	0x600
     b34:	007f 0079 9f1e 0c07 	.byte	0x7f, 0x00, 0x79, 0x00, 0x1e, 0x9f, 0x07, 0x0c, 0x19, 0x00
     b3c:	0019 
     b3e:	1000                	.2byte	0x1000
     b40:	0019                	.2byte	0x19
     b42:	0100                	.2byte	0x100
     b44:	075f 1914 0000      	.byte	0x5f, 0x07, 0x14, 0x19, 0x00, 0x00
     b4a:	1934                	.2byte	0x1934
     b4c:	0000                	.2byte	0x0
     b4e:	5801                	.2byte	0x5801
     b50:	0700                	.2byte	0x700
     b52:	1900                	.2byte	0x1900
     b54:	0000                	.2byte	0x0
     b56:	1930                	.2byte	0x1930
     b58:	0000                	.2byte	0x0
     b5a:	5d01                	.2byte	0x5d01
     b5c:	0700                	.2byte	0x700
     b5e:	1908                	.2byte	0x1908
     b60:	0000                	.2byte	0x0
     b62:	1964                	.2byte	0x1964
     b64:	0000                	.2byte	0x0
     b66:	5e01                	.2byte	0x5e01
     b68:	001ad007          	.4byte	0x1ad007
     b6c:	d800                	.2byte	0xd800
     b6e:	001a                	.2byte	0x1a
     b70:	0100                	.2byte	0x100
     b72:	005e                	.2byte	0x5e
     b74:	0018e007          	.4byte	0x18e007
     b78:	f800                	.2byte	0xf800
     b7a:	0018                	.2byte	0x18
     b7c:	0100                	.2byte	0x100
     b7e:	0059                	.2byte	0x59
     b80:	0018ec07          	.4byte	0x18ec07
     b84:	0400                	.2byte	0x400
     b86:	0019                	.2byte	0x19
     b88:	0100                	.2byte	0x100
     b8a:	0058                	.2byte	0x58
     b8c:	0018ec07          	.4byte	0x18ec07
     b90:	0800                	.2byte	0x800
     b92:	0019                	.2byte	0x19
     b94:	0100                	.2byte	0x100
     b96:	005e                	.2byte	0x5e
     b98:	0018f007          	.4byte	0x18f007
     b9c:	0c00                	.2byte	0xc00
     b9e:	0019                	.2byte	0x19
     ba0:	0100                	.2byte	0x100
     ba2:	005f d807 001a      	.byte	0x5f, 0x00, 0x07, 0xd8, 0x1a, 0x00
     ba8:	f400                	.2byte	0xf400
     baa:	001a                	.2byte	0x1a
     bac:	0200                	.2byte	0x200
     bae:	9f31                	.2byte	0x9f31
     bb0:	fa00                	.2byte	0xfa00
     bb2:	000a                	.2byte	0xa
     bb4:	0500                	.2byte	0x500
     bb6:	0400                	.2byte	0x400
     bb8:	0000                	.2byte	0x0
     bba:	0000                	.2byte	0x0
     bbc:	0700                	.2byte	0x700
     bbe:	1b58                	.2byte	0x1b58
     bc0:	0000                	.2byte	0x0
     bc2:	1b9c                	.2byte	0x1b9c
     bc4:	0000                	.2byte	0x0
     bc6:	5a01                	.2byte	0x5a01
     bc8:	001b9c07          	.4byte	0x1b9c07
     bcc:	1400                	.2byte	0x1400
     bce:	0020                	.2byte	0x20
     bd0:	0600                	.2byte	0x600
     bd2:	0aa503a3          	sb	a0,167(a0)
     bd6:	9f26                	.2byte	0x9f26
     bd8:	0700                	.2byte	0x700
     bda:	1b58                	.2byte	0x1b58
     bdc:	0000                	.2byte	0x0
     bde:	1b98                	.2byte	0x1b98
     be0:	0000                	.2byte	0x0
     be2:	5b01                	.2byte	0x5b01
     be4:	001b9807          	.4byte	0x1b9807
     be8:	1400                	.2byte	0x1400
     bea:	0020                	.2byte	0x20
     bec:	0600                	.2byte	0x600
     bee:	0ba503a3          	sb	s10,167(a0)
     bf2:	9f26                	.2byte	0x9f26
     bf4:	0700                	.2byte	0x700
     bf6:	1b58                	.2byte	0x1b58
     bf8:	0000                	.2byte	0x0
     bfa:	1bd8                	.2byte	0x1bd8
     bfc:	0000                	.2byte	0x0
     bfe:	3002                	.2byte	0x3002
     c00:	079f 1c3c 0000      	.byte	0x9f, 0x07, 0x3c, 0x1c, 0x00, 0x00
     c06:	1c7c                	.2byte	0x1c7c
     c08:	0000                	.2byte	0x0
     c0a:	3002                	.2byte	0x3002
     c0c:	079f 1c88 0000      	.byte	0x9f, 0x07, 0x88, 0x1c, 0x00, 0x00
     c12:	1ca4                	.2byte	0x1ca4
     c14:	0000                	.2byte	0x0
     c16:	3002                	.2byte	0x3002
     c18:	079f 1cc0 0000      	.byte	0x9f, 0x07, 0xc0, 0x1c, 0x00, 0x00
     c1e:	1db4                	.2byte	0x1db4
     c20:	0000                	.2byte	0x0
     c22:	3002                	.2byte	0x3002
     c24:	079f 1dc0 0000      	.byte	0x9f, 0x07, 0xc0, 0x1d, 0x00, 0x00
     c2a:	1f40                	.2byte	0x1f40
     c2c:	0000                	.2byte	0x0
     c2e:	3002                	.2byte	0x3002
     c30:	079f 1f64 0000      	.byte	0x9f, 0x07, 0x64, 0x1f, 0x00, 0x00
     c36:	1fe8                	.2byte	0x1fe8
     c38:	0000                	.2byte	0x0
     c3a:	3002                	.2byte	0x3002
     c3c:	079f 2000 0000      	.byte	0x9f, 0x07, 0x00, 0x20, 0x00, 0x00
     c42:	2014                	.2byte	0x2014
     c44:	0000                	.2byte	0x0
     c46:	3002                	.2byte	0x3002
     c48:	009f 9407 001b      	.byte	0x9f, 0x00, 0x07, 0x94, 0x1b, 0x00
     c4e:	d800                	.2byte	0xd800
     c50:	0100001b          	.4byte	0x100001b
     c54:	0759                	.2byte	0x759
     c56:	1c3c                	.2byte	0x1c3c
     c58:	0000                	.2byte	0x0
     c5a:	1c80                	.2byte	0x1c80
     c5c:	0000                	.2byte	0x0
     c5e:	5901                	.2byte	0x5901
     c60:	001c8807          	.4byte	0x1c8807
     c64:	a400                	.2byte	0xa400
     c66:	001c                	.2byte	0x1c
     c68:	0100                	.2byte	0x100
     c6a:	0759                	.2byte	0x759
     c6c:	1cc0                	.2byte	0x1cc0
     c6e:	0000                	.2byte	0x0
     c70:	1df0                	.2byte	0x1df0
     c72:	0000                	.2byte	0x0
     c74:	5901                	.2byte	0x5901
     c76:	001df807          	.4byte	0x1df807
     c7a:	2400                	.2byte	0x2400
     c7c:	001e                	.2byte	0x1e
     c7e:	0100                	.2byte	0x100
     c80:	0759                	.2byte	0x759
     c82:	1e3c                	.2byte	0x1e3c
     c84:	0000                	.2byte	0x0
     c86:	1e60                	.2byte	0x1e60
     c88:	0000                	.2byte	0x0
     c8a:	5901                	.2byte	0x5901
     c8c:	001e6407          	.4byte	0x1e6407
     c90:	7400                	.2byte	0x7400
     c92:	001e                	.2byte	0x1e
     c94:	0100                	.2byte	0x100
     c96:	0759                	.2byte	0x759
     c98:	1e78                	.2byte	0x1e78
     c9a:	0000                	.2byte	0x0
     c9c:	1e88                	.2byte	0x1e88
     c9e:	0000                	.2byte	0x0
     ca0:	5901                	.2byte	0x5901
     ca2:	001ea007          	.4byte	0x1ea007
     ca6:	a400                	.2byte	0xa400
     ca8:	001e                	.2byte	0x1e
     caa:	0100                	.2byte	0x100
     cac:	0759                	.2byte	0x759
     cae:	1eac                	.2byte	0x1eac
     cb0:	0000                	.2byte	0x0
     cb2:	1eb0                	.2byte	0x1eb0
     cb4:	0000                	.2byte	0x0
     cb6:	5901                	.2byte	0x5901
     cb8:	001eec07          	.4byte	0x1eec07
     cbc:	f800                	.2byte	0xf800
     cbe:	001e                	.2byte	0x1e
     cc0:	0100                	.2byte	0x100
     cc2:	0759                	.2byte	0x759
     cc4:	1efc                	.2byte	0x1efc
     cc6:	0000                	.2byte	0x0
     cc8:	1f18                	.2byte	0x1f18
     cca:	0000                	.2byte	0x0
     ccc:	5901                	.2byte	0x5901
     cce:	001f1c07          	.4byte	0x1f1c07
     cd2:	4000                	.2byte	0x4000
     cd4:	001f 0100 0759      	.byte	0x1f, 0x00, 0x00, 0x01, 0x59, 0x07
     cda:	1f48                	.2byte	0x1f48
     cdc:	0000                	.2byte	0x0
     cde:	1f50                	.2byte	0x1f50
     ce0:	0000                	.2byte	0x0
     ce2:	5901                	.2byte	0x5901
     ce4:	001f6407          	.4byte	0x1f6407
     ce8:	7c00                	.2byte	0x7c00
     cea:	001f 0100 0759      	.byte	0x1f, 0x00, 0x00, 0x01, 0x59, 0x07
     cf0:	1fb8                	.2byte	0x1fb8
     cf2:	0000                	.2byte	0x0
     cf4:	1fc4                	.2byte	0x1fc4
     cf6:	0000                	.2byte	0x0
     cf8:	5901                	.2byte	0x5901
     cfa:	001fd807          	.4byte	0x1fd807
     cfe:	e800                	.2byte	0xe800
     d00:	001f 0100 0759      	.byte	0x1f, 0x00, 0x00, 0x01, 0x59, 0x07
     d06:	2000                	.2byte	0x2000
     d08:	0000                	.2byte	0x0
     d0a:	2014                	.2byte	0x2014
     d0c:	0000                	.2byte	0x0
     d0e:	5901                	.2byte	0x5901
     d10:	0700                	.2byte	0x700
     d12:	1b7c                	.2byte	0x1b7c
     d14:	0000                	.2byte	0x0
     d16:	1bc0                	.2byte	0x1bc0
     d18:	0000                	.2byte	0x0
     d1a:	6201                	.2byte	0x6201
     d1c:	001bc007          	.4byte	0x1bc007
     d20:	c400                	.2byte	0xc400
     d22:	0400001b          	.4byte	0x400001b
     d26:	ff7e                	.2byte	0xff7e
     d28:	9f01                	.2byte	0x9f01
     d2a:	001bc407          	.4byte	0x1bc407
     d2e:	d800                	.2byte	0xd800
     d30:	0100001b          	.4byte	0x100001b
     d34:	0762                	.2byte	0x762
     d36:	1c3c                	.2byte	0x1c3c
     d38:	0000                	.2byte	0x0
     d3a:	1c5c                	.2byte	0x1c5c
     d3c:	0000                	.2byte	0x0
     d3e:	6201                	.2byte	0x6201
     d40:	001c7807          	.4byte	0x1c7807
     d44:	8400                	.2byte	0x8400
     d46:	001c                	.2byte	0x1c
     d48:	0100                	.2byte	0x100
     d4a:	0762                	.2byte	0x762
     d4c:	1c88                	.2byte	0x1c88
     d4e:	0000                	.2byte	0x0
     d50:	1ca4                	.2byte	0x1ca4
     d52:	0000                	.2byte	0x0
     d54:	6201                	.2byte	0x6201
     d56:	001cc007          	.4byte	0x1cc007
     d5a:	dc00                	.2byte	0xdc00
     d5c:	001c                	.2byte	0x1c
     d5e:	0100                	.2byte	0x100
     d60:	0762                	.2byte	0x762
     d62:	1d14                	.2byte	0x1d14
     d64:	0000                	.2byte	0x0
     d66:	1d30                	.2byte	0x1d30
     d68:	0000                	.2byte	0x0
     d6a:	6201                	.2byte	0x6201
     d6c:	001d7c07          	.4byte	0x1d7c07
     d70:	d400                	.2byte	0xd400
     d72:	001d                	.2byte	0x1d
     d74:	0100                	.2byte	0x100
     d76:	0762                	.2byte	0x762
     d78:	1dd8                	.2byte	0x1dd8
     d7a:	0000                	.2byte	0x0
     d7c:	1df0                	.2byte	0x1df0
     d7e:	0000                	.2byte	0x0
     d80:	6201                	.2byte	0x6201
     d82:	001df807          	.4byte	0x1df807
     d86:	2400                	.2byte	0x2400
     d88:	001e                	.2byte	0x1e
     d8a:	0100                	.2byte	0x100
     d8c:	0762                	.2byte	0x762
     d8e:	1e3c                	.2byte	0x1e3c
     d90:	0000                	.2byte	0x0
     d92:	1e5c                	.2byte	0x1e5c
     d94:	0000                	.2byte	0x0
     d96:	6201                	.2byte	0x6201
     d98:	001e5c07          	.4byte	0x1e5c07
     d9c:	6400                	.2byte	0x6400
     d9e:	001e                	.2byte	0x1e
     da0:	0400                	.2byte	0x400
     da2:	ff7e                	.2byte	0xff7e
     da4:	9f01                	.2byte	0x9f01
     da6:	001e6407          	.4byte	0x1e6407
     daa:	7000                	.2byte	0x7000
     dac:	001e                	.2byte	0x1e
     dae:	0100                	.2byte	0x100
     db0:	0762                	.2byte	0x762
     db2:	1e70                	.2byte	0x1e70
     db4:	0000                	.2byte	0x0
     db6:	1e78                	.2byte	0x1e78
     db8:	0000                	.2byte	0x0
     dba:	7e04                	.2byte	0x7e04
     dbc:	01ff 079f 1e78 0000 	.byte	0xff, 0x01, 0x9f, 0x07, 0x78, 0x1e, 0x00, 0x00, 0x8c, 0x1e
     dc4:	1e8c 
     dc6:	0000                	.2byte	0x0
     dc8:	6201                	.2byte	0x6201
     dca:	001ea007          	.4byte	0x1ea007
     dce:	a800                	.2byte	0xa800
     dd0:	001e                	.2byte	0x1e
     dd2:	0100                	.2byte	0x100
     dd4:	0762                	.2byte	0x762
     dd6:	1ea8                	.2byte	0x1ea8
     dd8:	0000                	.2byte	0x0
     dda:	1eac                	.2byte	0x1eac
     ddc:	0000                	.2byte	0x0
     dde:	7e04                	.2byte	0x7e04
     de0:	01ff 079f 1eac 0000 	.byte	0xff, 0x01, 0x9f, 0x07, 0xac, 0x1e, 0x00, 0x00, 0xb4, 0x1e
     de8:	1eb4 
     dea:	0000                	.2byte	0x0
     dec:	6201                	.2byte	0x6201
     dee:	001eec07          	.4byte	0x1eec07
     df2:	4000                	.2byte	0x4000
     df4:	001f 0100 0762      	.byte	0x1f, 0x00, 0x00, 0x01, 0x62, 0x07
     dfa:	1f48                	.2byte	0x1f48
     dfc:	0000                	.2byte	0x0
     dfe:	1f5c                	.2byte	0x1f5c
     e00:	0000                	.2byte	0x0
     e02:	6201                	.2byte	0x6201
     e04:	001f6407          	.4byte	0x1f6407
     e08:	7c00                	.2byte	0x7c00
     e0a:	001f 0100 0762      	.byte	0x1f, 0x00, 0x00, 0x01, 0x62, 0x07
     e10:	1fb8                	.2byte	0x1fb8
     e12:	0000                	.2byte	0x0
     e14:	1fc0                	.2byte	0x1fc0
     e16:	0000                	.2byte	0x0
     e18:	6201                	.2byte	0x6201
     e1a:	001fd807          	.4byte	0x1fd807
     e1e:	e800                	.2byte	0xe800
     e20:	001f 0100 0762      	.byte	0x1f, 0x00, 0x00, 0x01, 0x62, 0x07
     e26:	2000                	.2byte	0x2000
     e28:	0000                	.2byte	0x0
     e2a:	2004                	.2byte	0x2004
     e2c:	0000                	.2byte	0x0
     e2e:	6201                	.2byte	0x6201
     e30:	00200407          	.4byte	0x200407
     e34:	0c00                	.2byte	0xc00
     e36:	0020                	.2byte	0x20
     e38:	0300                	.2byte	0x300
     e3a:	7f7e                	.2byte	0x7f7e
     e3c:	079f 200c 0000      	.byte	0x9f, 0x07, 0x0c, 0x20, 0x00, 0x00
     e42:	2014                	.2byte	0x2014
     e44:	0000                	.2byte	0x0
     e46:	6201                	.2byte	0x6201
     e48:	0700                	.2byte	0x700
     e4a:	1b78                	.2byte	0x1b78
     e4c:	0000                	.2byte	0x0
     e4e:	1b9c                	.2byte	0x1b9c
     e50:	0000                	.2byte	0x0
     e52:	5d01                	.2byte	0x5d01
     e54:	001b9c07          	.4byte	0x1b9c07
     e58:	d800                	.2byte	0xd800
     e5a:	0100001b          	.4byte	0x100001b
     e5e:	075a                	.2byte	0x75a
     e60:	1c3c                	.2byte	0x1c3c
     e62:	0000                	.2byte	0x0
     e64:	1ca4                	.2byte	0x1ca4
     e66:	0000                	.2byte	0x0
     e68:	5a01                	.2byte	0x5a01
     e6a:	001cc007          	.4byte	0x1cc007
     e6e:	dc00                	.2byte	0xdc00
     e70:	001c                	.2byte	0x1c
     e72:	0100                	.2byte	0x100
     e74:	075a                	.2byte	0x75a
     e76:	1d14                	.2byte	0x1d14
     e78:	0000                	.2byte	0x0
     e7a:	1d4c                	.2byte	0x1d4c
     e7c:	0000                	.2byte	0x0
     e7e:	5a01                	.2byte	0x5a01
     e80:	001d4c07          	.4byte	0x1d4c07
     e84:	5800                	.2byte	0x5800
     e86:	001d                	.2byte	0x1d
     e88:	0200                	.2byte	0x200
     e8a:	9f31                	.2byte	0x9f31
     e8c:	001d5807          	.4byte	0x1d5807
     e90:	6c00                	.2byte	0x6c00
     e92:	001d                	.2byte	0x1d
     e94:	0100                	.2byte	0x100
     e96:	075a                	.2byte	0x75a
     e98:	1d6c                	.2byte	0x1d6c
     e9a:	0000                	.2byte	0x0
     e9c:	1d70                	.2byte	0x1d70
     e9e:	0000                	.2byte	0x0
     ea0:	7b06                	.2byte	0x7b06
     ea2:	7e00                	.2byte	0x7e00
     ea4:	2100                	.2byte	0x2100
     ea6:	079f 1d70 0000      	.byte	0x9f, 0x07, 0x70, 0x1d, 0x00, 0x00
     eac:	1d7c                	.2byte	0x1d7c
     eae:	0000                	.2byte	0x0
     eb0:	5e01                	.2byte	0x5e01
     eb2:	001d7c07          	.4byte	0x1d7c07
     eb6:	2400                	.2byte	0x2400
     eb8:	001e                	.2byte	0x1e
     eba:	0100                	.2byte	0x100
     ebc:	075a                	.2byte	0x75a
     ebe:	1e3c                	.2byte	0x1e3c
     ec0:	0000                	.2byte	0x0
     ec2:	1ee0                	.2byte	0x1ee0
     ec4:	0000                	.2byte	0x0
     ec6:	5a01                	.2byte	0x5a01
     ec8:	001ee007          	.4byte	0x1ee007
     ecc:	ec00                	.2byte	0xec00
     ece:	001e                	.2byte	0x1e
     ed0:	0100                	.2byte	0x100
     ed2:	075e                	.2byte	0x75e
     ed4:	1eec                	.2byte	0x1eec
     ed6:	0000                	.2byte	0x0
     ed8:	1f40                	.2byte	0x1f40
     eda:	0000                	.2byte	0x0
     edc:	5a01                	.2byte	0x5a01
     ede:	001f4807          	.4byte	0x1f4807
     ee2:	7c00                	.2byte	0x7c00
     ee4:	001f 0100 075a      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5a, 0x07
     eea:	1fb8                	.2byte	0x1fb8
     eec:	0000                	.2byte	0x0
     eee:	1fc4                	.2byte	0x1fc4
     ef0:	0000                	.2byte	0x0
     ef2:	5a01                	.2byte	0x5a01
     ef4:	001fd807          	.4byte	0x1fd807
     ef8:	e800                	.2byte	0xe800
     efa:	001f 0100 075a      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5a, 0x07
     f00:	2000                	.2byte	0x2000
     f02:	0000                	.2byte	0x0
     f04:	2014                	.2byte	0x2014
     f06:	0000                	.2byte	0x0
     f08:	5a01                	.2byte	0x5a01
     f0a:	0700                	.2byte	0x700
     f0c:	1b9c                	.2byte	0x1b9c
     f0e:	0000                	.2byte	0x0
     f10:	1bbc                	.2byte	0x1bbc
     f12:	0000                	.2byte	0x0
     f14:	7b06                	.2byte	0x7b06
     f16:	0800                	.2byte	0x800
     f18:	079f1aff 00001bc4 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xc4, 0x1b, 0x00, 0x00, 0xc8, 0x1b, 0x00, 0x00
     f20:	00001bc8 
     f24:	7b06                	.2byte	0x7b06
     f26:	0800                	.2byte	0x800
     f28:	079f1aff 00001bc8 	.byte	0xff, 0x1a, 0x9f, 0x07, 0xc8, 0x1b, 0x00, 0x00, 0xd8, 0x1b, 0x00, 0x00
     f30:	00001bd8 
     f34:	5d01                	.2byte	0x5d01
     f36:	001c3c07          	.4byte	0x1c3c07
     f3a:	4000                	.2byte	0x4000
     f3c:	001c                	.2byte	0x1c
     f3e:	0600                	.2byte	0x600
     f40:	ff08007b          	.4byte	0xff08007b
     f44:	9f1a                	.2byte	0x9f1a
     f46:	001c4007          	.4byte	0x1c4007
     f4a:	5800                	.2byte	0x5800
     f4c:	001c                	.2byte	0x1c
     f4e:	0100                	.2byte	0x100
     f50:	075d                	.2byte	0x75d
     f52:	1c58                	.2byte	0x1c58
     f54:	0000                	.2byte	0x0
     f56:	1c5c                	.2byte	0x1c5c
     f58:	0000                	.2byte	0x0
     f5a:	7b05                	.2byte	0x7b05
     f5c:	3100                	.2byte	0x3100
     f5e:	78079f27          	.4byte	0x78079f27
     f62:	001c                	.2byte	0x1c
     f64:	7c00                	.2byte	0x7c00
     f66:	001c                	.2byte	0x1c
     f68:	0500                	.2byte	0x500
     f6a:	2731007b          	.4byte	0x2731007b
     f6e:	079f 1c88 0000      	.byte	0x9f, 0x07, 0x88, 0x1c, 0x00, 0x00
     f74:	1c90                	.2byte	0x1c90
     f76:	0000                	.2byte	0x0
     f78:	5d01                	.2byte	0x5d01
     f7a:	001c9007          	.4byte	0x1c9007
     f7e:	a400                	.2byte	0xa400
     f80:	001c                	.2byte	0x1c
     f82:	0500                	.2byte	0x500
     f84:	2731007b          	.4byte	0x2731007b
     f88:	079f 1cc0 0000      	.byte	0x9f, 0x07, 0xc0, 0x1c, 0x00, 0x00
     f8e:	1cdc                	.2byte	0x1cdc
     f90:	0000                	.2byte	0x0
     f92:	7b05                	.2byte	0x7b05
     f94:	3100                	.2byte	0x3100
     f96:	14079f27          	.4byte	0x14079f27
     f9a:	001d                	.2byte	0x1d
     f9c:	1c00                	.2byte	0x1c00
     f9e:	001d                	.2byte	0x1d
     fa0:	0100                	.2byte	0x100
     fa2:	075d                	.2byte	0x75d
     fa4:	1d1c                	.2byte	0x1d1c
     fa6:	0000                	.2byte	0x0
     fa8:	1d30                	.2byte	0x1d30
     faa:	0000                	.2byte	0x0
     fac:	7b05                	.2byte	0x7b05
     fae:	3100                	.2byte	0x3100
     fb0:	d8079f27          	.4byte	0xd8079f27
     fb4:	001d                	.2byte	0x1d
     fb6:	e800                	.2byte	0xe800
     fb8:	001d                	.2byte	0x1d
     fba:	0100                	.2byte	0x100
     fbc:	075d                	.2byte	0x75d
     fbe:	1de8                	.2byte	0x1de8
     fc0:	0000                	.2byte	0x0
     fc2:	1df0                	.2byte	0x1df0
     fc4:	0000                	.2byte	0x0
     fc6:	7b05                	.2byte	0x7b05
     fc8:	3100                	.2byte	0x3100
     fca:	f8079f27          	.4byte	0xf8079f27
     fce:	001d                	.2byte	0x1d
     fd0:	2400                	.2byte	0x2400
     fd2:	001e                	.2byte	0x1e
     fd4:	0500                	.2byte	0x500
     fd6:	2731007b          	.4byte	0x2731007b
     fda:	079f 1e3c 0000      	.byte	0x9f, 0x07, 0x3c, 0x1e, 0x00, 0x00
     fe0:	1e44                	.2byte	0x1e44
     fe2:	0000                	.2byte	0x0
     fe4:	5d01                	.2byte	0x5d01
     fe6:	001e4407          	.4byte	0x1e4407
     fea:	5000                	.2byte	0x5000
     fec:	001e                	.2byte	0x1e
     fee:	0500                	.2byte	0x500
     ff0:	2731007b          	.4byte	0x2731007b
     ff4:	079f 1e50 0000      	.byte	0x9f, 0x07, 0x50, 0x1e, 0x00, 0x00
     ffa:	1e64                	.2byte	0x1e64
     ffc:	0000                	.2byte	0x0
     ffe:	7b06                	.2byte	0x7b06
    1000:	0800                	.2byte	0x800
    1002:	079f1aff 00001e64 	.byte	0xff, 0x1a, 0x9f, 0x07, 0x64, 0x1e, 0x00, 0x00, 0x8c, 0x1e, 0x00, 0x00
    100a:	00001e8c 
    100e:	5d01                	.2byte	0x5d01
    1010:	001ea007          	.4byte	0x1ea007
    1014:	a400                	.2byte	0xa400
    1016:	001e                	.2byte	0x1e
    1018:	0600                	.2byte	0x600
    101a:	ff08007b          	.4byte	0xff08007b
    101e:	9f1a                	.2byte	0x9f1a
    1020:	001eac07          	.4byte	0x1eac07
    1024:	b400                	.2byte	0xb400
    1026:	001e                	.2byte	0x1e
    1028:	0100                	.2byte	0x100
    102a:	075d                	.2byte	0x75d
    102c:	1eec                	.2byte	0x1eec
    102e:	0000                	.2byte	0x0
    1030:	1efc                	.2byte	0x1efc
    1032:	0000                	.2byte	0x0
    1034:	5d01                	.2byte	0x5d01
    1036:	001fd807          	.4byte	0x1fd807
    103a:	e000                	.2byte	0xe000
    103c:	001f 0100 005d      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5d, 0x00
    1042:	001b9c07          	.4byte	0x1b9c07
    1046:	d800                	.2byte	0xd800
    1048:	0100001b          	.4byte	0x100001b
    104c:	075c                	.2byte	0x75c
    104e:	1c3c                	.2byte	0x1c3c
    1050:	0000                	.2byte	0x0
    1052:	1ca4                	.2byte	0x1ca4
    1054:	0000                	.2byte	0x0
    1056:	5c01                	.2byte	0x5c01
    1058:	001cc007          	.4byte	0x1cc007
    105c:	d000                	.2byte	0xd000
    105e:	001c                	.2byte	0x1c
    1060:	0100                	.2byte	0x100
    1062:	075c                	.2byte	0x75c
    1064:	1d14                	.2byte	0x1d14
    1066:	0000                	.2byte	0x0
    1068:	1e00                	.2byte	0x1e00
    106a:	0000                	.2byte	0x0
    106c:	5c01                	.2byte	0x5c01
    106e:	001e3c07          	.4byte	0x1e3c07
    1072:	4000                	.2byte	0x4000
    1074:	001f 0100 075c      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5c, 0x07
    107a:	1f48                	.2byte	0x1f48
    107c:	0000                	.2byte	0x0
    107e:	1f7c                	.2byte	0x1f7c
    1080:	0000                	.2byte	0x0
    1082:	5c01                	.2byte	0x5c01
    1084:	001fb807          	.4byte	0x1fb807
    1088:	c400                	.2byte	0xc400
    108a:	001f 0100 075c      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5c, 0x07
    1090:	1fd8                	.2byte	0x1fd8
    1092:	0000                	.2byte	0x0
    1094:	1fe8                	.2byte	0x1fe8
    1096:	0000                	.2byte	0x0
    1098:	5c01                	.2byte	0x5c01
    109a:	00200007          	.4byte	0x200007
    109e:	1400                	.2byte	0x1400
    10a0:	0020                	.2byte	0x20
    10a2:	0100                	.2byte	0x100
    10a4:	005c                	.2byte	0x5c
    10a6:	001b9c07          	.4byte	0x1b9c07
    10aa:	d800                	.2byte	0xd800
    10ac:	0100001b          	.4byte	0x100001b
    10b0:	075f 1c3c 0000      	.byte	0x5f, 0x07, 0x3c, 0x1c, 0x00, 0x00
    10b6:	1c60                	.2byte	0x1c60
    10b8:	0000                	.2byte	0x0
    10ba:	5f01                	.2byte	0x5f01
    10bc:	001c7807          	.4byte	0x1c7807
    10c0:	8000                	.2byte	0x8000
    10c2:	001c                	.2byte	0x1c
    10c4:	0100                	.2byte	0x100
    10c6:	075f 1c88 0000      	.byte	0x5f, 0x07, 0x88, 0x1c, 0x00, 0x00
    10cc:	1ca0                	.2byte	0x1ca0
    10ce:	0000                	.2byte	0x0
    10d0:	5f01                	.2byte	0x5f01
    10d2:	001ca007          	.4byte	0x1ca007
    10d6:	a400                	.2byte	0xa400
    10d8:	001c                	.2byte	0x1c
    10da:	0200                	.2byte	0x200
    10dc:	9f31                	.2byte	0x9f31
    10de:	001cc007          	.4byte	0x1cc007
    10e2:	d400                	.2byte	0xd400
    10e4:	001c                	.2byte	0x1c
    10e6:	0100                	.2byte	0x100
    10e8:	075f 1cd4 0000      	.byte	0x5f, 0x07, 0xd4, 0x1c, 0x00, 0x00
    10ee:	1cd8                	.2byte	0x1cd8
    10f0:	0000                	.2byte	0x0
    10f2:	7c06                	.2byte	0x7c06
    10f4:	7e00                	.2byte	0x7e00
    10f6:	2100                	.2byte	0x2100
    10f8:	079f 1cd8 0000      	.byte	0x9f, 0x07, 0xd8, 0x1c, 0x00, 0x00
    10fe:	1cdc                	.2byte	0x1cdc
    1100:	0000                	.2byte	0x0
    1102:	5f01                	.2byte	0x5f01
    1104:	001d1407          	.4byte	0x1d1407
    1108:	5000                	.2byte	0x5000
    110a:	001d                	.2byte	0x1d
    110c:	0100                	.2byte	0x100
    110e:	075f 1d50 0000      	.byte	0x5f, 0x07, 0x50, 0x1d, 0x00, 0x00
    1114:	1d58                	.2byte	0x1d58
    1116:	0000                	.2byte	0x0
    1118:	9f7f7f03          	.4byte	0x9f7f7f03
    111c:	001d5807          	.4byte	0x1d5807
    1120:	7400                	.2byte	0x7400
    1122:	001d                	.2byte	0x1d
    1124:	0100                	.2byte	0x100
    1126:	075f 1d7c 0000      	.byte	0x5f, 0x07, 0x7c, 0x1d, 0x00, 0x00
    112c:	1d98                	.2byte	0x1d98
    112e:	0000                	.2byte	0x0
    1130:	5f01                	.2byte	0x5f01
    1132:	001db407          	.4byte	0x1db407
    1136:	cc00                	.2byte	0xcc00
    1138:	001d                	.2byte	0x1d
    113a:	0100                	.2byte	0x100
    113c:	075f 1dd8 0000      	.byte	0x5f, 0x07, 0xd8, 0x1d, 0x00, 0x00
    1142:	1df0                	.2byte	0x1df0
    1144:	0000                	.2byte	0x0
    1146:	5f01                	.2byte	0x5f01
    1148:	001df807          	.4byte	0x1df807
    114c:	2000                	.2byte	0x2000
    114e:	001e                	.2byte	0x1e
    1150:	0100                	.2byte	0x100
    1152:	075f 1e20 0000      	.byte	0x5f, 0x07, 0x20, 0x1e, 0x00, 0x00
    1158:	1e24                	.2byte	0x1e24
    115a:	0000                	.2byte	0x0
    115c:	5e01                	.2byte	0x5e01
    115e:	001e3c07          	.4byte	0x1e3c07
    1162:	9c00                	.2byte	0x9c00
    1164:	001e                	.2byte	0x1e
    1166:	0100                	.2byte	0x100
    1168:	075f 1ea0 0000      	.byte	0x5f, 0x07, 0xa0, 0x1e, 0x00, 0x00
    116e:	1ee4                	.2byte	0x1ee4
    1170:	0000                	.2byte	0x0
    1172:	5f01                	.2byte	0x5f01
    1174:	001eec07          	.4byte	0x1eec07
    1178:	1400                	.2byte	0x1400
    117a:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    1180:	1f1c                	.2byte	0x1f1c
    1182:	0000                	.2byte	0x0
    1184:	1f34                	.2byte	0x1f34
    1186:	0000                	.2byte	0x0
    1188:	5f01                	.2byte	0x5f01
    118a:	001f3807          	.4byte	0x1f3807
    118e:	3c00                	.2byte	0x3c00
    1190:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    1196:	1f48                	.2byte	0x1f48
    1198:	0000                	.2byte	0x0
    119a:	1f7c                	.2byte	0x1f7c
    119c:	0000                	.2byte	0x0
    119e:	5f01                	.2byte	0x5f01
    11a0:	001fb807          	.4byte	0x1fb807
    11a4:	c400                	.2byte	0xc400
    11a6:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    11ac:	1fd8                	.2byte	0x1fd8
    11ae:	0000                	.2byte	0x0
    11b0:	1fdc                	.2byte	0x1fdc
    11b2:	0000                	.2byte	0x0
    11b4:	5f01                	.2byte	0x5f01
    11b6:	001fe007          	.4byte	0x1fe007
    11ba:	e400                	.2byte	0xe400
    11bc:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    11c2:	2000                	.2byte	0x2000
    11c4:	0000                	.2byte	0x0
    11c6:	2014                	.2byte	0x2014
    11c8:	0000                	.2byte	0x0
    11ca:	5f01                	.2byte	0x5f01
    11cc:	0700                	.2byte	0x700
    11ce:	1c04                	.2byte	0x1c04
    11d0:	0000                	.2byte	0x0
    11d2:	1c30                	.2byte	0x1c30
    11d4:	0000                	.2byte	0x0
    11d6:	5901                	.2byte	0x5901
    11d8:	001c4807          	.4byte	0x1c4807
    11dc:	5c00                	.2byte	0x5c00
    11de:	001c                	.2byte	0x1c
    11e0:	0100                	.2byte	0x100
    11e2:	0759                	.2byte	0x759
    11e4:	1c78                	.2byte	0x1c78
    11e6:	0000                	.2byte	0x0
    11e8:	1c7c                	.2byte	0x1c7c
    11ea:	0000                	.2byte	0x0
    11ec:	5901                	.2byte	0x5901
    11ee:	001c8807          	.4byte	0x1c8807
    11f2:	dc00                	.2byte	0xdc00
    11f4:	001c                	.2byte	0x1c
    11f6:	0100                	.2byte	0x100
    11f8:	0759                	.2byte	0x759
    11fa:	1ddc                	.2byte	0x1ddc
    11fc:	0000                	.2byte	0x0
    11fe:	1e50                	.2byte	0x1e50
    1200:	0000                	.2byte	0x0
    1202:	5901                	.2byte	0x5901
    1204:	001e5407          	.4byte	0x1e5407
    1208:	6400                	.2byte	0x6400
    120a:	001e                	.2byte	0x1e
    120c:	0100                	.2byte	0x100
    120e:	1e68075b          	.4byte	0x1e68075b
    1212:	0000                	.2byte	0x0
    1214:	1e78                	.2byte	0x1e78
    1216:	0000                	.2byte	0x0
    1218:	5d01                	.2byte	0x5d01
    121a:	001e8007          	.4byte	0x1e8007
    121e:	8c00                	.2byte	0x8c00
    1220:	001e                	.2byte	0x1e
    1222:	0100                	.2byte	0x100
    1224:	075d                	.2byte	0x75d
    1226:	1e8c                	.2byte	0x1e8c
    1228:	0000                	.2byte	0x0
    122a:	1ea0                	.2byte	0x1ea0
    122c:	0000                	.2byte	0x0
    122e:	5901                	.2byte	0x5901
    1230:	001ea007          	.4byte	0x1ea007
    1234:	a400                	.2byte	0xa400
    1236:	001e                	.2byte	0x1e
    1238:	0100                	.2byte	0x100
    123a:	1ea4075b          	.4byte	0x1ea4075b
    123e:	0000                	.2byte	0x0
    1240:	1eac                	.2byte	0x1eac
    1242:	0000                	.2byte	0x0
    1244:	5901                	.2byte	0x5901
    1246:	001eac07          	.4byte	0x1eac07
    124a:	b400                	.2byte	0xb400
    124c:	001e                	.2byte	0x1e
    124e:	0100                	.2byte	0x100
    1250:	075d                	.2byte	0x75d
    1252:	1eb4                	.2byte	0x1eb4
    1254:	0000                	.2byte	0x0
    1256:	1eec                	.2byte	0x1eec
    1258:	0000                	.2byte	0x0
    125a:	5901                	.2byte	0x5901
    125c:	001eec07          	.4byte	0x1eec07
    1260:	fc00                	.2byte	0xfc00
    1262:	001e                	.2byte	0x1e
    1264:	0100                	.2byte	0x100
    1266:	075d                	.2byte	0x75d
    1268:	1f14                	.2byte	0x1f14
    126a:	0000                	.2byte	0x0
    126c:	1f1c                	.2byte	0x1f1c
    126e:	0000                	.2byte	0x0
    1270:	5d01                	.2byte	0x5d01
    1272:	001f2407          	.4byte	0x1f2407
    1276:	4000                	.2byte	0x4000
    1278:	001f 0100 0759      	.byte	0x1f, 0x00, 0x00, 0x01, 0x59, 0x07
    127e:	1f68                	.2byte	0x1f68
    1280:	0000                	.2byte	0x0
    1282:	1f78                	.2byte	0x1f78
    1284:	0000                	.2byte	0x0
    1286:	5901                	.2byte	0x5901
    1288:	001f7807          	.4byte	0x1f7807
    128c:	7c00                	.2byte	0x7c00
    128e:	001f 0100 075d      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5d, 0x07
    1294:	1f7c                	.2byte	0x1f7c
    1296:	0000                	.2byte	0x0
    1298:	1fe0                	.2byte	0x1fe0
    129a:	0000                	.2byte	0x0
    129c:	5901                	.2byte	0x5901
    129e:	0700                	.2byte	0x700
    12a0:	1bb8                	.2byte	0x1bb8
    12a2:	0000                	.2byte	0x0
    12a4:	1bc4                	.2byte	0x1bc4
    12a6:	0000                	.2byte	0x0
    12a8:	9fff0803          	lb	a6,-1537(t5)
    12ac:	001bd007          	.4byte	0x1bd007
    12b0:	d800                	.2byte	0xd800
    12b2:	0300001b          	.4byte	0x300001b
    12b6:	ff08                	.2byte	0xff08
    12b8:	079f 1be8 0000      	.byte	0x9f, 0x07, 0xe8, 0x1b, 0x00, 0x00
    12be:	1c04                	.2byte	0x1c04
    12c0:	0000                	.2byte	0x0
    12c2:	6201                	.2byte	0x6201
    12c4:	001c4c07          	.4byte	0x1c4c07
    12c8:	5c00                	.2byte	0x5c00
    12ca:	001c                	.2byte	0x1c
    12cc:	0100                	.2byte	0x100
    12ce:	0762                	.2byte	0x762
    12d0:	1c60                	.2byte	0x1c60
    12d2:	0000                	.2byte	0x0
    12d4:	1c78                	.2byte	0x1c78
    12d6:	0000                	.2byte	0x0
    12d8:	3102                	.2byte	0x3102
    12da:	079f 1c78 0000      	.byte	0x9f, 0x07, 0x78, 0x1c, 0x00, 0x00
    12e0:	1c7c                	.2byte	0x1c7c
    12e2:	0000                	.2byte	0x0
    12e4:	6201                	.2byte	0x6201
    12e6:	001c8807          	.4byte	0x1c8807
    12ea:	f800                	.2byte	0xf800
    12ec:	001c                	.2byte	0x1c
    12ee:	0100                	.2byte	0x100
    12f0:	0762                	.2byte	0x762
    12f2:	1d1c                	.2byte	0x1d1c
    12f4:	0000                	.2byte	0x0
    12f6:	1d30                	.2byte	0x1d30
    12f8:	0000                	.2byte	0x0
    12fa:	5c01                	.2byte	0x5c01
    12fc:	001d5007          	.4byte	0x1d5007
    1300:	5800                	.2byte	0x5800
    1302:	001d                	.2byte	0x1d
    1304:	0100                	.2byte	0x100
    1306:	075c                	.2byte	0x75c
    1308:	1d8c                	.2byte	0x1d8c
    130a:	0000                	.2byte	0x0
    130c:	1db4                	.2byte	0x1db4
    130e:	0000                	.2byte	0x0
    1310:	3002                	.2byte	0x3002
    1312:	079f 1db4 0000      	.byte	0x9f, 0x07, 0xb4, 0x1d, 0x00, 0x00
    1318:	1dc0                	.2byte	0x1dc0
    131a:	0000                	.2byte	0x0
    131c:	9fff0803          	lb	a6,-1537(t5)
    1320:	001dc007          	.4byte	0x1dc007
    1324:	d000                	.2byte	0xd000
    1326:	001d                	.2byte	0x1d
    1328:	0100                	.2byte	0x100
    132a:	075e                	.2byte	0x75e
    132c:	1ddc                	.2byte	0x1ddc
    132e:	0000                	.2byte	0x0
    1330:	1df0                	.2byte	0x1df0
    1332:	0000                	.2byte	0x0
    1334:	6201                	.2byte	0x6201
    1336:	001df807          	.4byte	0x1df807
    133a:	5000                	.2byte	0x5000
    133c:	001e                	.2byte	0x1e
    133e:	0100                	.2byte	0x100
    1340:	0762                	.2byte	0x762
    1342:	1e54                	.2byte	0x1e54
    1344:	0000                	.2byte	0x0
    1346:	1e64                	.2byte	0x1e64
    1348:	0000                	.2byte	0x0
    134a:	9fff0803          	lb	a6,-1537(t5)
    134e:	001e6807          	.4byte	0x1e6807
    1352:	7800                	.2byte	0x7800
    1354:	001e                	.2byte	0x1e
    1356:	0300                	.2byte	0x300
    1358:	ff08                	.2byte	0xff08
    135a:	079f 1e80 0000      	.byte	0x9f, 0x07, 0x80, 0x1e, 0x00, 0x00
    1360:	1e8c                	.2byte	0x1e8c
    1362:	0000                	.2byte	0x0
    1364:	5c01                	.2byte	0x5c01
    1366:	001ea007          	.4byte	0x1ea007
    136a:	b400                	.2byte	0xb400
    136c:	001e                	.2byte	0x1e
    136e:	0300                	.2byte	0x300
    1370:	ff08                	.2byte	0xff08
    1372:	079f 1eec 0000      	.byte	0x9f, 0x07, 0xec, 0x1e, 0x00, 0x00
    1378:	1efc                	.2byte	0x1efc
    137a:	0000                	.2byte	0x0
    137c:	5c01                	.2byte	0x5c01
    137e:	001f0c07          	.4byte	0x1f0c07
    1382:	4000                	.2byte	0x4000
    1384:	001f 0200 9f30      	.byte	0x1f, 0x00, 0x00, 0x02, 0x30, 0x9f
    138a:	001f4807          	.4byte	0x1f4807
    138e:	6400                	.2byte	0x6400
    1390:	001f 0300 ff08      	.byte	0x1f, 0x00, 0x00, 0x03, 0x08, 0xff
    1396:	079f 1f64 0000      	.byte	0x9f, 0x07, 0x64, 0x1f, 0x00, 0x00
    139c:	1fb0                	.2byte	0x1fb0
    139e:	0000                	.2byte	0x0
    13a0:	6201                	.2byte	0x6201
    13a2:	001fb007          	.4byte	0x1fb007
    13a6:	b800                	.2byte	0xb800
    13a8:	001f 0200 9f30      	.byte	0x1f, 0x00, 0x00, 0x02, 0x30, 0x9f
    13ae:	001fb807          	.4byte	0x1fb807
    13b2:	c000                	.2byte	0xc000
    13b4:	001f 0100 0762      	.byte	0x1f, 0x00, 0x00, 0x01, 0x62, 0x07
    13ba:	1fc4                	.2byte	0x1fc4
    13bc:	0000                	.2byte	0x0
    13be:	1fe0                	.2byte	0x1fe0
    13c0:	0000                	.2byte	0x0
    13c2:	6201                	.2byte	0x6201
    13c4:	001fe807          	.4byte	0x1fe807
    13c8:	0000                	.2byte	0x0
    13ca:	0020                	.2byte	0x20
    13cc:	0100                	.2byte	0x100
    13ce:	0762                	.2byte	0x762
    13d0:	2000                	.2byte	0x2000
    13d2:	0000                	.2byte	0x0
    13d4:	200c                	.2byte	0x200c
    13d6:	0000                	.2byte	0x0
    13d8:	5e01                	.2byte	0x5e01
    13da:	00200c07          	.4byte	0x200c07
    13de:	1400                	.2byte	0x1400
    13e0:	0020                	.2byte	0x20
    13e2:	0200                	.2byte	0x200
    13e4:	9f30                	.2byte	0x9f30
    13e6:	0700                	.2byte	0x700
    13e8:	1bd8                	.2byte	0x1bd8
    13ea:	0000                	.2byte	0x0
    13ec:	1be4                	.2byte	0x1be4
    13ee:	0000                	.2byte	0x0
    13f0:	5f01                	.2byte	0x5f01
    13f2:	001be407          	.4byte	0x1be407
    13f6:	fc00                	.2byte	0xfc00
    13f8:	0900001b          	.4byte	0x900001b
    13fc:	007f ff11 ffff 1a5f 	.byte	0x7f, 0x00, 0x11, 0xff, 0xff, 0xff, 0x5f, 0x1a, 0x9f, 0x07
    1404:	079f 
    1406:	1c04                	.2byte	0x1c04
    1408:	0000                	.2byte	0x0
    140a:	1c10                	.2byte	0x1c10
    140c:	0000                	.2byte	0x0
    140e:	5801                	.2byte	0x5801
    1410:	001c6007          	.4byte	0x1c6007
    1414:	7800                	.2byte	0x7800
    1416:	001c                	.2byte	0x1c
    1418:	0100                	.2byte	0x100
    141a:	075f 1ca4 0000      	.byte	0x5f, 0x07, 0xa4, 0x1c, 0x00, 0x00
    1420:	1cc0                	.2byte	0x1cc0
    1422:	0000                	.2byte	0x0
    1424:	5f01                	.2byte	0x5f01
    1426:	001cdc07          	.4byte	0x1cdc07
    142a:	e800                	.2byte	0xe800
    142c:	001c                	.2byte	0x1c
    142e:	0100                	.2byte	0x100
    1430:	075f 1ce8 0000      	.byte	0x5f, 0x07, 0xe8, 0x1c, 0x00, 0x00
    1436:	1cec                	.2byte	0x1cec
    1438:	0000                	.2byte	0x0
    143a:	7f09                	.2byte	0x7f09
    143c:	1100                	.2byte	0x1100
    143e:	ffff                	.2byte	0xffff
    1440:	9f1a5fff 001cec07 	.byte	0xff, 0x5f, 0x1a, 0x9f, 0x07, 0xec, 0x1c, 0x00, 0x00, 0xf8, 0x1c, 0x00, 0x00, 0x10, 0x7f, 0x00, 0x31, 0x25, 0x0c, 0xff
    1448:	001cf800 007f1000 
    1450:	ff0c2531 
    1454:	ffff                	.2byte	0xffff
    1456:	1a7d                	.2byte	0x1a7d
    1458:	007f 1a31 9f21 5007 	.byte	0x7f, 0x00, 0x31, 0x1a, 0x21, 0x9f, 0x07, 0x50, 0x1d, 0x00
    1460:	001d 
    1462:	5800                	.2byte	0x5800
    1464:	001d                	.2byte	0x1d
    1466:	0100                	.2byte	0x100
    1468:	075f 1d74 0000      	.byte	0x5f, 0x07, 0x74, 0x1d, 0x00, 0x00
    146e:	1d7c                	.2byte	0x1d7c
    1470:	0000                	.2byte	0x0
    1472:	5f01                	.2byte	0x5f01
    1474:	001d9807          	.4byte	0x1d9807
    1478:	b000                	.2byte	0xb000
    147a:	001d                	.2byte	0x1d
    147c:	0100                	.2byte	0x100
    147e:	075f 1dc0 0000      	.byte	0x5f, 0x07, 0xc0, 0x1d, 0x00, 0x00
    1484:	1dcc                	.2byte	0x1dcc
    1486:	0000                	.2byte	0x0
    1488:	7a08                	.2byte	0x7a08
    148a:	7f00                	.2byte	0x7f00
    148c:	2200                	.2byte	0x2200
    148e:	2531                	.2byte	0x2531
    1490:	079f 1dcc 0000      	.byte	0x9f, 0x07, 0xcc, 0x1d, 0x00, 0x00
    1496:	1dd0                	.2byte	0x1dd0
    1498:	0000                	.2byte	0x0
    149a:	7f05                	.2byte	0x7f05
    149c:	3100                	.2byte	0x3100
    149e:	9f25                	.2byte	0x9f25
    14a0:	001df007          	.4byte	0x1df007
    14a4:	f800                	.2byte	0xf800
    14a6:	001d                	.2byte	0x1d
    14a8:	0100                	.2byte	0x100
    14aa:	075f 1e24 0000      	.byte	0x5f, 0x07, 0x24, 0x1e, 0x00, 0x00
    14b0:	1e38                	.2byte	0x1e38
    14b2:	0000                	.2byte	0x0
    14b4:	5f01                	.2byte	0x5f01
    14b6:	001e3807          	.4byte	0x1e3807
    14ba:	3c00                	.2byte	0x3c00
    14bc:	001e                	.2byte	0x1e
    14be:	0100                	.2byte	0x100
    14c0:	0758                	.2byte	0x758
    14c2:	1ee4                	.2byte	0x1ee4
    14c4:	0000                	.2byte	0x0
    14c6:	1eec                	.2byte	0x1eec
    14c8:	0000                	.2byte	0x0
    14ca:	5f01                	.2byte	0x5f01
    14cc:	001f1007          	.4byte	0x1f1007
    14d0:	1c00                	.2byte	0x1c00
    14d2:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    14d8:	1f24                	.2byte	0x1f24
    14da:	0000                	.2byte	0x0
    14dc:	1f40                	.2byte	0x1f40
    14de:	0000                	.2byte	0x0
    14e0:	5801                	.2byte	0x5801
    14e2:	001f6807          	.4byte	0x1f6807
    14e6:	a800                	.2byte	0xa800
    14e8:	001f 0100 0758      	.byte	0x1f, 0x00, 0x00, 0x01, 0x58, 0x07
    14ee:	1fb0                	.2byte	0x1fb0
    14f0:	0000                	.2byte	0x0
    14f2:	1fb8                	.2byte	0x1fb8
    14f4:	0000                	.2byte	0x0
    14f6:	5f01                	.2byte	0x5f01
    14f8:	001fb807          	.4byte	0x1fb807
    14fc:	d400                	.2byte	0xd400
    14fe:	001f 0100 0758      	.byte	0x1f, 0x00, 0x00, 0x01, 0x58, 0x07
    1504:	1fd4                	.2byte	0x1fd4
    1506:	0000                	.2byte	0x0
    1508:	1fd8                	.2byte	0x1fd8
    150a:	0000                	.2byte	0x0
    150c:	5f01                	.2byte	0x5f01
    150e:	001fe807          	.4byte	0x1fe807
    1512:	ec00                	.2byte	0xec00
    1514:	001f 0100 075f      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5f, 0x07
    151a:	1fec                	.2byte	0x1fec
    151c:	0000                	.2byte	0x0
    151e:	1ffc                	.2byte	0x1ffc
    1520:	0000                	.2byte	0x0
    1522:	5801                	.2byte	0x5801
    1524:	00200007          	.4byte	0x200007
    1528:	0c00                	.2byte	0xc00
    152a:	0020                	.2byte	0x20
    152c:	0800                	.2byte	0x800
    152e:	007a                	.2byte	0x7a
    1530:	007f 3122 9f25 0c07 	.byte	0x7f, 0x00, 0x22, 0x31, 0x25, 0x9f, 0x07, 0x0c, 0x20, 0x00
    1538:	0020 
    153a:	1400                	.2byte	0x1400
    153c:	0020                	.2byte	0x20
    153e:	0100                	.2byte	0x100
    1540:	005f 2807 001c      	.byte	0x5f, 0x00, 0x07, 0x28, 0x1c, 0x00
    1546:	3400                	.2byte	0x3400
    1548:	001c                	.2byte	0x1c
    154a:	0800                	.2byte	0x800
    154c:	007f 007a a921 9f26 	.byte	0x7f, 0x00, 0x7a, 0x00, 0x21, 0xa9, 0x26, 0x9f, 0x07, 0x34
    1554:	3407 
    1556:	001c                	.2byte	0x1c
    1558:	3c00                	.2byte	0x3c00
    155a:	001c                	.2byte	0x1c
    155c:	0100                	.2byte	0x100
    155e:	005a                	.2byte	0x5a
    1560:	001bb807          	.4byte	0x1bb807
    1564:	bc00                	.2byte	0xbc00
    1566:	0600001b          	.4byte	0x600001b
    156a:	ff08                	.2byte	0xff08
    156c:	0082                	.2byte	0x82
    156e:	9f1c                	.2byte	0x9f1c
    1570:	001bd007          	.4byte	0x1bd007
    1574:	d800                	.2byte	0xd800
    1576:	0600001b          	.4byte	0x600001b
    157a:	ff08                	.2byte	0xff08
    157c:	0082                	.2byte	0x82
    157e:	9f1c                	.2byte	0x9f1c
    1580:	001c4807          	.4byte	0x1c4807
    1584:	5800                	.2byte	0x5800
    1586:	001c                	.2byte	0x1c
    1588:	0100                	.2byte	0x100
    158a:	075e                	.2byte	0x75e
    158c:	1c58                	.2byte	0x1c58
    158e:	0000                	.2byte	0x0
    1590:	1c70                	.2byte	0x1c70
    1592:	0000                	.2byte	0x0
    1594:	5d01                	.2byte	0x5d01
    1596:	001c7807          	.4byte	0x1c7807
    159a:	7c00                	.2byte	0x7c00
    159c:	001c                	.2byte	0x1c
    159e:	0100                	.2byte	0x100
    15a0:	075d                	.2byte	0x75d
    15a2:	1c88                	.2byte	0x1c88
    15a4:	0000                	.2byte	0x0
    15a6:	1c98                	.2byte	0x1c98
    15a8:	0000                	.2byte	0x0
    15aa:	5e01                	.2byte	0x5e01
    15ac:	001c9807          	.4byte	0x1c9807
    15b0:	a400                	.2byte	0xa400
    15b2:	001c                	.2byte	0x1c
    15b4:	0100                	.2byte	0x100
    15b6:	075d                	.2byte	0x75d
    15b8:	1cc0                	.2byte	0x1cc0
    15ba:	0000                	.2byte	0x0
    15bc:	1d00                	.2byte	0x1d00
    15be:	0000                	.2byte	0x0
    15c0:	5d01                	.2byte	0x5d01
    15c2:	001d1c07          	.4byte	0x1d1c07
    15c6:	3000                	.2byte	0x3000
    15c8:	001d                	.2byte	0x1d
    15ca:	0100                	.2byte	0x100
    15cc:	075d                	.2byte	0x75d
    15ce:	1d38                	.2byte	0x1d38
    15d0:	0000                	.2byte	0x0
    15d2:	1d7c                	.2byte	0x1d7c
    15d4:	0000                	.2byte	0x0
    15d6:	5d01                	.2byte	0x5d01
    15d8:	0700                	.2byte	0x700
    15da:	1dd8                	.2byte	0x1dd8
    15dc:	0000                	.2byte	0x0
    15de:	1de8                	.2byte	0x1de8
    15e0:	0000                	.2byte	0x0
    15e2:	8206                	.2byte	0x8206
    15e4:	7c00                	.2byte	0x7c00
    15e6:	1c00                	.2byte	0x1c00
    15e8:	079f 1de8 0000      	.byte	0x9f, 0x07, 0xe8, 0x1d, 0x00, 0x00
    15ee:	1df0                	.2byte	0x1df0
    15f0:	0000                	.2byte	0x0
    15f2:	5d01                	.2byte	0x5d01
    15f4:	001df807          	.4byte	0x1df807
    15f8:	2400                	.2byte	0x2400
    15fa:	001e                	.2byte	0x1e
    15fc:	0100                	.2byte	0x100
    15fe:	075d                	.2byte	0x75d
    1600:	1e3c                	.2byte	0x1e3c
    1602:	0000                	.2byte	0x0
    1604:	1e50                	.2byte	0x1e50
    1606:	0000                	.2byte	0x0
    1608:	8206                	.2byte	0x8206
    160a:	7c00                	.2byte	0x7c00
    160c:	1c00                	.2byte	0x1c00
    160e:	079f 1e54 0000      	.byte	0x9f, 0x07, 0x54, 0x1e, 0x00, 0x00
    1614:	1e5c                	.2byte	0x1e5c
    1616:	0000                	.2byte	0x0
    1618:	0806                	.2byte	0x806
    161a:	82ff 1c00 079f 1e5c 	.byte	0xff, 0x82, 0x00, 0x1c, 0x9f, 0x07, 0x5c, 0x1e, 0x00, 0x00
    1622:	0000 
    1624:	1e64                	.2byte	0x1e64
    1626:	0000                	.2byte	0x0
    1628:	7e04                	.2byte	0x7e04
    162a:	1f00                	.2byte	0x1f00
    162c:	079f 1e68 0000      	.byte	0x9f, 0x07, 0x68, 0x1e, 0x00, 0x00
    1632:	1e70                	.2byte	0x1e70
    1634:	0000                	.2byte	0x0
    1636:	0806                	.2byte	0x806
    1638:	82ff 1c00 079f 1e70 	.byte	0xff, 0x82, 0x00, 0x1c, 0x9f, 0x07, 0x70, 0x1e, 0x00, 0x00
    1640:	0000 
    1642:	1e78                	.2byte	0x1e78
    1644:	0000                	.2byte	0x0
    1646:	7e04                	.2byte	0x7e04
    1648:	1f00                	.2byte	0x1f00
    164a:	079f 1e80 0000      	.byte	0x9f, 0x07, 0x80, 0x1e, 0x00, 0x00
    1650:	1e8c                	.2byte	0x1e8c
    1652:	0000                	.2byte	0x0
    1654:	5b01                	.2byte	0x5b01
    1656:	001e9407          	.4byte	0x1e9407
    165a:	a000                	.2byte	0xa000
    165c:	001e                	.2byte	0x1e
    165e:	0100                	.2byte	0x100
    1660:	1ea0075b          	.4byte	0x1ea0075b
    1664:	0000                	.2byte	0x0
    1666:	1ea4                	.2byte	0x1ea4
    1668:	0000                	.2byte	0x0
    166a:	0806                	.2byte	0x806
    166c:	82ff 1c00 079f 1eac 	.byte	0xff, 0x82, 0x00, 0x1c, 0x9f, 0x07, 0xac, 0x1e, 0x00, 0x00
    1674:	0000 
    1676:	1eb4                	.2byte	0x1eb4
    1678:	0000                	.2byte	0x0
    167a:	0806                	.2byte	0x806
    167c:	82ff 1c00 079f 1eb4 	.byte	0xff, 0x82, 0x00, 0x1c, 0x9f, 0x07, 0xb4, 0x1e, 0x00, 0x00
    1684:	0000 
    1686:	1efc                	.2byte	0x1efc
    1688:	0000                	.2byte	0x0
    168a:	5b01                	.2byte	0x5b01
    168c:	0700                	.2byte	0x700
    168e:	1f84                	.2byte	0x1f84
    1690:	0000                	.2byte	0x0
    1692:	1f94                	.2byte	0x1f94
    1694:	0000                	.2byte	0x0
    1696:	5a01                	.2byte	0x5a01
    1698:	001f9807          	.4byte	0x1f9807
    169c:	b800                	.2byte	0xb800
    169e:	001f 0100 075a      	.byte	0x1f, 0x00, 0x00, 0x01, 0x5a, 0x07
    16a4:	1fc4                	.2byte	0x1fc4
    16a6:	0000                	.2byte	0x0
    16a8:	1fd8                	.2byte	0x1fd8
    16aa:	0000                	.2byte	0x0
    16ac:	5a01                	.2byte	0x5a01
    16ae:	0200                	.2byte	0x200
    16b0:	0001                	.2byte	0x1
    16b2:	0500                	.2byte	0x500
    16b4:	0400                	.2byte	0x400
    16b6:	0000                	.2byte	0x0
    16b8:	0000                	.2byte	0x0
    16ba:	0700                	.2byte	0x700
    16bc:	2014                	.2byte	0x2014
    16be:	0000                	.2byte	0x0
    16c0:	2040                	.2byte	0x2040
    16c2:	0000                	.2byte	0x0
    16c4:	5a01                	.2byte	0x5a01
    16c6:	00204007          	.4byte	0x204007
    16ca:	4c00                	.2byte	0x4c00
    16cc:	0020                	.2byte	0x20
    16ce:	0600                	.2byte	0x600
    16d0:	0aa503a3          	sb	a0,167(a0)
    16d4:	9f26                	.2byte	0x9f26
    16d6:	00204c07          	.4byte	0x204c07
    16da:	5000                	.2byte	0x5000
    16dc:	0020                	.2byte	0x20
    16de:	0100                	.2byte	0x100
    16e0:	075a                	.2byte	0x75a
    16e2:	2050                	.2byte	0x2050
    16e4:	0000                	.2byte	0x0
    16e6:	207c                	.2byte	0x207c
    16e8:	0000                	.2byte	0x0
    16ea:	a306                	.2byte	0xa306
    16ec:	260aa503          	lw	a0,608(s5)
    16f0:	079f 207c 0000      	.byte	0x9f, 0x07, 0x7c, 0x20, 0x00, 0x00
    16f6:	2080                	.2byte	0x2080
    16f8:	0000                	.2byte	0x0
    16fa:	5a01                	.2byte	0x5a01
    16fc:	00208007          	.4byte	0x208007
    1700:	8400                	.2byte	0x8400
    1702:	0020                	.2byte	0x20
    1704:	0600                	.2byte	0x600
    1706:	0aa503a3          	sb	a0,167(a0)
    170a:	9f26                	.2byte	0x9f26
    170c:	0700                	.2byte	0x700
    170e:	2014                	.2byte	0x2014
    1710:	0000                	.2byte	0x0
    1712:	2080                	.2byte	0x2080
    1714:	0000                	.2byte	0x0
    1716:	3002                	.2byte	0x3002
    1718:	009f 2c07 0020      	.byte	0x9f, 0x00, 0x07, 0x2c, 0x20, 0x00
    171e:	5c00                	.2byte	0x5c00
    1720:	0020                	.2byte	0x20
    1722:	0100                	.2byte	0x100
    1724:	075e                	.2byte	0x75e
    1726:	205c                	.2byte	0x205c
    1728:	0000                	.2byte	0x0
    172a:	2060                	.2byte	0x2060
    172c:	0000                	.2byte	0x0
    172e:	7e04                	.2byte	0x7e04
    1730:	0196                	.2byte	0x196
    1732:	079f 206c 0000      	.byte	0x9f, 0x07, 0x6c, 0x20, 0x00, 0x00
    1738:	2080                	.2byte	0x2080
    173a:	0000                	.2byte	0x0
    173c:	5e01                	.2byte	0x5e01
    173e:	0700                	.2byte	0x700
    1740:	202c                	.2byte	0x202c
    1742:	0000                	.2byte	0x0
    1744:	2050                	.2byte	0x2050
    1746:	0000                	.2byte	0x0
    1748:	5f01                	.2byte	0x5f01
    174a:	00205007          	.4byte	0x205007
    174e:	6000                	.2byte	0x6000
    1750:	0020                	.2byte	0x20
    1752:	0100                	.2byte	0x100
    1754:	075a                	.2byte	0x75a
    1756:	206c                	.2byte	0x206c
    1758:	0000                	.2byte	0x0
    175a:	207c                	.2byte	0x207c
    175c:	0000                	.2byte	0x0
    175e:	5a01                	.2byte	0x5a01
    1760:	00207c07          	.4byte	0x207c07
    1764:	8000                	.2byte	0x8000
    1766:	0020                	.2byte	0x20
    1768:	0100                	.2byte	0x100
    176a:	005f 3c07 0020      	.byte	0x5f, 0x00, 0x07, 0x3c, 0x20, 0x00
    1770:	4800                	.2byte	0x4800
    1772:	0020                	.2byte	0x20
    1774:	0500                	.2byte	0x500
    1776:	4b40                	.2byte	0x4b40
    1778:	1f24                	.2byte	0x1f24
    177a:	079f 2048 0000      	.byte	0x9f, 0x07, 0x48, 0x20, 0x00, 0x00
    1780:	204c                	.2byte	0x204c
    1782:	0000                	.2byte	0x0
    1784:	5a01                	.2byte	0x5a01
    1786:	00205807          	.4byte	0x205807
    178a:	6c00                	.2byte	0x6c00
    178c:	0020                	.2byte	0x20
    178e:	0100                	.2byte	0x100
    1790:	075a                	.2byte	0x75a
    1792:	2078                	.2byte	0x2078
    1794:	0000                	.2byte	0x0
    1796:	207c                	.2byte	0x207c
    1798:	0000                	.2byte	0x0
    179a:	5a01                	.2byte	0x5a01
    179c:	00208007          	.4byte	0x208007
    17a0:	8400                	.2byte	0x8400
    17a2:	0020                	.2byte	0x20
    17a4:	0100                	.2byte	0x100
    17a6:	005a                	.2byte	0x5a
    17a8:	00204c07          	.4byte	0x204c07
    17ac:	6000                	.2byte	0x6000
    17ae:	0020                	.2byte	0x20
    17b0:	0200                	.2byte	0x200
    17b2:	9f30                	.2byte	0x9f30
    17b4:	e400                	.2byte	0xe400
    17b6:	0001                	.2byte	0x1
    17b8:	0500                	.2byte	0x500
    17ba:	0400                	.2byte	0x400
    17bc:	0000                	.2byte	0x0
    17be:	0000                	.2byte	0x0
    17c0:	0700                	.2byte	0x700
    17c2:	2084                	.2byte	0x2084
    17c4:	0000                	.2byte	0x0
    17c6:	20b0                	.2byte	0x20b0
    17c8:	0000                	.2byte	0x0
    17ca:	5a01                	.2byte	0x5a01
    17cc:	0020b007          	.4byte	0x20b007
    17d0:	b300                	.2byte	0xb300
    17d2:	0020                	.2byte	0x20
    17d4:	0100                	.2byte	0x100
    17d6:	075f 20b3 0000      	.byte	0x5f, 0x07, 0xb3, 0x20, 0x00, 0x00
    17dc:	2184                	.2byte	0x2184
    17de:	0000                	.2byte	0x0
    17e0:	a304                	.2byte	0xa304
    17e2:	5a01                	.2byte	0x5a01
    17e4:	079f 2184 0000      	.byte	0x9f, 0x07, 0x84, 0x21, 0x00, 0x00
    17ea:	2190                	.2byte	0x2190
    17ec:	0000                	.2byte	0x0
    17ee:	5a01                	.2byte	0x5a01
    17f0:	00219007          	.4byte	0x219007
    17f4:	9800                	.2byte	0x9800
    17f6:	0021                	.2byte	0x21
    17f8:	0400                	.2byte	0x400
    17fa:	9f5a01a3          	sb	s5,-1565(s4)
    17fe:	0700                	.2byte	0x700
    1800:	2084                	.2byte	0x2084
    1802:	0000                	.2byte	0x0
    1804:	20d4                	.2byte	0x20d4
    1806:	0000                	.2byte	0x0
    1808:	3002                	.2byte	0x3002
    180a:	079f 2100 0000      	.byte	0x9f, 0x07, 0x00, 0x21, 0x00, 0x00
    1810:	2138                	.2byte	0x2138
    1812:	0000                	.2byte	0x0
    1814:	3002                	.2byte	0x3002
    1816:	079f 2138 0000      	.byte	0x9f, 0x07, 0x38, 0x21, 0x00, 0x00
    181c:	2148                	.2byte	0x2148
    181e:	0000                	.2byte	0x0
    1820:	3102                	.2byte	0x3102
    1822:	079f 2170 0000      	.byte	0x9f, 0x07, 0x70, 0x21, 0x00, 0x00
    1828:	2198                	.2byte	0x2198
    182a:	0000                	.2byte	0x0
    182c:	3002                	.2byte	0x3002
    182e:	009f ac07 0020      	.byte	0x9f, 0x00, 0x07, 0xac, 0x20, 0x00
    1834:	f800                	.2byte	0xf800
    1836:	0020                	.2byte	0x20
    1838:	0100                	.2byte	0x100
    183a:	0759                	.2byte	0x759
    183c:	2100                	.2byte	0x2100
    183e:	0000                	.2byte	0x0
    1840:	2184                	.2byte	0x2184
    1842:	0000                	.2byte	0x0
    1844:	5901                	.2byte	0x5901
    1846:	00219007          	.4byte	0x219007
    184a:	9800                	.2byte	0x9800
    184c:	0021                	.2byte	0x21
    184e:	0100                	.2byte	0x100
    1850:	0059                	.2byte	0x59
    1852:	0020bc07          	.4byte	0x20bc07
    1856:	e000                	.2byte	0xe000
    1858:	0020                	.2byte	0x20
    185a:	0100                	.2byte	0x100
    185c:	075f 2100 0000      	.byte	0x5f, 0x07, 0x00, 0x21, 0x00, 0x00
    1862:	2158                	.2byte	0x2158
    1864:	0000                	.2byte	0x0
    1866:	5f01                	.2byte	0x5f01
    1868:	00215807          	.4byte	0x215807
    186c:	6800                	.2byte	0x6800
    186e:	0021                	.2byte	0x21
    1870:	0600                	.2byte	0x600
    1872:	9e08                	.2byte	0x9e08
    1874:	007a                	.2byte	0x7a
    1876:	9f1c                	.2byte	0x9f1c
    1878:	00216807          	.4byte	0x216807
    187c:	8400                	.2byte	0x8400
    187e:	0021                	.2byte	0x21
    1880:	0100                	.2byte	0x100
    1882:	075f 2190 0000      	.byte	0x5f, 0x07, 0x90, 0x21, 0x00, 0x00
    1888:	2194                	.2byte	0x2194
    188a:	0000                	.2byte	0x0
    188c:	5f01                	.2byte	0x5f01
    188e:	00219407          	.4byte	0x219407
    1892:	9800                	.2byte	0x9800
    1894:	0021                	.2byte	0x21
    1896:	0600                	.2byte	0x600
    1898:	9e08                	.2byte	0x9e08
    189a:	007a                	.2byte	0x7a
    189c:	9f1c                	.2byte	0x9f1c
    189e:	0700                	.2byte	0x700
    18a0:	20c4                	.2byte	0x20c4
    18a2:	0000                	.2byte	0x0
    18a4:	20d8                	.2byte	0x20d8
    18a6:	0000                	.2byte	0x0
    18a8:	5801                	.2byte	0x5801
    18aa:	00212407          	.4byte	0x212407
    18ae:	3400                	.2byte	0x3400
    18b0:	0021                	.2byte	0x21
    18b2:	0100                	.2byte	0x100
    18b4:	0758                	.2byte	0x758
    18b6:	2134                	.2byte	0x2134
    18b8:	0000                	.2byte	0x0
    18ba:	216c                	.2byte	0x216c
    18bc:	0000                	.2byte	0x0
    18be:	5e01                	.2byte	0x5e01
    18c0:	00216c07          	.4byte	0x216c07
    18c4:	8400                	.2byte	0x8400
    18c6:	0021                	.2byte	0x21
    18c8:	0100                	.2byte	0x100
    18ca:	0758                	.2byte	0x758
    18cc:	2190                	.2byte	0x2190
    18ce:	0000                	.2byte	0x0
    18d0:	2198                	.2byte	0x2198
    18d2:	0000                	.2byte	0x0
    18d4:	5801                	.2byte	0x5801
    18d6:	0700                	.2byte	0x700
    18d8:	20f0                	.2byte	0x20f0
    18da:	0000                	.2byte	0x0
    18dc:	20f4                	.2byte	0x20f4
    18de:	0000                	.2byte	0x0
    18e0:	7f08                	.2byte	0x7f08
    18e2:	7a00                	.2byte	0x7a00
    18e4:	2100                	.2byte	0x2100
    18e6:	26a9                	.2byte	0x26a9
    18e8:	079f 20f4 0000      	.byte	0x9f, 0x07, 0xf4, 0x20, 0x00, 0x00
    18ee:	2100                	.2byte	0x2100
    18f0:	0000                	.2byte	0x0
    18f2:	5a01                	.2byte	0x5a01
    18f4:	0700                	.2byte	0x700
    18f6:	209c                	.2byte	0x209c
    18f8:	0000                	.2byte	0x0
    18fa:	20ac                	.2byte	0x20ac
    18fc:	0000                	.2byte	0x0
    18fe:	5a01                	.2byte	0x5a01
    1900:	0020ac07          	.4byte	0x20ac07
    1904:	d400                	.2byte	0xd400
    1906:	0020                	.2byte	0x20
    1908:	0100                	.2byte	0x100
    190a:	0758                	.2byte	0x758
    190c:	2100                	.2byte	0x2100
    190e:	0000                	.2byte	0x0
    1910:	211c                	.2byte	0x211c
    1912:	0000                	.2byte	0x0
    1914:	5801                	.2byte	0x5801
    1916:	00211c07          	.4byte	0x211c07
    191a:	2400                	.2byte	0x2400
    191c:	0021                	.2byte	0x21
    191e:	1000                	.2byte	0x1000
    1920:	4f5a01a3          	sb	s5,1251(s4)
    1924:	a326                	.2byte	0xa326
    1926:	5a01                	.2byte	0x5a01
    1928:	5a01a327          	.4byte	0x5a01a327
    192c:	9f1c264f          	.4byte	0x9f1c264f
    1930:	00217007          	.4byte	0x217007
    1934:	8000                	.2byte	0x8000
    1936:	0021                	.2byte	0x21
    1938:	0100                	.2byte	0x100
    193a:	0758                	.2byte	0x758
    193c:	2180                	.2byte	0x2180
    193e:	0000                	.2byte	0x0
    1940:	2184                	.2byte	0x2184
    1942:	0000                	.2byte	0x0
    1944:	a310                	.2byte	0xa310
    1946:	5a01                	.2byte	0x5a01
    1948:	01a3264f          	.4byte	0x1a3264f
    194c:	275a                	.2byte	0x275a
    194e:	4f5a01a3          	sb	s5,1251(s4)
    1952:	1c26                	.2byte	0x1c26
    1954:	079f 2190 0000      	.byte	0x9f, 0x07, 0x90, 0x21, 0x00, 0x00
    195a:	2198                	.2byte	0x2198
    195c:	0000                	.2byte	0x0
    195e:	5801                	.2byte	0x5801
    1960:	0700                	.2byte	0x700
    1962:	20b4                	.2byte	0x20b4
    1964:	0000                	.2byte	0x0
    1966:	20d0                	.2byte	0x20d0
    1968:	0000                	.2byte	0x0
    196a:	5a01                	.2byte	0x5a01
    196c:	0020d007          	.4byte	0x20d007
    1970:	d400                	.2byte	0xd400
    1972:	0020                	.2byte	0x20
    1974:	0300                	.2byte	0x300
    1976:	087a                	.2byte	0x87a
    1978:	079f 2100 0000      	.byte	0x9f, 0x07, 0x00, 0x21, 0x00, 0x00
    197e:	2184                	.2byte	0x2184
    1980:	0000                	.2byte	0x0
    1982:	5a01                	.2byte	0x5a01
    1984:	00219007          	.4byte	0x219007
    1988:	9800                	.2byte	0x9800
    198a:	0021                	.2byte	0x21
    198c:	0100                	.2byte	0x100
    198e:	005a                	.2byte	0x5a
    1990:	00213407          	.4byte	0x213407
    1994:	7000                	.2byte	0x7000
    1996:	0021                	.2byte	0x21
    1998:	0200                	.2byte	0x200
    199a:	9f30                	.2byte	0x9f30
    199c:	5e00                	.2byte	0x5e00
    199e:	0000                	.2byte	0x0
    19a0:	0500                	.2byte	0x500
    19a2:	0400                	.2byte	0x400
    19a4:	0000                	.2byte	0x0
    19a6:	0000                	.2byte	0x0
    19a8:	0700                	.2byte	0x700
    19aa:	2198                	.2byte	0x2198
    19ac:	0000                	.2byte	0x0
    19ae:	21bc                	.2byte	0x21bc
    19b0:	0000                	.2byte	0x0
    19b2:	5a01                	.2byte	0x5a01
    19b4:	0021bc07          	.4byte	0x21bc07
    19b8:	d000                	.2byte	0xd000
    19ba:	0021                	.2byte	0x21
    19bc:	0400                	.2byte	0x400
    19be:	9f5a01a3          	sb	s5,-1565(s4)
    19c2:	0021d007          	.4byte	0x21d007
    19c6:	e400                	.2byte	0xe400
    19c8:	0021                	.2byte	0x21
    19ca:	0100                	.2byte	0x100
    19cc:	005a                	.2byte	0x5a
    19ce:	00219807          	.4byte	0x219807
    19d2:	bc00                	.2byte	0xbc00
    19d4:	0021                	.2byte	0x21
    19d6:	0100                	.2byte	0x100
    19d8:	075a                	.2byte	0x75a
    19da:	21bc                	.2byte	0x21bc
    19dc:	0000                	.2byte	0x0
    19de:	21d0                	.2byte	0x21d0
    19e0:	0000                	.2byte	0x0
    19e2:	a304                	.2byte	0xa304
    19e4:	5a01                	.2byte	0x5a01
    19e6:	079f 21d0 0000      	.byte	0x9f, 0x07, 0xd0, 0x21, 0x00, 0x00
    19ec:	21e4                	.2byte	0x21e4
    19ee:	0000                	.2byte	0x0
    19f0:	5a01                	.2byte	0x5a01
    19f2:	0700                	.2byte	0x700
    19f4:	21ac                	.2byte	0x21ac
    19f6:	0000                	.2byte	0x0
    19f8:	21c0                	.2byte	0x21c0
    19fa:	0000                	.2byte	0x0
    19fc:	5f01                	.2byte	0x5f01
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	001c                	.2byte	0x1c
   2:	0000                	.2byte	0x0
   4:	0002                	.2byte	0x2
   6:	0000                	.2byte	0x0
   8:	0000                	.2byte	0x0
   a:	0004                	.2byte	0x4
   c:	0000                	.2byte	0x0
   e:	0000                	.2byte	0x0
  10:	1418                	.2byte	0x1418
  12:	0000                	.2byte	0x0
  14:	0330                	.2byte	0x330
	...
  1e:	0000                	.2byte	0x0
  20:	001c                	.2byte	0x1c
  22:	0000                	.2byte	0x0
  24:	0002                	.2byte	0x2
  26:	0360                	.2byte	0x360
  28:	0000                	.2byte	0x0
  2a:	0004                	.2byte	0x4
  2c:	0000                	.2byte	0x0
  2e:	0000                	.2byte	0x0
  30:	1748                	.2byte	0x1748
  32:	0000                	.2byte	0x0
  34:	00dc                	.2byte	0xdc
	...
  3e:	0000                	.2byte	0x0
  40:	001c                	.2byte	0x1c
  42:	0000                	.2byte	0x0
  44:	0002                	.2byte	0x2
  46:	055c                	.2byte	0x55c
  48:	0000                	.2byte	0x0
  4a:	0004                	.2byte	0x4
  4c:	0000                	.2byte	0x0
  4e:	0000                	.2byte	0x0
  50:	1824                	.2byte	0x1824
  52:	0000                	.2byte	0x0
  54:	0334                	.2byte	0x334
	...
  5e:	0000                	.2byte	0x0
  60:	001c                	.2byte	0x1c
  62:	0000                	.2byte	0x0
  64:	0002                	.2byte	0x2
  66:	08b0                	.2byte	0x8b0
  68:	0000                	.2byte	0x0
  6a:	0004                	.2byte	0x4
  6c:	0000                	.2byte	0x0
  6e:	0000                	.2byte	0x0
  70:	1b58                	.2byte	0x1b58
  72:	0000                	.2byte	0x0
  74:	04bc                	.2byte	0x4bc
	...
  7e:	0000                	.2byte	0x0
  80:	001c                	.2byte	0x1c
  82:	0000                	.2byte	0x0
  84:	0002                	.2byte	0x2
  86:	0b9c                	.2byte	0xb9c
  88:	0000                	.2byte	0x0
  8a:	0004                	.2byte	0x4
  8c:	0000                	.2byte	0x0
  8e:	0000                	.2byte	0x0
  90:	2014                	.2byte	0x2014
  92:	0000                	.2byte	0x0
  94:	0070                	.2byte	0x70
	...
  9e:	0000                	.2byte	0x0
  a0:	001c                	.2byte	0x1c
  a2:	0000                	.2byte	0x0
  a4:	0002                	.2byte	0x2
  a6:	0d4d                	.2byte	0xd4d
  a8:	0000                	.2byte	0x0
  aa:	0004                	.2byte	0x4
  ac:	0000                	.2byte	0x0
  ae:	0000                	.2byte	0x0
  b0:	2084                	.2byte	0x2084
  b2:	0000                	.2byte	0x0
  b4:	0114                	.2byte	0x114
	...
  be:	0000                	.2byte	0x0
  c0:	001c                	.2byte	0x1c
  c2:	0000                	.2byte	0x0
  c4:	0002                	.2byte	0x2
  c6:	0f60                	.2byte	0xf60
  c8:	0000                	.2byte	0x0
  ca:	0004                	.2byte	0x4
  cc:	0000                	.2byte	0x0
  ce:	0000                	.2byte	0x0
  d0:	2198                	.2byte	0x2198
  d2:	0000                	.2byte	0x0
  d4:	004c                	.2byte	0x4c
	...
  de:	0000                	.2byte	0x0
  e0:	0014                	.2byte	0x14
  e2:	0000                	.2byte	0x0
  e4:	0002                	.2byte	0x2
  e6:	10a2                	.2byte	0x10a2
  e8:	0000                	.2byte	0x0
  ea:	0004                	.2byte	0x4
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	00cc                	.2byte	0xcc
   2:	0000                	.2byte	0x0
   4:	0005                	.2byte	0x5
   6:	0004                	.2byte	0x4
   8:	0000                	.2byte	0x0
   a:	0000                	.2byte	0x0
   c:	1806                	.2byte	0x1806
   e:	0014                	.2byte	0x14
  10:	1800                	.2byte	0x1800
  12:	0014                	.2byte	0x14
  14:	0600                	.2byte	0x600
  16:	1430                	.2byte	0x1430
  18:	0000                	.2byte	0x0
  1a:	1434                	.2byte	0x1434
  1c:	0000                	.2byte	0x0
  1e:	4806                	.2byte	0x4806
  20:	0014                	.2byte	0x14
  22:	5000                	.2byte	0x5000
  24:	0014                	.2byte	0x14
  26:	0600                	.2byte	0x600
  28:	14f8                	.2byte	0x14f8
  2a:	0000                	.2byte	0x0
  2c:	14fc                	.2byte	0x14fc
  2e:	0000                	.2byte	0x0
  30:	0c06                	.2byte	0xc06
  32:	0015                	.2byte	0x15
  34:	1000                	.2byte	0x1000
  36:	0015                	.2byte	0x15
  38:	0600                	.2byte	0x600
  3a:	1558                	.2byte	0x1558
  3c:	0000                	.2byte	0x0
  3e:	1560                	.2byte	0x1560
  40:	0000                	.2byte	0x0
  42:	0600                	.2byte	0x600
  44:	146c                	.2byte	0x146c
  46:	0000                	.2byte	0x0
  48:	1470                	.2byte	0x1470
  4a:	0000                	.2byte	0x0
  4c:	dc06                	.2byte	0xdc06
  4e:	0014                	.2byte	0x14
  50:	f800                	.2byte	0xf800
  52:	0014                	.2byte	0x14
  54:	0000                	.2byte	0x0
  56:	7006                	.2byte	0x7006
  58:	0014                	.2byte	0x14
  5a:	8400                	.2byte	0x8400
  5c:	0014                	.2byte	0x14
  5e:	0600                	.2byte	0x600
  60:	1538                	.2byte	0x1538
  62:	0000                	.2byte	0x0
  64:	153c                	.2byte	0x153c
  66:	0000                	.2byte	0x0
  68:	4c06                	.2byte	0x4c06
  6a:	0015                	.2byte	0x15
  6c:	5000                	.2byte	0x5000
  6e:	0015                	.2byte	0x15
  70:	0600                	.2byte	0x600
  72:	16c0                	.2byte	0x16c0
  74:	0000                	.2byte	0x0
  76:	16c4                	.2byte	0x16c4
  78:	0000                	.2byte	0x0
  7a:	0600                	.2byte	0x600
  7c:	14a0                	.2byte	0x14a0
  7e:	0000                	.2byte	0x0
  80:	14a4                	.2byte	0x14a4
  82:	0000                	.2byte	0x0
  84:	1c06                	.2byte	0x1c06
  86:	0015                	.2byte	0x15
  88:	3800                	.2byte	0x3800
  8a:	0015                	.2byte	0x15
  8c:	0000                	.2byte	0x0
  8e:	8806                	.2byte	0x8806
  90:	0015                	.2byte	0x15
  92:	3000                	.2byte	0x3000
  94:	0016                	.2byte	0x16
  96:	0600                	.2byte	0x600
  98:	16b4                	.2byte	0x16b4
  9a:	0000                	.2byte	0x0
  9c:	16c0                	.2byte	0x16c0
  9e:	0000                	.2byte	0x0
  a0:	0600                	.2byte	0x600
  a2:	1598                	.2byte	0x1598
  a4:	0000                	.2byte	0x0
  a6:	161c                	.2byte	0x161c
  a8:	0000                	.2byte	0x0
  aa:	1c06                	.2byte	0x1c06
  ac:	0016                	.2byte	0x16
  ae:	2000                	.2byte	0x2000
  b0:	0016                	.2byte	0x16
  b2:	0600                	.2byte	0x600
  b4:	1624                	.2byte	0x1624
  b6:	0000                	.2byte	0x0
  b8:	1628                	.2byte	0x1628
  ba:	0000                	.2byte	0x0
  bc:	0600                	.2byte	0x600
  be:	1678                	.2byte	0x1678
  c0:	0000                	.2byte	0x0
  c2:	1678                	.2byte	0x1678
  c4:	0000                	.2byte	0x0
  c6:	8006                	.2byte	0x8006
  c8:	0016                	.2byte	0x16
  ca:	9400                	.2byte	0x9400
  cc:	0016                	.2byte	0x16
  ce:	0000                	.2byte	0x0
  d0:	0049                	.2byte	0x49
  d2:	0000                	.2byte	0x0
  d4:	0005                	.2byte	0x5
  d6:	0004                	.2byte	0x4
  d8:	0000                	.2byte	0x0
  da:	0000                	.2byte	0x0
  dc:	6006                	.2byte	0x6006
  de:	64000017          	auipc	zero,0x64000
  e2:	06000017          	auipc	zero,0x6000
  e6:	1768                	.2byte	0x1768
  e8:	0000                	.2byte	0x0
  ea:	1774                	.2byte	0x1774
  ec:	0000                	.2byte	0x0
  ee:	0600                	.2byte	0x600
  f0:	1780                	.2byte	0x1780
  f2:	0000                	.2byte	0x0
  f4:	1790                	.2byte	0x1790
  f6:	0000                	.2byte	0x0
  f8:	9806                	.2byte	0x9806
  fa:	a4000017          	auipc	zero,0xa4000
  fe:	06000017          	auipc	zero,0x6000
 102:	17b0                	.2byte	0x17b0
 104:	0000                	.2byte	0x0
 106:	17fc                	.2byte	0x17fc
 108:	0000                	.2byte	0x0
 10a:	0006                	.2byte	0x6
 10c:	0018                	.2byte	0x18
 10e:	1400                	.2byte	0x1400
 110:	0018                	.2byte	0x18
 112:	0600                	.2byte	0x600
 114:	181c                	.2byte	0x181c
 116:	0000                	.2byte	0x0
 118:	1824                	.2byte	0x1824
 11a:	0000                	.2byte	0x0
 11c:	b900                	.2byte	0xb900
 11e:	0000                	.2byte	0x0
 120:	0500                	.2byte	0x500
 122:	0400                	.2byte	0x400
 124:	0000                	.2byte	0x0
 126:	0000                	.2byte	0x0
 128:	0600                	.2byte	0x600
 12a:	1824                	.2byte	0x1824
 12c:	0000                	.2byte	0x0
 12e:	1824                	.2byte	0x1824
 130:	0000                	.2byte	0x0
 132:	3c06                	.2byte	0x3c06
 134:	0018                	.2byte	0x18
 136:	4000                	.2byte	0x4000
 138:	0018                	.2byte	0x18
 13a:	0600                	.2byte	0x600
 13c:	1854                	.2byte	0x1854
 13e:	0000                	.2byte	0x0
 140:	185c                	.2byte	0x185c
 142:	0000                	.2byte	0x0
 144:	0806                	.2byte	0x806
 146:	001a                	.2byte	0x1a
 148:	0c00                	.2byte	0xc00
 14a:	001a                	.2byte	0x1a
 14c:	0600                	.2byte	0x600
 14e:	1a1c                	.2byte	0x1a1c
 150:	0000                	.2byte	0x0
 152:	1a20                	.2byte	0x1a20
 154:	0000                	.2byte	0x0
 156:	bc06                	.2byte	0xbc06
 158:	001a                	.2byte	0x1a
 15a:	c000                	.2byte	0xc000
 15c:	001a                	.2byte	0x1a
 15e:	0000                	.2byte	0x0
 160:	7806                	.2byte	0x7806
 162:	0018                	.2byte	0x18
 164:	7c00                	.2byte	0x7c00
 166:	0018                	.2byte	0x18
 168:	0600                	.2byte	0x600
 16a:	19ec                	.2byte	0x19ec
 16c:	0000                	.2byte	0x0
 16e:	1a08                	.2byte	0x1a08
 170:	0000                	.2byte	0x0
 172:	0600                	.2byte	0x600
 174:	187c                	.2byte	0x187c
 176:	0000                	.2byte	0x0
 178:	1890                	.2byte	0x1890
 17a:	0000                	.2byte	0x0
 17c:	4806                	.2byte	0x4806
 17e:	001a                	.2byte	0x1a
 180:	4c00                	.2byte	0x4c00
 182:	001a                	.2byte	0x1a
 184:	0600                	.2byte	0x600
 186:	1a5c                	.2byte	0x1a5c
 188:	0000                	.2byte	0x0
 18a:	1a60                	.2byte	0x1a60
 18c:	0000                	.2byte	0x0
 18e:	8806                	.2byte	0x8806
 190:	001a                	.2byte	0x1a
 192:	8c00                	.2byte	0x8c00
 194:	001a                	.2byte	0x1a
 196:	0000                	.2byte	0x0
 198:	ac06                	.2byte	0xac06
 19a:	0018                	.2byte	0x18
 19c:	b000                	.2byte	0xb000
 19e:	0018                	.2byte	0x18
 1a0:	0600                	.2byte	0x600
 1a2:	1a2c                	.2byte	0x1a2c
 1a4:	0000                	.2byte	0x0
 1a6:	1a48                	.2byte	0x1a48
 1a8:	0000                	.2byte	0x0
 1aa:	0600                	.2byte	0x600
 1ac:	18e0                	.2byte	0x18e0
 1ae:	0000                	.2byte	0x0
 1b0:	192c                	.2byte	0x192c
 1b2:	0000                	.2byte	0x0
 1b4:	3006                	.2byte	0x3006
 1b6:	0019                	.2byte	0x19
 1b8:	3400                	.2byte	0x3400
 1ba:	0019                	.2byte	0x19
 1bc:	0600                	.2byte	0x600
 1be:	193c                	.2byte	0x193c
 1c0:	0000                	.2byte	0x0
 1c2:	1944                	.2byte	0x1944
 1c4:	0000                	.2byte	0x0
 1c6:	0600                	.2byte	0x600
 1c8:	19ac                	.2byte	0x19ac
 1ca:	0000                	.2byte	0x0
 1cc:	19ac                	.2byte	0x19ac
 1ce:	0000                	.2byte	0x0
 1d0:	b406                	.2byte	0xb406
 1d2:	0019                	.2byte	0x19
 1d4:	c800                	.2byte	0xc800
 1d6:	0019                	.2byte	0x19
 1d8:	0000                	.2byte	0x0
 1da:	01c8                	.2byte	0x1c8
 1dc:	0000                	.2byte	0x0
 1de:	0005                	.2byte	0x5
 1e0:	0004                	.2byte	0x4
 1e2:	0000                	.2byte	0x0
 1e4:	0000                	.2byte	0x0
 1e6:	5806                	.2byte	0x5806
 1e8:	5c00001b          	.4byte	0x5c00001b
 1ec:	0600001b          	.4byte	0x600001b
 1f0:	1b60                	.2byte	0x1b60
 1f2:	0000                	.2byte	0x0
 1f4:	1b68                	.2byte	0x1b68
 1f6:	0000                	.2byte	0x0
 1f8:	7406                	.2byte	0x7406
 1fa:	7c00001b          	.4byte	0x7c00001b
 1fe:	0600001b          	.4byte	0x600001b
 202:	1b90                	.2byte	0x1b90
 204:	0000                	.2byte	0x0
 206:	1b94                	.2byte	0x1b94
 208:	0000                	.2byte	0x0
 20a:	d006                	.2byte	0xd006
 20c:	001d                	.2byte	0x1d
 20e:	d800                	.2byte	0xd800
 210:	001d                	.2byte	0x1d
 212:	0000                	.2byte	0x0
 214:	6806                	.2byte	0x6806
 216:	6c00001b          	.4byte	0x6c00001b
 21a:	0600001b          	.4byte	0x600001b
 21e:	1b80                	.2byte	0x1b80
 220:	0000                	.2byte	0x0
 222:	1b84                	.2byte	0x1b84
 224:	0000                	.2byte	0x0
 226:	8806                	.2byte	0x8806
 228:	8c00001b          	.4byte	0x8c00001b
 22c:	0600001b          	.4byte	0x600001b
 230:	1b94                	.2byte	0x1b94
 232:	0000                	.2byte	0x0
 234:	1b98                	.2byte	0x1b98
 236:	0000                	.2byte	0x0
 238:	9c06                	.2byte	0x9c06
 23a:	9c00001b          	.4byte	0x9c00001b
 23e:	0600001b          	.4byte	0x600001b
 242:	1bac                	.2byte	0x1bac
 244:	0000                	.2byte	0x0
 246:	1bb0                	.2byte	0x1bb0
 248:	0000                	.2byte	0x0
 24a:	5006                	.2byte	0x5006
 24c:	001d                	.2byte	0x1d
 24e:	5800                	.2byte	0x5800
 250:	001d                	.2byte	0x1d
 252:	0600                	.2byte	0x600
 254:	1d74                	.2byte	0x1d74
 256:	0000                	.2byte	0x0
 258:	1d78                	.2byte	0x1d78
 25a:	0000                	.2byte	0x0
 25c:	f006                	.2byte	0xf006
 25e:	001d                	.2byte	0x1d
 260:	f400                	.2byte	0xf400
 262:	001d                	.2byte	0x1d
 264:	0600                	.2byte	0x600
 266:	1ee4                	.2byte	0x1ee4
 268:	0000                	.2byte	0x0
 26a:	1ee8                	.2byte	0x1ee8
 26c:	0000                	.2byte	0x0
 26e:	0600                	.2byte	0x600
 270:	1ba4                	.2byte	0x1ba4
 272:	0000                	.2byte	0x0
 274:	1ba8                	.2byte	0x1ba8
 276:	0000                	.2byte	0x0
 278:	b406                	.2byte	0xb406
 27a:	c400001b          	.4byte	0xc400001b
 27e:	0600001b          	.4byte	0x600001b
 282:	1bcc                	.2byte	0x1bcc
 284:	0000                	.2byte	0x0
 286:	1bd8                	.2byte	0x1bd8
 288:	0000                	.2byte	0x0
 28a:	4006                	.2byte	0x4006
 28c:	001c                	.2byte	0x1c
 28e:	4400                	.2byte	0x4400
 290:	001c                	.2byte	0x1c
 292:	0600                	.2byte	0x600
 294:	1c48                	.2byte	0x1c48
 296:	0000                	.2byte	0x0
 298:	1c7c                	.2byte	0x1c7c
 29a:	0000                	.2byte	0x0
 29c:	8806                	.2byte	0x8806
 29e:	001c                	.2byte	0x1c
 2a0:	a400                	.2byte	0xa400
 2a2:	001c                	.2byte	0x1c
 2a4:	0600                	.2byte	0x600
 2a6:	1cc0                	.2byte	0x1cc0
 2a8:	0000                	.2byte	0x0
 2aa:	1cf0                	.2byte	0x1cf0
 2ac:	0000                	.2byte	0x0
 2ae:	f406                	.2byte	0xf406
 2b0:	001c                	.2byte	0x1c
 2b2:	5000                	.2byte	0x5000
 2b4:	001d                	.2byte	0x1d
 2b6:	0600                	.2byte	0x600
 2b8:	1d58                	.2byte	0x1d58
 2ba:	0000                	.2byte	0x0
 2bc:	1d74                	.2byte	0x1d74
 2be:	0000                	.2byte	0x0
 2c0:	7806                	.2byte	0x7806
 2c2:	001d                	.2byte	0x1d
 2c4:	b800                	.2byte	0xb800
 2c6:	001d                	.2byte	0x1d
 2c8:	0600                	.2byte	0x600
 2ca:	1dc0                	.2byte	0x1dc0
 2cc:	0000                	.2byte	0x0
 2ce:	1dd0                	.2byte	0x1dd0
 2d0:	0000                	.2byte	0x0
 2d2:	0006                	.2byte	0x6
 2d4:	0020                	.2byte	0x20
 2d6:	0400                	.2byte	0x400
 2d8:	0020                	.2byte	0x20
 2da:	0000                	.2byte	0x0
 2dc:	d806                	.2byte	0xd806
 2de:	0400001b          	.4byte	0x400001b
 2e2:	001c                	.2byte	0x1c
 2e4:	0600                	.2byte	0x600
 2e6:	1ca4                	.2byte	0x1ca4
 2e8:	0000                	.2byte	0x0
 2ea:	1cc0                	.2byte	0x1cc0
 2ec:	0000                	.2byte	0x0
 2ee:	f006                	.2byte	0xf006
 2f0:	001c                	.2byte	0x1c
 2f2:	f400                	.2byte	0xf400
 2f4:	001c                	.2byte	0x1c
 2f6:	0600                	.2byte	0x600
 2f8:	1f54                	.2byte	0x1f54
 2fa:	0000                	.2byte	0x0
 2fc:	1f58                	.2byte	0x1f58
 2fe:	0000                	.2byte	0x0
 300:	5c06                	.2byte	0x5c06
 302:	001f 6400 001f      	.byte	0x1f, 0x00, 0x00, 0x64, 0x1f, 0x00
 308:	0600                	.2byte	0x600
 30a:	1fe8                	.2byte	0x1fe8
 30c:	0000                	.2byte	0x0
 30e:	2000                	.2byte	0x2000
 310:	0000                	.2byte	0x0
 312:	0406                	.2byte	0x406
 314:	0020                	.2byte	0x20
 316:	1400                	.2byte	0x1400
 318:	0020                	.2byte	0x20
 31a:	0000                	.2byte	0x0
 31c:	0406                	.2byte	0x406
 31e:	001c                	.2byte	0x1c
 320:	1800                	.2byte	0x1800
 322:	001c                	.2byte	0x1c
 324:	0600                	.2byte	0x600
 326:	1c1c                	.2byte	0x1c1c
 328:	0000                	.2byte	0x0
 32a:	1c20                	.2byte	0x1c20
 32c:	0000                	.2byte	0x0
 32e:	2406                	.2byte	0x2406
 330:	001c                	.2byte	0x1c
 332:	2800                	.2byte	0x2800
 334:	001c                	.2byte	0x1c
 336:	0000                	.2byte	0x0
 338:	7c06                	.2byte	0x7c06
 33a:	001c                	.2byte	0x1c
 33c:	8800                	.2byte	0x8800
 33e:	001c                	.2byte	0x1c
 340:	0600                	.2byte	0x600
 342:	1ca4                	.2byte	0x1ca4
 344:	0000                	.2byte	0x0
 346:	1ca4                	.2byte	0x1ca4
 348:	0000                	.2byte	0x0
 34a:	b806                	.2byte	0xb806
 34c:	001d                	.2byte	0x1d
 34e:	c000                	.2byte	0xc000
 350:	001d                	.2byte	0x1d
 352:	0600                	.2byte	0x600
 354:	1dd8                	.2byte	0x1dd8
 356:	0000                	.2byte	0x0
 358:	1df0                	.2byte	0x1df0
 35a:	0000                	.2byte	0x0
 35c:	f406                	.2byte	0xf406
 35e:	001d                	.2byte	0x1d
 360:	e400                	.2byte	0xe400
 362:	001e                	.2byte	0x1e
 364:	0600                	.2byte	0x600
 366:	1ee8                	.2byte	0x1ee8
 368:	0000                	.2byte	0x0
 36a:	1f54                	.2byte	0x1f54
 36c:	0000                	.2byte	0x0
 36e:	5806                	.2byte	0x5806
 370:	001f 5c00 001f      	.byte	0x1f, 0x00, 0x00, 0x5c, 0x1f, 0x00
 376:	0600                	.2byte	0x600
 378:	1f64                	.2byte	0x1f64
 37a:	0000                	.2byte	0x0
 37c:	1fd8                	.2byte	0x1fd8
 37e:	0000                	.2byte	0x0
 380:	e006                	.2byte	0xe006
 382:	001f e800 001f      	.byte	0x1f, 0x00, 0x00, 0xe8, 0x1f, 0x00
 388:	0000                	.2byte	0x0
 38a:	3006                	.2byte	0x3006
 38c:	001e                	.2byte	0x1e
 38e:	3c00                	.2byte	0x3c00
 390:	001e                	.2byte	0x1e
 392:	0600                	.2byte	0x600
 394:	1f7c                	.2byte	0x1f7c
 396:	0000                	.2byte	0x0
 398:	1fb8                	.2byte	0x1fb8
 39a:	0000                	.2byte	0x0
 39c:	c406                	.2byte	0xc406
 39e:	001f d800 001f      	.byte	0x1f, 0x00, 0x00, 0xd8, 0x1f, 0x00
 3a4:	0000                	.2byte	0x0
 3a6:	0000001b          	.4byte	0x1b
 3aa:	0005                	.2byte	0x5
 3ac:	0004                	.2byte	0x4
 3ae:	0000                	.2byte	0x0
 3b0:	0000                	.2byte	0x0
 3b2:	1406                	.2byte	0x1406
 3b4:	0020                	.2byte	0x20
 3b6:	2400                	.2byte	0x2400
 3b8:	0020                	.2byte	0x20
 3ba:	0600                	.2byte	0x600
 3bc:	2028                	.2byte	0x2028
 3be:	0000                	.2byte	0x0
 3c0:	2030                	.2byte	0x2030
 3c2:	0000                	.2byte	0x0
 3c4:	8200                	.2byte	0x8200
 3c6:	0000                	.2byte	0x0
 3c8:	0500                	.2byte	0x500
 3ca:	0400                	.2byte	0x400
 3cc:	0000                	.2byte	0x0
 3ce:	0000                	.2byte	0x0
 3d0:	0600                	.2byte	0x600
 3d2:	2084                	.2byte	0x2084
 3d4:	0000                	.2byte	0x0
 3d6:	2084                	.2byte	0x2084
 3d8:	0000                	.2byte	0x0
 3da:	9806                	.2byte	0x9806
 3dc:	0020                	.2byte	0x20
 3de:	d400                	.2byte	0xd400
 3e0:	0020                	.2byte	0x20
 3e2:	0600                	.2byte	0x600
 3e4:	2100                	.2byte	0x2100
 3e6:	0000                	.2byte	0x0
 3e8:	2198                	.2byte	0x2198
 3ea:	0000                	.2byte	0x0
 3ec:	0600                	.2byte	0x600
 3ee:	209c                	.2byte	0x209c
 3f0:	0000                	.2byte	0x0
 3f2:	20d4                	.2byte	0x20d4
 3f4:	0000                	.2byte	0x0
 3f6:	0006                	.2byte	0x6
 3f8:	0021                	.2byte	0x21
 3fa:	8400                	.2byte	0x8400
 3fc:	0021                	.2byte	0x21
 3fe:	0600                	.2byte	0x600
 400:	2190                	.2byte	0x2190
 402:	0000                	.2byte	0x0
 404:	2198                	.2byte	0x2198
 406:	0000                	.2byte	0x0
 408:	0600                	.2byte	0x600
 40a:	20ac                	.2byte	0x20ac
 40c:	0000                	.2byte	0x0
 40e:	20bc                	.2byte	0x20bc
 410:	0000                	.2byte	0x0
 412:	9006                	.2byte	0x9006
 414:	0021                	.2byte	0x21
 416:	9800                	.2byte	0x9800
 418:	0021                	.2byte	0x21
 41a:	0000                	.2byte	0x0
 41c:	2c06                	.2byte	0x2c06
 41e:	0021                	.2byte	0x21
 420:	3000                	.2byte	0x3000
 422:	0021                	.2byte	0x21
 424:	0600                	.2byte	0x600
 426:	2134                	.2byte	0x2134
 428:	0000                	.2byte	0x0
 42a:	2170                	.2byte	0x2170
 42c:	0000                	.2byte	0x0
 42e:	0600                	.2byte	0x600
 430:	20d4                	.2byte	0x20d4
 432:	0000                	.2byte	0x0
 434:	20e0                	.2byte	0x20e0
 436:	0000                	.2byte	0x0
 438:	e406                	.2byte	0xe406
 43a:	0020                	.2byte	0x20
 43c:	e800                	.2byte	0xe800
 43e:	0020                	.2byte	0x20
 440:	0600                	.2byte	0x600
 442:	20ec                	.2byte	0x20ec
 444:	0000                	.2byte	0x0
 446:	20f0                	.2byte	0x20f0
 448:	0000                	.2byte	0x0
 44a:	2400                	.2byte	0x2400
 44c:	0000                	.2byte	0x0
 44e:	0500                	.2byte	0x500
 450:	0400                	.2byte	0x400
 452:	0000                	.2byte	0x0
 454:	0000                	.2byte	0x0
 456:	0600                	.2byte	0x600
 458:	2198                	.2byte	0x2198
 45a:	0000                	.2byte	0x0
 45c:	21ac                	.2byte	0x21ac
 45e:	0000                	.2byte	0x0
 460:	ac06                	.2byte	0xac06
 462:	0021                	.2byte	0x21
 464:	c800                	.2byte	0xc800
 466:	0021                	.2byte	0x21
 468:	0600                	.2byte	0x600
 46a:	21d0                	.2byte	0x21d0
 46c:	0000                	.2byte	0x0
 46e:	21e4                	.2byte	0x21e4
 470:	0000                	.2byte	0x0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0814                	.2byte	0x814
       2:	0000                	.2byte	0x0
       4:	0005                	.2byte	0x5
       6:	0004                	.2byte	0x4
       8:	00000033          	add	zero,zero,zero
       c:	0101                	.2byte	0x101
       e:	fb01                	.2byte	0xfb01
      10:	0d0e                	.2byte	0xd0e
      12:	0100                	.2byte	0x100
      14:	0101                	.2byte	0x101
      16:	0001                	.2byte	0x1
      18:	0000                	.2byte	0x0
      1a:	0001                	.2byte	0x1
      1c:	0100                	.2byte	0x100
      1e:	0101                	.2byte	0x101
      20:	021f 0000 0000      	.byte	0x1f, 0x02, 0x00, 0x00, 0x00, 0x00
      26:	00a4                	.2byte	0xa4
      28:	0000                	.2byte	0x0
      2a:	0102                	.2byte	0x102
      2c:	021f 030f 009b      	.byte	0x1f, 0x02, 0x0f, 0x03, 0x9b, 0x00
      32:	0000                	.2byte	0x0
      34:	9b01                	.2byte	0x9b01
      36:	0000                	.2byte	0x0
      38:	0100                	.2byte	0x100
      3a:	000000db          	.4byte	0xdb
      3e:	0501                	.2byte	0x501
      40:	0001                	.2byte	0x1
      42:	0205                	.2byte	0x205
      44:	1418                	.2byte	0x1418
      46:	0000                	.2byte	0x0
      48:	05012303          	lw	t1,80(sp)
      4c:	09010303          	lb	t1,144(sp)
      50:	0000                	.2byte	0x0
      52:	0301                	.2byte	0x301
      54:	0900                	.2byte	0x900
      56:	0000                	.2byte	0x0
      58:	0501                	.2byte	0x501
      5a:	030d                	.2byte	0x30d
      5c:	0900                	.2byte	0x900
      5e:	0000                	.2byte	0x0
      60:	0501                	.2byte	0x501
      62:	09010303          	lb	t1,144(sp)
      66:	0000                	.2byte	0x0
      68:	0301                	.2byte	0x301
      6a:	0900                	.2byte	0x900
      6c:	0000                	.2byte	0x0
      6e:	0301                	.2byte	0x301
      70:	0900                	.2byte	0x900
      72:	0000                	.2byte	0x0
      74:	0301                	.2byte	0x301
      76:	0900                	.2byte	0x900
      78:	0000                	.2byte	0x0
      7a:	0301                	.2byte	0x301
      7c:	0901                	.2byte	0x901
      7e:	0000                	.2byte	0x0
      80:	0301                	.2byte	0x301
      82:	0900                	.2byte	0x900
      84:	0000                	.2byte	0x0
      86:	0301                	.2byte	0x301
      88:	0900                	.2byte	0x900
      8a:	0000                	.2byte	0x0
      8c:	0301                	.2byte	0x301
      8e:	0900                	.2byte	0x900
      90:	0000                	.2byte	0x0
      92:	0301                	.2byte	0x301
      94:	0901                	.2byte	0x901
      96:	0000                	.2byte	0x0
      98:	0301                	.2byte	0x301
      9a:	0900                	.2byte	0x900
      9c:	0000                	.2byte	0x0
      9e:	0301                	.2byte	0x301
      a0:	0900                	.2byte	0x900
      a2:	0000                	.2byte	0x0
      a4:	0301                	.2byte	0x301
      a6:	0900                	.2byte	0x900
      a8:	0000                	.2byte	0x0
      aa:	0301                	.2byte	0x301
      ac:	0901                	.2byte	0x901
      ae:	0000                	.2byte	0x0
      b0:	0301                	.2byte	0x301
      b2:	0902                	.2byte	0x902
      b4:	0000                	.2byte	0x0
      b6:	0301                	.2byte	0x301
      b8:	0901                	.2byte	0x901
      ba:	0000                	.2byte	0x0
      bc:	0301                	.2byte	0x301
      be:	0900                	.2byte	0x900
      c0:	0000                	.2byte	0x0
      c2:	0301                	.2byte	0x301
      c4:	0900                	.2byte	0x900
      c6:	0000                	.2byte	0x0
      c8:	0301                	.2byte	0x301
      ca:	0900                	.2byte	0x900
      cc:	0000                	.2byte	0x0
      ce:	0301                	.2byte	0x301
      d0:	0900                	.2byte	0x900
      d2:	0000                	.2byte	0x0
      d4:	0501                	.2byte	0x501
      d6:	0601                	.2byte	0x601
      d8:	00097803          	.4byte	0x97803
      dc:	0100                	.2byte	0x100
      de:	0305                	.2byte	0x305
      e0:	18090803          	lb	a6,384(s2)
      e4:	0100                	.2byte	0x100
      e6:	0105                	.2byte	0x105
      e8:	04097803          	.4byte	0x4097803
      ec:	0100                	.2byte	0x100
      ee:	10090003          	lb	zero,256(s2)
      f2:	0100                	.2byte	0x100
      f4:	0305                	.2byte	0x305
      f6:	04090803          	lb	a6,64(s2)
      fa:	0100                	.2byte	0x100
      fc:	0306                	.2byte	0x306
      fe:	0900                	.2byte	0x900
     100:	0004                	.2byte	0x4
     102:	0301                	.2byte	0x301
     104:	0900                	.2byte	0x900
     106:	0000                	.2byte	0x0
     108:	0301                	.2byte	0x301
     10a:	0900                	.2byte	0x900
     10c:	0004                	.2byte	0x4
     10e:	0301                	.2byte	0x301
     110:	0900                	.2byte	0x900
     112:	0000                	.2byte	0x0
     114:	0301                	.2byte	0x301
     116:	0900                	.2byte	0x900
     118:	0000                	.2byte	0x0
     11a:	0001                	.2byte	0x1
     11c:	0402                	.2byte	0x402
     11e:	0301                	.2byte	0x301
     120:	0900                	.2byte	0x900
     122:	000c                	.2byte	0xc
     124:	0001                	.2byte	0x1
     126:	0402                	.2byte	0x402
     128:	0301                	.2byte	0x301
     12a:	0900                	.2byte	0x900
     12c:	0000                	.2byte	0x0
     12e:	0001                	.2byte	0x1
     130:	0402                	.2byte	0x402
     132:	0301                	.2byte	0x301
     134:	0900                	.2byte	0x900
     136:	0000                	.2byte	0x0
     138:	0001                	.2byte	0x1
     13a:	0402                	.2byte	0x402
     13c:	0301                	.2byte	0x301
     13e:	0900                	.2byte	0x900
     140:	0000                	.2byte	0x0
     142:	0001                	.2byte	0x1
     144:	0402                	.2byte	0x402
     146:	0301                	.2byte	0x301
     148:	0900                	.2byte	0x900
     14a:	000c                	.2byte	0xc
     14c:	0001                	.2byte	0x1
     14e:	0402                	.2byte	0x402
     150:	0301                	.2byte	0x301
     152:	0900                	.2byte	0x900
     154:	0000                	.2byte	0x0
     156:	0001                	.2byte	0x1
     158:	0402                	.2byte	0x402
     15a:	0301                	.2byte	0x301
     15c:	0900                	.2byte	0x900
     15e:	0004                	.2byte	0x4
     160:	0001                	.2byte	0x1
     162:	0402                	.2byte	0x402
     164:	0301                	.2byte	0x301
     166:	0900                	.2byte	0x900
     168:	0000                	.2byte	0x0
     16a:	0001                	.2byte	0x1
     16c:	0402                	.2byte	0x402
     16e:	0900030f          	.4byte	0x900030f
     172:	0000                	.2byte	0x0
     174:	0001                	.2byte	0x1
     176:	0402                	.2byte	0x402
     178:	0900030f          	.4byte	0x900030f
     17c:	0000                	.2byte	0x0
     17e:	0001                	.2byte	0x1
     180:	0402                	.2byte	0x402
     182:	0308                	.2byte	0x308
     184:	0900                	.2byte	0x900
     186:	0004                	.2byte	0x4
     188:	0001                	.2byte	0x1
     18a:	0402                	.2byte	0x402
     18c:	0308                	.2byte	0x308
     18e:	0900                	.2byte	0x900
     190:	0000                	.2byte	0x0
     192:	0001                	.2byte	0x1
     194:	0402                	.2byte	0x402
     196:	0308                	.2byte	0x308
     198:	0901                	.2byte	0x901
     19a:	0000                	.2byte	0x0
     19c:	0001                	.2byte	0x1
     19e:	0402                	.2byte	0x402
     1a0:	0308                	.2byte	0x308
     1a2:	0900                	.2byte	0x900
     1a4:	0000                	.2byte	0x0
     1a6:	0001                	.2byte	0x1
     1a8:	0402                	.2byte	0x402
     1aa:	0308                	.2byte	0x308
     1ac:	0900                	.2byte	0x900
     1ae:	0000                	.2byte	0x0
     1b0:	0001                	.2byte	0x1
     1b2:	0402                	.2byte	0x402
     1b4:	0308                	.2byte	0x308
     1b6:	0900                	.2byte	0x900
     1b8:	0000                	.2byte	0x0
     1ba:	0001                	.2byte	0x1
     1bc:	0402                	.2byte	0x402
     1be:	0308                	.2byte	0x308
     1c0:	0900                	.2byte	0x900
     1c2:	0000                	.2byte	0x0
     1c4:	0001                	.2byte	0x1
     1c6:	0402                	.2byte	0x402
     1c8:	0308                	.2byte	0x308
     1ca:	0900                	.2byte	0x900
     1cc:	0010                	.2byte	0x10
     1ce:	0001                	.2byte	0x1
     1d0:	0402                	.2byte	0x402
     1d2:	0308                	.2byte	0x308
     1d4:	0900                	.2byte	0x900
     1d6:	0000                	.2byte	0x0
     1d8:	0001                	.2byte	0x1
     1da:	0402                	.2byte	0x402
     1dc:	0308                	.2byte	0x308
     1de:	0900                	.2byte	0x900
     1e0:	0004                	.2byte	0x4
     1e2:	0001                	.2byte	0x1
     1e4:	0402                	.2byte	0x402
     1e6:	0308                	.2byte	0x308
     1e8:	0900                	.2byte	0x900
     1ea:	0000                	.2byte	0x0
     1ec:	0001                	.2byte	0x1
     1ee:	0402                	.2byte	0x402
     1f0:	0308                	.2byte	0x308
     1f2:	0900                	.2byte	0x900
     1f4:	0000                	.2byte	0x0
     1f6:	0601                	.2byte	0x601
     1f8:	04090003          	lb	zero,64(s2)
     1fc:	0100                	.2byte	0x100
     1fe:	0200                	.2byte	0x200
     200:	0104                	.2byte	0x104
     202:	0306                	.2byte	0x306
     204:	0900                	.2byte	0x900
     206:	0008                	.2byte	0x8
     208:	0001                	.2byte	0x1
     20a:	0402                	.2byte	0x402
     20c:	0301                	.2byte	0x301
     20e:	0900                	.2byte	0x900
     210:	0000                	.2byte	0x0
     212:	0001                	.2byte	0x1
     214:	0402                	.2byte	0x402
     216:	0301                	.2byte	0x301
     218:	0900                	.2byte	0x900
     21a:	0000                	.2byte	0x0
     21c:	0001                	.2byte	0x1
     21e:	0402                	.2byte	0x402
     220:	0301                	.2byte	0x301
     222:	0900                	.2byte	0x900
     224:	0000                	.2byte	0x0
     226:	0001                	.2byte	0x1
     228:	0402                	.2byte	0x402
     22a:	0301                	.2byte	0x301
     22c:	0900                	.2byte	0x900
     22e:	000c                	.2byte	0xc
     230:	0001                	.2byte	0x1
     232:	0402                	.2byte	0x402
     234:	0301                	.2byte	0x301
     236:	0900                	.2byte	0x900
     238:	0000                	.2byte	0x0
     23a:	0001                	.2byte	0x1
     23c:	0402                	.2byte	0x402
     23e:	0301                	.2byte	0x301
     240:	0900                	.2byte	0x900
     242:	0004                	.2byte	0x4
     244:	0001                	.2byte	0x1
     246:	0402                	.2byte	0x402
     248:	0301                	.2byte	0x301
     24a:	0900                	.2byte	0x900
     24c:	0000                	.2byte	0x0
     24e:	0001                	.2byte	0x1
     250:	0402                	.2byte	0x402
     252:	0900030f          	.4byte	0x900030f
     256:	0000                	.2byte	0x0
     258:	0001                	.2byte	0x1
     25a:	0402                	.2byte	0x402
     25c:	0900030f          	.4byte	0x900030f
     260:	0000                	.2byte	0x0
     262:	0001                	.2byte	0x1
     264:	0402                	.2byte	0x402
     266:	0308                	.2byte	0x308
     268:	0900                	.2byte	0x900
     26a:	0004                	.2byte	0x4
     26c:	0001                	.2byte	0x1
     26e:	0402                	.2byte	0x402
     270:	0308                	.2byte	0x308
     272:	0900                	.2byte	0x900
     274:	0000                	.2byte	0x0
     276:	0001                	.2byte	0x1
     278:	0402                	.2byte	0x402
     27a:	0308                	.2byte	0x308
     27c:	0901                	.2byte	0x901
     27e:	0000                	.2byte	0x0
     280:	0001                	.2byte	0x1
     282:	0402                	.2byte	0x402
     284:	0308                	.2byte	0x308
     286:	0900                	.2byte	0x900
     288:	0000                	.2byte	0x0
     28a:	0001                	.2byte	0x1
     28c:	0402                	.2byte	0x402
     28e:	0308                	.2byte	0x308
     290:	0900                	.2byte	0x900
     292:	0018                	.2byte	0x18
     294:	0001                	.2byte	0x1
     296:	0402                	.2byte	0x402
     298:	0308                	.2byte	0x308
     29a:	0900                	.2byte	0x900
     29c:	0000                	.2byte	0x0
     29e:	0001                	.2byte	0x1
     2a0:	0402                	.2byte	0x402
     2a2:	0302                	.2byte	0x302
     2a4:	097e                	.2byte	0x97e
     2a6:	001c                	.2byte	0x1c
     2a8:	0001                	.2byte	0x1
     2aa:	0402                	.2byte	0x402
     2ac:	0900030f          	.4byte	0x900030f
     2b0:	0004                	.2byte	0x4
     2b2:	0001                	.2byte	0x1
     2b4:	0402                	.2byte	0x402
     2b6:	0900030f          	.4byte	0x900030f
     2ba:	0000                	.2byte	0x0
     2bc:	0001                	.2byte	0x1
     2be:	0402                	.2byte	0x402
     2c0:	0900030f          	.4byte	0x900030f
     2c4:	0000                	.2byte	0x0
     2c6:	0001                	.2byte	0x1
     2c8:	0402                	.2byte	0x402
     2ca:	0900030f          	.4byte	0x900030f
     2ce:	0000                	.2byte	0x0
     2d0:	0001                	.2byte	0x1
     2d2:	0402                	.2byte	0x402
     2d4:	0900030f          	.4byte	0x900030f
     2d8:	0000                	.2byte	0x0
     2da:	0001                	.2byte	0x1
     2dc:	0402                	.2byte	0x402
     2de:	0900030f          	.4byte	0x900030f
     2e2:	0000                	.2byte	0x0
     2e4:	0001                	.2byte	0x1
     2e6:	0402                	.2byte	0x402
     2e8:	0900030f          	.4byte	0x900030f
     2ec:	0008                	.2byte	0x8
     2ee:	0001                	.2byte	0x1
     2f0:	0402                	.2byte	0x402
     2f2:	0900030f          	.4byte	0x900030f
     2f6:	0000                	.2byte	0x0
     2f8:	0001                	.2byte	0x1
     2fa:	0402                	.2byte	0x402
     2fc:	0900030f          	.4byte	0x900030f
     300:	0000                	.2byte	0x0
     302:	0001                	.2byte	0x1
     304:	0402                	.2byte	0x402
     306:	0900030f          	.4byte	0x900030f
     30a:	0000                	.2byte	0x0
     30c:	0001                	.2byte	0x1
     30e:	0402                	.2byte	0x402
     310:	0900030f          	.4byte	0x900030f
     314:	0000                	.2byte	0x0
     316:	0001                	.2byte	0x1
     318:	0402                	.2byte	0x402
     31a:	0900030f          	.4byte	0x900030f
     31e:	000c                	.2byte	0xc
     320:	0001                	.2byte	0x1
     322:	0402                	.2byte	0x402
     324:	0900030f          	.4byte	0x900030f
     328:	0000                	.2byte	0x0
     32a:	0001                	.2byte	0x1
     32c:	0402                	.2byte	0x402
     32e:	09000303          	lb	t1,144(zero) # 90 <_stext+0x4>
     332:	0008                	.2byte	0x8
     334:	0601                	.2byte	0x601
     336:	0c090003          	lb	zero,192(s2)
     33a:	0100                	.2byte	0x100
     33c:	0200                	.2byte	0x200
     33e:	0204                	.2byte	0x204
     340:	0306                	.2byte	0x306
     342:	0901                	.2byte	0x901
     344:	0014                	.2byte	0x14
     346:	0001                	.2byte	0x1
     348:	0402                	.2byte	0x402
     34a:	0900030f          	.4byte	0x900030f
     34e:	0004                	.2byte	0x4
     350:	0001                	.2byte	0x1
     352:	0402                	.2byte	0x402
     354:	0900030f          	.4byte	0x900030f
     358:	0000                	.2byte	0x0
     35a:	0001                	.2byte	0x1
     35c:	0402                	.2byte	0x402
     35e:	0900030f          	.4byte	0x900030f
     362:	0000                	.2byte	0x0
     364:	0001                	.2byte	0x1
     366:	0402                	.2byte	0x402
     368:	0900030f          	.4byte	0x900030f
     36c:	0000                	.2byte	0x0
     36e:	0001                	.2byte	0x1
     370:	0402                	.2byte	0x402
     372:	0900030f          	.4byte	0x900030f
     376:	0000                	.2byte	0x0
     378:	0001                	.2byte	0x1
     37a:	0402                	.2byte	0x402
     37c:	0900030f          	.4byte	0x900030f
     380:	0000                	.2byte	0x0
     382:	0001                	.2byte	0x1
     384:	0402                	.2byte	0x402
     386:	0900030f          	.4byte	0x900030f
     38a:	0008                	.2byte	0x8
     38c:	0001                	.2byte	0x1
     38e:	0402                	.2byte	0x402
     390:	0900030f          	.4byte	0x900030f
     394:	0000                	.2byte	0x0
     396:	0001                	.2byte	0x1
     398:	0402                	.2byte	0x402
     39a:	0900030f          	.4byte	0x900030f
     39e:	0000                	.2byte	0x0
     3a0:	0001                	.2byte	0x1
     3a2:	0402                	.2byte	0x402
     3a4:	0900030f          	.4byte	0x900030f
     3a8:	0000                	.2byte	0x0
     3aa:	0001                	.2byte	0x1
     3ac:	0402                	.2byte	0x402
     3ae:	0900030f          	.4byte	0x900030f
     3b2:	0000                	.2byte	0x0
     3b4:	0001                	.2byte	0x1
     3b6:	0402                	.2byte	0x402
     3b8:	0900030f          	.4byte	0x900030f
     3bc:	0008                	.2byte	0x8
     3be:	0001                	.2byte	0x1
     3c0:	0402                	.2byte	0x402
     3c2:	0900030f          	.4byte	0x900030f
     3c6:	0000                	.2byte	0x0
     3c8:	0001                	.2byte	0x1
     3ca:	0402                	.2byte	0x402
     3cc:	09000303          	lb	t1,144(zero) # 90 <_stext+0x4>
     3d0:	000c                	.2byte	0xc
     3d2:	0601                	.2byte	0x601
     3d4:	0c090003          	lb	zero,192(s2)
     3d8:	0100                	.2byte	0x100
     3da:	14097f03          	.4byte	0x14097f03
     3de:	0100                	.2byte	0x100
     3e0:	08090203          	lb	tp,128(s2)
     3e4:	0100                	.2byte	0x100
     3e6:	0200                	.2byte	0x200
     3e8:	2304                	.2byte	0x2304
     3ea:	0306                	.2byte	0x306
     3ec:	0900                	.2byte	0x900
     3ee:	0004                	.2byte	0x4
     3f0:	0001                	.2byte	0x1
     3f2:	0402                	.2byte	0x402
     3f4:	09010323          	sb	a6,134(sp)
     3f8:	0000                	.2byte	0x0
     3fa:	0001                	.2byte	0x1
     3fc:	0402                	.2byte	0x402
     3fe:	09000323          	sb	a6,134(zero) # 86 <__DYNAMIC+0x86>
     402:	0000                	.2byte	0x0
     404:	0001                	.2byte	0x1
     406:	0402                	.2byte	0x402
     408:	09000323          	sb	a6,134(zero) # 86 <__DYNAMIC+0x86>
     40c:	0000                	.2byte	0x0
     40e:	0601                	.2byte	0x601
     410:	08090003          	lb	zero,128(s2)
     414:	0100                	.2byte	0x100
     416:	0200                	.2byte	0x200
     418:	0204                	.2byte	0x204
     41a:	0306                	.2byte	0x306
     41c:	097f 001c 0001 0402 	.byte	0x7f, 0x09, 0x1c, 0x00, 0x01, 0x00, 0x02, 0x04, 0x02, 0x03
     424:	0302 
     426:	0900                	.2byte	0x900
     428:	0000                	.2byte	0x0
     42a:	0001                	.2byte	0x1
     42c:	0402                	.2byte	0x402
     42e:	0302                	.2byte	0x302
     430:	0900                	.2byte	0x900
     432:	0000                	.2byte	0x0
     434:	0001                	.2byte	0x1
     436:	0402                	.2byte	0x402
     438:	0302                	.2byte	0x302
     43a:	0900                	.2byte	0x900
     43c:	0000                	.2byte	0x0
     43e:	0001                	.2byte	0x1
     440:	0402                	.2byte	0x402
     442:	0302                	.2byte	0x302
     444:	0900                	.2byte	0x900
     446:	0000                	.2byte	0x0
     448:	0001                	.2byte	0x1
     44a:	0402                	.2byte	0x402
     44c:	0302                	.2byte	0x302
     44e:	0900                	.2byte	0x900
     450:	0000                	.2byte	0x0
     452:	0001                	.2byte	0x1
     454:	0402                	.2byte	0x402
     456:	0302                	.2byte	0x302
     458:	0900                	.2byte	0x900
     45a:	0000                	.2byte	0x0
     45c:	0001                	.2byte	0x1
     45e:	0402                	.2byte	0x402
     460:	0302                	.2byte	0x302
     462:	0900                	.2byte	0x900
     464:	0000                	.2byte	0x0
     466:	0001                	.2byte	0x1
     468:	0402                	.2byte	0x402
     46a:	0302                	.2byte	0x302
     46c:	0900                	.2byte	0x900
     46e:	0004                	.2byte	0x4
     470:	0001                	.2byte	0x1
     472:	0402                	.2byte	0x402
     474:	030a                	.2byte	0x30a
     476:	0900                	.2byte	0x900
     478:	0004                	.2byte	0x4
     47a:	0001                	.2byte	0x1
     47c:	0402                	.2byte	0x402
     47e:	030a                	.2byte	0x30a
     480:	0900                	.2byte	0x900
     482:	0004                	.2byte	0x4
     484:	0001                	.2byte	0x1
     486:	0402                	.2byte	0x402
     488:	030a                	.2byte	0x30a
     48a:	0900                	.2byte	0x900
     48c:	0000                	.2byte	0x0
     48e:	0001                	.2byte	0x1
     490:	0402                	.2byte	0x402
     492:	030d                	.2byte	0x30d
     494:	0900                	.2byte	0x900
     496:	0004                	.2byte	0x4
     498:	0001                	.2byte	0x1
     49a:	0402                	.2byte	0x402
     49c:	030d                	.2byte	0x30d
     49e:	0900                	.2byte	0x900
     4a0:	0000                	.2byte	0x0
     4a2:	0001                	.2byte	0x1
     4a4:	0402                	.2byte	0x402
     4a6:	030d                	.2byte	0x30d
     4a8:	0900                	.2byte	0x900
     4aa:	0000                	.2byte	0x0
     4ac:	0001                	.2byte	0x1
     4ae:	0402                	.2byte	0x402
     4b0:	030d                	.2byte	0x30d
     4b2:	0900                	.2byte	0x900
     4b4:	0000                	.2byte	0x0
     4b6:	0001                	.2byte	0x1
     4b8:	0402                	.2byte	0x402
     4ba:	030d                	.2byte	0x30d
     4bc:	0900                	.2byte	0x900
     4be:	0004                	.2byte	0x4
     4c0:	0001                	.2byte	0x1
     4c2:	0402                	.2byte	0x402
     4c4:	030d                	.2byte	0x30d
     4c6:	0900                	.2byte	0x900
     4c8:	0010                	.2byte	0x10
     4ca:	0001                	.2byte	0x1
     4cc:	0402                	.2byte	0x402
     4ce:	030d                	.2byte	0x30d
     4d0:	0900                	.2byte	0x900
     4d2:	0000                	.2byte	0x0
     4d4:	0001                	.2byte	0x1
     4d6:	0402                	.2byte	0x402
     4d8:	030d                	.2byte	0x30d
     4da:	0900                	.2byte	0x900
     4dc:	0000                	.2byte	0x0
     4de:	0001                	.2byte	0x1
     4e0:	0402                	.2byte	0x402
     4e2:	030d                	.2byte	0x30d
     4e4:	0900                	.2byte	0x900
     4e6:	0010                	.2byte	0x10
     4e8:	0001                	.2byte	0x1
     4ea:	0402                	.2byte	0x402
     4ec:	030d                	.2byte	0x30d
     4ee:	0900                	.2byte	0x900
     4f0:	0008                	.2byte	0x8
     4f2:	0001                	.2byte	0x1
     4f4:	0402                	.2byte	0x402
     4f6:	030e                	.2byte	0x30e
     4f8:	0900                	.2byte	0x900
     4fa:	0004                	.2byte	0x4
     4fc:	0001                	.2byte	0x1
     4fe:	0402                	.2byte	0x402
     500:	030e                	.2byte	0x30e
     502:	0900                	.2byte	0x900
     504:	0008                	.2byte	0x8
     506:	0001                	.2byte	0x1
     508:	0402                	.2byte	0x402
     50a:	0310                	.2byte	0x310
     50c:	0900                	.2byte	0x900
     50e:	0004                	.2byte	0x4
     510:	0001                	.2byte	0x1
     512:	0402                	.2byte	0x402
     514:	0312                	.2byte	0x312
     516:	0900                	.2byte	0x900
     518:	0004                	.2byte	0x4
     51a:	0001                	.2byte	0x1
     51c:	0402                	.2byte	0x402
     51e:	0314                	.2byte	0x314
     520:	0900                	.2byte	0x900
     522:	0008                	.2byte	0x8
     524:	0001                	.2byte	0x1
     526:	0402                	.2byte	0x402
     528:	0314                	.2byte	0x314
     52a:	0900                	.2byte	0x900
     52c:	0004                	.2byte	0x4
     52e:	0001                	.2byte	0x1
     530:	0402                	.2byte	0x402
     532:	0314                	.2byte	0x314
     534:	0900                	.2byte	0x900
     536:	0000                	.2byte	0x0
     538:	0001                	.2byte	0x1
     53a:	0402                	.2byte	0x402
     53c:	0314                	.2byte	0x314
     53e:	0900                	.2byte	0x900
     540:	0004                	.2byte	0x4
     542:	0001                	.2byte	0x1
     544:	0402                	.2byte	0x402
     546:	0314                	.2byte	0x314
     548:	0900                	.2byte	0x900
     54a:	0008                	.2byte	0x8
     54c:	0001                	.2byte	0x1
     54e:	0402                	.2byte	0x402
     550:	0314                	.2byte	0x314
     552:	0900                	.2byte	0x900
     554:	0004                	.2byte	0x4
     556:	0001                	.2byte	0x1
     558:	0402                	.2byte	0x402
     55a:	0315                	.2byte	0x315
     55c:	0900                	.2byte	0x900
     55e:	0008                	.2byte	0x8
     560:	0001                	.2byte	0x1
     562:	0402                	.2byte	0x402
     564:	0315                	.2byte	0x315
     566:	0900                	.2byte	0x900
     568:	0010                	.2byte	0x10
     56a:	0001                	.2byte	0x1
     56c:	0402                	.2byte	0x402
     56e:	09000317          	auipc	t1,0x9000
     572:	0004                	.2byte	0x4
     574:	0001                	.2byte	0x1
     576:	0402                	.2byte	0x402
     578:	0319                	.2byte	0x319
     57a:	0900                	.2byte	0x900
     57c:	0004                	.2byte	0x4
     57e:	0001                	.2byte	0x1
     580:	0402                	.2byte	0x402
     582:	0900031b          	.4byte	0x900031b
     586:	0008                	.2byte	0x8
     588:	0001                	.2byte	0x1
     58a:	0402                	.2byte	0x402
     58c:	0900031b          	.4byte	0x900031b
     590:	0000                	.2byte	0x0
     592:	0001                	.2byte	0x1
     594:	0402                	.2byte	0x402
     596:	0900031b          	.4byte	0x900031b
     59a:	0000                	.2byte	0x0
     59c:	0001                	.2byte	0x1
     59e:	0402                	.2byte	0x402
     5a0:	0900031b          	.4byte	0x900031b
     5a4:	0000                	.2byte	0x0
     5a6:	0001                	.2byte	0x1
     5a8:	0402                	.2byte	0x402
     5aa:	0900031b          	.4byte	0x900031b
     5ae:	0000                	.2byte	0x0
     5b0:	0001                	.2byte	0x1
     5b2:	0402                	.2byte	0x402
     5b4:	0900031b          	.4byte	0x900031b
     5b8:	0014                	.2byte	0x14
     5ba:	0001                	.2byte	0x1
     5bc:	0402                	.2byte	0x402
     5be:	0900031b          	.4byte	0x900031b
     5c2:	0000                	.2byte	0x0
     5c4:	0001                	.2byte	0x1
     5c6:	0402                	.2byte	0x402
     5c8:	0900031b          	.4byte	0x900031b
     5cc:	0000                	.2byte	0x0
     5ce:	0001                	.2byte	0x1
     5d0:	0402                	.2byte	0x402
     5d2:	0901031b          	.4byte	0x901031b
     5d6:	0000                	.2byte	0x0
     5d8:	0001                	.2byte	0x1
     5da:	0402                	.2byte	0x402
     5dc:	0900031b          	.4byte	0x900031b
     5e0:	0000                	.2byte	0x0
     5e2:	0001                	.2byte	0x1
     5e4:	0402                	.2byte	0x402
     5e6:	0900031b          	.4byte	0x900031b
     5ea:	0000                	.2byte	0x0
     5ec:	0001                	.2byte	0x1
     5ee:	0402                	.2byte	0x402
     5f0:	0302                	.2byte	0x302
     5f2:	0900                	.2byte	0x900
     5f4:	0000                	.2byte	0x0
     5f6:	0001                	.2byte	0x1
     5f8:	0402                	.2byte	0x402
     5fa:	0302                	.2byte	0x302
     5fc:	0900                	.2byte	0x900
     5fe:	0004                	.2byte	0x4
     600:	0001                	.2byte	0x1
     602:	0402                	.2byte	0x402
     604:	0306                	.2byte	0x306
     606:	0900                	.2byte	0x900
     608:	0004                	.2byte	0x4
     60a:	0001                	.2byte	0x1
     60c:	0402                	.2byte	0x402
     60e:	0306                	.2byte	0x306
     610:	0900                	.2byte	0x900
     612:	0000                	.2byte	0x0
     614:	0001                	.2byte	0x1
     616:	0402                	.2byte	0x402
     618:	0308                	.2byte	0x308
     61a:	0900                	.2byte	0x900
     61c:	0008                	.2byte	0x8
     61e:	0001                	.2byte	0x1
     620:	0402                	.2byte	0x402
     622:	0308                	.2byte	0x308
     624:	0900                	.2byte	0x900
     626:	0000                	.2byte	0x0
     628:	0001                	.2byte	0x1
     62a:	0402                	.2byte	0x402
     62c:	0308                	.2byte	0x308
     62e:	0900                	.2byte	0x900
     630:	0000                	.2byte	0x0
     632:	0001                	.2byte	0x1
     634:	0402                	.2byte	0x402
     636:	0308                	.2byte	0x308
     638:	0900                	.2byte	0x900
     63a:	0000                	.2byte	0x0
     63c:	0001                	.2byte	0x1
     63e:	0402                	.2byte	0x402
     640:	030a                	.2byte	0x30a
     642:	0900                	.2byte	0x900
     644:	000c                	.2byte	0xc
     646:	0001                	.2byte	0x1
     648:	0402                	.2byte	0x402
     64a:	0309                	.2byte	0x309
     64c:	0900                	.2byte	0x900
     64e:	0004                	.2byte	0x4
     650:	0001                	.2byte	0x1
     652:	0402                	.2byte	0x402
     654:	0309                	.2byte	0x309
     656:	0900                	.2byte	0x900
     658:	0000                	.2byte	0x0
     65a:	0001                	.2byte	0x1
     65c:	0402                	.2byte	0x402
     65e:	0318                	.2byte	0x318
     660:	0900                	.2byte	0x900
     662:	000c                	.2byte	0xc
     664:	0001                	.2byte	0x1
     666:	0402                	.2byte	0x402
     668:	0318                	.2byte	0x318
     66a:	0900                	.2byte	0x900
     66c:	000c                	.2byte	0xc
     66e:	0001                	.2byte	0x1
     670:	0402                	.2byte	0x402
     672:	031a                	.2byte	0x31a
     674:	0900                	.2byte	0x900
     676:	0004                	.2byte	0x4
     678:	0001                	.2byte	0x1
     67a:	0402                	.2byte	0x402
     67c:	031a                	.2byte	0x31a
     67e:	0900                	.2byte	0x900
     680:	0000                	.2byte	0x0
     682:	0601                	.2byte	0x601
     684:	08090003          	lb	zero,128(s2)
     688:	0100                	.2byte	0x100
     68a:	0200                	.2byte	0x200
     68c:	6f04                	.2byte	0x6f04
     68e:	0306                	.2byte	0x306
     690:	0900                	.2byte	0x900
     692:	0004                	.2byte	0x4
     694:	0001                	.2byte	0x1
     696:	0402                	.2byte	0x402
     698:	0900036f          	jal	t1,728 <set_gpio_pin_irq_en+0x2c>
     69c:	0000                	.2byte	0x0
     69e:	0001                	.2byte	0x1
     6a0:	0402                	.2byte	0x402
     6a2:	0900036f          	jal	t1,732 <set_gpio_pin_irq_en+0x36>
     6a6:	0000                	.2byte	0x0
     6a8:	0001                	.2byte	0x1
     6aa:	0402                	.2byte	0x402
     6ac:	0900036f          	jal	t1,73c <set_gpio_pin_irq_en+0x40>
     6b0:	0000                	.2byte	0x0
     6b2:	0001                	.2byte	0x1
     6b4:	0402                	.2byte	0x402
     6b6:	0900036f          	jal	t1,746 <set_gpio_pin_irq_en+0x4a>
     6ba:	0000                	.2byte	0x0
     6bc:	0001                	.2byte	0x1
     6be:	0402                	.2byte	0x402
     6c0:	0900036f          	jal	t1,750 <set_gpio_pin_irq_en+0x54>
     6c4:	0000                	.2byte	0x0
     6c6:	0501                	.2byte	0x501
     6c8:	0001                	.2byte	0x1
     6ca:	0402                	.2byte	0x402
     6cc:	0403066f          	jal	a2,3070c <__libc_init_array+0x2e518>
     6d0:	0009                	.2byte	0x9
     6d2:	0100                	.2byte	0x100
     6d4:	0305                	.2byte	0x305
     6d6:	0200                	.2byte	0x200
     6d8:	6f04                	.2byte	0x6f04
     6da:	08097c03          	.4byte	0x8097c03
     6de:	0100                	.2byte	0x100
     6e0:	0200                	.2byte	0x200
     6e2:	6f04                	.2byte	0x6f04
     6e4:	0306                	.2byte	0x306
     6e6:	0900                	.2byte	0x900
     6e8:	0014                	.2byte	0x14
     6ea:	0001                	.2byte	0x1
     6ec:	0402                	.2byte	0x402
     6ee:	0900036f          	jal	t1,77e <set_gpio_pin_irq_type+0x20>
     6f2:	0000                	.2byte	0x0
     6f4:	0001                	.2byte	0x1
     6f6:	0402                	.2byte	0x402
     6f8:	0900036f          	jal	t1,788 <set_gpio_pin_irq_type+0x2a>
     6fc:	0000                	.2byte	0x0
     6fe:	0001                	.2byte	0x1
     700:	0402                	.2byte	0x402
     702:	0901036f          	jal	t1,10792 <__libc_init_array+0xe59e>
     706:	0000                	.2byte	0x0
     708:	0001                	.2byte	0x1
     70a:	0402                	.2byte	0x402
     70c:	0900036f          	jal	t1,79c <set_gpio_pin_irq_type+0x3e>
     710:	0000                	.2byte	0x0
     712:	0001                	.2byte	0x1
     714:	0402                	.2byte	0x402
     716:	0900036f          	jal	t1,7a6 <set_gpio_pin_irq_type+0x48>
     71a:	0000                	.2byte	0x0
     71c:	0001                	.2byte	0x1
     71e:	0402                	.2byte	0x402
     720:	0902036f          	jal	t1,207b0 <__libc_init_array+0x1e5bc>
     724:	0000                	.2byte	0x0
     726:	0501                	.2byte	0x501
     728:	0001                	.2byte	0x1
     72a:	0402                	.2byte	0x402
     72c:	0103066f          	jal	a2,3073c <__libc_init_array+0x2e548>
     730:	0009                	.2byte	0x9
     732:	0100                	.2byte	0x100
     734:	0305                	.2byte	0x305
     736:	0200                	.2byte	0x200
     738:	0b04                	.2byte	0xb04
     73a:	0306                	.2byte	0x306
     73c:	0020097b          	.4byte	0x20097b
     740:	0001                	.2byte	0x1
     742:	0402                	.2byte	0x402
     744:	0900030b          	.4byte	0x900030b
     748:	0004                	.2byte	0x4
     74a:	0001                	.2byte	0x1
     74c:	0402                	.2byte	0x402
     74e:	0605                	.2byte	0x605
     750:	08097f03          	.4byte	0x8097f03
     754:	0100                	.2byte	0x100
     756:	0200                	.2byte	0x200
     758:	0504                	.2byte	0x504
     75a:	0306                	.2byte	0x306
     75c:	0901                	.2byte	0x901
     75e:	0004                	.2byte	0x4
     760:	0001                	.2byte	0x1
     762:	0402                	.2byte	0x402
     764:	0305                	.2byte	0x305
     766:	0900                	.2byte	0x900
     768:	0000                	.2byte	0x0
     76a:	0001                	.2byte	0x1
     76c:	0402                	.2byte	0x402
     76e:	0305                	.2byte	0x305
     770:	0900                	.2byte	0x900
     772:	0000                	.2byte	0x0
     774:	0001                	.2byte	0x1
     776:	0402                	.2byte	0x402
     778:	0305                	.2byte	0x305
     77a:	0900                	.2byte	0x900
     77c:	0000                	.2byte	0x0
     77e:	0001                	.2byte	0x1
     780:	0402                	.2byte	0x402
     782:	09010307          	.4byte	0x9010307
     786:	0004                	.2byte	0x4
     788:	0001                	.2byte	0x1
     78a:	0402                	.2byte	0x402
     78c:	09000307          	.4byte	0x9000307
     790:	0000                	.2byte	0x0
     792:	0001                	.2byte	0x1
     794:	0402                	.2byte	0x402
     796:	0900033b          	.4byte	0x900033b
     79a:	0008                	.2byte	0x8
     79c:	0001                	.2byte	0x1
     79e:	0402                	.2byte	0x402
     7a0:	0900033b          	.4byte	0x900033b
     7a4:	0004                	.2byte	0x4
     7a6:	0001                	.2byte	0x1
     7a8:	0402                	.2byte	0x402
     7aa:	033c                	.2byte	0x33c
     7ac:	0900                	.2byte	0x900
     7ae:	0010                	.2byte	0x10
     7b0:	0001                	.2byte	0x1
     7b2:	0402                	.2byte	0x402
     7b4:	033c                	.2byte	0x33c
     7b6:	0900                	.2byte	0x900
     7b8:	0014                	.2byte	0x14
     7ba:	0001                	.2byte	0x1
     7bc:	0402                	.2byte	0x402
     7be:	033c                	.2byte	0x33c
     7c0:	0900                	.2byte	0x900
     7c2:	0000                	.2byte	0x0
     7c4:	0001                	.2byte	0x1
     7c6:	0402                	.2byte	0x402
     7c8:	0344                	.2byte	0x344
     7ca:	0900                	.2byte	0x900
     7cc:	0008                	.2byte	0x8
     7ce:	0001                	.2byte	0x1
     7d0:	0402                	.2byte	0x402
     7d2:	0344                	.2byte	0x344
     7d4:	0900                	.2byte	0x900
     7d6:	0000                	.2byte	0x0
     7d8:	0001                	.2byte	0x1
     7da:	0402                	.2byte	0x402
     7dc:	0344                	.2byte	0x344
     7de:	0900                	.2byte	0x900
     7e0:	0000                	.2byte	0x0
     7e2:	0001                	.2byte	0x1
     7e4:	0402                	.2byte	0x402
     7e6:	0344                	.2byte	0x344
     7e8:	0900                	.2byte	0x900
     7ea:	0000                	.2byte	0x0
     7ec:	0001                	.2byte	0x1
     7ee:	0402                	.2byte	0x402
     7f0:	0346                	.2byte	0x346
     7f2:	0900                	.2byte	0x900
     7f4:	000c                	.2byte	0xc
     7f6:	0001                	.2byte	0x1
     7f8:	0402                	.2byte	0x402
     7fa:	0345                	.2byte	0x345
     7fc:	0900                	.2byte	0x900
     7fe:	0004                	.2byte	0x4
     800:	0001                	.2byte	0x1
     802:	0402                	.2byte	0x402
     804:	0345                	.2byte	0x345
     806:	0900                	.2byte	0x900
     808:	0000                	.2byte	0x0
     80a:	0601                	.2byte	0x601
     80c:	10090003          	lb	zero,256(s2)
     810:	0100                	.2byte	0x100
     812:	2809                	.2byte	0x2809
     814:	0000                	.2byte	0x0
     816:	0101                	.2byte	0x101
     818:	02f2                	.2byte	0x2f2
     81a:	0000                	.2byte	0x0
     81c:	0005                	.2byte	0x5
     81e:	0004                	.2byte	0x4
     820:	003c                	.2byte	0x3c
     822:	0000                	.2byte	0x0
     824:	0101                	.2byte	0x101
     826:	fb01                	.2byte	0xfb01
     828:	0d0e                	.2byte	0xd0e
     82a:	0100                	.2byte	0x100
     82c:	0101                	.2byte	0x101
     82e:	0001                	.2byte	0x1
     830:	0000                	.2byte	0x0
     832:	0001                	.2byte	0x1
     834:	0100                	.2byte	0x100
     836:	0101                	.2byte	0x101
     838:	031f 0000 0000      	.byte	0x1f, 0x03, 0x00, 0x00, 0x00, 0x00
     83e:	00a4                	.2byte	0xa4
     840:	0000                	.2byte	0x0
     842:	00000123          	sb	zero,2(zero) # 2 <__DYNAMIC+0x2>
     846:	0102                	.2byte	0x102
     848:	021f 040f 011b      	.byte	0x1f, 0x02, 0x0f, 0x04, 0x1b, 0x01
     84e:	0000                	.2byte	0x0
     850:	1b01                	.2byte	0x1b01
     852:	0001                	.2byte	0x1
     854:	0100                	.2byte	0x100
     856:	0125                	.2byte	0x125
     858:	0000                	.2byte	0x0
     85a:	db02                	.2byte	0xdb02
     85c:	0000                	.2byte	0x0
     85e:	0100                	.2byte	0x100
     860:	0105                	.2byte	0x105
     862:	0500                	.2byte	0x500
     864:	4802                	.2byte	0x4802
     866:	03000017          	auipc	zero,0x3000
     86a:	03050123          	sb	a6,34(a0)
     86e:	00090103          	lb	sp,0(s2)
     872:	0100                	.2byte	0x100
     874:	00090003          	lb	zero,0(s2)
     878:	0100                	.2byte	0x100
     87a:	0d05                	.2byte	0xd05
     87c:	00090003          	lb	zero,0(s2)
     880:	0100                	.2byte	0x100
     882:	0305                	.2byte	0x305
     884:	00090103          	lb	sp,0(s2)
     888:	0100                	.2byte	0x100
     88a:	00090003          	lb	zero,0(s2)
     88e:	0100                	.2byte	0x100
     890:	00090003          	lb	zero,0(s2)
     894:	0100                	.2byte	0x100
     896:	00090003          	lb	zero,0(s2)
     89a:	0100                	.2byte	0x100
     89c:	00090103          	lb	sp,0(s2)
     8a0:	0100                	.2byte	0x100
     8a2:	00090003          	lb	zero,0(s2)
     8a6:	0100                	.2byte	0x100
     8a8:	00090003          	lb	zero,0(s2)
     8ac:	0100                	.2byte	0x100
     8ae:	00090003          	lb	zero,0(s2)
     8b2:	0100                	.2byte	0x100
     8b4:	00090103          	lb	sp,0(s2)
     8b8:	0100                	.2byte	0x100
     8ba:	00090203          	lb	tp,0(s2)
     8be:	0100                	.2byte	0x100
     8c0:	00090103          	lb	sp,0(s2)
     8c4:	0100                	.2byte	0x100
     8c6:	00090003          	lb	zero,0(s2)
     8ca:	0100                	.2byte	0x100
     8cc:	00090003          	lb	zero,0(s2)
     8d0:	0100                	.2byte	0x100
     8d2:	00090003          	lb	zero,0(s2)
     8d6:	0100                	.2byte	0x100
     8d8:	10090003          	lb	zero,256(s2)
     8dc:	0100                	.2byte	0x100
     8de:	08090003          	lb	zero,128(s2)
     8e2:	0100                	.2byte	0x100
     8e4:	00090003          	lb	zero,0(s2)
     8e8:	0100                	.2byte	0x100
     8ea:	00090103          	lb	sp,0(s2)
     8ee:	0100                	.2byte	0x100
     8f0:	00090003          	lb	zero,0(s2)
     8f4:	0100                	.2byte	0x100
     8f6:	00090003          	lb	zero,0(s2)
     8fa:	0100                	.2byte	0x100
     8fc:	00090003          	lb	zero,0(s2)
     900:	0100                	.2byte	0x100
     902:	0306                	.2byte	0x306
     904:	0901                	.2byte	0x901
     906:	0004                	.2byte	0x4
     908:	0301                	.2byte	0x301
     90a:	097f 0004 0601 0003 	.byte	0x7f, 0x09, 0x04, 0x00, 0x01, 0x06, 0x03, 0x00, 0x09, 0x04
     912:	0409 
     914:	0100                	.2byte	0x100
     916:	04090003          	lb	zero,64(s2)
     91a:	0100                	.2byte	0x100
     91c:	04090003          	lb	zero,64(s2)
     920:	0100                	.2byte	0x100
     922:	00090103          	lb	sp,0(s2)
     926:	0100                	.2byte	0x100
     928:	00090003          	lb	zero,0(s2)
     92c:	0100                	.2byte	0x100
     92e:	00090003          	lb	zero,0(s2)
     932:	0100                	.2byte	0x100
     934:	00090003          	lb	zero,0(s2)
     938:	0100                	.2byte	0x100
     93a:	00090003          	lb	zero,0(s2)
     93e:	0100                	.2byte	0x100
     940:	0200                	.2byte	0x200
     942:	1404                	.2byte	0x1404
     944:	0306                	.2byte	0x306
     946:	0900                	.2byte	0x900
     948:	0004                	.2byte	0x4
     94a:	0301                	.2byte	0x301
     94c:	0900                	.2byte	0x900
     94e:	0004                	.2byte	0x4
     950:	0001                	.2byte	0x1
     952:	0402                	.2byte	0x402
     954:	00030673          	.4byte	0x30673
     958:	0409                	.2byte	0x409
     95a:	0100                	.2byte	0x100
     95c:	0306                	.2byte	0x306
     95e:	0900                	.2byte	0x900
     960:	0008                	.2byte	0x8
     962:	0601                	.2byte	0x601
     964:	10090003          	lb	zero,256(s2)
     968:	0100                	.2byte	0x100
     96a:	00090003          	lb	zero,0(s2)
     96e:	0100                	.2byte	0x100
     970:	0200                	.2byte	0x200
     972:	1704                	.2byte	0x1704
     974:	0306                	.2byte	0x306
     976:	0900                	.2byte	0x900
     978:	000c                	.2byte	0xc
     97a:	0001                	.2byte	0x1
     97c:	0402                	.2byte	0x402
     97e:	0318                	.2byte	0x318
     980:	0900                	.2byte	0x900
     982:	0004                	.2byte	0x4
     984:	0601                	.2byte	0x601
     986:	08090003          	lb	zero,128(s2)
     98a:	0100                	.2byte	0x100
     98c:	00090003          	lb	zero,0(s2)
     990:	0100                	.2byte	0x100
     992:	00090003          	lb	zero,0(s2)
     996:	0100                	.2byte	0x100
     998:	00090003          	lb	zero,0(s2)
     99c:	0100                	.2byte	0x100
     99e:	00090003          	lb	zero,0(s2)
     9a2:	0100                	.2byte	0x100
     9a4:	00090003          	lb	zero,0(s2)
     9a8:	0100                	.2byte	0x100
     9aa:	00090003          	lb	zero,0(s2)
     9ae:	0100                	.2byte	0x100
     9b0:	00090003          	lb	zero,0(s2)
     9b4:	0100                	.2byte	0x100
     9b6:	00090003          	lb	zero,0(s2)
     9ba:	0100                	.2byte	0x100
     9bc:	00090003          	lb	zero,0(s2)
     9c0:	0100                	.2byte	0x100
     9c2:	00090003          	lb	zero,0(s2)
     9c6:	0100                	.2byte	0x100
     9c8:	00090003          	lb	zero,0(s2)
     9cc:	0100                	.2byte	0x100
     9ce:	04090003          	lb	zero,64(s2)
     9d2:	0100                	.2byte	0x100
     9d4:	04090003          	lb	zero,64(s2)
     9d8:	0100                	.2byte	0x100
     9da:	00090003          	lb	zero,0(s2)
     9de:	0100                	.2byte	0x100
     9e0:	00090003          	lb	zero,0(s2)
     9e4:	0100                	.2byte	0x100
     9e6:	0200                	.2byte	0x200
     9e8:	7a04                	.2byte	0x7a04
     9ea:	04090003          	lb	zero,64(s2)
     9ee:	0100                	.2byte	0x100
     9f0:	0306                	.2byte	0x306
     9f2:	0900                	.2byte	0x900
     9f4:	0008                	.2byte	0x8
     9f6:	0001                	.2byte	0x1
     9f8:	0402                	.2byte	0x402
     9fa:	063e                	.2byte	0x63e
     9fc:	08090003          	lb	zero,128(s2)
     a00:	0100                	.2byte	0x100
     a02:	0200                	.2byte	0x200
     a04:	3e04                	.2byte	0x3e04
     a06:	00090003          	lb	zero,0(s2)
     a0a:	0100                	.2byte	0x100
     a0c:	0200                	.2byte	0x200
     a0e:	3e04                	.2byte	0x3e04
     a10:	00090003          	lb	zero,0(s2)
     a14:	0100                	.2byte	0x100
     a16:	0200                	.2byte	0x200
     a18:	3e04                	.2byte	0x3e04
     a1a:	00090003          	lb	zero,0(s2)
     a1e:	0100                	.2byte	0x100
     a20:	0200                	.2byte	0x200
     a22:	3e04                	.2byte	0x3e04
     a24:	00090003          	lb	zero,0(s2)
     a28:	0100                	.2byte	0x100
     a2a:	0200                	.2byte	0x200
     a2c:	3e04                	.2byte	0x3e04
     a2e:	00090003          	lb	zero,0(s2)
     a32:	0100                	.2byte	0x100
     a34:	0200                	.2byte	0x200
     a36:	3e04                	.2byte	0x3e04
     a38:	00090003          	lb	zero,0(s2)
     a3c:	0100                	.2byte	0x100
     a3e:	0200                	.2byte	0x200
     a40:	3e04                	.2byte	0x3e04
     a42:	00090003          	lb	zero,0(s2)
     a46:	0100                	.2byte	0x100
     a48:	0200                	.2byte	0x200
     a4a:	3e04                	.2byte	0x3e04
     a4c:	00090003          	lb	zero,0(s2)
     a50:	0100                	.2byte	0x100
     a52:	0200                	.2byte	0x200
     a54:	3e04                	.2byte	0x3e04
     a56:	00090003          	lb	zero,0(s2)
     a5a:	0100                	.2byte	0x100
     a5c:	0200                	.2byte	0x200
     a5e:	3e04                	.2byte	0x3e04
     a60:	00090003          	lb	zero,0(s2)
     a64:	0100                	.2byte	0x100
     a66:	0200                	.2byte	0x200
     a68:	3e04                	.2byte	0x3e04
     a6a:	00090003          	lb	zero,0(s2)
     a6e:	0100                	.2byte	0x100
     a70:	04090003          	lb	zero,64(s2)
     a74:	0100                	.2byte	0x100
     a76:	0200                	.2byte	0x200
     a78:	5804                	.2byte	0x5804
     a7a:	04090003          	lb	zero,64(s2)
     a7e:	0100                	.2byte	0x100
     a80:	0200                	.2byte	0x200
     a82:	5804                	.2byte	0x5804
     a84:	00090003          	lb	zero,0(s2)
     a88:	0100                	.2byte	0x100
     a8a:	0200                	.2byte	0x200
     a8c:	5f04                	.2byte	0x5f04
     a8e:	04090003          	lb	zero,64(s2)
     a92:	0100                	.2byte	0x100
     a94:	0200                	.2byte	0x200
     a96:	6604                	.2byte	0x6604
     a98:	04090003          	lb	zero,64(s2)
     a9c:	0100                	.2byte	0x100
     a9e:	0200                	.2byte	0x200
     aa0:	6d04                	.2byte	0x6d04
     aa2:	04090003          	lb	zero,64(s2)
     aa6:	0100                	.2byte	0x100
     aa8:	0200                	.2byte	0x200
     aaa:	7404                	.2byte	0x7404
     aac:	04090003          	lb	zero,64(s2)
     ab0:	0100                	.2byte	0x100
     ab2:	0c090003          	lb	zero,192(s2)
     ab6:	0100                	.2byte	0x100
     ab8:	0200                	.2byte	0x200
     aba:	4504                	.2byte	0x4504
     abc:	0306                	.2byte	0x306
     abe:	0900                	.2byte	0x900
     ac0:	0004                	.2byte	0x4
     ac2:	0601                	.2byte	0x601
     ac4:	04090003          	lb	zero,64(s2)
     ac8:	0100                	.2byte	0x100
     aca:	0105                	.2byte	0x105
     acc:	0306                	.2byte	0x306
     ace:	0904                	.2byte	0x904
     ad0:	0004                	.2byte	0x4
     ad2:	0501                	.2byte	0x501
     ad4:	04020003          	lb	zero,64(tp) # 34b0f4a <_stack_start+0x33a8f4a>
     ad8:	0648                	.2byte	0x648
     ada:	04097c03          	.4byte	0x4097c03
     ade:	0100                	.2byte	0x100
     ae0:	0200                	.2byte	0x200
     ae2:	5004                	.2byte	0x5004
     ae4:	04090003          	lb	zero,64(s2)
     ae8:	0100                	.2byte	0x100
     aea:	0200                	.2byte	0x200
     aec:	5004                	.2byte	0x5004
     aee:	00090003          	lb	zero,0(s2)
     af2:	0100                	.2byte	0x100
     af4:	0306                	.2byte	0x306
     af6:	0900                	.2byte	0x900
     af8:	0008                	.2byte	0x8
     afa:	0601                	.2byte	0x601
     afc:	10090003          	lb	zero,256(s2)
     b00:	0100                	.2byte	0x100
     b02:	00090003          	lb	zero,0(s2)
     b06:	0100                	.2byte	0x100
     b08:	0809                	.2byte	0x809
     b0a:	0000                	.2byte	0x0
     b0c:	0101                	.2byte	0x101
     b0e:	00000777          	.4byte	0x777
     b12:	0005                	.2byte	0x5
     b14:	0004                	.2byte	0x4
     b16:	0038                	.2byte	0x38
     b18:	0000                	.2byte	0x0
     b1a:	0101                	.2byte	0x101
     b1c:	fb01                	.2byte	0xfb01
     b1e:	0d0e                	.2byte	0xd0e
     b20:	0100                	.2byte	0x100
     b22:	0101                	.2byte	0x101
     b24:	0001                	.2byte	0x1
     b26:	0000                	.2byte	0x0
     b28:	0001                	.2byte	0x1
     b2a:	0100                	.2byte	0x100
     b2c:	0101                	.2byte	0x101
     b2e:	021f 0000 0000      	.byte	0x1f, 0x02, 0x00, 0x00, 0x00, 0x00
     b34:	00a4                	.2byte	0xa4
     b36:	0000                	.2byte	0x0
     b38:	0102                	.2byte	0x102
     b3a:	021f 040f 016a      	.byte	0x1f, 0x02, 0x0f, 0x04, 0x6a, 0x01
     b40:	0000                	.2byte	0x0
     b42:	6a01                	.2byte	0x6a01
     b44:	0001                	.2byte	0x1
     b46:	0100                	.2byte	0x100
     b48:	00000173          	.4byte	0x173
     b4c:	db01                	.2byte	0xdb01
     b4e:	0000                	.2byte	0x0
     b50:	0100                	.2byte	0x100
     b52:	0105                	.2byte	0x105
     b54:	0500                	.2byte	0x500
     b56:	2402                	.2byte	0x2402
     b58:	0018                	.2byte	0x18
     b5a:	0300                	.2byte	0x300
     b5c:	03050123          	sb	a6,34(a0)
     b60:	00090103          	lb	sp,0(s2)
     b64:	0100                	.2byte	0x100
     b66:	00090003          	lb	zero,0(s2)
     b6a:	0100                	.2byte	0x100
     b6c:	0d05                	.2byte	0xd05
     b6e:	00090003          	lb	zero,0(s2)
     b72:	0100                	.2byte	0x100
     b74:	0305                	.2byte	0x305
     b76:	00090103          	lb	sp,0(s2)
     b7a:	0100                	.2byte	0x100
     b7c:	00090003          	lb	zero,0(s2)
     b80:	0100                	.2byte	0x100
     b82:	00090003          	lb	zero,0(s2)
     b86:	0100                	.2byte	0x100
     b88:	00090003          	lb	zero,0(s2)
     b8c:	0100                	.2byte	0x100
     b8e:	00090103          	lb	sp,0(s2)
     b92:	0100                	.2byte	0x100
     b94:	00090003          	lb	zero,0(s2)
     b98:	0100                	.2byte	0x100
     b9a:	00090003          	lb	zero,0(s2)
     b9e:	0100                	.2byte	0x100
     ba0:	00090003          	lb	zero,0(s2)
     ba4:	0100                	.2byte	0x100
     ba6:	00090103          	lb	sp,0(s2)
     baa:	0100                	.2byte	0x100
     bac:	00090003          	lb	zero,0(s2)
     bb0:	0100                	.2byte	0x100
     bb2:	00090003          	lb	zero,0(s2)
     bb6:	0100                	.2byte	0x100
     bb8:	00090003          	lb	zero,0(s2)
     bbc:	0100                	.2byte	0x100
     bbe:	00090103          	lb	sp,0(s2)
     bc2:	0100                	.2byte	0x100
     bc4:	00090203          	lb	tp,0(s2)
     bc8:	0100                	.2byte	0x100
     bca:	00090103          	lb	sp,0(s2)
     bce:	0100                	.2byte	0x100
     bd0:	00090003          	lb	zero,0(s2)
     bd4:	0100                	.2byte	0x100
     bd6:	00090003          	lb	zero,0(s2)
     bda:	0100                	.2byte	0x100
     bdc:	00090003          	lb	zero,0(s2)
     be0:	0100                	.2byte	0x100
     be2:	00090003          	lb	zero,0(s2)
     be6:	0100                	.2byte	0x100
     be8:	0105                	.2byte	0x105
     bea:	0306                	.2byte	0x306
     bec:	0978                	.2byte	0x978
     bee:	0000                	.2byte	0x0
     bf0:	0501                	.2byte	0x501
     bf2:	09080303          	lb	t1,144(a6)
     bf6:	0018                	.2byte	0x18
     bf8:	0501                	.2byte	0x501
     bfa:	0301                	.2byte	0x301
     bfc:	0978                	.2byte	0x978
     bfe:	0004                	.2byte	0x4
     c00:	0301                	.2byte	0x301
     c02:	0900                	.2byte	0x900
     c04:	0010                	.2byte	0x10
     c06:	0501                	.2byte	0x501
     c08:	09080303          	lb	t1,144(a6)
     c0c:	0004                	.2byte	0x4
     c0e:	0601                	.2byte	0x601
     c10:	04090003          	lb	zero,64(s2)
     c14:	0100                	.2byte	0x100
     c16:	00090003          	lb	zero,0(s2)
     c1a:	0100                	.2byte	0x100
     c1c:	04090003          	lb	zero,64(s2)
     c20:	0100                	.2byte	0x100
     c22:	00090003          	lb	zero,0(s2)
     c26:	0100                	.2byte	0x100
     c28:	00090003          	lb	zero,0(s2)
     c2c:	0100                	.2byte	0x100
     c2e:	0200                	.2byte	0x200
     c30:	0104                	.2byte	0x104
     c32:	0c090003          	lb	zero,192(s2)
     c36:	0100                	.2byte	0x100
     c38:	0200                	.2byte	0x200
     c3a:	0104                	.2byte	0x104
     c3c:	00090003          	lb	zero,0(s2)
     c40:	0100                	.2byte	0x100
     c42:	0200                	.2byte	0x200
     c44:	0104                	.2byte	0x104
     c46:	00090003          	lb	zero,0(s2)
     c4a:	0100                	.2byte	0x100
     c4c:	0200                	.2byte	0x200
     c4e:	0104                	.2byte	0x104
     c50:	00090003          	lb	zero,0(s2)
     c54:	0100                	.2byte	0x100
     c56:	0200                	.2byte	0x200
     c58:	0104                	.2byte	0x104
     c5a:	0c090003          	lb	zero,192(s2)
     c5e:	0100                	.2byte	0x100
     c60:	0200                	.2byte	0x200
     c62:	0104                	.2byte	0x104
     c64:	00090003          	lb	zero,0(s2)
     c68:	0100                	.2byte	0x100
     c6a:	0200                	.2byte	0x200
     c6c:	0104                	.2byte	0x104
     c6e:	04090003          	lb	zero,64(s2)
     c72:	0100                	.2byte	0x100
     c74:	0200                	.2byte	0x200
     c76:	0104                	.2byte	0x104
     c78:	00090003          	lb	zero,0(s2)
     c7c:	0100                	.2byte	0x100
     c7e:	0200                	.2byte	0x200
     c80:	0f04                	.2byte	0xf04
     c82:	00090003          	lb	zero,0(s2)
     c86:	0100                	.2byte	0x100
     c88:	0200                	.2byte	0x200
     c8a:	0f04                	.2byte	0xf04
     c8c:	00090003          	lb	zero,0(s2)
     c90:	0100                	.2byte	0x100
     c92:	0200                	.2byte	0x200
     c94:	0804                	.2byte	0x804
     c96:	04090003          	lb	zero,64(s2)
     c9a:	0100                	.2byte	0x100
     c9c:	0200                	.2byte	0x200
     c9e:	0804                	.2byte	0x804
     ca0:	00090003          	lb	zero,0(s2)
     ca4:	0100                	.2byte	0x100
     ca6:	0200                	.2byte	0x200
     ca8:	0804                	.2byte	0x804
     caa:	00090103          	lb	sp,0(s2)
     cae:	0100                	.2byte	0x100
     cb0:	0200                	.2byte	0x200
     cb2:	0804                	.2byte	0x804
     cb4:	00090003          	lb	zero,0(s2)
     cb8:	0100                	.2byte	0x100
     cba:	0200                	.2byte	0x200
     cbc:	0804                	.2byte	0x804
     cbe:	00090003          	lb	zero,0(s2)
     cc2:	0100                	.2byte	0x100
     cc4:	0200                	.2byte	0x200
     cc6:	0804                	.2byte	0x804
     cc8:	00090003          	lb	zero,0(s2)
     ccc:	0100                	.2byte	0x100
     cce:	0200                	.2byte	0x200
     cd0:	0804                	.2byte	0x804
     cd2:	00090003          	lb	zero,0(s2)
     cd6:	0100                	.2byte	0x100
     cd8:	0200                	.2byte	0x200
     cda:	0804                	.2byte	0x804
     cdc:	10090003          	lb	zero,256(s2)
     ce0:	0100                	.2byte	0x100
     ce2:	0200                	.2byte	0x200
     ce4:	0804                	.2byte	0x804
     ce6:	00090003          	lb	zero,0(s2)
     cea:	0100                	.2byte	0x100
     cec:	0200                	.2byte	0x200
     cee:	0804                	.2byte	0x804
     cf0:	04090003          	lb	zero,64(s2)
     cf4:	0100                	.2byte	0x100
     cf6:	0200                	.2byte	0x200
     cf8:	0804                	.2byte	0x804
     cfa:	00090003          	lb	zero,0(s2)
     cfe:	0100                	.2byte	0x100
     d00:	0200                	.2byte	0x200
     d02:	0804                	.2byte	0x804
     d04:	00090003          	lb	zero,0(s2)
     d08:	0100                	.2byte	0x100
     d0a:	0306                	.2byte	0x306
     d0c:	0900                	.2byte	0x900
     d0e:	0004                	.2byte	0x4
     d10:	0001                	.2byte	0x1
     d12:	0402                	.2byte	0x402
     d14:	0601                	.2byte	0x601
     d16:	08090003          	lb	zero,128(s2)
     d1a:	0100                	.2byte	0x100
     d1c:	0200                	.2byte	0x200
     d1e:	0104                	.2byte	0x104
     d20:	00090003          	lb	zero,0(s2)
     d24:	0100                	.2byte	0x100
     d26:	0200                	.2byte	0x200
     d28:	0104                	.2byte	0x104
     d2a:	00090003          	lb	zero,0(s2)
     d2e:	0100                	.2byte	0x100
     d30:	0200                	.2byte	0x200
     d32:	0104                	.2byte	0x104
     d34:	00090003          	lb	zero,0(s2)
     d38:	0100                	.2byte	0x100
     d3a:	0200                	.2byte	0x200
     d3c:	0104                	.2byte	0x104
     d3e:	0c090003          	lb	zero,192(s2)
     d42:	0100                	.2byte	0x100
     d44:	0200                	.2byte	0x200
     d46:	0104                	.2byte	0x104
     d48:	00090003          	lb	zero,0(s2)
     d4c:	0100                	.2byte	0x100
     d4e:	0200                	.2byte	0x200
     d50:	0104                	.2byte	0x104
     d52:	04090003          	lb	zero,64(s2)
     d56:	0100                	.2byte	0x100
     d58:	0200                	.2byte	0x200
     d5a:	0104                	.2byte	0x104
     d5c:	00090003          	lb	zero,0(s2)
     d60:	0100                	.2byte	0x100
     d62:	0200                	.2byte	0x200
     d64:	0f04                	.2byte	0xf04
     d66:	00090003          	lb	zero,0(s2)
     d6a:	0100                	.2byte	0x100
     d6c:	0200                	.2byte	0x200
     d6e:	0f04                	.2byte	0xf04
     d70:	00090003          	lb	zero,0(s2)
     d74:	0100                	.2byte	0x100
     d76:	0200                	.2byte	0x200
     d78:	0804                	.2byte	0x804
     d7a:	04090003          	lb	zero,64(s2)
     d7e:	0100                	.2byte	0x100
     d80:	0200                	.2byte	0x200
     d82:	0804                	.2byte	0x804
     d84:	00090003          	lb	zero,0(s2)
     d88:	0100                	.2byte	0x100
     d8a:	0200                	.2byte	0x200
     d8c:	0804                	.2byte	0x804
     d8e:	00090103          	lb	sp,0(s2)
     d92:	0100                	.2byte	0x100
     d94:	0200                	.2byte	0x200
     d96:	0804                	.2byte	0x804
     d98:	00090003          	lb	zero,0(s2)
     d9c:	0100                	.2byte	0x100
     d9e:	0200                	.2byte	0x200
     da0:	0804                	.2byte	0x804
     da2:	14090003          	lb	zero,320(s2)
     da6:	0100                	.2byte	0x100
     da8:	0200                	.2byte	0x200
     daa:	0804                	.2byte	0x804
     dac:	04090003          	lb	zero,64(s2)
     db0:	0100                	.2byte	0x100
     db2:	0306                	.2byte	0x306
     db4:	0900                	.2byte	0x900
     db6:	0004                	.2byte	0x4
     db8:	0001                	.2byte	0x1
     dba:	0402                	.2byte	0x402
     dbc:	0602                	.2byte	0x602
     dbe:	14090003          	lb	zero,320(s2)
     dc2:	0100                	.2byte	0x100
     dc4:	0200                	.2byte	0x200
     dc6:	0204                	.2byte	0x204
     dc8:	00090003          	lb	zero,0(s2)
     dcc:	0100                	.2byte	0x100
     dce:	0200                	.2byte	0x200
     dd0:	0204                	.2byte	0x204
     dd2:	00090003          	lb	zero,0(s2)
     dd6:	0100                	.2byte	0x100
     dd8:	0200                	.2byte	0x200
     dda:	0204                	.2byte	0x204
     ddc:	00090003          	lb	zero,0(s2)
     de0:	0100                	.2byte	0x100
     de2:	0200                	.2byte	0x200
     de4:	0204                	.2byte	0x204
     de6:	00090003          	lb	zero,0(s2)
     dea:	0100                	.2byte	0x100
     dec:	0200                	.2byte	0x200
     dee:	0204                	.2byte	0x204
     df0:	00090003          	lb	zero,0(s2)
     df4:	0100                	.2byte	0x100
     df6:	0200                	.2byte	0x200
     df8:	0204                	.2byte	0x204
     dfa:	00090003          	lb	zero,0(s2)
     dfe:	0100                	.2byte	0x100
     e00:	0200                	.2byte	0x200
     e02:	0204                	.2byte	0x204
     e04:	00090003          	lb	zero,0(s2)
     e08:	0100                	.2byte	0x100
     e0a:	0200                	.2byte	0x200
     e0c:	0204                	.2byte	0x204
     e0e:	00090003          	lb	zero,0(s2)
     e12:	0100                	.2byte	0x100
     e14:	0200                	.2byte	0x200
     e16:	0204                	.2byte	0x204
     e18:	0c090003          	lb	zero,192(s2)
     e1c:	0100                	.2byte	0x100
     e1e:	0200                	.2byte	0x200
     e20:	0204                	.2byte	0x204
     e22:	00090003          	lb	zero,0(s2)
     e26:	0100                	.2byte	0x100
     e28:	0200                	.2byte	0x200
     e2a:	0204                	.2byte	0x204
     e2c:	04090003          	lb	zero,64(s2)
     e30:	0100                	.2byte	0x100
     e32:	0200                	.2byte	0x200
     e34:	0204                	.2byte	0x204
     e36:	0c090003          	lb	zero,192(s2)
     e3a:	0100                	.2byte	0x100
     e3c:	0200                	.2byte	0x200
     e3e:	0204                	.2byte	0x204
     e40:	00090003          	lb	zero,0(s2)
     e44:	0100                	.2byte	0x100
     e46:	0200                	.2byte	0x200
     e48:	0204                	.2byte	0x204
     e4a:	04090003          	lb	zero,64(s2)
     e4e:	0100                	.2byte	0x100
     e50:	0200                	.2byte	0x200
     e52:	0204                	.2byte	0x204
     e54:	08090003          	lb	zero,128(s2)
     e58:	0100                	.2byte	0x100
     e5a:	0200                	.2byte	0x200
     e5c:	0204                	.2byte	0x204
     e5e:	08090003          	lb	zero,128(s2)
     e62:	0100                	.2byte	0x100
     e64:	0200                	.2byte	0x200
     e66:	0204                	.2byte	0x204
     e68:	04090003          	lb	zero,64(s2)
     e6c:	0100                	.2byte	0x100
     e6e:	0200                	.2byte	0x200
     e70:	0904                	.2byte	0x904
     e72:	04090003          	lb	zero,64(s2)
     e76:	0100                	.2byte	0x100
     e78:	0200                	.2byte	0x200
     e7a:	0b04                	.2byte	0xb04
     e7c:	04090003          	lb	zero,64(s2)
     e80:	0100                	.2byte	0x100
     e82:	0200                	.2byte	0x200
     e84:	0b04                	.2byte	0xb04
     e86:	00090003          	lb	zero,0(s2)
     e8a:	0100                	.2byte	0x100
     e8c:	0200                	.2byte	0x200
     e8e:	0b04                	.2byte	0xb04
     e90:	10090003          	lb	zero,256(s2)
     e94:	0100                	.2byte	0x100
     e96:	0200                	.2byte	0x200
     e98:	0b04                	.2byte	0xb04
     e9a:	00090003          	lb	zero,0(s2)
     e9e:	0100                	.2byte	0x100
     ea0:	0200                	.2byte	0x200
     ea2:	0b04                	.2byte	0xb04
     ea4:	00090003          	lb	zero,0(s2)
     ea8:	0100                	.2byte	0x100
     eaa:	0200                	.2byte	0x200
     eac:	0b04                	.2byte	0xb04
     eae:	00090003          	lb	zero,0(s2)
     eb2:	0100                	.2byte	0x100
     eb4:	0200                	.2byte	0x200
     eb6:	0b04                	.2byte	0xb04
     eb8:	20090003          	lb	zero,512(s2)
     ebc:	0100                	.2byte	0x100
     ebe:	0200                	.2byte	0x200
     ec0:	0b04                	.2byte	0xb04
     ec2:	00090003          	lb	zero,0(s2)
     ec6:	0100                	.2byte	0x100
     ec8:	0200                	.2byte	0x200
     eca:	0b04                	.2byte	0xb04
     ecc:	00090003          	lb	zero,0(s2)
     ed0:	0100                	.2byte	0x100
     ed2:	0200                	.2byte	0x200
     ed4:	0b04                	.2byte	0xb04
     ed6:	00090003          	lb	zero,0(s2)
     eda:	0100                	.2byte	0x100
     edc:	0200                	.2byte	0x200
     ede:	0c04                	.2byte	0xc04
     ee0:	0c090003          	lb	zero,192(s2)
     ee4:	0100                	.2byte	0x100
     ee6:	0200                	.2byte	0x200
     ee8:	0c04                	.2byte	0xc04
     eea:	0c090003          	lb	zero,192(s2)
     eee:	0100                	.2byte	0x100
     ef0:	0200                	.2byte	0x200
     ef2:	0c04                	.2byte	0xc04
     ef4:	00090103          	lb	sp,0(s2)
     ef8:	0100                	.2byte	0x100
     efa:	0200                	.2byte	0x200
     efc:	0c04                	.2byte	0xc04
     efe:	00090003          	lb	zero,0(s2)
     f02:	0100                	.2byte	0x100
     f04:	0200                	.2byte	0x200
     f06:	0c04                	.2byte	0xc04
     f08:	00090003          	lb	zero,0(s2)
     f0c:	0100                	.2byte	0x100
     f0e:	0200                	.2byte	0x200
     f10:	0204                	.2byte	0x204
     f12:	00090003          	lb	zero,0(s2)
     f16:	0100                	.2byte	0x100
     f18:	0200                	.2byte	0x200
     f1a:	0204                	.2byte	0x204
     f1c:	04090003          	lb	zero,64(s2)
     f20:	0100                	.2byte	0x100
     f22:	0200                	.2byte	0x200
     f24:	0604                	.2byte	0x604
     f26:	04090003          	lb	zero,64(s2)
     f2a:	0100                	.2byte	0x100
     f2c:	0200                	.2byte	0x200
     f2e:	0604                	.2byte	0x604
     f30:	00090003          	lb	zero,0(s2)
     f34:	0100                	.2byte	0x100
     f36:	0200                	.2byte	0x200
     f38:	0804                	.2byte	0x804
     f3a:	08090003          	lb	zero,128(s2)
     f3e:	0100                	.2byte	0x100
     f40:	0200                	.2byte	0x200
     f42:	0804                	.2byte	0x804
     f44:	00090003          	lb	zero,0(s2)
     f48:	0100                	.2byte	0x100
     f4a:	0200                	.2byte	0x200
     f4c:	0804                	.2byte	0x804
     f4e:	00090003          	lb	zero,0(s2)
     f52:	0100                	.2byte	0x100
     f54:	0200                	.2byte	0x200
     f56:	0804                	.2byte	0x804
     f58:	00090003          	lb	zero,0(s2)
     f5c:	0100                	.2byte	0x100
     f5e:	0200                	.2byte	0x200
     f60:	0a04                	.2byte	0xa04
     f62:	0c090003          	lb	zero,192(s2)
     f66:	0100                	.2byte	0x100
     f68:	0200                	.2byte	0x200
     f6a:	0904                	.2byte	0x904
     f6c:	04090003          	lb	zero,64(s2)
     f70:	0100                	.2byte	0x100
     f72:	0200                	.2byte	0x200
     f74:	0904                	.2byte	0x904
     f76:	00090003          	lb	zero,0(s2)
     f7a:	0100                	.2byte	0x100
     f7c:	0200                	.2byte	0x200
     f7e:	1804                	.2byte	0x1804
     f80:	0c090003          	lb	zero,192(s2)
     f84:	0100                	.2byte	0x100
     f86:	0200                	.2byte	0x200
     f88:	1804                	.2byte	0x1804
     f8a:	0c090003          	lb	zero,192(s2)
     f8e:	0100                	.2byte	0x100
     f90:	0200                	.2byte	0x200
     f92:	1a04                	.2byte	0x1a04
     f94:	04090003          	lb	zero,64(s2)
     f98:	0100                	.2byte	0x100
     f9a:	0200                	.2byte	0x200
     f9c:	1a04                	.2byte	0x1a04
     f9e:	00090003          	lb	zero,0(s2)
     fa2:	0100                	.2byte	0x100
     fa4:	0306                	.2byte	0x306
     fa6:	0900                	.2byte	0x900
     fa8:	0008                	.2byte	0x8
     faa:	0001                	.2byte	0x1
     fac:	0402                	.2byte	0x402
     fae:	0003066f          	jal	a2,30fae <__libc_init_array+0x2edba>
     fb2:	0409                	.2byte	0x409
     fb4:	0100                	.2byte	0x100
     fb6:	0200                	.2byte	0x200
     fb8:	6f04                	.2byte	0x6f04
     fba:	00090003          	lb	zero,0(s2)
     fbe:	0100                	.2byte	0x100
     fc0:	0200                	.2byte	0x200
     fc2:	6f04                	.2byte	0x6f04
     fc4:	00090003          	lb	zero,0(s2)
     fc8:	0100                	.2byte	0x100
     fca:	0200                	.2byte	0x200
     fcc:	6f04                	.2byte	0x6f04
     fce:	00090003          	lb	zero,0(s2)
     fd2:	0100                	.2byte	0x100
     fd4:	0200                	.2byte	0x200
     fd6:	6f04                	.2byte	0x6f04
     fd8:	00090003          	lb	zero,0(s2)
     fdc:	0100                	.2byte	0x100
     fde:	0200                	.2byte	0x200
     fe0:	6f04                	.2byte	0x6f04
     fe2:	00090003          	lb	zero,0(s2)
     fe6:	0100                	.2byte	0x100
     fe8:	0105                	.2byte	0x105
     fea:	0200                	.2byte	0x200
     fec:	6f04                	.2byte	0x6f04
     fee:	0306                	.2byte	0x306
     ff0:	0904                	.2byte	0x904
     ff2:	0000                	.2byte	0x0
     ff4:	0501                	.2byte	0x501
     ff6:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
     ffa:	097c036f          	jal	t1,c1890 <__libc_init_array+0xbf69c>
     ffe:	0008                	.2byte	0x8
    1000:	0001                	.2byte	0x1
    1002:	0402                	.2byte	0x402
    1004:	0003066f          	jal	a2,31004 <__libc_init_array+0x2ee10>
    1008:	1409                	.2byte	0x1409
    100a:	0100                	.2byte	0x100
    100c:	0200                	.2byte	0x200
    100e:	6f04                	.2byte	0x6f04
    1010:	00090003          	lb	zero,0(s2)
    1014:	0100                	.2byte	0x100
    1016:	0200                	.2byte	0x200
    1018:	6f04                	.2byte	0x6f04
    101a:	00090003          	lb	zero,0(s2)
    101e:	0100                	.2byte	0x100
    1020:	0200                	.2byte	0x200
    1022:	6f04                	.2byte	0x6f04
    1024:	00090103          	lb	sp,0(s2)
    1028:	0100                	.2byte	0x100
    102a:	0200                	.2byte	0x200
    102c:	6f04                	.2byte	0x6f04
    102e:	00090003          	lb	zero,0(s2)
    1032:	0100                	.2byte	0x100
    1034:	0200                	.2byte	0x200
    1036:	6f04                	.2byte	0x6f04
    1038:	00090003          	lb	zero,0(s2)
    103c:	0100                	.2byte	0x100
    103e:	0200                	.2byte	0x200
    1040:	6f04                	.2byte	0x6f04
    1042:	00090203          	lb	tp,0(s2)
    1046:	0100                	.2byte	0x100
    1048:	0105                	.2byte	0x105
    104a:	0200                	.2byte	0x200
    104c:	6f04                	.2byte	0x6f04
    104e:	0306                	.2byte	0x306
    1050:	0901                	.2byte	0x901
    1052:	0000                	.2byte	0x0
    1054:	0501                	.2byte	0x501
    1056:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    105a:	0602                	.2byte	0x602
    105c:	20097903          	.4byte	0x20097903
    1060:	0100                	.2byte	0x100
    1062:	0200                	.2byte	0x200
    1064:	0f04                	.2byte	0xf04
    1066:	04090003          	lb	zero,64(s2)
    106a:	0100                	.2byte	0x100
    106c:	0200                	.2byte	0x200
    106e:	0f04                	.2byte	0xf04
    1070:	00090003          	lb	zero,0(s2)
    1074:	0100                	.2byte	0x100
    1076:	0200                	.2byte	0x200
    1078:	0f04                	.2byte	0xf04
    107a:	00090003          	lb	zero,0(s2)
    107e:	0100                	.2byte	0x100
    1080:	0200                	.2byte	0x200
    1082:	0f04                	.2byte	0xf04
    1084:	00090003          	lb	zero,0(s2)
    1088:	0100                	.2byte	0x100
    108a:	0200                	.2byte	0x200
    108c:	0f04                	.2byte	0xf04
    108e:	00090003          	lb	zero,0(s2)
    1092:	0100                	.2byte	0x100
    1094:	0200                	.2byte	0x200
    1096:	0f04                	.2byte	0xf04
    1098:	00090003          	lb	zero,0(s2)
    109c:	0100                	.2byte	0x100
    109e:	0200                	.2byte	0x200
    10a0:	0f04                	.2byte	0xf04
    10a2:	08090003          	lb	zero,128(s2)
    10a6:	0100                	.2byte	0x100
    10a8:	0200                	.2byte	0x200
    10aa:	0f04                	.2byte	0xf04
    10ac:	00090003          	lb	zero,0(s2)
    10b0:	0100                	.2byte	0x100
    10b2:	0200                	.2byte	0x200
    10b4:	0f04                	.2byte	0xf04
    10b6:	00090003          	lb	zero,0(s2)
    10ba:	0100                	.2byte	0x100
    10bc:	0200                	.2byte	0x200
    10be:	0f04                	.2byte	0xf04
    10c0:	00090003          	lb	zero,0(s2)
    10c4:	0100                	.2byte	0x100
    10c6:	0200                	.2byte	0x200
    10c8:	0f04                	.2byte	0xf04
    10ca:	00090003          	lb	zero,0(s2)
    10ce:	0100                	.2byte	0x100
    10d0:	0200                	.2byte	0x200
    10d2:	0f04                	.2byte	0xf04
    10d4:	0c090003          	lb	zero,192(s2)
    10d8:	0100                	.2byte	0x100
    10da:	0200                	.2byte	0x200
    10dc:	0f04                	.2byte	0xf04
    10de:	00090003          	lb	zero,0(s2)
    10e2:	0100                	.2byte	0x100
    10e4:	0200                	.2byte	0x200
    10e6:	0304                	.2byte	0x304
    10e8:	08090003          	lb	zero,128(s2)
    10ec:	0100                	.2byte	0x100
    10ee:	0306                	.2byte	0x306
    10f0:	0900                	.2byte	0x900
    10f2:	000c                	.2byte	0xc
    10f4:	0001                	.2byte	0x1
    10f6:	0402                	.2byte	0x402
    10f8:	0602                	.2byte	0x602
    10fa:	14090103          	lb	sp,320(s2)
    10fe:	0100                	.2byte	0x100
    1100:	0200                	.2byte	0x200
    1102:	0f04                	.2byte	0xf04
    1104:	04090003          	lb	zero,64(s2)
    1108:	0100                	.2byte	0x100
    110a:	0200                	.2byte	0x200
    110c:	0f04                	.2byte	0xf04
    110e:	00090003          	lb	zero,0(s2)
    1112:	0100                	.2byte	0x100
    1114:	0200                	.2byte	0x200
    1116:	0f04                	.2byte	0xf04
    1118:	00090003          	lb	zero,0(s2)
    111c:	0100                	.2byte	0x100
    111e:	0200                	.2byte	0x200
    1120:	0f04                	.2byte	0xf04
    1122:	00090003          	lb	zero,0(s2)
    1126:	0100                	.2byte	0x100
    1128:	0200                	.2byte	0x200
    112a:	0f04                	.2byte	0xf04
    112c:	00090003          	lb	zero,0(s2)
    1130:	0100                	.2byte	0x100
    1132:	0200                	.2byte	0x200
    1134:	0f04                	.2byte	0xf04
    1136:	00090003          	lb	zero,0(s2)
    113a:	0100                	.2byte	0x100
    113c:	0200                	.2byte	0x200
    113e:	0f04                	.2byte	0xf04
    1140:	08090003          	lb	zero,128(s2)
    1144:	0100                	.2byte	0x100
    1146:	0200                	.2byte	0x200
    1148:	0f04                	.2byte	0xf04
    114a:	00090003          	lb	zero,0(s2)
    114e:	0100                	.2byte	0x100
    1150:	0200                	.2byte	0x200
    1152:	0f04                	.2byte	0xf04
    1154:	00090003          	lb	zero,0(s2)
    1158:	0100                	.2byte	0x100
    115a:	0200                	.2byte	0x200
    115c:	0f04                	.2byte	0xf04
    115e:	00090003          	lb	zero,0(s2)
    1162:	0100                	.2byte	0x100
    1164:	0200                	.2byte	0x200
    1166:	0f04                	.2byte	0xf04
    1168:	00090003          	lb	zero,0(s2)
    116c:	0100                	.2byte	0x100
    116e:	0200                	.2byte	0x200
    1170:	0f04                	.2byte	0xf04
    1172:	08090003          	lb	zero,128(s2)
    1176:	0100                	.2byte	0x100
    1178:	0200                	.2byte	0x200
    117a:	0f04                	.2byte	0xf04
    117c:	00090003          	lb	zero,0(s2)
    1180:	0100                	.2byte	0x100
    1182:	0200                	.2byte	0x200
    1184:	0304                	.2byte	0x304
    1186:	0c090003          	lb	zero,192(s2)
    118a:	0100                	.2byte	0x100
    118c:	0306                	.2byte	0x306
    118e:	0900                	.2byte	0x900
    1190:	000c                	.2byte	0xc
    1192:	0301                	.2byte	0x301
    1194:	0901                	.2byte	0x901
    1196:	001c                	.2byte	0x1c
    1198:	0001                	.2byte	0x1
    119a:	0402                	.2byte	0x402
    119c:	0304                	.2byte	0x304
    119e:	097f 0018 0001 0402 	.byte	0x7f, 0x09, 0x18, 0x00, 0x01, 0x00, 0x02, 0x04, 0x04, 0x06
    11a6:	0604 
    11a8:	04090103          	lb	sp,64(s2)
    11ac:	0100                	.2byte	0x100
    11ae:	0200                	.2byte	0x200
    11b0:	1504                	.2byte	0x1504
    11b2:	00090003          	lb	zero,0(s2)
    11b6:	0100                	.2byte	0x100
    11b8:	0200                	.2byte	0x200
    11ba:	1504                	.2byte	0x1504
    11bc:	00090103          	lb	sp,0(s2)
    11c0:	0100                	.2byte	0x100
    11c2:	0200                	.2byte	0x200
    11c4:	1504                	.2byte	0x1504
    11c6:	00090003          	lb	zero,0(s2)
    11ca:	0100                	.2byte	0x100
    11cc:	0200                	.2byte	0x200
    11ce:	1504                	.2byte	0x1504
    11d0:	00090003          	lb	zero,0(s2)
    11d4:	0100                	.2byte	0x100
    11d6:	0306                	.2byte	0x306
    11d8:	0900                	.2byte	0x900
    11da:	0008                	.2byte	0x8
    11dc:	0301                	.2byte	0x301
    11de:	097f 001c 0301 097e 	.byte	0x7f, 0x09, 0x1c, 0x00, 0x01, 0x03, 0x7e, 0x09, 0x0c, 0x00
    11e6:	000c 
    11e8:	0301                	.2byte	0x301
    11ea:	0902                	.2byte	0x902
    11ec:	0004                	.2byte	0x4
    11ee:	0001                	.2byte	0x1
    11f0:	0402                	.2byte	0x402
    11f2:	01030607          	.4byte	0x1030607
    11f6:	1809                	.2byte	0x1809
    11f8:	0100                	.2byte	0x100
    11fa:	0200                	.2byte	0x200
    11fc:	0704                	.2byte	0x704
    11fe:	00090003          	lb	zero,0(s2)
    1202:	0100                	.2byte	0x100
    1204:	0200                	.2byte	0x200
    1206:	3b04                	.2byte	0x3b04
    1208:	08090003          	lb	zero,128(s2)
    120c:	0100                	.2byte	0x100
    120e:	0200                	.2byte	0x200
    1210:	3b04                	.2byte	0x3b04
    1212:	04090003          	lb	zero,64(s2)
    1216:	0100                	.2byte	0x100
    1218:	0200                	.2byte	0x200
    121a:	3c04                	.2byte	0x3c04
    121c:	10090003          	lb	zero,256(s2)
    1220:	0100                	.2byte	0x100
    1222:	0200                	.2byte	0x200
    1224:	3c04                	.2byte	0x3c04
    1226:	14090003          	lb	zero,320(s2)
    122a:	0100                	.2byte	0x100
    122c:	0200                	.2byte	0x200
    122e:	3c04                	.2byte	0x3c04
    1230:	00090003          	lb	zero,0(s2)
    1234:	0100                	.2byte	0x100
    1236:	0200                	.2byte	0x200
    1238:	4404                	.2byte	0x4404
    123a:	08090003          	lb	zero,128(s2)
    123e:	0100                	.2byte	0x100
    1240:	0200                	.2byte	0x200
    1242:	4404                	.2byte	0x4404
    1244:	00090003          	lb	zero,0(s2)
    1248:	0100                	.2byte	0x100
    124a:	0200                	.2byte	0x200
    124c:	4404                	.2byte	0x4404
    124e:	00090003          	lb	zero,0(s2)
    1252:	0100                	.2byte	0x100
    1254:	0200                	.2byte	0x200
    1256:	4404                	.2byte	0x4404
    1258:	00090003          	lb	zero,0(s2)
    125c:	0100                	.2byte	0x100
    125e:	0200                	.2byte	0x200
    1260:	4604                	.2byte	0x4604
    1262:	0c090003          	lb	zero,192(s2)
    1266:	0100                	.2byte	0x100
    1268:	0200                	.2byte	0x200
    126a:	4504                	.2byte	0x4504
    126c:	04090003          	lb	zero,64(s2)
    1270:	0100                	.2byte	0x100
    1272:	0200                	.2byte	0x200
    1274:	4504                	.2byte	0x4504
    1276:	00090003          	lb	zero,0(s2)
    127a:	0100                	.2byte	0x100
    127c:	0306                	.2byte	0x306
    127e:	0900                	.2byte	0x900
    1280:	0010                	.2byte	0x10
    1282:	0901                	.2byte	0x901
    1284:	0028                	.2byte	0x28
    1286:	0100                	.2byte	0x100
    1288:	5101                	.2byte	0x5101
    128a:	0500000b          	.4byte	0x500000b
    128e:	0400                	.2byte	0x400
    1290:	3300                	.2byte	0x3300
    1292:	0000                	.2byte	0x0
    1294:	0100                	.2byte	0x100
    1296:	0101                	.2byte	0x101
    1298:	000d0efb          	.4byte	0xd0efb
    129c:	0101                	.2byte	0x101
    129e:	0101                	.2byte	0x101
    12a0:	0000                	.2byte	0x0
    12a2:	0100                	.2byte	0x100
    12a4:	0000                	.2byte	0x0
    12a6:	0101                	.2byte	0x101
    12a8:	1f01                	.2byte	0x1f01
    12aa:	0002                	.2byte	0x2
    12ac:	0000                	.2byte	0x0
    12ae:	a400                	.2byte	0xa400
    12b0:	0000                	.2byte	0x0
    12b2:	0200                	.2byte	0x200
    12b4:	1f01                	.2byte	0x1f01
    12b6:	0f02                	.2byte	0xf02
    12b8:	0001b403          	.4byte	0x1b403
    12bc:	0100                	.2byte	0x100
    12be:	01b4                	.2byte	0x1b4
    12c0:	0000                	.2byte	0x0
    12c2:	db01                	.2byte	0xdb01
    12c4:	0000                	.2byte	0x0
    12c6:	0100                	.2byte	0x100
    12c8:	0105                	.2byte	0x105
    12ca:	0500                	.2byte	0x500
    12cc:	5802                	.2byte	0x5802
    12ce:	0300001b          	.4byte	0x300001b
    12d2:	03050123          	sb	a6,34(a0)
    12d6:	00090103          	lb	sp,0(s2)
    12da:	0100                	.2byte	0x100
    12dc:	00090003          	lb	zero,0(s2)
    12e0:	0100                	.2byte	0x100
    12e2:	0d05                	.2byte	0xd05
    12e4:	00090003          	lb	zero,0(s2)
    12e8:	0100                	.2byte	0x100
    12ea:	0305                	.2byte	0x305
    12ec:	00090103          	lb	sp,0(s2)
    12f0:	0100                	.2byte	0x100
    12f2:	00090003          	lb	zero,0(s2)
    12f6:	0100                	.2byte	0x100
    12f8:	00090003          	lb	zero,0(s2)
    12fc:	0100                	.2byte	0x100
    12fe:	00090003          	lb	zero,0(s2)
    1302:	0100                	.2byte	0x100
    1304:	00090103          	lb	sp,0(s2)
    1308:	0100                	.2byte	0x100
    130a:	00090003          	lb	zero,0(s2)
    130e:	0100                	.2byte	0x100
    1310:	00090003          	lb	zero,0(s2)
    1314:	0100                	.2byte	0x100
    1316:	00090003          	lb	zero,0(s2)
    131a:	0100                	.2byte	0x100
    131c:	00090103          	lb	sp,0(s2)
    1320:	0100                	.2byte	0x100
    1322:	00090003          	lb	zero,0(s2)
    1326:	0100                	.2byte	0x100
    1328:	00090003          	lb	zero,0(s2)
    132c:	0100                	.2byte	0x100
    132e:	00090003          	lb	zero,0(s2)
    1332:	0100                	.2byte	0x100
    1334:	00090103          	lb	sp,0(s2)
    1338:	0100                	.2byte	0x100
    133a:	00090203          	lb	tp,0(s2)
    133e:	0100                	.2byte	0x100
    1340:	00090103          	lb	sp,0(s2)
    1344:	0100                	.2byte	0x100
    1346:	00090003          	lb	zero,0(s2)
    134a:	0100                	.2byte	0x100
    134c:	00090003          	lb	zero,0(s2)
    1350:	0100                	.2byte	0x100
    1352:	00090003          	lb	zero,0(s2)
    1356:	0100                	.2byte	0x100
    1358:	00090003          	lb	zero,0(s2)
    135c:	0100                	.2byte	0x100
    135e:	0105                	.2byte	0x105
    1360:	0306                	.2byte	0x306
    1362:	0978                	.2byte	0x978
    1364:	0004                	.2byte	0x4
    1366:	0501                	.2byte	0x501
    1368:	09080303          	lb	t1,144(a6)
    136c:	0004                	.2byte	0x4
    136e:	0301                	.2byte	0x301
    1370:	0901                	.2byte	0x901
    1372:	0008                	.2byte	0x8
    1374:	0501                	.2byte	0x501
    1376:	0301                	.2byte	0x301
    1378:	00040977          	.4byte	0x40977
    137c:	0501                	.2byte	0x501
    137e:	09080303          	lb	t1,144(a6)
    1382:	0008                	.2byte	0x8
    1384:	0601                	.2byte	0x601
    1386:	04090003          	lb	zero,64(s2)
    138a:	0100                	.2byte	0x100
    138c:	04090003          	lb	zero,64(s2)
    1390:	0100                	.2byte	0x100
    1392:	0105                	.2byte	0x105
    1394:	0306                	.2byte	0x306
    1396:	0978                	.2byte	0x978
    1398:	0000                	.2byte	0x0
    139a:	0501                	.2byte	0x501
    139c:	09090303          	lb	t1,144(s2)
    13a0:	0004                	.2byte	0x4
    13a2:	0501                	.2byte	0x501
    13a4:	0301                	.2byte	0x301
    13a6:	00040977          	.4byte	0x40977
    13aa:	0501                	.2byte	0x501
    13ac:	09090303          	lb	t1,144(s2)
    13b0:	0004                	.2byte	0x4
    13b2:	0301                	.2byte	0x301
    13b4:	0901                	.2byte	0x901
    13b6:	0004                	.2byte	0x4
    13b8:	0301                	.2byte	0x301
    13ba:	097e                	.2byte	0x97e
    13bc:	0004                	.2byte	0x4
    13be:	0601                	.2byte	0x601
    13c0:	04090003          	lb	zero,64(s2)
    13c4:	0100                	.2byte	0x100
    13c6:	00090003          	lb	zero,0(s2)
    13ca:	0100                	.2byte	0x100
    13cc:	00090003          	lb	zero,0(s2)
    13d0:	0100                	.2byte	0x100
    13d2:	00090003          	lb	zero,0(s2)
    13d6:	0100                	.2byte	0x100
    13d8:	0306                	.2byte	0x306
    13da:	0901                	.2byte	0x901
    13dc:	0000                	.2byte	0x0
    13de:	0301                	.2byte	0x301
    13e0:	097f 0004 0601 0003 	.byte	0x7f, 0x09, 0x04, 0x00, 0x01, 0x06, 0x03, 0x00, 0x09, 0x04
    13e8:	0409 
    13ea:	0100                	.2byte	0x100
    13ec:	00090003          	lb	zero,0(s2)
    13f0:	0100                	.2byte	0x100
    13f2:	00090103          	lb	sp,0(s2)
    13f6:	0100                	.2byte	0x100
    13f8:	00090003          	lb	zero,0(s2)
    13fc:	0100                	.2byte	0x100
    13fe:	00090003          	lb	zero,0(s2)
    1402:	0100                	.2byte	0x100
    1404:	00090003          	lb	zero,0(s2)
    1408:	0100                	.2byte	0x100
    140a:	00090003          	lb	zero,0(s2)
    140e:	0100                	.2byte	0x100
    1410:	00090003          	lb	zero,0(s2)
    1414:	0100                	.2byte	0x100
    1416:	00090003          	lb	zero,0(s2)
    141a:	0100                	.2byte	0x100
    141c:	00090003          	lb	zero,0(s2)
    1420:	0100                	.2byte	0x100
    1422:	00090003          	lb	zero,0(s2)
    1426:	0100                	.2byte	0x100
    1428:	00090003          	lb	zero,0(s2)
    142c:	0100                	.2byte	0x100
    142e:	00090003          	lb	zero,0(s2)
    1432:	0100                	.2byte	0x100
    1434:	04090003          	lb	zero,64(s2)
    1438:	0100                	.2byte	0x100
    143a:	00090003          	lb	zero,0(s2)
    143e:	0100                	.2byte	0x100
    1440:	00090103          	lb	sp,0(s2)
    1444:	0100                	.2byte	0x100
    1446:	00090003          	lb	zero,0(s2)
    144a:	0100                	.2byte	0x100
    144c:	0200                	.2byte	0x200
    144e:	0204                	.2byte	0x204
    1450:	0306                	.2byte	0x306
    1452:	0900                	.2byte	0x900
    1454:	0004                	.2byte	0x4
    1456:	0301                	.2byte	0x301
    1458:	097f 0008 0601 0103 	.byte	0x7f, 0x09, 0x08, 0x00, 0x01, 0x06, 0x03, 0x01, 0x09, 0x04
    1460:	0409 
    1462:	0100                	.2byte	0x100
    1464:	00090003          	lb	zero,0(s2)
    1468:	0100                	.2byte	0x100
    146a:	00090003          	lb	zero,0(s2)
    146e:	0100                	.2byte	0x100
    1470:	00090003          	lb	zero,0(s2)
    1474:	0100                	.2byte	0x100
    1476:	00090003          	lb	zero,0(s2)
    147a:	0100                	.2byte	0x100
    147c:	00090003          	lb	zero,0(s2)
    1480:	0100                	.2byte	0x100
    1482:	00090003          	lb	zero,0(s2)
    1486:	0100                	.2byte	0x100
    1488:	00090003          	lb	zero,0(s2)
    148c:	0100                	.2byte	0x100
    148e:	04090003          	lb	zero,64(s2)
    1492:	0100                	.2byte	0x100
    1494:	04090003          	lb	zero,64(s2)
    1498:	0100                	.2byte	0x100
    149a:	00090003          	lb	zero,0(s2)
    149e:	0100                	.2byte	0x100
    14a0:	00090003          	lb	zero,0(s2)
    14a4:	0100                	.2byte	0x100
    14a6:	0c090003          	lb	zero,192(s2)
    14aa:	0100                	.2byte	0x100
    14ac:	04090003          	lb	zero,64(s2)
    14b0:	0100                	.2byte	0x100
    14b2:	00090003          	lb	zero,0(s2)
    14b6:	0100                	.2byte	0x100
    14b8:	00090003          	lb	zero,0(s2)
    14bc:	0100                	.2byte	0x100
    14be:	00090003          	lb	zero,0(s2)
    14c2:	0100                	.2byte	0x100
    14c4:	00090003          	lb	zero,0(s2)
    14c8:	0100                	.2byte	0x100
    14ca:	00090003          	lb	zero,0(s2)
    14ce:	0100                	.2byte	0x100
    14d0:	00090003          	lb	zero,0(s2)
    14d4:	0100                	.2byte	0x100
    14d6:	00090003          	lb	zero,0(s2)
    14da:	0100                	.2byte	0x100
    14dc:	04090003          	lb	zero,64(s2)
    14e0:	0100                	.2byte	0x100
    14e2:	04090003          	lb	zero,64(s2)
    14e6:	0100                	.2byte	0x100
    14e8:	00090003          	lb	zero,0(s2)
    14ec:	0100                	.2byte	0x100
    14ee:	00090003          	lb	zero,0(s2)
    14f2:	0100                	.2byte	0x100
    14f4:	0200                	.2byte	0x200
    14f6:	2f04                	.2byte	0x2f04
    14f8:	08090103          	lb	sp,128(s2)
    14fc:	0100                	.2byte	0x100
    14fe:	0200                	.2byte	0x200
    1500:	2f04                	.2byte	0x2f04
    1502:	00090003          	lb	zero,0(s2)
    1506:	0100                	.2byte	0x100
    1508:	0200                	.2byte	0x200
    150a:	2f04                	.2byte	0x2f04
    150c:	00090003          	lb	zero,0(s2)
    1510:	0100                	.2byte	0x100
    1512:	0200                	.2byte	0x200
    1514:	3f04                	.2byte	0x3f04
    1516:	0c090003          	lb	zero,192(s2)
    151a:	0100                	.2byte	0x100
    151c:	0200                	.2byte	0x200
    151e:	3f04                	.2byte	0x3f04
    1520:	00090003          	lb	zero,0(s2)
    1524:	0100                	.2byte	0x100
    1526:	0200                	.2byte	0x200
    1528:	3f04                	.2byte	0x3f04
    152a:	04090003          	lb	zero,64(s2)
    152e:	0100                	.2byte	0x100
    1530:	0c090003          	lb	zero,192(s2)
    1534:	0100                	.2byte	0x100
    1536:	00090003          	lb	zero,0(s2)
    153a:	0100                	.2byte	0x100
    153c:	10090003          	lb	zero,256(s2)
    1540:	0100                	.2byte	0x100
    1542:	0200                	.2byte	0x200
    1544:	5a04                	.2byte	0x5a04
    1546:	00090003          	lb	zero,0(s2)
    154a:	0100                	.2byte	0x100
    154c:	0200                	.2byte	0x200
    154e:	5a04                	.2byte	0x5a04
    1550:	00090003          	lb	zero,0(s2)
    1554:	0100                	.2byte	0x100
    1556:	0200                	.2byte	0x200
    1558:	5a04                	.2byte	0x5a04
    155a:	00090003          	lb	zero,0(s2)
    155e:	0100                	.2byte	0x100
    1560:	0200                	.2byte	0x200
    1562:	5a04                	.2byte	0x5a04
    1564:	00090003          	lb	zero,0(s2)
    1568:	0100                	.2byte	0x100
    156a:	0200                	.2byte	0x200
    156c:	5a04                	.2byte	0x5a04
    156e:	00090003          	lb	zero,0(s2)
    1572:	0100                	.2byte	0x100
    1574:	0200                	.2byte	0x200
    1576:	5a04                	.2byte	0x5a04
    1578:	00090003          	lb	zero,0(s2)
    157c:	0100                	.2byte	0x100
    157e:	0200                	.2byte	0x200
    1580:	5a04                	.2byte	0x5a04
    1582:	00090003          	lb	zero,0(s2)
    1586:	0100                	.2byte	0x100
    1588:	0105                	.2byte	0x105
    158a:	0200                	.2byte	0x200
    158c:	5a04                	.2byte	0x5a04
    158e:	0306                	.2byte	0x306
    1590:	0904                	.2byte	0x904
    1592:	0014                	.2byte	0x14
    1594:	0501                	.2byte	0x501
    1596:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    159a:	035a                	.2byte	0x35a
    159c:	097c                	.2byte	0x97c
    159e:	0004                	.2byte	0x4
    15a0:	0501                	.2byte	0x501
    15a2:	0001                	.2byte	0x1
    15a4:	0402                	.2byte	0x402
    15a6:	035a                	.2byte	0x35a
    15a8:	0904                	.2byte	0x904
    15aa:	0004                	.2byte	0x4
    15ac:	0501                	.2byte	0x501
    15ae:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    15b2:	035a                	.2byte	0x35a
    15b4:	097c                	.2byte	0x97c
    15b6:	0004                	.2byte	0x4
    15b8:	0001                	.2byte	0x1
    15ba:	0402                	.2byte	0x402
    15bc:	065a                	.2byte	0x65a
    15be:	04090003          	lb	zero,64(s2)
    15c2:	0100                	.2byte	0x100
    15c4:	0200                	.2byte	0x200
    15c6:	5a04                	.2byte	0x5a04
    15c8:	00090003          	lb	zero,0(s2)
    15cc:	0100                	.2byte	0x100
    15ce:	0200                	.2byte	0x200
    15d0:	5a04                	.2byte	0x5a04
    15d2:	00090003          	lb	zero,0(s2)
    15d6:	0100                	.2byte	0x100
    15d8:	0200                	.2byte	0x200
    15da:	5a04                	.2byte	0x5a04
    15dc:	00090103          	lb	sp,0(s2)
    15e0:	0100                	.2byte	0x100
    15e2:	0200                	.2byte	0x200
    15e4:	5a04                	.2byte	0x5a04
    15e6:	00090003          	lb	zero,0(s2)
    15ea:	0100                	.2byte	0x100
    15ec:	0200                	.2byte	0x200
    15ee:	5a04                	.2byte	0x5a04
    15f0:	00090003          	lb	zero,0(s2)
    15f4:	0100                	.2byte	0x100
    15f6:	0200                	.2byte	0x200
    15f8:	5a04                	.2byte	0x5a04
    15fa:	00090203          	lb	tp,0(s2)
    15fe:	0100                	.2byte	0x100
    1600:	0105                	.2byte	0x105
    1602:	0200                	.2byte	0x200
    1604:	5a04                	.2byte	0x5a04
    1606:	0306                	.2byte	0x306
    1608:	0901                	.2byte	0x901
    160a:	0000                	.2byte	0x0
    160c:	0501                	.2byte	0x501
    160e:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    1612:	7b030603          	lb	a2,1968(t1) # 9000d1e <_stack_start+0x8ef8d1e>
    1616:	1409                	.2byte	0x1409
    1618:	0100                	.2byte	0x100
    161a:	0200                	.2byte	0x200
    161c:	0304                	.2byte	0x304
    161e:	04090003          	lb	zero,64(s2)
    1622:	0100                	.2byte	0x100
    1624:	0200                	.2byte	0x200
    1626:	0304                	.2byte	0x304
    1628:	00090003          	lb	zero,0(s2)
    162c:	0100                	.2byte	0x100
    162e:	0200                	.2byte	0x200
    1630:	0304                	.2byte	0x304
    1632:	00090003          	lb	zero,0(s2)
    1636:	0100                	.2byte	0x100
    1638:	0200                	.2byte	0x200
    163a:	0304                	.2byte	0x304
    163c:	00090003          	lb	zero,0(s2)
    1640:	0100                	.2byte	0x100
    1642:	0200                	.2byte	0x200
    1644:	0304                	.2byte	0x304
    1646:	00090003          	lb	zero,0(s2)
    164a:	0100                	.2byte	0x100
    164c:	0200                	.2byte	0x200
    164e:	0304                	.2byte	0x304
    1650:	00090003          	lb	zero,0(s2)
    1654:	0100                	.2byte	0x100
    1656:	0200                	.2byte	0x200
    1658:	0304                	.2byte	0x304
    165a:	00090003          	lb	zero,0(s2)
    165e:	0100                	.2byte	0x100
    1660:	0200                	.2byte	0x200
    1662:	0304                	.2byte	0x304
    1664:	00090003          	lb	zero,0(s2)
    1668:	0100                	.2byte	0x100
    166a:	0200                	.2byte	0x200
    166c:	0c04                	.2byte	0xc04
    166e:	08090003          	lb	zero,128(s2)
    1672:	0100                	.2byte	0x100
    1674:	0200                	.2byte	0x200
    1676:	0c04                	.2byte	0xc04
    1678:	00090003          	lb	zero,0(s2)
    167c:	0100                	.2byte	0x100
    167e:	0200                	.2byte	0x200
    1680:	0c04                	.2byte	0xc04
    1682:	00090003          	lb	zero,0(s2)
    1686:	0100                	.2byte	0x100
    1688:	0200                	.2byte	0x200
    168a:	0e04                	.2byte	0xe04
    168c:	04090003          	lb	zero,64(s2)
    1690:	0100                	.2byte	0x100
    1692:	0200                	.2byte	0x200
    1694:	0e04                	.2byte	0xe04
    1696:	00090003          	lb	zero,0(s2)
    169a:	0100                	.2byte	0x100
    169c:	0200                	.2byte	0x200
    169e:	1004                	.2byte	0x1004
    16a0:	04090003          	lb	zero,64(s2)
    16a4:	0100                	.2byte	0x100
    16a6:	0200                	.2byte	0x200
    16a8:	1304                	.2byte	0x1304
    16aa:	04090003          	lb	zero,64(s2)
    16ae:	0100                	.2byte	0x100
    16b0:	0200                	.2byte	0x200
    16b2:	1304                	.2byte	0x1304
    16b4:	00090003          	lb	zero,0(s2)
    16b8:	0100                	.2byte	0x100
    16ba:	0200                	.2byte	0x200
    16bc:	1304                	.2byte	0x1304
    16be:	04090003          	lb	zero,64(s2)
    16c2:	0100                	.2byte	0x100
    16c4:	04090003          	lb	zero,64(s2)
    16c8:	0100                	.2byte	0x100
    16ca:	04090003          	lb	zero,64(s2)
    16ce:	0100                	.2byte	0x100
    16d0:	00090003          	lb	zero,0(s2)
    16d4:	0100                	.2byte	0x100
    16d6:	0300                	.2byte	0x300
    16d8:	8304                	.2byte	0x8304
    16da:	0301                	.2byte	0x301
    16dc:	0900                	.2byte	0x900
    16de:	0010                	.2byte	0x10
    16e0:	0001                	.2byte	0x1
    16e2:	0402                	.2byte	0x402
    16e4:	031d                	.2byte	0x31d
    16e6:	0900                	.2byte	0x900
    16e8:	0008                	.2byte	0x8
    16ea:	0601                	.2byte	0x601
    16ec:	08090003          	lb	zero,128(s2)
    16f0:	0100                	.2byte	0x100
    16f2:	0200                	.2byte	0x200
    16f4:	1104                	.2byte	0x1104
    16f6:	0306                	.2byte	0x306
    16f8:	0900                	.2byte	0x900
    16fa:	0008                	.2byte	0x8
    16fc:	0001                	.2byte	0x1
    16fe:	0402                	.2byte	0x402
    1700:	0900032b          	.4byte	0x900032b
    1704:	0004                	.2byte	0x4
    1706:	0001                	.2byte	0x1
    1708:	0402                	.2byte	0x402
    170a:	0334                	.2byte	0x334
    170c:	0900                	.2byte	0x900
    170e:	000c                	.2byte	0xc
    1710:	0301                	.2byte	0x301
    1712:	0900                	.2byte	0x900
    1714:	0008                	.2byte	0x8
    1716:	0301                	.2byte	0x301
    1718:	0900                	.2byte	0x900
    171a:	0004                	.2byte	0x4
    171c:	0001                	.2byte	0x1
    171e:	02fe0403          	lb	s0,47(t3) # 3f00258b <_stack_start+0x3eefa58b>
    1722:	00090003          	lb	zero,0(s2)
    1726:	0100                	.2byte	0x100
    1728:	0300                	.2byte	0x300
    172a:	fe04                	.2byte	0xfe04
    172c:	0302                	.2byte	0x302
    172e:	0900                	.2byte	0x900
    1730:	0000                	.2byte	0x0
    1732:	0001                	.2byte	0x1
    1734:	02fe0403          	lb	s0,47(t3)
    1738:	00090003          	lb	zero,0(s2)
    173c:	0100                	.2byte	0x100
    173e:	0300                	.2byte	0x300
    1740:	fe04                	.2byte	0xfe04
    1742:	0302                	.2byte	0x302
    1744:	0901                	.2byte	0x901
    1746:	0000                	.2byte	0x0
    1748:	0001                	.2byte	0x1
    174a:	02fe0403          	lb	s0,47(t3)
    174e:	00090003          	lb	zero,0(s2)
    1752:	0100                	.2byte	0x100
    1754:	0300                	.2byte	0x300
    1756:	fe04                	.2byte	0xfe04
    1758:	0302                	.2byte	0x302
    175a:	0900                	.2byte	0x900
    175c:	0000                	.2byte	0x0
    175e:	0001                	.2byte	0x1
    1760:	02fe0403          	lb	s0,47(t3)
    1764:	00090003          	lb	zero,0(s2)
    1768:	0100                	.2byte	0x100
    176a:	0300                	.2byte	0x300
    176c:	fe04                	.2byte	0xfe04
    176e:	0302                	.2byte	0x302
    1770:	0900                	.2byte	0x900
    1772:	0000                	.2byte	0x0
    1774:	0001                	.2byte	0x1
    1776:	0402                	.2byte	0x402
    1778:	0325                	.2byte	0x325
    177a:	0900                	.2byte	0x900
    177c:	0008                	.2byte	0x8
    177e:	0001                	.2byte	0x1
    1780:	0402                	.2byte	0x402
    1782:	0325                	.2byte	0x325
    1784:	0900                	.2byte	0x900
    1786:	0000                	.2byte	0x0
    1788:	0001                	.2byte	0x1
    178a:	0402                	.2byte	0x402
    178c:	0325                	.2byte	0x325
    178e:	0900                	.2byte	0x900
    1790:	0000                	.2byte	0x0
    1792:	0001                	.2byte	0x1
    1794:	0402                	.2byte	0x402
    1796:	0325                	.2byte	0x325
    1798:	0900                	.2byte	0x900
    179a:	0000                	.2byte	0x0
    179c:	0001                	.2byte	0x1
    179e:	0402                	.2byte	0x402
    17a0:	032c                	.2byte	0x32c
    17a2:	0900                	.2byte	0x900
    17a4:	000c                	.2byte	0xc
    17a6:	0001                	.2byte	0x1
    17a8:	0402                	.2byte	0x402
    17aa:	0335                	.2byte	0x335
    17ac:	097f 0008 0001 0402 	.byte	0x7f, 0x09, 0x08, 0x00, 0x01, 0x00, 0x02, 0x04, 0x35, 0x03
    17b4:	0335 
    17b6:	0900                	.2byte	0x900
    17b8:	0014                	.2byte	0x14
    17ba:	0001                	.2byte	0x1
    17bc:	0402                	.2byte	0x402
    17be:	0375                	.2byte	0x375
    17c0:	0900                	.2byte	0x900
    17c2:	0008                	.2byte	0x8
    17c4:	0001                	.2byte	0x1
    17c6:	01b00403          	lb	s0,27(zero) # 1b <__DYNAMIC+0x1b>
    17ca:	0c090003          	lb	zero,192(s2)
    17ce:	0100                	.2byte	0x100
    17d0:	0300                	.2byte	0x300
    17d2:	b004                	.2byte	0xb004
    17d4:	0301                	.2byte	0x301
    17d6:	0900                	.2byte	0x900
    17d8:	0000                	.2byte	0x0
    17da:	0001                	.2byte	0x1
    17dc:	01b00403          	lb	s0,27(zero) # 1b <__DYNAMIC+0x1b>
    17e0:	04090003          	lb	zero,64(s2)
    17e4:	0100                	.2byte	0x100
    17e6:	0300                	.2byte	0x300
    17e8:	b004                	.2byte	0xb004
    17ea:	0301                	.2byte	0x301
    17ec:	0900                	.2byte	0x900
    17ee:	0000                	.2byte	0x0
    17f0:	0001                	.2byte	0x1
    17f2:	01b00403          	lb	s0,27(zero) # 1b <__DYNAMIC+0x1b>
    17f6:	0306                	.2byte	0x306
    17f8:	0901                	.2byte	0x901
    17fa:	0004                	.2byte	0x4
    17fc:	0001                	.2byte	0x1
    17fe:	01b00403          	lb	s0,27(zero) # 1b <__DYNAMIC+0x1b>
    1802:	04097f03          	.4byte	0x4097f03
    1806:	0100                	.2byte	0x100
    1808:	04090003          	lb	zero,64(s2)
    180c:	0100                	.2byte	0x100
    180e:	0306                	.2byte	0x306
    1810:	0900                	.2byte	0x900
    1812:	001c                	.2byte	0x1c
    1814:	0301                	.2byte	0x301
    1816:	0900                	.2byte	0x900
    1818:	0004                	.2byte	0x4
    181a:	0301                	.2byte	0x301
    181c:	0900                	.2byte	0x900
    181e:	0004                	.2byte	0x4
    1820:	0301                	.2byte	0x301
    1822:	0900                	.2byte	0x900
    1824:	0000                	.2byte	0x0
    1826:	0001                	.2byte	0x1
    1828:	0402                	.2byte	0x402
    182a:	035f 0900 0004      	.byte	0x5f, 0x03, 0x00, 0x09, 0x04, 0x00
    1830:	0001                	.2byte	0x1
    1832:	0402                	.2byte	0x402
    1834:	035f 0900 0000      	.byte	0x5f, 0x03, 0x00, 0x09, 0x00, 0x00
    183a:	0601                	.2byte	0x601
    183c:	0c090003          	lb	zero,192(s2)
    1840:	0100                	.2byte	0x100
    1842:	0200                	.2byte	0x200
    1844:	4404                	.2byte	0x4404
    1846:	0306                	.2byte	0x306
    1848:	0900                	.2byte	0x900
    184a:	0004                	.2byte	0x4
    184c:	0001                	.2byte	0x1
    184e:	0402                	.2byte	0x402
    1850:	09000347          	.4byte	0x9000347
    1854:	0004                	.2byte	0x4
    1856:	0001                	.2byte	0x1
    1858:	0402                	.2byte	0x402
    185a:	09000347          	.4byte	0x9000347
    185e:	0000                	.2byte	0x0
    1860:	0001                	.2byte	0x1
    1862:	0402                	.2byte	0x402
    1864:	09000347          	.4byte	0x9000347
    1868:	0004                	.2byte	0x4
    186a:	0001                	.2byte	0x1
    186c:	0402                	.2byte	0x402
    186e:	0351                	.2byte	0x351
    1870:	0900                	.2byte	0x900
    1872:	0004                	.2byte	0x4
    1874:	0001                	.2byte	0x1
    1876:	0402                	.2byte	0x402
    1878:	0368                	.2byte	0x368
    187a:	0900                	.2byte	0x900
    187c:	0008                	.2byte	0x8
    187e:	0301                	.2byte	0x301
    1880:	0900                	.2byte	0x900
    1882:	0008                	.2byte	0x8
    1884:	0301                	.2byte	0x301
    1886:	0900                	.2byte	0x900
    1888:	0004                	.2byte	0x4
    188a:	0601                	.2byte	0x601
    188c:	00097f03          	.4byte	0x97f03
    1890:	0100                	.2byte	0x100
    1892:	0200                	.2byte	0x200
    1894:	6904                	.2byte	0x6904
    1896:	0306                	.2byte	0x306
    1898:	0901                	.2byte	0x901
    189a:	0008                	.2byte	0x8
    189c:	0001                	.2byte	0x1
    189e:	0402                	.2byte	0x402
    18a0:	0369                	.2byte	0x369
    18a2:	0900                	.2byte	0x900
    18a4:	0014                	.2byte	0x14
    18a6:	0001                	.2byte	0x1
    18a8:	0402                	.2byte	0x402
    18aa:	0669                	.2byte	0x669
    18ac:	08097f03          	.4byte	0x8097f03
    18b0:	0100                	.2byte	0x100
    18b2:	0200                	.2byte	0x200
    18b4:	4304                	.2byte	0x4304
    18b6:	0306                	.2byte	0x306
    18b8:	0901                	.2byte	0x901
    18ba:	0008                	.2byte	0x8
    18bc:	0001                	.2byte	0x1
    18be:	0402                	.2byte	0x402
    18c0:	0376                	.2byte	0x376
    18c2:	0900                	.2byte	0x900
    18c4:	000c                	.2byte	0xc
    18c6:	0001                	.2byte	0x1
    18c8:	0402                	.2byte	0x402
    18ca:	0378                	.2byte	0x378
    18cc:	0900                	.2byte	0x900
    18ce:	0004                	.2byte	0x4
    18d0:	0001                	.2byte	0x1
    18d2:	0402                	.2byte	0x402
    18d4:	0378                	.2byte	0x378
    18d6:	0900                	.2byte	0x900
    18d8:	0000                	.2byte	0x0
    18da:	0001                	.2byte	0x1
    18dc:	0402                	.2byte	0x402
    18de:	0900037b          	.4byte	0x900037b
    18e2:	0004                	.2byte	0x4
    18e4:	0001                	.2byte	0x1
    18e6:	01810403          	lb	s0,24(sp)
    18ea:	04090003          	lb	zero,64(s2)
    18ee:	0100                	.2byte	0x100
    18f0:	0300                	.2byte	0x300
    18f2:	8104                	.2byte	0x8104
    18f4:	0301                	.2byte	0x301
    18f6:	0900                	.2byte	0x900
    18f8:	0000                	.2byte	0x0
    18fa:	0001                	.2byte	0x1
    18fc:	01810403          	lb	s0,24(sp)
    1900:	04090003          	lb	zero,64(s2)
    1904:	0100                	.2byte	0x100
    1906:	0300                	.2byte	0x300
    1908:	8304                	.2byte	0x8304
    190a:	0301                	.2byte	0x301
    190c:	0900                	.2byte	0x900
    190e:	000c                	.2byte	0xc
    1910:	0001                	.2byte	0x1
    1912:	01940403          	lb	s0,25(s0)
    1916:	10090003          	lb	zero,256(s2)
    191a:	0100                	.2byte	0x100
    191c:	0300                	.2byte	0x300
    191e:	9404                	.2byte	0x9404
    1920:	0301                	.2byte	0x301
    1922:	0900                	.2byte	0x900
    1924:	0000                	.2byte	0x0
    1926:	0001                	.2byte	0x1
    1928:	01940403          	lb	s0,25(s0)
    192c:	00090003          	lb	zero,0(s2)
    1930:	0100                	.2byte	0x100
    1932:	0300                	.2byte	0x300
    1934:	9404                	.2byte	0x9404
    1936:	0301                	.2byte	0x301
    1938:	0900                	.2byte	0x900
    193a:	0000                	.2byte	0x0
    193c:	0001                	.2byte	0x1
    193e:	01940403          	lb	s0,25(s0)
    1942:	00090003          	lb	zero,0(s2)
    1946:	0100                	.2byte	0x100
    1948:	0300                	.2byte	0x300
    194a:	9404                	.2byte	0x9404
    194c:	0301                	.2byte	0x301
    194e:	0900                	.2byte	0x900
    1950:	0000                	.2byte	0x0
    1952:	0001                	.2byte	0x1
    1954:	01940403          	lb	s0,25(s0)
    1958:	00090003          	lb	zero,0(s2)
    195c:	0100                	.2byte	0x100
    195e:	0300                	.2byte	0x300
    1960:	9404                	.2byte	0x9404
    1962:	0301                	.2byte	0x301
    1964:	0900                	.2byte	0x900
    1966:	0000                	.2byte	0x0
    1968:	0001                	.2byte	0x1
    196a:	02ce0403          	lb	s0,44(t3)
    196e:	04090003          	lb	zero,64(s2)
    1972:	0100                	.2byte	0x100
    1974:	0200                	.2byte	0x200
    1976:	7704                	.2byte	0x7704
    1978:	08090003          	lb	zero,128(s2)
    197c:	0100                	.2byte	0x100
    197e:	0200                	.2byte	0x200
    1980:	7704                	.2byte	0x7704
    1982:	00090003          	lb	zero,0(s2)
    1986:	0100                	.2byte	0x100
    1988:	0200                	.2byte	0x200
    198a:	7704                	.2byte	0x7704
    198c:	00090003          	lb	zero,0(s2)
    1990:	0100                	.2byte	0x100
    1992:	0200                	.2byte	0x200
    1994:	7704                	.2byte	0x7704
    1996:	00090003          	lb	zero,0(s2)
    199a:	0100                	.2byte	0x100
    199c:	0306                	.2byte	0x306
    199e:	0900                	.2byte	0x900
    19a0:	0008                	.2byte	0x8
    19a2:	0301                	.2byte	0x301
    19a4:	097e                	.2byte	0x97e
    19a6:	0008                	.2byte	0x8
    19a8:	0001                	.2byte	0x1
    19aa:	0402                	.2byte	0x402
    19ac:	060d                	.2byte	0x60d
    19ae:	08090203          	lb	tp,128(s2)
    19b2:	0100                	.2byte	0x100
    19b4:	0200                	.2byte	0x200
    19b6:	0d04                	.2byte	0xd04
    19b8:	00090003          	lb	zero,0(s2)
    19bc:	0100                	.2byte	0x100
    19be:	0300                	.2byte	0x300
    19c0:	c204                	.2byte	0xc204
    19c2:	0301                	.2byte	0x301
    19c4:	0900                	.2byte	0x900
    19c6:	0004                	.2byte	0x4
    19c8:	0001                	.2byte	0x1
    19ca:	01c20403          	lb	s0,28(tp) # 1c <__DYNAMIC+0x1c>
    19ce:	00090003          	lb	zero,0(s2)
    19d2:	0100                	.2byte	0x100
    19d4:	0300                	.2byte	0x300
    19d6:	c204                	.2byte	0xc204
    19d8:	0301                	.2byte	0x301
    19da:	0900                	.2byte	0x900
    19dc:	0000                	.2byte	0x0
    19de:	0001                	.2byte	0x1
    19e0:	01c40403          	lb	s0,28(s0)
    19e4:	04090003          	lb	zero,64(s2)
    19e8:	0100                	.2byte	0x100
    19ea:	0300                	.2byte	0x300
    19ec:	c704                	.2byte	0xc704
    19ee:	0301                	.2byte	0x301
    19f0:	0900                	.2byte	0x900
    19f2:	0004                	.2byte	0x4
    19f4:	0001                	.2byte	0x1
    19f6:	01c70403          	lb	s0,28(a4)
    19fa:	00090003          	lb	zero,0(s2)
    19fe:	0100                	.2byte	0x100
    1a00:	0300                	.2byte	0x300
    1a02:	c704                	.2byte	0xc704
    1a04:	0301                	.2byte	0x301
    1a06:	0900                	.2byte	0x900
    1a08:	0004                	.2byte	0x4
    1a0a:	0001                	.2byte	0x1
    1a0c:	01d00403          	lb	s0,29(zero) # 1d <__DYNAMIC+0x1d>
    1a10:	04090003          	lb	zero,64(s2)
    1a14:	0100                	.2byte	0x100
    1a16:	0300                	.2byte	0x300
    1a18:	d004                	.2byte	0xd004
    1a1a:	0301                	.2byte	0x301
    1a1c:	0900                	.2byte	0x900
    1a1e:	0004                	.2byte	0x4
    1a20:	0001                	.2byte	0x1
    1a22:	02840403          	lb	s0,40(s0)
    1a26:	00090003          	lb	zero,0(s2)
    1a2a:	0100                	.2byte	0x100
    1a2c:	0300                	.2byte	0x300
    1a2e:	8404                	.2byte	0x8404
    1a30:	0602                	.2byte	0x602
    1a32:	00097f03          	.4byte	0x97f03
    1a36:	0100                	.2byte	0x100
    1a38:	0300                	.2byte	0x300
    1a3a:	8404                	.2byte	0x8404
    1a3c:	0302                	.2byte	0x302
    1a3e:	0901                	.2byte	0x901
    1a40:	0004                	.2byte	0x4
    1a42:	0001                	.2byte	0x1
    1a44:	01d10403          	lb	s0,29(sp)
    1a48:	0306                	.2byte	0x306
    1a4a:	0900                	.2byte	0x900
    1a4c:	0004                	.2byte	0x4
    1a4e:	0001                	.2byte	0x1
    1a50:	01e80403          	lb	s0,30(a6)
    1a54:	04090003          	lb	zero,64(s2)
    1a58:	0100                	.2byte	0x100
    1a5a:	0300                	.2byte	0x300
    1a5c:	e904                	.2byte	0xe904
    1a5e:	0301                	.2byte	0x301
    1a60:	0900                	.2byte	0x900
    1a62:	000c                	.2byte	0xc
    1a64:	0001                	.2byte	0x1
    1a66:	01f40403          	lb	s0,31(s0)
    1a6a:	18090003          	lb	zero,384(s2)
    1a6e:	0100                	.2byte	0x100
    1a70:	0300                	.2byte	0x300
    1a72:	a904                	.2byte	0xa904
    1a74:	0302                	.2byte	0x302
    1a76:	0900                	.2byte	0x900
    1a78:	0004                	.2byte	0x4
    1a7a:	0001                	.2byte	0x1
    1a7c:	02e40403          	lb	s0,46(s0)
    1a80:	0c090003          	lb	zero,192(s2)
    1a84:	0100                	.2byte	0x100
    1a86:	0300                	.2byte	0x300
    1a88:	e404                	.2byte	0xe404
    1a8a:	0302                	.2byte	0x302
    1a8c:	0900                	.2byte	0x900
    1a8e:	0000                	.2byte	0x0
    1a90:	0001                	.2byte	0x1
    1a92:	01c50403          	lb	s0,28(a0)
    1a96:	0c090003          	lb	zero,192(s2)
    1a9a:	0100                	.2byte	0x100
    1a9c:	0300                	.2byte	0x300
    1a9e:	df04                	.2byte	0xdf04
    1aa0:	0301                	.2byte	0x301
    1aa2:	0900                	.2byte	0x900
    1aa4:	0004                	.2byte	0x4
    1aa6:	0301                	.2byte	0x301
    1aa8:	0900                	.2byte	0x900
    1aaa:	0010                	.2byte	0x10
    1aac:	0301                	.2byte	0x301
    1aae:	0900                	.2byte	0x900
    1ab0:	0004                	.2byte	0x4
    1ab2:	0301                	.2byte	0x301
    1ab4:	0900                	.2byte	0x900
    1ab6:	0000                	.2byte	0x0
    1ab8:	0301                	.2byte	0x301
    1aba:	0900                	.2byte	0x900
    1abc:	0000                	.2byte	0x0
    1abe:	0301                	.2byte	0x301
    1ac0:	0900                	.2byte	0x900
    1ac2:	0000                	.2byte	0x0
    1ac4:	0301                	.2byte	0x301
    1ac6:	0900                	.2byte	0x900
    1ac8:	0010                	.2byte	0x10
    1aca:	0301                	.2byte	0x301
    1acc:	0900                	.2byte	0x900
    1ace:	0004                	.2byte	0x4
    1ad0:	0301                	.2byte	0x301
    1ad2:	0900                	.2byte	0x900
    1ad4:	0000                	.2byte	0x0
    1ad6:	0301                	.2byte	0x301
    1ad8:	0900                	.2byte	0x900
    1ada:	0000                	.2byte	0x0
    1adc:	0301                	.2byte	0x301
    1ade:	0900                	.2byte	0x900
    1ae0:	0000                	.2byte	0x0
    1ae2:	0301                	.2byte	0x301
    1ae4:	0900                	.2byte	0x900
    1ae6:	0010                	.2byte	0x10
    1ae8:	0301                	.2byte	0x301
    1aea:	0900                	.2byte	0x900
    1aec:	0004                	.2byte	0x4
    1aee:	0301                	.2byte	0x301
    1af0:	0900                	.2byte	0x900
    1af2:	0004                	.2byte	0x4
    1af4:	0301                	.2byte	0x301
    1af6:	0900                	.2byte	0x900
    1af8:	0000                	.2byte	0x0
    1afa:	0301                	.2byte	0x301
    1afc:	0900                	.2byte	0x900
    1afe:	0000                	.2byte	0x0
    1b00:	0001                	.2byte	0x1
    1b02:	01f80403          	lb	s0,31(a6)
    1b06:	0c090003          	lb	zero,192(s2)
    1b0a:	0100                	.2byte	0x100
    1b0c:	0300                	.2byte	0x300
    1b0e:	fb04                	.2byte	0xfb04
    1b10:	0301                	.2byte	0x301
    1b12:	0900                	.2byte	0x900
    1b14:	0004                	.2byte	0x4
    1b16:	0001                	.2byte	0x1
    1b18:	01fb0403          	lb	s0,31(s6)
    1b1c:	00090003          	lb	zero,0(s2)
    1b20:	0100                	.2byte	0x100
    1b22:	0300                	.2byte	0x300
    1b24:	fb04                	.2byte	0xfb04
    1b26:	0301                	.2byte	0x301
    1b28:	0900                	.2byte	0x900
    1b2a:	0004                	.2byte	0x4
    1b2c:	0001                	.2byte	0x1
    1b2e:	02840403          	lb	s0,40(s0)
    1b32:	04090003          	lb	zero,64(s2)
    1b36:	0100                	.2byte	0x100
    1b38:	0306                	.2byte	0x306
    1b3a:	0900                	.2byte	0x900
    1b3c:	0008                	.2byte	0x8
    1b3e:	0001                	.2byte	0x1
    1b40:	02850403          	lb	s0,40(a0)
    1b44:	0306                	.2byte	0x306
    1b46:	0900                	.2byte	0x900
    1b48:	0014                	.2byte	0x14
    1b4a:	0001                	.2byte	0x1
    1b4c:	029c0403          	lb	s0,41(s8)
    1b50:	08090003          	lb	zero,128(s2)
    1b54:	0100                	.2byte	0x100
    1b56:	0300                	.2byte	0x300
    1b58:	9d04                	.2byte	0x9d04
    1b5a:	0302                	.2byte	0x302
    1b5c:	0900                	.2byte	0x900
    1b5e:	000c                	.2byte	0xc
    1b60:	0001                	.2byte	0x1
    1b62:	02a80403          	lb	s0,42(a6)
    1b66:	18090003          	lb	zero,384(s2)
    1b6a:	0100                	.2byte	0x100
    1b6c:	0300                	.2byte	0x300
    1b6e:	a804                	.2byte	0xa804
    1b70:	0602                	.2byte	0x602
    1b72:	04097f03          	.4byte	0x4097f03
    1b76:	0100                	.2byte	0x100
    1b78:	0300                	.2byte	0x300
    1b7a:	9304                	.2byte	0x9304
    1b7c:	0602                	.2byte	0x602
    1b7e:	08090103          	lb	sp,128(s2)
    1b82:	0100                	.2byte	0x100
    1b84:	0300                	.2byte	0x300
    1b86:	9304                	.2byte	0x9304
    1b88:	0302                	.2byte	0x302
    1b8a:	0900                	.2byte	0x900
    1b8c:	0000                	.2byte	0x0
    1b8e:	0001                	.2byte	0x1
    1b90:	01f70403          	lb	s0,31(a4)
    1b94:	10090003          	lb	zero,256(s2)
    1b98:	0100                	.2byte	0x100
    1b9a:	0300                	.2byte	0x300
    1b9c:	aa04                	.2byte	0xaa04
    1b9e:	0302                	.2byte	0x302
    1ba0:	0900                	.2byte	0x900
    1ba2:	000c                	.2byte	0xc
    1ba4:	0001                	.2byte	0x1
    1ba6:	02ac0403          	lb	s0,42(s8)
    1baa:	04090003          	lb	zero,64(s2)
    1bae:	0100                	.2byte	0x100
    1bb0:	0300                	.2byte	0x300
    1bb2:	ac04                	.2byte	0xac04
    1bb4:	0302                	.2byte	0x302
    1bb6:	0900                	.2byte	0x900
    1bb8:	0000                	.2byte	0x0
    1bba:	0001                	.2byte	0x1
    1bbc:	02ae0403          	lb	s0,42(t3)
    1bc0:	04090003          	lb	zero,64(s2)
    1bc4:	0100                	.2byte	0x100
    1bc6:	0300                	.2byte	0x300
    1bc8:	ae04                	.2byte	0xae04
    1bca:	0302                	.2byte	0x302
    1bcc:	0900                	.2byte	0x900
    1bce:	0000                	.2byte	0x0
    1bd0:	0001                	.2byte	0x1
    1bd2:	02b80403          	lb	s0,43(a6)
    1bd6:	04090003          	lb	zero,64(s2)
    1bda:	0100                	.2byte	0x100
    1bdc:	0300                	.2byte	0x300
    1bde:	af04                	.2byte	0xaf04
    1be0:	0302                	.2byte	0x302
    1be2:	0900                	.2byte	0x900
    1be4:	0008                	.2byte	0x8
    1be6:	0001                	.2byte	0x1
    1be8:	02b60403          	lb	s0,43(a2)
    1bec:	04090003          	lb	zero,64(s2)
    1bf0:	0100                	.2byte	0x100
    1bf2:	0300                	.2byte	0x300
    1bf4:	b604                	.2byte	0xb604
    1bf6:	0302                	.2byte	0x302
    1bf8:	0900                	.2byte	0x900
    1bfa:	0000                	.2byte	0x0
    1bfc:	0001                	.2byte	0x1
    1bfe:	02b60403          	lb	s0,43(a2)
    1c02:	04090003          	lb	zero,64(s2)
    1c06:	0100                	.2byte	0x100
    1c08:	0300                	.2byte	0x300
    1c0a:	b604                	.2byte	0xb604
    1c0c:	0302                	.2byte	0x302
    1c0e:	0900                	.2byte	0x900
    1c10:	0000                	.2byte	0x0
    1c12:	0001                	.2byte	0x1
    1c14:	02b80403          	lb	s0,43(a6)
    1c18:	0c090003          	lb	zero,192(s2)
    1c1c:	0100                	.2byte	0x100
    1c1e:	0300                	.2byte	0x300
    1c20:	b904                	.2byte	0xb904
    1c22:	0302                	.2byte	0x302
    1c24:	0900                	.2byte	0x900
    1c26:	0008                	.2byte	0x8
    1c28:	0601                	.2byte	0x601
    1c2a:	08090003          	lb	zero,128(s2)
    1c2e:	0100                	.2byte	0x100
    1c30:	0300                	.2byte	0x300
    1c32:	cc04                	.2byte	0xcc04
    1c34:	0602                	.2byte	0x602
    1c36:	08090003          	lb	zero,128(s2)
    1c3a:	0100                	.2byte	0x100
    1c3c:	0300                	.2byte	0x300
    1c3e:	cc04                	.2byte	0xcc04
    1c40:	0302                	.2byte	0x302
    1c42:	0900                	.2byte	0x900
    1c44:	0000                	.2byte	0x0
    1c46:	0001                	.2byte	0x1
    1c48:	02cc0403          	lb	s0,44(s8)
    1c4c:	00090003          	lb	zero,0(s2)
    1c50:	0100                	.2byte	0x100
    1c52:	0300                	.2byte	0x300
    1c54:	cc04                	.2byte	0xcc04
    1c56:	0302                	.2byte	0x302
    1c58:	0900                	.2byte	0x900
    1c5a:	0000                	.2byte	0x0
    1c5c:	0001                	.2byte	0x1
    1c5e:	02cc0403          	lb	s0,44(s8)
    1c62:	00090003          	lb	zero,0(s2)
    1c66:	0100                	.2byte	0x100
    1c68:	0300                	.2byte	0x300
    1c6a:	cc04                	.2byte	0xcc04
    1c6c:	0302                	.2byte	0x302
    1c6e:	0900                	.2byte	0x900
    1c70:	0000                	.2byte	0x0
    1c72:	0001                	.2byte	0x1
    1c74:	02cc0403          	lb	s0,44(s8)
    1c78:	00090003          	lb	zero,0(s2)
    1c7c:	0100                	.2byte	0x100
    1c7e:	0300                	.2byte	0x300
    1c80:	cc04                	.2byte	0xcc04
    1c82:	0302                	.2byte	0x302
    1c84:	0900                	.2byte	0x900
    1c86:	0000                	.2byte	0x0
    1c88:	0001                	.2byte	0x1
    1c8a:	02cd0403          	lb	s0,44(s10) # cbbe <__libc_init_array+0xa9ca>
    1c8e:	04090003          	lb	zero,64(s2)
    1c92:	0100                	.2byte	0x100
    1c94:	0306                	.2byte	0x306
    1c96:	0901                	.2byte	0x901
    1c98:	0008                	.2byte	0x8
    1c9a:	0001                	.2byte	0x1
    1c9c:	02ab0403          	lb	s0,42(s6)
    1ca0:	0306                	.2byte	0x306
    1ca2:	097f 0010 0001 0403 	.byte	0x7f, 0x09, 0x10, 0x00, 0x01, 0x00, 0x03, 0x04, 0xab, 0x02
    1caa:	02ab 
    1cac:	00090003          	lb	zero,0(s2)
    1cb0:	0100                	.2byte	0x100
    1cb2:	0300                	.2byte	0x300
    1cb4:	ab04                	.2byte	0xab04
    1cb6:	0302                	.2byte	0x302
    1cb8:	0900                	.2byte	0x900
    1cba:	0004                	.2byte	0x4
    1cbc:	0001                	.2byte	0x1
    1cbe:	02ab0403          	lb	s0,42(s6)
    1cc2:	00090003          	lb	zero,0(s2)
    1cc6:	0100                	.2byte	0x100
    1cc8:	0300                	.2byte	0x300
    1cca:	dd04                	.2byte	0xdd04
    1ccc:	0302                	.2byte	0x302
    1cce:	0900                	.2byte	0x900
    1cd0:	000c                	.2byte	0xc
    1cd2:	0001                	.2byte	0x1
    1cd4:	02dd0403          	lb	s0,45(s10)
    1cd8:	04090003          	lb	zero,64(s2)
    1cdc:	0100                	.2byte	0x100
    1cde:	0300                	.2byte	0x300
    1ce0:	e704                	.2byte	0xe704
    1ce2:	0302                	.2byte	0x302
    1ce4:	0900                	.2byte	0x900
    1ce6:	0004                	.2byte	0x4
    1ce8:	0001                	.2byte	0x1
    1cea:	02e70403          	lb	s0,46(a4)
    1cee:	00090003          	lb	zero,0(s2)
    1cf2:	0100                	.2byte	0x100
    1cf4:	0300                	.2byte	0x300
    1cf6:	e704                	.2byte	0xe704
    1cf8:	0302                	.2byte	0x302
    1cfa:	0900                	.2byte	0x900
    1cfc:	0000                	.2byte	0x0
    1cfe:	0001                	.2byte	0x1
    1d00:	02e70403          	lb	s0,46(a4)
    1d04:	00090003          	lb	zero,0(s2)
    1d08:	0100                	.2byte	0x100
    1d0a:	0300                	.2byte	0x300
    1d0c:	e704                	.2byte	0xe704
    1d0e:	0302                	.2byte	0x302
    1d10:	0900                	.2byte	0x900
    1d12:	0008                	.2byte	0x8
    1d14:	0001                	.2byte	0x1
    1d16:	02e70403          	lb	s0,46(a4)
    1d1a:	00090003          	lb	zero,0(s2)
    1d1e:	0100                	.2byte	0x100
    1d20:	0300                	.2byte	0x300
    1d22:	e704                	.2byte	0xe704
    1d24:	0302                	.2byte	0x302
    1d26:	0900                	.2byte	0x900
    1d28:	0004                	.2byte	0x4
    1d2a:	0001                	.2byte	0x1
    1d2c:	02e70403          	lb	s0,46(a4)
    1d30:	00090003          	lb	zero,0(s2)
    1d34:	0100                	.2byte	0x100
    1d36:	0300                	.2byte	0x300
    1d38:	e704                	.2byte	0xe704
    1d3a:	0302                	.2byte	0x302
    1d3c:	0900                	.2byte	0x900
    1d3e:	0000                	.2byte	0x0
    1d40:	0001                	.2byte	0x1
    1d42:	02e70403          	lb	s0,46(a4)
    1d46:	04090003          	lb	zero,64(s2)
    1d4a:	0100                	.2byte	0x100
    1d4c:	0300                	.2byte	0x300
    1d4e:	e704                	.2byte	0xe704
    1d50:	0302                	.2byte	0x302
    1d52:	0900                	.2byte	0x900
    1d54:	0000                	.2byte	0x0
    1d56:	0001                	.2byte	0x1
    1d58:	02f40403          	lb	s0,47(s0)
    1d5c:	04090003          	lb	zero,64(s2)
    1d60:	0100                	.2byte	0x100
    1d62:	0300                	.2byte	0x300
    1d64:	f404                	.2byte	0xf404
    1d66:	0302                	.2byte	0x302
    1d68:	0900                	.2byte	0x900
    1d6a:	0008                	.2byte	0x8
    1d6c:	0001                	.2byte	0x1
    1d6e:	02f40403          	lb	s0,47(s0)
    1d72:	18090003          	lb	zero,384(s2)
    1d76:	0100                	.2byte	0x100
    1d78:	0300                	.2byte	0x300
    1d7a:	de04                	.2byte	0xde04
    1d7c:	0302                	.2byte	0x302
    1d7e:	0900                	.2byte	0x900
    1d80:	0008                	.2byte	0x8
    1d82:	0601                	.2byte	0x601
    1d84:	04090003          	lb	zero,64(s2)
    1d88:	0100                	.2byte	0x100
    1d8a:	0300                	.2byte	0x300
    1d8c:	f504                	.2byte	0xf504
    1d8e:	0602                	.2byte	0x602
    1d90:	08090003          	lb	zero,128(s2)
    1d94:	0100                	.2byte	0x100
    1d96:	0300                	.2byte	0x300
    1d98:	f504                	.2byte	0xf504
    1d9a:	0302                	.2byte	0x302
    1d9c:	0900                	.2byte	0x900
    1d9e:	000c                	.2byte	0xc
    1da0:	0601                	.2byte	0x601
    1da2:	08097e03          	.4byte	0x8097e03
    1da6:	0100                	.2byte	0x100
    1da8:	0200                	.2byte	0x200
    1daa:	4f04                	.2byte	0x4f04
    1dac:	0306                	.2byte	0x306
    1dae:	00100903          	lb	s2,1(zero) # 1 <__DYNAMIC+0x1>
    1db2:	0001                	.2byte	0x1
    1db4:	0402                	.2byte	0x402
    1db6:	0900034f          	.4byte	0x900034f
    1dba:	0000                	.2byte	0x0
    1dbc:	0001                	.2byte	0x1
    1dbe:	0402                	.2byte	0x402
    1dc0:	0900034f          	.4byte	0x900034f
    1dc4:	0004                	.2byte	0x4
    1dc6:	0001                	.2byte	0x1
    1dc8:	0402                	.2byte	0x402
    1dca:	0650                	.2byte	0x650
    1dcc:	08090003          	lb	zero,128(s2)
    1dd0:	0100                	.2byte	0x100
    1dd2:	04090003          	lb	zero,64(s2)
    1dd6:	0100                	.2byte	0x100
    1dd8:	1c09                	.2byte	0x1c09
    1dda:	0000                	.2byte	0x0
    1ddc:	0101                	.2byte	0x101
    1dde:	000001d7          	.4byte	0x1d7
    1de2:	0005                	.2byte	0x5
    1de4:	0004                	.2byte	0x4
    1de6:	0038                	.2byte	0x38
    1de8:	0000                	.2byte	0x0
    1dea:	0101                	.2byte	0x101
    1dec:	fb01                	.2byte	0xfb01
    1dee:	0d0e                	.2byte	0xd0e
    1df0:	0100                	.2byte	0x100
    1df2:	0101                	.2byte	0x101
    1df4:	0001                	.2byte	0x1
    1df6:	0000                	.2byte	0x0
    1df8:	0001                	.2byte	0x1
    1dfa:	0100                	.2byte	0x100
    1dfc:	0101                	.2byte	0x101
    1dfe:	021f 0000 0000      	.byte	0x1f, 0x02, 0x00, 0x00, 0x00, 0x00
    1e04:	00a4                	.2byte	0xa4
    1e06:	0000                	.2byte	0x0
    1e08:	0102                	.2byte	0x102
    1e0a:	021f 040f 01f4      	.byte	0x1f, 0x02, 0x0f, 0x04, 0xf4, 0x01
    1e10:	0000                	.2byte	0x0
    1e12:	f401                	.2byte	0xf401
    1e14:	0001                	.2byte	0x1
    1e16:	0100                	.2byte	0x100
    1e18:	00000173          	.4byte	0x173
    1e1c:	db01                	.2byte	0xdb01
    1e1e:	0000                	.2byte	0x0
    1e20:	0100                	.2byte	0x100
    1e22:	0105                	.2byte	0x105
    1e24:	0500                	.2byte	0x500
    1e26:	1402                	.2byte	0x1402
    1e28:	0020                	.2byte	0x20
    1e2a:	0300                	.2byte	0x300
    1e2c:	03050123          	sb	a6,34(a0)
    1e30:	00090103          	lb	sp,0(s2)
    1e34:	0100                	.2byte	0x100
    1e36:	00090003          	lb	zero,0(s2)
    1e3a:	0100                	.2byte	0x100
    1e3c:	0d05                	.2byte	0xd05
    1e3e:	00090003          	lb	zero,0(s2)
    1e42:	0100                	.2byte	0x100
    1e44:	0305                	.2byte	0x305
    1e46:	00090103          	lb	sp,0(s2)
    1e4a:	0100                	.2byte	0x100
    1e4c:	00090003          	lb	zero,0(s2)
    1e50:	0100                	.2byte	0x100
    1e52:	00090003          	lb	zero,0(s2)
    1e56:	0100                	.2byte	0x100
    1e58:	00090003          	lb	zero,0(s2)
    1e5c:	0100                	.2byte	0x100
    1e5e:	00090103          	lb	sp,0(s2)
    1e62:	0100                	.2byte	0x100
    1e64:	00090203          	lb	tp,0(s2)
    1e68:	0100                	.2byte	0x100
    1e6a:	00090103          	lb	sp,0(s2)
    1e6e:	0100                	.2byte	0x100
    1e70:	00090003          	lb	zero,0(s2)
    1e74:	0100                	.2byte	0x100
    1e76:	00090003          	lb	zero,0(s2)
    1e7a:	0100                	.2byte	0x100
    1e7c:	00090003          	lb	zero,0(s2)
    1e80:	0100                	.2byte	0x100
    1e82:	0306                	.2byte	0x306
    1e84:	0901                	.2byte	0x901
    1e86:	0010                	.2byte	0x10
    1e88:	0301                	.2byte	0x301
    1e8a:	097f 0004 0601 0003 	.byte	0x7f, 0x09, 0x04, 0x00, 0x01, 0x06, 0x03, 0x00, 0x09, 0x04
    1e92:	0409 
    1e94:	0100                	.2byte	0x100
    1e96:	00090003          	lb	zero,0(s2)
    1e9a:	0100                	.2byte	0x100
    1e9c:	04090003          	lb	zero,64(s2)
    1ea0:	0100                	.2byte	0x100
    1ea2:	00090103          	lb	sp,0(s2)
    1ea6:	0100                	.2byte	0x100
    1ea8:	00090003          	lb	zero,0(s2)
    1eac:	0100                	.2byte	0x100
    1eae:	0200                	.2byte	0x200
    1eb0:	0a04                	.2byte	0xa04
    1eb2:	04090003          	lb	zero,64(s2)
    1eb6:	0100                	.2byte	0x100
    1eb8:	0200                	.2byte	0x200
    1eba:	0a04                	.2byte	0xa04
    1ebc:	00090003          	lb	zero,0(s2)
    1ec0:	0100                	.2byte	0x100
    1ec2:	0200                	.2byte	0x200
    1ec4:	0e04                	.2byte	0xe04
    1ec6:	08090003          	lb	zero,128(s2)
    1eca:	0100                	.2byte	0x100
    1ecc:	0200                	.2byte	0x200
    1ece:	0e04                	.2byte	0xe04
    1ed0:	00090003          	lb	zero,0(s2)
    1ed4:	0100                	.2byte	0x100
    1ed6:	0200                	.2byte	0x200
    1ed8:	0e04                	.2byte	0xe04
    1eda:	00090003          	lb	zero,0(s2)
    1ede:	0100                	.2byte	0x100
    1ee0:	0200                	.2byte	0x200
    1ee2:	0e04                	.2byte	0xe04
    1ee4:	00090003          	lb	zero,0(s2)
    1ee8:	0100                	.2byte	0x100
    1eea:	0200                	.2byte	0x200
    1eec:	0e04                	.2byte	0xe04
    1eee:	0c090003          	lb	zero,192(s2)
    1ef2:	0100                	.2byte	0x100
    1ef4:	0200                	.2byte	0x200
    1ef6:	0d04                	.2byte	0xd04
    1ef8:	04090003          	lb	zero,64(s2)
    1efc:	0100                	.2byte	0x100
    1efe:	0200                	.2byte	0x200
    1f00:	0d04                	.2byte	0xd04
    1f02:	00090003          	lb	zero,0(s2)
    1f06:	0100                	.2byte	0x100
    1f08:	0200                	.2byte	0x200
    1f0a:	0d04                	.2byte	0xd04
    1f0c:	04090003          	lb	zero,64(s2)
    1f10:	0100                	.2byte	0x100
    1f12:	0200                	.2byte	0x200
    1f14:	1b04                	.2byte	0x1b04
    1f16:	08090003          	lb	zero,128(s2)
    1f1a:	0100                	.2byte	0x100
    1f1c:	0200                	.2byte	0x200
    1f1e:	1b04                	.2byte	0x1b04
    1f20:	00090003          	lb	zero,0(s2)
    1f24:	0100                	.2byte	0x100
    1f26:	0200                	.2byte	0x200
    1f28:	2404                	.2byte	0x2404
    1f2a:	08090003          	lb	zero,128(s2)
    1f2e:	0100                	.2byte	0x100
    1f30:	0200                	.2byte	0x200
    1f32:	2504                	.2byte	0x2504
    1f34:	04090003          	lb	zero,64(s2)
    1f38:	0100                	.2byte	0x100
    1f3a:	0200                	.2byte	0x200
    1f3c:	1c04                	.2byte	0x1c04
    1f3e:	08090003          	lb	zero,128(s2)
    1f42:	0100                	.2byte	0x100
    1f44:	0200                	.2byte	0x200
    1f46:	1c04                	.2byte	0x1c04
    1f48:	00090003          	lb	zero,0(s2)
    1f4c:	0100                	.2byte	0x100
    1f4e:	0200                	.2byte	0x200
    1f50:	1c04                	.2byte	0x1c04
    1f52:	00090003          	lb	zero,0(s2)
    1f56:	0100                	.2byte	0x100
    1f58:	0200                	.2byte	0x200
    1f5a:	1c04                	.2byte	0x1c04
    1f5c:	0c090003          	lb	zero,192(s2)
    1f60:	0100                	.2byte	0x100
    1f62:	0200                	.2byte	0x200
    1f64:	1c04                	.2byte	0x1c04
    1f66:	00090003          	lb	zero,0(s2)
    1f6a:	0100                	.2byte	0x100
    1f6c:	0306                	.2byte	0x306
    1f6e:	0900                	.2byte	0x900
    1f70:	0004                	.2byte	0x4
    1f72:	0001                	.2byte	0x1
    1f74:	0402                	.2byte	0x402
    1f76:	00030633          	add	a2,t1,zero
    1f7a:	0409                	.2byte	0x409
    1f7c:	0100                	.2byte	0x100
    1f7e:	0200                	.2byte	0x200
    1f80:	3304                	.2byte	0x3304
    1f82:	00090103          	lb	sp,0(s2)
    1f86:	0100                	.2byte	0x100
    1f88:	0200                	.2byte	0x200
    1f8a:	3304                	.2byte	0x3304
    1f8c:	00090003          	lb	zero,0(s2)
    1f90:	0100                	.2byte	0x100
    1f92:	0200                	.2byte	0x200
    1f94:	3304                	.2byte	0x3304
    1f96:	00090003          	lb	zero,0(s2)
    1f9a:	0100                	.2byte	0x100
    1f9c:	0200                	.2byte	0x200
    1f9e:	3304                	.2byte	0x3304
    1fa0:	00090203          	lb	tp,0(s2)
    1fa4:	0100                	.2byte	0x100
    1fa6:	0105                	.2byte	0x105
    1fa8:	0200                	.2byte	0x200
    1faa:	3304                	.2byte	0x3304
    1fac:	0306                	.2byte	0x306
    1fae:	0901                	.2byte	0x901
    1fb0:	0000                	.2byte	0x0
    1fb2:	0901                	.2byte	0x901
    1fb4:	0004                	.2byte	0x4
    1fb6:	0100                	.2byte	0x100
    1fb8:	5d01                	.2byte	0x5d01
    1fba:	05000003          	lb	zero,80(zero) # 50 <__DYNAMIC+0x50>
    1fbe:	0400                	.2byte	0x400
    1fc0:	3800                	.2byte	0x3800
    1fc2:	0000                	.2byte	0x0
    1fc4:	0100                	.2byte	0x100
    1fc6:	0101                	.2byte	0x101
    1fc8:	000d0efb          	.4byte	0xd0efb
    1fcc:	0101                	.2byte	0x101
    1fce:	0101                	.2byte	0x101
    1fd0:	0000                	.2byte	0x0
    1fd2:	0100                	.2byte	0x100
    1fd4:	0000                	.2byte	0x0
    1fd6:	0101                	.2byte	0x101
    1fd8:	1f01                	.2byte	0x1f01
    1fda:	0002                	.2byte	0x2
    1fdc:	0000                	.2byte	0x0
    1fde:	a400                	.2byte	0xa400
    1fe0:	0000                	.2byte	0x0
    1fe2:	0200                	.2byte	0x200
    1fe4:	1f01                	.2byte	0x1f01
    1fe6:	0f02                	.2byte	0xf02
    1fe8:	3504                	.2byte	0x3504
    1fea:	0002                	.2byte	0x2
    1fec:	0100                	.2byte	0x100
    1fee:	0235                	.2byte	0x235
    1ff0:	0000                	.2byte	0x0
    1ff2:	7301                	.2byte	0x7301
    1ff4:	0001                	.2byte	0x1
    1ff6:	0100                	.2byte	0x100
    1ff8:	000000db          	.4byte	0xdb
    1ffc:	0501                	.2byte	0x501
    1ffe:	0001                	.2byte	0x1
    2000:	0205                	.2byte	0x205
    2002:	2084                	.2byte	0x2084
    2004:	0000                	.2byte	0x0
    2006:	05012303          	lw	t1,80(sp)
    200a:	09010303          	lb	t1,144(sp)
    200e:	0000                	.2byte	0x0
    2010:	0301                	.2byte	0x301
    2012:	0900                	.2byte	0x900
    2014:	0000                	.2byte	0x0
    2016:	0501                	.2byte	0x501
    2018:	030d                	.2byte	0x30d
    201a:	0900                	.2byte	0x900
    201c:	0000                	.2byte	0x0
    201e:	0501                	.2byte	0x501
    2020:	09010303          	lb	t1,144(sp)
    2024:	0000                	.2byte	0x0
    2026:	0301                	.2byte	0x301
    2028:	0900                	.2byte	0x900
    202a:	0000                	.2byte	0x0
    202c:	0301                	.2byte	0x301
    202e:	0900                	.2byte	0x900
    2030:	0000                	.2byte	0x0
    2032:	0301                	.2byte	0x301
    2034:	0900                	.2byte	0x900
    2036:	0000                	.2byte	0x0
    2038:	0301                	.2byte	0x301
    203a:	0901                	.2byte	0x901
    203c:	0000                	.2byte	0x0
    203e:	0301                	.2byte	0x301
    2040:	0902                	.2byte	0x902
    2042:	0000                	.2byte	0x0
    2044:	0301                	.2byte	0x301
    2046:	0901                	.2byte	0x901
    2048:	0000                	.2byte	0x0
    204a:	0301                	.2byte	0x301
    204c:	0900                	.2byte	0x900
    204e:	0000                	.2byte	0x0
    2050:	0501                	.2byte	0x501
    2052:	0601                	.2byte	0x601
    2054:	00097a03          	.4byte	0x97a03
    2058:	0100                	.2byte	0x100
    205a:	10090003          	lb	zero,256(s2)
    205e:	0100                	.2byte	0x100
    2060:	0305                	.2byte	0x305
    2062:	04090603          	lb	a2,64(s2)
    2066:	0100                	.2byte	0x100
    2068:	0200                	.2byte	0x200
    206a:	0104                	.2byte	0x104
    206c:	0306                	.2byte	0x306
    206e:	0900                	.2byte	0x900
    2070:	0004                	.2byte	0x4
    2072:	0001                	.2byte	0x1
    2074:	0402                	.2byte	0x402
    2076:	0301                	.2byte	0x301
    2078:	0900                	.2byte	0x900
    207a:	0000                	.2byte	0x0
    207c:	0001                	.2byte	0x1
    207e:	0402                	.2byte	0x402
    2080:	0301                	.2byte	0x301
    2082:	0900                	.2byte	0x900
    2084:	0010                	.2byte	0x10
    2086:	0001                	.2byte	0x1
    2088:	0402                	.2byte	0x402
    208a:	0301                	.2byte	0x301
    208c:	0900                	.2byte	0x900
    208e:	0000                	.2byte	0x0
    2090:	0001                	.2byte	0x1
    2092:	0402                	.2byte	0x402
    2094:	0301                	.2byte	0x301
    2096:	0900                	.2byte	0x900
    2098:	0000                	.2byte	0x0
    209a:	0001                	.2byte	0x1
    209c:	0402                	.2byte	0x402
    209e:	0301                	.2byte	0x301
    20a0:	0900                	.2byte	0x900
    20a2:	0000                	.2byte	0x0
    20a4:	0001                	.2byte	0x1
    20a6:	0402                	.2byte	0x402
    20a8:	0301                	.2byte	0x301
    20aa:	0900                	.2byte	0x900
    20ac:	0000                	.2byte	0x0
    20ae:	0001                	.2byte	0x1
    20b0:	0402                	.2byte	0x402
    20b2:	0301                	.2byte	0x301
    20b4:	0900                	.2byte	0x900
    20b6:	0000                	.2byte	0x0
    20b8:	0001                	.2byte	0x1
    20ba:	0402                	.2byte	0x402
    20bc:	0301                	.2byte	0x301
    20be:	0900                	.2byte	0x900
    20c0:	0000                	.2byte	0x0
    20c2:	0001                	.2byte	0x1
    20c4:	0402                	.2byte	0x402
    20c6:	0301                	.2byte	0x301
    20c8:	0900                	.2byte	0x900
    20ca:	0008                	.2byte	0x8
    20cc:	0001                	.2byte	0x1
    20ce:	0402                	.2byte	0x402
    20d0:	0301                	.2byte	0x301
    20d2:	0900                	.2byte	0x900
    20d4:	0000                	.2byte	0x0
    20d6:	0001                	.2byte	0x1
    20d8:	0402                	.2byte	0x402
    20da:	0301                	.2byte	0x301
    20dc:	0900                	.2byte	0x900
    20de:	0008                	.2byte	0x8
    20e0:	0001                	.2byte	0x1
    20e2:	0402                	.2byte	0x402
    20e4:	0301                	.2byte	0x301
    20e6:	0900                	.2byte	0x900
    20e8:	0000                	.2byte	0x0
    20ea:	0001                	.2byte	0x1
    20ec:	0402                	.2byte	0x402
    20ee:	031c                	.2byte	0x31c
    20f0:	0900                	.2byte	0x900
    20f2:	0008                	.2byte	0x8
    20f4:	0001                	.2byte	0x1
    20f6:	0402                	.2byte	0x402
    20f8:	031c                	.2byte	0x31c
    20fa:	0900                	.2byte	0x900
    20fc:	0000                	.2byte	0x0
    20fe:	0001                	.2byte	0x1
    2100:	0402                	.2byte	0x402
    2102:	09000323          	sb	a6,134(zero) # 86 <__DYNAMIC+0x86>
    2106:	0008                	.2byte	0x8
    2108:	0001                	.2byte	0x1
    210a:	0402                	.2byte	0x402
    210c:	09000323          	sb	a6,134(zero) # 86 <__DYNAMIC+0x86>
    2110:	0000                	.2byte	0x0
    2112:	0001                	.2byte	0x1
    2114:	0402                	.2byte	0x402
    2116:	09000323          	sb	a6,134(zero) # 86 <__DYNAMIC+0x86>
    211a:	0000                	.2byte	0x0
    211c:	0001                	.2byte	0x1
    211e:	018c0403          	lb	s0,24(s8)
    2122:	08090003          	lb	zero,128(s2)
    2126:	0100                	.2byte	0x100
    2128:	0300                	.2byte	0x300
    212a:	8c04                	.2byte	0x8c04
    212c:	0301                	.2byte	0x301
    212e:	0901                	.2byte	0x901
    2130:	0000                	.2byte	0x0
    2132:	0001                	.2byte	0x1
    2134:	018c0403          	lb	s0,24(s8)
    2138:	00090003          	lb	zero,0(s2)
    213c:	0100                	.2byte	0x100
    213e:	0300                	.2byte	0x300
    2140:	8c04                	.2byte	0x8c04
    2142:	0301                	.2byte	0x301
    2144:	0900                	.2byte	0x900
    2146:	0000                	.2byte	0x0
    2148:	0001                	.2byte	0x1
    214a:	018c0403          	lb	s0,24(s8)
    214e:	00090003          	lb	zero,0(s2)
    2152:	0100                	.2byte	0x100
    2154:	0300                	.2byte	0x300
    2156:	8c04                	.2byte	0x8c04
    2158:	0301                	.2byte	0x301
    215a:	0900                	.2byte	0x900
    215c:	0000                	.2byte	0x0
    215e:	0501                	.2byte	0x501
    2160:	0001                	.2byte	0x1
    2162:	018c0403          	lb	s0,24(s8)
    2166:	0306                	.2byte	0x306
    2168:	0904                	.2byte	0x904
    216a:	000c                	.2byte	0xc
    216c:	0501                	.2byte	0x501
    216e:	04030003          	lb	zero,64(t1)
    2172:	018c                	.2byte	0x18c
    2174:	04097c03          	.4byte	0x4097c03
    2178:	0100                	.2byte	0x100
    217a:	0105                	.2byte	0x105
    217c:	0300                	.2byte	0x300
    217e:	8c04                	.2byte	0x8c04
    2180:	0301                	.2byte	0x301
    2182:	0904                	.2byte	0x904
    2184:	0004                	.2byte	0x4
    2186:	0501                	.2byte	0x501
    2188:	04030003          	lb	zero,64(t1)
    218c:	018c                	.2byte	0x18c
    218e:	04097c03          	.4byte	0x4097c03
    2192:	0100                	.2byte	0x100
    2194:	0300                	.2byte	0x300
    2196:	8c04                	.2byte	0x8c04
    2198:	0601                	.2byte	0x601
    219a:	04090003          	lb	zero,64(s2)
    219e:	0100                	.2byte	0x100
    21a0:	0300                	.2byte	0x300
    21a2:	8c04                	.2byte	0x8c04
    21a4:	0301                	.2byte	0x301
    21a6:	0900                	.2byte	0x900
    21a8:	0000                	.2byte	0x0
    21aa:	0001                	.2byte	0x1
    21ac:	018c0403          	lb	s0,24(s8)
    21b0:	00090103          	lb	sp,0(s2)
    21b4:	0100                	.2byte	0x100
    21b6:	0300                	.2byte	0x300
    21b8:	8c04                	.2byte	0x8c04
    21ba:	0301                	.2byte	0x301
    21bc:	0900                	.2byte	0x900
    21be:	0000                	.2byte	0x0
    21c0:	0001                	.2byte	0x1
    21c2:	018c0403          	lb	s0,24(s8)
    21c6:	00090003          	lb	zero,0(s2)
    21ca:	0100                	.2byte	0x100
    21cc:	0300                	.2byte	0x300
    21ce:	8c04                	.2byte	0x8c04
    21d0:	0301                	.2byte	0x301
    21d2:	0902                	.2byte	0x902
    21d4:	0000                	.2byte	0x0
    21d6:	0501                	.2byte	0x501
    21d8:	0001                	.2byte	0x1
    21da:	018c0403          	lb	s0,24(s8)
    21de:	0306                	.2byte	0x306
    21e0:	0901                	.2byte	0x901
    21e2:	0000                	.2byte	0x0
    21e4:	0501                	.2byte	0x501
    21e6:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    21ea:	061d                	.2byte	0x61d
    21ec:	10097b03          	.4byte	0x10097b03
    21f0:	0100                	.2byte	0x100
    21f2:	0200                	.2byte	0x200
    21f4:	2604                	.2byte	0x2604
    21f6:	08090003          	lb	zero,128(s2)
    21fa:	0100                	.2byte	0x100
    21fc:	0200                	.2byte	0x200
    21fe:	2604                	.2byte	0x2604
    2200:	1c090003          	lb	zero,448(s2)
    2204:	0100                	.2byte	0x100
    2206:	0200                	.2byte	0x200
    2208:	2604                	.2byte	0x2604
    220a:	00090003          	lb	zero,0(s2)
    220e:	0100                	.2byte	0x100
    2210:	0200                	.2byte	0x200
    2212:	3004                	.2byte	0x3004
    2214:	00090003          	lb	zero,0(s2)
    2218:	0100                	.2byte	0x100
    221a:	0200                	.2byte	0x200
    221c:	3004                	.2byte	0x3004
    221e:	00090003          	lb	zero,0(s2)
    2222:	0100                	.2byte	0x100
    2224:	0200                	.2byte	0x200
    2226:	3004                	.2byte	0x3004
    2228:	10090003          	lb	zero,256(s2)
    222c:	0100                	.2byte	0x100
    222e:	0200                	.2byte	0x200
    2230:	3004                	.2byte	0x3004
    2232:	00090003          	lb	zero,0(s2)
    2236:	0100                	.2byte	0x100
    2238:	0200                	.2byte	0x200
    223a:	3004                	.2byte	0x3004
    223c:	00090003          	lb	zero,0(s2)
    2240:	0100                	.2byte	0x100
    2242:	0200                	.2byte	0x200
    2244:	3004                	.2byte	0x3004
    2246:	00090003          	lb	zero,0(s2)
    224a:	0100                	.2byte	0x100
    224c:	0200                	.2byte	0x200
    224e:	5904                	.2byte	0x5904
    2250:	04090003          	lb	zero,64(s2)
    2254:	0100                	.2byte	0x100
    2256:	0200                	.2byte	0x200
    2258:	5904                	.2byte	0x5904
    225a:	00090003          	lb	zero,0(s2)
    225e:	0100                	.2byte	0x100
    2260:	0200                	.2byte	0x200
    2262:	5904                	.2byte	0x5904
    2264:	00090003          	lb	zero,0(s2)
    2268:	0100                	.2byte	0x100
    226a:	0200                	.2byte	0x200
    226c:	5904                	.2byte	0x5904
    226e:	00090003          	lb	zero,0(s2)
    2272:	0100                	.2byte	0x100
    2274:	0200                	.2byte	0x200
    2276:	5d04                	.2byte	0x5d04
    2278:	0c090003          	lb	zero,192(s2)
    227c:	0100                	.2byte	0x100
    227e:	0200                	.2byte	0x200
    2280:	6004                	.2byte	0x6004
    2282:	04090003          	lb	zero,64(s2)
    2286:	0100                	.2byte	0x100
    2288:	0200                	.2byte	0x200
    228a:	6004                	.2byte	0x6004
    228c:	00090003          	lb	zero,0(s2)
    2290:	0100                	.2byte	0x100
    2292:	0200                	.2byte	0x200
    2294:	6004                	.2byte	0x6004
    2296:	00090003          	lb	zero,0(s2)
    229a:	0100                	.2byte	0x100
    229c:	0200                	.2byte	0x200
    229e:	7004                	.2byte	0x7004
    22a0:	0c090003          	lb	zero,192(s2)
    22a4:	0100                	.2byte	0x100
    22a6:	0200                	.2byte	0x200
    22a8:	7004                	.2byte	0x7004
    22aa:	0c090003          	lb	zero,192(s2)
    22ae:	0100                	.2byte	0x100
    22b0:	0200                	.2byte	0x200
    22b2:	7004                	.2byte	0x7004
    22b4:	08090003          	lb	zero,128(s2)
    22b8:	0100                	.2byte	0x100
    22ba:	0300                	.2byte	0x300
    22bc:	8004                	.2byte	0x8004
    22be:	0301                	.2byte	0x301
    22c0:	0900                	.2byte	0x900
    22c2:	0000                	.2byte	0x0
    22c4:	0001                	.2byte	0x1
    22c6:	01800403          	lb	s0,24(zero) # 18 <__DYNAMIC+0x18>
    22ca:	00090003          	lb	zero,0(s2)
    22ce:	0100                	.2byte	0x100
    22d0:	0300                	.2byte	0x300
    22d2:	8004                	.2byte	0x8004
    22d4:	0301                	.2byte	0x301
    22d6:	0900                	.2byte	0x900
    22d8:	0004                	.2byte	0x4
    22da:	0001                	.2byte	0x1
    22dc:	0402                	.2byte	0x402
    22de:	0328                	.2byte	0x328
    22e0:	0900                	.2byte	0x900
    22e2:	0004                	.2byte	0x4
    22e4:	0001                	.2byte	0x1
    22e6:	0402                	.2byte	0x402
    22e8:	0328                	.2byte	0x328
    22ea:	0900                	.2byte	0x900
    22ec:	0000                	.2byte	0x0
    22ee:	0001                	.2byte	0x1
    22f0:	0402                	.2byte	0x402
    22f2:	032e                	.2byte	0x32e
    22f4:	0900                	.2byte	0x900
    22f6:	000c                	.2byte	0xc
    22f8:	0001                	.2byte	0x1
    22fa:	0402                	.2byte	0x402
    22fc:	032e                	.2byte	0x32e
    22fe:	0900                	.2byte	0x900
    2300:	0000                	.2byte	0x0
    2302:	0001                	.2byte	0x1
    2304:	0402                	.2byte	0x402
    2306:	032e                	.2byte	0x32e
    2308:	0900                	.2byte	0x900
    230a:	0000                	.2byte	0x0
    230c:	0601                	.2byte	0x601
    230e:	08090003          	lb	zero,128(s2)
    2312:	0100                	.2byte	0x100
    2314:	1409                	.2byte	0x1409
    2316:	0000                	.2byte	0x0
    2318:	0101                	.2byte	0x101
    231a:	000000c7          	.4byte	0xc7
    231e:	0005                	.2byte	0x5
    2320:	0004                	.2byte	0x4
    2322:	00000033          	add	zero,zero,zero
    2326:	0101                	.2byte	0x101
    2328:	fb01                	.2byte	0xfb01
    232a:	0d0e                	.2byte	0xd0e
    232c:	0100                	.2byte	0x100
    232e:	0101                	.2byte	0x101
    2330:	0001                	.2byte	0x1
    2332:	0000                	.2byte	0x0
    2334:	0001                	.2byte	0x1
    2336:	0100                	.2byte	0x100
    2338:	0101                	.2byte	0x101
    233a:	021f 0000 0000      	.byte	0x1f, 0x02, 0x00, 0x00, 0x00, 0x00
    2340:	027a                	.2byte	0x27a
    2342:	0000                	.2byte	0x0
    2344:	0102                	.2byte	0x102
    2346:	021f 030f 0270      	.byte	0x1f, 0x02, 0x0f, 0x03, 0x70, 0x02
    234c:	0000                	.2byte	0x0
    234e:	7001                	.2byte	0x7001
    2350:	0002                	.2byte	0x2
    2352:	0100                	.2byte	0x100
    2354:	02a9                	.2byte	0x2a9
    2356:	0000                	.2byte	0x0
    2358:	0501                	.2byte	0x501
    235a:	0001                	.2byte	0x1
    235c:	0205                	.2byte	0x205
    235e:	2198                	.2byte	0x2198
    2360:	0000                	.2byte	0x0
    2362:	0105ae03          	lw	t3,16(a1)
    2366:	0305                	.2byte	0x305
    2368:	00090103          	lb	sp,0(s2)
    236c:	0100                	.2byte	0x100
    236e:	00090203          	lb	tp,0(s2)
    2372:	0100                	.2byte	0x100
    2374:	00090003          	lb	zero,0(s2)
    2378:	0100                	.2byte	0x100
    237a:	00090003          	lb	zero,0(s2)
    237e:	0100                	.2byte	0x100
    2380:	00090003          	lb	zero,0(s2)
    2384:	0100                	.2byte	0x100
    2386:	00090003          	lb	zero,0(s2)
    238a:	0100                	.2byte	0x100
    238c:	0200                	.2byte	0x200
    238e:	0304                	.2byte	0x304
    2390:	0306                	.2byte	0x306
    2392:	0900                	.2byte	0x900
    2394:	0008                	.2byte	0x8
    2396:	0001                	.2byte	0x1
    2398:	0402                	.2byte	0x402
    239a:	060e                	.2byte	0x60e
    239c:	0c090003          	lb	zero,192(s2)
    23a0:	0100                	.2byte	0x100
    23a2:	0200                	.2byte	0x200
    23a4:	0e04                	.2byte	0xe04
    23a6:	00090003          	lb	zero,0(s2)
    23aa:	0100                	.2byte	0x100
    23ac:	0200                	.2byte	0x200
    23ae:	0e04                	.2byte	0xe04
    23b0:	00090203          	lb	tp,0(s2)
    23b4:	0100                	.2byte	0x100
    23b6:	0200                	.2byte	0x200
    23b8:	0e04                	.2byte	0xe04
    23ba:	0306                	.2byte	0x306
    23bc:	097e                	.2byte	0x97e
    23be:	0000                	.2byte	0x0
    23c0:	0501                	.2byte	0x501
    23c2:	0001                	.2byte	0x1
    23c4:	0402                	.2byte	0x402
    23c6:	030e                	.2byte	0x30e
    23c8:	001c0903          	lb	s2,1(s8)
    23cc:	0501                	.2byte	0x501
    23ce:	04020003          	lb	zero,64(tp) # 40 <__DYNAMIC+0x40>
    23d2:	0304                	.2byte	0x304
    23d4:	097d                	.2byte	0x97d
    23d6:	0008                	.2byte	0x8
    23d8:	0301                	.2byte	0x301
    23da:	0900                	.2byte	0x900
    23dc:	000c                	.2byte	0xc
    23de:	0901                	.2byte	0x901
    23e0:	0008                	.2byte	0x8
    23e2:	0100                	.2byte	0x100
    23e4:	3b01                	.2byte	0x3b01
    23e6:	0000                	.2byte	0x0
    23e8:	0500                	.2byte	0x500
    23ea:	0400                	.2byte	0x400
    23ec:	3300                	.2byte	0x3300
    23ee:	0000                	.2byte	0x0
    23f0:	0100                	.2byte	0x100
    23f2:	0101                	.2byte	0x101
    23f4:	000d0efb          	.4byte	0xd0efb
    23f8:	0101                	.2byte	0x101
    23fa:	0101                	.2byte	0x101
    23fc:	0000                	.2byte	0x0
    23fe:	0100                	.2byte	0x100
    2400:	0000                	.2byte	0x0
    2402:	0101                	.2byte	0x101
    2404:	1f01                	.2byte	0x1f01
    2406:	0002                	.2byte	0x2
    2408:	0000                	.2byte	0x0
    240a:	7a00                	.2byte	0x7a00
    240c:	0002                	.2byte	0x2
    240e:	0200                	.2byte	0x200
    2410:	1f01                	.2byte	0x1f01
    2412:	0f02                	.2byte	0xf02
    2414:	00027003          	.4byte	0x27003
    2418:	0100                	.2byte	0x100
    241a:	02a9                	.2byte	0x2a9
    241c:	0000                	.2byte	0x0
    241e:	7001                	.2byte	0x7001
    2420:	0002                	.2byte	0x2
    2422:	0100                	.2byte	0x100

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
   6:	525f4b43          	.4byte	0x525f4b43
   a:	5741                	.2byte	0x5741
   c:	315f 665f 6f6c      	.byte	0x5f, 0x31, 0x5f, 0x66, 0x6c, 0x6f
  12:	4700                	.2byte	0x4700
  14:	554e                	.2byte	0x554e
  16:	4320                	.2byte	0x4320
  18:	3731                	.2byte	0x3731
  1a:	3120                	.2byte	0x3120
  1c:	2e32                	.2byte	0x2e32
  1e:	2e32                	.2byte	0x2e32
  20:	2030                	.2byte	0x2030
  22:	6d2d                	.2byte	0x6d2d
  24:	646f6d63          	bltu	t5,t1,67e <set_gpio_pin_value+0x18>
  28:	6c65                	.2byte	0x6c65
  2a:	6d3d                	.2byte	0x6d3d
  2c:	6465                	.2byte	0x6465
  2e:	6f6c                	.2byte	0x6f6c
  30:	6d2d2077          	.4byte	0x6d2d2077
  34:	6261                	.2byte	0x6261
  36:	3d69                	.2byte	0x3d69
  38:	6c69                	.2byte	0x6c69
  3a:	3370                	.2byte	0x3370
  3c:	2032                	.2byte	0x2032
  3e:	6d2d                	.2byte	0x6d2d
  40:	646f6d63          	bltu	t5,t1,69a <set_gpio_pin_value+0x34>
  44:	6c65                	.2byte	0x6c65
  46:	6d3d                	.2byte	0x6d3d
  48:	6465                	.2byte	0x6465
  4a:	6f6c                	.2byte	0x6f6c
  4c:	6d2d2077          	.4byte	0x6d2d2077
  50:	7574                	.2byte	0x7574
  52:	656e                	.2byte	0x656e
  54:	723d                	.2byte	0x723d
  56:	656b636f          	jal	t1,b66ac <__libc_init_array+0xb44b8>
  5a:	2074                	.2byte	0x2074
  5c:	6d2d                	.2byte	0x6d2d
  5e:	7369                	.2byte	0x7369
  60:	2d61                	.2byte	0x2d61
  62:	63657073          	csrc	0x636,10
  66:	323d                	.2byte	0x323d
  68:	322e                	.2byte	0x322e
  6a:	2d20                	.2byte	0x2d20
  6c:	616d                	.2byte	0x616d
  6e:	6372                	.2byte	0x6372
  70:	3d68                	.2byte	0x3d68
  72:	7672                	.2byte	0x7672
  74:	6d693233          	.4byte	0x6d693233
  78:	2d20                	.2byte	0x2d20
  7a:	4f2d2067          	.4byte	0x4f2d2067
  7e:	4f2d2073          	csrs	0x4f2,s10
  82:	2032                	.2byte	0x2032
  84:	4f2d                	.2byte	0x4f2d
  86:	662d2073          	csrs	0x662,s10
  8a:	7562                	.2byte	0x7562
  8c:	6c69                	.2byte	0x6c69
  8e:	6964                	.2byte	0x6964
  90:	676e                	.2byte	0x676e
  92:	6c2d                	.2byte	0x6c2d
  94:	6269                	.2byte	0x6269
  96:	20636367          	.4byte	0x20636367
  9a:	662d                	.2byte	0x662d
  9c:	6f6e                	.2byte	0x6f6e
  9e:	732d                	.2byte	0x732d
  a0:	6174                	.2byte	0x6174
  a2:	702d6b63          	bltu	s10,sp,7b8 <set_gpio_pin_irq_type+0x5a>
  a6:	6f72                	.2byte	0x6f72
  a8:	6574                	.2byte	0x6574
  aa:	726f7463          	bgeu	t5,t1,7d2 <set_gpio_pin_irq_type+0x74>
  ae:	2d20                	.2byte	0x2d20
  b0:	7666                	.2byte	0x7666
  b2:	7369                	.2byte	0x7369
  b4:	6269                	.2byte	0x6269
  b6:	6c69                	.2byte	0x6c69
  b8:	7469                	.2byte	0x7469
  ba:	3d79                	.2byte	0x3d79
  bc:	6968                	.2byte	0x6968
  be:	6464                	.2byte	0x6464
  c0:	6e65                	.2byte	0x6e65
  c2:	5f00                	.2byte	0x5f00
  c4:	725f 0030 5f5f      	.byte	0x5f, 0x72, 0x30, 0x00, 0x5f, 0x5f
  ca:	3172                	.2byte	0x3172
  cc:	5f00                	.2byte	0x5f00
  ce:	635f 7a6c 6973      	.byte	0x5f, 0x63, 0x6c, 0x7a, 0x73, 0x69
  d4:	0032                	.2byte	0x32
  d6:	665f 7865 5f00      	.byte	0x5f, 0x66, 0x65, 0x78, 0x00, 0x5f
  dc:	5046                	.2byte	0x5046
  de:	505f 4341 5f4b      	.byte	0x5f, 0x50, 0x41, 0x43, 0x4b, 0x5f
  e4:	4f4e4143          	.4byte	0x4f4e4143
  e8:	494e                	.2byte	0x494e
  ea:	5f4c4143          	.4byte	0x5f4c4143
  ee:	7369                	.2byte	0x7369
  f0:	745f 6e69 0079      	.byte	0x5f, 0x74, 0x69, 0x6e, 0x79, 0x00
  f6:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
  fc:	435f4b43          	.4byte	0x435f4b43
 100:	4e41                	.2byte	0x4e41
 102:	43494e4f          	.4byte	0x43494e4f
 106:	4c41                	.2byte	0x4c41
 108:	545f 665f 5f00      	.byte	0x5f, 0x54, 0x5f, 0x66, 0x00, 0x5f
 10e:	645f 0031 6e75      	.byte	0x5f, 0x64, 0x31, 0x00, 0x75, 0x6e
 114:	6e676973          	csrrs	s2,0x6e6,14
 118:	6465                	.2byte	0x6465
 11a:	6320                	.2byte	0x6320
 11c:	6168                	.2byte	0x6168
 11e:	0072                	.2byte	0x72
 120:	465f 5f50 4e55      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x55, 0x4e
 126:	4150                	.2byte	0x4150
 128:	525f4b43          	.4byte	0x525f4b43
 12c:	5741                	.2byte	0x5741
 12e:	315f 665f 6f6c      	.byte	0x5f, 0x31, 0x5f, 0x66, 0x6c, 0x6f
 134:	5f00                	.2byte	0x5f00
 136:	645f 7669 6673      	.byte	0x5f, 0x64, 0x69, 0x76, 0x73, 0x66
 13c:	69730033          	.4byte	0x69730033
 140:	73006e67          	.4byte	0x73006e67
 144:	6f68                	.2byte	0x6f68
 146:	7472                	.2byte	0x7472
 148:	7520                	.2byte	0x7520
 14a:	736e                	.2byte	0x736e
 14c:	6769                	.2byte	0x6769
 14e:	656e                	.2byte	0x656e
 150:	2064                	.2byte	0x2064
 152:	6e69                	.2byte	0x6e69
 154:	0074                	.2byte	0x74
 156:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
 15c:	435f4b43          	.4byte	0x435f4b43
 160:	4e41                	.2byte	0x4e41
 162:	43494e4f          	.4byte	0x43494e4f
 166:	4c41                	.2byte	0x4c41
 168:	545f 655f 5f00      	.byte	0x5f, 0x54, 0x5f, 0x65, 0x00, 0x5f
 16e:	5046                	.2byte	0x5046
 170:	445f 5649 4d5f      	.byte	0x5f, 0x44, 0x49, 0x56, 0x5f, 0x4d
 176:	4145                	.2byte	0x4145
 178:	5f54                	.2byte	0x5f54
 17a:	5f31                	.2byte	0x5f31
 17c:	6475                	.2byte	0x6475
 17e:	7669                	.2byte	0x7669
 180:	6e5f 726f 5f6d      	.byte	0x5f, 0x6e, 0x6f, 0x72, 0x6d, 0x5f
 186:	686e                	.2byte	0x686e
 188:	5f00                	.2byte	0x5f00
 18a:	5046                	.2byte	0x5046
 18c:	445f 5649 4d5f      	.byte	0x5f, 0x44, 0x49, 0x56, 0x5f, 0x4d
 192:	4145                	.2byte	0x4145
 194:	5f54                	.2byte	0x5f54
 196:	5f31                	.2byte	0x5f31
 198:	6475                	.2byte	0x6475
 19a:	7669                	.2byte	0x7669
 19c:	6e5f 726f 5f6d      	.byte	0x5f, 0x6e, 0x6f, 0x72, 0x6d, 0x5f
 1a2:	0072                	.2byte	0x72
 1a4:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
 1aa:	435f4b43          	.4byte	0x435f4b43
 1ae:	4e41                	.2byte	0x4e41
 1b0:	43494e4f          	.4byte	0x43494e4f
 1b4:	4c41                	.2byte	0x4c41
 1b6:	545f 635f 5f00      	.byte	0x5f, 0x54, 0x5f, 0x63, 0x00, 0x5f
 1bc:	715f 0030 5f5f      	.byte	0x5f, 0x71, 0x30, 0x00, 0x5f, 0x5f
 1c2:	3171                	.2byte	0x3171
 1c4:	6600                	.2byte	0x6600
 1c6:	6172                	.2byte	0x6172
 1c8:	6f6c0063          	beq	s8,s6,8a8 <uart_set_cfg+0x82>
 1cc:	676e                	.2byte	0x676e
 1ce:	6c20                	.2byte	0x6c20
 1d0:	20676e6f          	jal	t3,763d6 <__libc_init_array+0x741e2>
 1d4:	6e75                	.2byte	0x6e75
 1d6:	6e676973          	csrrs	s2,0x6e6,14
 1da:	6465                	.2byte	0x6465
 1dc:	6920                	.2byte	0x6920
 1de:	746e                	.2byte	0x746e
 1e0:	5f00                	.2byte	0x5f00
 1e2:	5046                	.2byte	0x5046
 1e4:	505f 4341 5f4b      	.byte	0x5f, 0x50, 0x41, 0x43, 0x4b, 0x5f
 1ea:	4f4e4143          	.4byte	0x4f4e4143
 1ee:	494e                	.2byte	0x494e
 1f0:	5f4c4143          	.4byte	0x5f4c4143
 1f4:	5f54                	.2byte	0x5f54
 1f6:	5f5f0073          	.4byte	0x5f5f0073
 1fa:	3064                	.2byte	0x3064
 1fc:	5f00                	.2byte	0x5f00
 1fe:	5046                	.2byte	0x5046
 200:	445f 5649 4d5f      	.byte	0x5f, 0x44, 0x49, 0x56, 0x5f, 0x4d
 206:	4145                	.2byte	0x4145
 208:	5f54                	.2byte	0x5f54
 20a:	5f31                	.2byte	0x5f31
 20c:	6475                	.2byte	0x6475
 20e:	7669                	.2byte	0x7669
 210:	6e5f 726f 5f6d      	.byte	0x5f, 0x6e, 0x6f, 0x72, 0x6d, 0x5f
 216:	0071                	.2byte	0x71
 218:	6f6c                	.2byte	0x6f6c
 21a:	676e                	.2byte	0x676e
 21c:	6c20                	.2byte	0x6c20
 21e:	20676e6f          	jal	t3,76424 <__libc_init_array+0x74230>
 222:	6e69                	.2byte	0x6e69
 224:	0074                	.2byte	0x74
 226:	6962                	.2byte	0x6962
 228:	7374                	.2byte	0x7374
 22a:	5f00                	.2byte	0x5f00
 22c:	5046                	.2byte	0x5046
 22e:	445f 5649 4d5f      	.byte	0x5f, 0x44, 0x49, 0x56, 0x5f, 0x4d
 234:	4145                	.2byte	0x4145
 236:	5f54                	.2byte	0x5f54
 238:	5f31                	.2byte	0x5f31
 23a:	6475                	.2byte	0x6475
 23c:	7669                	.2byte	0x7669
 23e:	6e5f 726f 5f6d      	.byte	0x5f, 0x6e, 0x6f, 0x72, 0x6d, 0x5f
 244:	0079                	.2byte	0x79
 246:	465f 5f50 4e55      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x55, 0x4e
 24c:	4f49                	.2byte	0x4f49
 24e:	5f4e                	.2byte	0x5f4e
 250:	46530053          	.4byte	0x46530053
 254:	7974                	.2byte	0x7974
 256:	6570                	.2byte	0x6570
 258:	5f00                	.2byte	0x5f00
 25a:	5046                	.2byte	0x5046
 25c:	445f 5649 4d5f      	.byte	0x5f, 0x44, 0x49, 0x56, 0x5f, 0x4d
 262:	4145                	.2byte	0x4145
 264:	5f54                	.2byte	0x5f54
 266:	5f31                	.2byte	0x5f31
 268:	6475                	.2byte	0x6475
 26a:	7669                	.2byte	0x7669
 26c:	6e5f 726f 5f6d      	.byte	0x5f, 0x6e, 0x6f, 0x72, 0x6d, 0x5f
 272:	6c6e                	.2byte	0x6c6e
 274:	5f00                	.2byte	0x5f00
 276:	5046                	.2byte	0x5046
 278:	555f 504e 4341      	.byte	0x5f, 0x55, 0x4e, 0x50, 0x41, 0x43
 27e:	41435f4b          	.4byte	0x41435f4b
 282:	4f4e                	.2byte	0x4f4e
 284:	494e                	.2byte	0x494e
 286:	5f4c4143          	.4byte	0x5f4c4143
 28a:	66696873          	csrrs	a6,0x666,18
 28e:	0074                	.2byte	0x74
 290:	665f 6d72 5f00      	.byte	0x5f, 0x66, 0x72, 0x6d, 0x00, 0x5f
 296:	5046                	.2byte	0x5046
 298:	495f 5353 4749      	.byte	0x5f, 0x49, 0x53, 0x53, 0x49, 0x47
 29e:	414e                	.2byte	0x414e
 2a0:	5f4e                	.2byte	0x5f4e
 2a2:	6572                	.2byte	0x6572
 2a4:	0074                	.2byte	0x74
 2a6:	5f5f 656c 6673      	.byte	0x5f, 0x5f, 0x6c, 0x65, 0x73, 0x66
 2ac:	0032                	.2byte	0x32
 2ae:	465f 5f50 4d43      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x43, 0x4d
 2b4:	5f50                	.2byte	0x5f50
 2b6:	7369                	.2byte	0x7369
 2b8:	7a5f 7265 5f6f      	.byte	0x5f, 0x7a, 0x65, 0x72, 0x6f, 0x5f
 2be:	0078                	.2byte	0x78
 2c0:	5f5f 6367 5f63      	.byte	0x5f, 0x5f, 0x67, 0x63, 0x63, 0x5f
 2c6:	74504d43          	.4byte	0x74504d43
 2ca:	7079                	.2byte	0x7079
 2cc:	0065                	.2byte	0x65
 2ce:	465f 5f50 4d43      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x43, 0x4d
 2d4:	5f50                	.2byte	0x5f50
 2d6:	7369                	.2byte	0x7369
 2d8:	7a5f 7265 5f6f      	.byte	0x5f, 0x7a, 0x65, 0x72, 0x6f, 0x5f
 2de:	0079                	.2byte	0x79
 2e0:	465f 5f50 554d      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x4d, 0x55
 2e6:	5f4c                	.2byte	0x5f4c
 2e8:	454d                	.2byte	0x454d
 2ea:	5441                	.2byte	0x5441
 2ec:	315f 775f 6469      	.byte	0x5f, 0x31, 0x5f, 0x77, 0x69, 0x64
 2f2:	5f65                	.2byte	0x5f65
 2f4:	5f5a                	.2byte	0x5f5a
 2f6:	3066                	.2byte	0x3066
 2f8:	5f00                	.2byte	0x5f00
 2fa:	5046                	.2byte	0x5046
 2fc:	4d5f 4c55 4d5f      	.byte	0x5f, 0x4d, 0x55, 0x4c, 0x5f, 0x4d
 302:	4145                	.2byte	0x4145
 304:	5f54                	.2byte	0x5f54
 306:	5f31                	.2byte	0x5f31
 308:	65646977          	.4byte	0x65646977
 30c:	5a5f 665f 0031      	.byte	0x5f, 0x5a, 0x5f, 0x66, 0x31, 0x00
 312:	5f5f 6875 5f00      	.byte	0x5f, 0x5f, 0x75, 0x68, 0x00, 0x5f
 318:	755f 006c 4855      	.byte	0x5f, 0x75, 0x6c, 0x00, 0x55, 0x48
 31e:	70797457          	.4byte	0x70797457
 322:	0065                	.2byte	0x65
 324:	5f5f 3078 5f00      	.byte	0x5f, 0x5f, 0x78, 0x30, 0x00, 0x5f
 32a:	785f 0031 5f5f      	.byte	0x5f, 0x78, 0x31, 0x00, 0x5f, 0x5f
 330:	3278                	.2byte	0x3278
 332:	5f00                	.2byte	0x5f00
 334:	785f 0033 5f5f      	.byte	0x5f, 0x78, 0x33, 0x00, 0x5f, 0x5f
 33a:	6876                	.2byte	0x6876
 33c:	5f00                	.2byte	0x5f00
 33e:	765f 006c 5f5f      	.byte	0x5f, 0x76, 0x6c, 0x00, 0x5f, 0x5f
 344:	756d                	.2byte	0x756d
 346:	736c                	.2byte	0x736c
 348:	3366                	.2byte	0x3366
 34a:	5f00                	.2byte	0x5f00
 34c:	5046                	.2byte	0x5046
 34e:	505f 4341 5f4b      	.byte	0x5f, 0x50, 0x41, 0x43, 0x4b, 0x5f
 354:	494d4553          	.4byte	0x494d4553
 358:	4152                	.2byte	0x4152
 35a:	5f545f57          	.4byte	0x5f545f57
 35e:	465f0063          	beq	t5,t0,7be <set_gpio_pin_irq_type+0x60>
 362:	5f50                	.2byte	0x5f50
 364:	4150                	.2byte	0x4150
 366:	535f4b43          	.4byte	0x535f4b43
 36a:	4d45                	.2byte	0x4d45
 36c:	5249                	.2byte	0x5249
 36e:	5741                	.2byte	0x5741
 370:	545f 665f 6100      	.byte	0x5f, 0x54, 0x5f, 0x66, 0x00, 0x61
 376:	6464                	.2byte	0x6464
 378:	645f 6e6f 0065      	.byte	0x5f, 0x64, 0x6f, 0x6e, 0x65, 0x00
 37e:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
 384:	535f4b43          	.4byte	0x535f4b43
 388:	4d45                	.2byte	0x4d45
 38a:	5249                	.2byte	0x5249
 38c:	5741                	.2byte	0x5741
 38e:	545f 735f 5f00      	.byte	0x5f, 0x54, 0x5f, 0x73, 0x00, 0x5f
 394:	5046                	.2byte	0x5046
 396:	415f 4444 495f      	.byte	0x5f, 0x41, 0x44, 0x44, 0x5f, 0x49
 39c:	544e                	.2byte	0x544e
 39e:	5245                	.2byte	0x5245
 3a0:	414e                	.2byte	0x414e
 3a2:	5f4c                	.2byte	0x5f4c
 3a4:	6964                	.2byte	0x6964
 3a6:	6666                	.2byte	0x6666
 3a8:	7300                	.2byte	0x7300
 3aa:	6275                	.2byte	0x6275
 3ac:	0031                	.2byte	0x31
 3ae:	32627573          	csrrc	a0,mhpmevent6,4
 3b2:	7300                	.2byte	0x7300
 3b4:	6275                	.2byte	0x6275
 3b6:	465f0033          	.4byte	0x465f0033
 3ba:	5f50                	.2byte	0x5f50
 3bc:	4150                	.2byte	0x4150
 3be:	535f4b43          	.4byte	0x535f4b43
 3c2:	4d45                	.2byte	0x4d45
 3c4:	5249                	.2byte	0x5249
 3c6:	5741                	.2byte	0x5741
 3c8:	545f 655f 6e00      	.byte	0x5f, 0x54, 0x5f, 0x65, 0x00, 0x6e
 3ce:	006d726f          	jal	tp,d73d4 <__libc_init_array+0xd51e0>
 3d2:	465f 5f50 4150      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x50, 0x41
 3d8:	535f4b43          	.4byte	0x535f4b43
 3dc:	4d45                	.2byte	0x4d45
 3de:	5249                	.2byte	0x5249
 3e0:	5741                	.2byte	0x5741
 3e2:	695f 5f73 6974      	.byte	0x5f, 0x69, 0x73, 0x5f, 0x74, 0x69
 3e8:	796e                	.2byte	0x796e
 3ea:	5f00                	.2byte	0x5f00
 3ec:	735f 6275 6673      	.byte	0x5f, 0x73, 0x75, 0x62, 0x73, 0x66
 3f2:	465f0033          	.4byte	0x465f0033
 3f6:	5f50                	.2byte	0x5f50
 3f8:	4441                	.2byte	0x4441
 3fa:	5f44                	.2byte	0x5f44
 3fc:	4e49                	.2byte	0x4e49
 3fe:	4554                	.2byte	0x4554
 400:	4e52                	.2byte	0x4e52
 402:	4c41                	.2byte	0x4c41
 404:	655f 6964 6666      	.byte	0x5f, 0x65, 0x64, 0x69, 0x66, 0x66
 40a:	7300                	.2byte	0x7300
 40c:	6275                	.2byte	0x6275
 40e:	645f 6e6f 0065      	.byte	0x5f, 0x64, 0x6f, 0x6e, 0x65, 0x00
 414:	6461                	.2byte	0x6461
 416:	3164                	.2byte	0x3164
 418:	6100                	.2byte	0x6100
 41a:	6464                	.2byte	0x6464
 41c:	0032                	.2byte	0x32
 41e:	6461                	.2byte	0x6461
 420:	3364                	.2byte	0x3364
 422:	5f00                	.2byte	0x5f00
 424:	665f 7869 6673      	.byte	0x5f, 0x66, 0x69, 0x78, 0x73, 0x66
 42a:	55006973          	csrrs	s2,0x550,0
 42e:	79744953          	.4byte	0x79744953
 432:	6570                	.2byte	0x6570
 434:	5f00                	.2byte	0x5f00
 436:	5046                	.2byte	0x5046
 438:	545f 5f4f 4e49      	.byte	0x5f, 0x54, 0x4f, 0x5f, 0x49, 0x4e
 43e:	5f54                	.2byte	0x5f54
 440:	6e69                	.2byte	0x6e69
 442:	7865                	.2byte	0x7865
 444:	6361                	.2byte	0x6361
 446:	0074                	.2byte	0x74
 448:	465f 5f50 5246      	.byte	0x5f, 0x46, 0x50, 0x5f, 0x46, 0x52
 44e:	495f4d4f          	.4byte	0x495f4d4f
 452:	544e                	.2byte	0x544e
 454:	755f 0072 6170      	.byte	0x5f, 0x75, 0x72, 0x00, 0x70, 0x61
 45a:	735f6b63          	bltu	t5,s5,b90 <qprints+0xc>
 45e:	6d65                	.2byte	0x6d65
 460:	7269                	.2byte	0x7269
 462:	7761                	.2byte	0x7761
 464:	5f00                	.2byte	0x5f00
 466:	665f 6f6c 7461      	.byte	0x5f, 0x66, 0x6c, 0x6f, 0x61, 0x74
 46c:	66736973          	csrrs	s2,0x667,6
 470:	5f00                	.2byte	0x5f00
 472:	5046                	.2byte	0x5046
 474:	465f 4f52 5f4d      	.byte	0x5f, 0x46, 0x52, 0x4f, 0x4d, 0x5f
 47a:	4e49                	.2byte	0x4e49
 47c:	5f54                	.2byte	0x5f54
 47e:	7a6c                	.2byte	0x7a6c
 480:	6300                	.2byte	0x6300
 482:	6c706d6f          	jal	s10,7348 <__libc_init_array+0x5154>
 486:	7865                	.2byte	0x7865
 488:	6420                	.2byte	0x6420
 48a:	6c62756f          	jal	a0,27b50 <__libc_init_array+0x2595c>
 48e:	0065                	.2byte	0x65
 490:	5f5f 7278 5f00      	.byte	0x5f, 0x5f, 0x78, 0x72, 0x00, 0x5f
 496:	635f 7a6c 745f      	.byte	0x5f, 0x63, 0x6c, 0x7a, 0x5f, 0x74
 49c:	6261                	.2byte	0x6261
 49e:	6300                	.2byte	0x6300
 4a0:	6c706d6f          	jal	s10,7366 <__libc_init_array+0x5172>
 4a4:	7865                	.2byte	0x7865
 4a6:	6c20                	.2byte	0x6c20
 4a8:	20676e6f          	jal	t3,766ae <__libc_init_array+0x744ba>
 4ac:	6f64                	.2byte	0x6f64
 4ae:	6275                	.2byte	0x6275
 4b0:	656c                	.2byte	0x656c
 4b2:	6300                	.2byte	0x6300
 4b4:	6c706d6f          	jal	s10,737a <__libc_init_array+0x5186>
 4b8:	7865                	.2byte	0x7865
 4ba:	6620                	.2byte	0x6620
 4bc:	6f6c                	.2byte	0x6f6c
 4be:	7461                	.2byte	0x7461
 4c0:	5500                	.2byte	0x5500
 4c2:	4951                	.2byte	0x4951
 4c4:	7974                	.2byte	0x7974
 4c6:	6570                	.2byte	0x6570
 4c8:	7300                	.2byte	0x7300
 4ca:	6f68                	.2byte	0x6f68
 4cc:	7472                	.2byte	0x7472
 4ce:	6920                	.2byte	0x6920
 4d0:	746e                	.2byte	0x746e
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6d6f682f          	.4byte	0x6d6f682f
   4:	2f65                	.2byte	0x2f65
   6:	666e6f63          	bltu	t3,t1,684 <set_gpio_pin_value+0x1e>
   a:	7375                	.2byte	0x7375
   c:	6f69                	.2byte	0x6f69
   e:	2f6e                	.2byte	0x2f6e
  10:	6972                	.2byte	0x6972
  12:	2d766373          	csrrs	t1,0x2d7,12
  16:	2d756e67          	.4byte	0x2d756e67
  1a:	6f74                	.2byte	0x6f74
  1c:	68636c6f          	jal	s8,366a2 <__libc_init_array+0x344ae>
  20:	6961                	.2byte	0x6961
  22:	2f6e                	.2byte	0x2f6e
  24:	7562                	.2byte	0x7562
  26:	6c69                	.2byte	0x6c69
  28:	2d64                	.2byte	0x2d64
  2a:	2d636367          	.4byte	0x2d636367
  2e:	656e                	.2byte	0x656e
  30:	62696c77          	.4byte	0x62696c77
  34:	732d                	.2byte	0x732d
  36:	6174                	.2byte	0x6174
  38:	2f326567          	.4byte	0x2f326567
  3c:	6972                	.2byte	0x6972
  3e:	36766373          	csrrs	t1,0x367,12
  42:	2d34                	.2byte	0x2d34
  44:	6e75                	.2byte	0x6e75
  46:	776f6e6b          	.4byte	0x776f6e6b
  4a:	2d6e                	.2byte	0x2d6e
  4c:	6c65                	.2byte	0x6c65
  4e:	2f66                	.2byte	0x2f66
  50:	7672                	.2byte	0x7672
  52:	6d693233          	.4byte	0x6d693233
  56:	706c692f          	.4byte	0x706c692f
  5a:	6c2f3233          	.4byte	0x6c2f3233
  5e:	6269                	.2byte	0x6269
  60:	00636367          	.4byte	0x636367
  64:	6d6f682f          	.4byte	0x6d6f682f
  68:	2f65                	.2byte	0x2f65
  6a:	666e6f63          	bltu	t3,t1,6e8 <get_gpio_pin_value+0x20>
  6e:	7375                	.2byte	0x7375
  70:	6f69                	.2byte	0x6f69
  72:	2f6e                	.2byte	0x2f6e
  74:	6972                	.2byte	0x6972
  76:	2d766373          	csrrs	t1,0x2d7,12
  7a:	2d756e67          	.4byte	0x2d756e67
  7e:	6f74                	.2byte	0x6f74
  80:	68636c6f          	jal	s8,36706 <__libc_init_array+0x34512>
  84:	6961                	.2byte	0x6961
  86:	2f6e                	.2byte	0x2f6e
  88:	2f636367          	.4byte	0x2f636367
  8c:	696c                	.2byte	0x696c
  8e:	6762                	.2byte	0x6762
  90:	732f6363          	bltu	t5,s2,7b6 <set_gpio_pin_irq_type+0x58>
  94:	2d74666f          	jal	a2,46b6a <__libc_init_array+0x44976>
  98:	7066                	.2byte	0x7066
  9a:	7669642f          	.4byte	0x7669642f
  9e:	2e336673          	csrrs	a2,0x2e3,6
  a2:	682f0063          	beq	t5,sp,722 <set_gpio_pin_irq_en+0x26>
  a6:	2f656d6f          	jal	s10,5639c <__libc_init_array+0x541a8>
  aa:	666e6f63          	bltu	t3,t1,728 <set_gpio_pin_irq_en+0x2c>
  ae:	7375                	.2byte	0x7375
  b0:	6f69                	.2byte	0x6f69
  b2:	2f6e                	.2byte	0x2f6e
  b4:	6972                	.2byte	0x6972
  b6:	2d766373          	csrrs	t1,0x2d7,12
  ba:	2d756e67          	.4byte	0x2d756e67
  be:	6f74                	.2byte	0x6f74
  c0:	68636c6f          	jal	s8,36746 <__libc_init_array+0x34552>
  c4:	6961                	.2byte	0x6961
  c6:	2f6e                	.2byte	0x2f6e
  c8:	2f636367          	.4byte	0x2f636367
  cc:	696c                	.2byte	0x696c
  ce:	6762                	.2byte	0x6762
  d0:	732f6363          	bltu	t5,s2,7f6 <set_gpio_pin_irq_type+0x98>
  d4:	2d74666f          	jal	a2,46baa <__libc_init_array+0x449b6>
  d8:	7066                	.2byte	0x7066
  da:	7300                	.2byte	0x7300
  dc:	6e69                	.2byte	0x6e69
  de:	2e656c67          	.4byte	0x2e656c67
  e2:	0068                	.2byte	0x68
  e4:	6d6f682f          	.4byte	0x6d6f682f
  e8:	2f65                	.2byte	0x2f65
  ea:	666e6f63          	bltu	t3,t1,768 <set_gpio_pin_irq_type+0xa>
  ee:	7375                	.2byte	0x7375
  f0:	6f69                	.2byte	0x6f69
  f2:	2f6e                	.2byte	0x2f6e
  f4:	6972                	.2byte	0x6972
  f6:	2d766373          	csrrs	t1,0x2d7,12
  fa:	2d756e67          	.4byte	0x2d756e67
  fe:	6f74                	.2byte	0x6f74
 100:	68636c6f          	jal	s8,36786 <__libc_init_array+0x34592>
 104:	6961                	.2byte	0x6961
 106:	2f6e                	.2byte	0x2f6e
 108:	2f636367          	.4byte	0x2f636367
 10c:	696c                	.2byte	0x696c
 10e:	6762                	.2byte	0x6762
 110:	732f6363          	bltu	t5,s2,836 <uart_set_cfg+0x10>
 114:	2d74666f          	jal	a2,46bea <__libc_init_array+0x449f6>
 118:	7066                	.2byte	0x7066
 11a:	73656c2f          	.4byte	0x73656c2f
 11e:	3266                	.2byte	0x3266
 120:	632e                	.2byte	0x632e
 122:	2e00                	.2byte	0x2e00
 124:	7300                	.2byte	0x7300
 126:	7066                	.2byte	0x7066
 128:	6d2d                	.2byte	0x6d2d
 12a:	6361                	.2byte	0x6361
 12c:	6968                	.2byte	0x6968
 12e:	656e                	.2byte	0x656e
 130:	682e                	.2byte	0x682e
 132:	2f00                	.2byte	0x2f00
 134:	6f68                	.2byte	0x6f68
 136:	656d                	.2byte	0x656d
 138:	6e6f632f          	.4byte	0x6e6f632f
 13c:	7566                	.2byte	0x7566
 13e:	6e6f6973          	csrrs	s2,0x6e6,30
 142:	7369722f          	.4byte	0x7369722f
 146:	672d7663          	bgeu	s10,s2,7b2 <set_gpio_pin_irq_type+0x54>
 14a:	756e                	.2byte	0x756e
 14c:	742d                	.2byte	0x742d
 14e:	636c6f6f          	jal	t5,c6784 <__libc_init_array+0xc4590>
 152:	6168                	.2byte	0x6168
 154:	6e69                	.2byte	0x6e69
 156:	6363672f          	.4byte	0x6363672f
 15a:	62696c2f          	.4byte	0x62696c2f
 15e:	2f636367          	.4byte	0x2f636367
 162:	74666f73          	csrrs	t5,0x746,12
 166:	662d                	.2byte	0x662d
 168:	2f70                	.2byte	0x2f70
 16a:	756d                	.2byte	0x756d
 16c:	736c                	.2byte	0x736c
 16e:	3366                	.2byte	0x3366
 170:	632e                	.2byte	0x632e
 172:	7300                	.2byte	0x7300
 174:	2d74666f          	jal	a2,46c4a <__libc_init_array+0x44a56>
 178:	7066                	.2byte	0x7066
 17a:	682e                	.2byte	0x682e
 17c:	2f00                	.2byte	0x2f00
 17e:	6f68                	.2byte	0x6f68
 180:	656d                	.2byte	0x656d
 182:	6e6f632f          	.4byte	0x6e6f632f
 186:	7566                	.2byte	0x7566
 188:	6e6f6973          	csrrs	s2,0x6e6,30
 18c:	7369722f          	.4byte	0x7369722f
 190:	672d7663          	bgeu	s10,s2,7fc <set_gpio_pin_irq_type+0x9e>
 194:	756e                	.2byte	0x756e
 196:	742d                	.2byte	0x742d
 198:	636c6f6f          	jal	t5,c67ce <__libc_init_array+0xc45da>
 19c:	6168                	.2byte	0x6168
 19e:	6e69                	.2byte	0x6e69
 1a0:	6363672f          	.4byte	0x6363672f
 1a4:	62696c2f          	.4byte	0x62696c2f
 1a8:	2f636367          	.4byte	0x2f636367
 1ac:	74666f73          	csrrs	t5,0x746,12
 1b0:	662d                	.2byte	0x662d
 1b2:	2f70                	.2byte	0x2f70
 1b4:	73627573          	csrrc	a0,mhpmevent22h,4
 1b8:	3366                	.2byte	0x3366
 1ba:	632e                	.2byte	0x632e
 1bc:	2f00                	.2byte	0x2f00
 1be:	6f68                	.2byte	0x6f68
 1c0:	656d                	.2byte	0x656d
 1c2:	6e6f632f          	.4byte	0x6e6f632f
 1c6:	7566                	.2byte	0x7566
 1c8:	6e6f6973          	csrrs	s2,0x6e6,30
 1cc:	7369722f          	.4byte	0x7369722f
 1d0:	672d7663          	bgeu	s10,s2,83c <uart_set_cfg+0x16>
 1d4:	756e                	.2byte	0x756e
 1d6:	742d                	.2byte	0x742d
 1d8:	636c6f6f          	jal	t5,c680e <__libc_init_array+0xc461a>
 1dc:	6168                	.2byte	0x6168
 1de:	6e69                	.2byte	0x6e69
 1e0:	6363672f          	.4byte	0x6363672f
 1e4:	62696c2f          	.4byte	0x62696c2f
 1e8:	2f636367          	.4byte	0x2f636367
 1ec:	74666f73          	csrrs	t5,0x746,12
 1f0:	662d                	.2byte	0x662d
 1f2:	2f70                	.2byte	0x2f70
 1f4:	6966                	.2byte	0x6966
 1f6:	7378                	.2byte	0x7378
 1f8:	7366                	.2byte	0x7366
 1fa:	2e69                	.2byte	0x2e69
 1fc:	682f0063          	beq	t5,sp,87c <uart_set_cfg+0x56>
 200:	2f656d6f          	jal	s10,564f6 <__libc_init_array+0x54302>
 204:	666e6f63          	bltu	t3,t1,882 <uart_set_cfg+0x5c>
 208:	7375                	.2byte	0x7375
 20a:	6f69                	.2byte	0x6f69
 20c:	2f6e                	.2byte	0x2f6e
 20e:	6972                	.2byte	0x6972
 210:	2d766373          	csrrs	t1,0x2d7,12
 214:	2d756e67          	.4byte	0x2d756e67
 218:	6f74                	.2byte	0x6f74
 21a:	68636c6f          	jal	s8,368a0 <__libc_init_array+0x346ac>
 21e:	6961                	.2byte	0x6961
 220:	2f6e                	.2byte	0x2f6e
 222:	2f636367          	.4byte	0x2f636367
 226:	696c                	.2byte	0x696c
 228:	6762                	.2byte	0x6762
 22a:	732f6363          	bltu	t5,s2,950 <uart_sendchar>
 22e:	2d74666f          	jal	a2,46d04 <__libc_init_array+0x44b10>
 232:	7066                	.2byte	0x7066
 234:	6f6c662f          	.4byte	0x6f6c662f
 238:	7461                	.2byte	0x7461
 23a:	66736973          	csrrs	s2,0x667,6
 23e:	632e                	.2byte	0x632e
 240:	2f00                	.2byte	0x2f00
 242:	6f68                	.2byte	0x6f68
 244:	656d                	.2byte	0x656d
 246:	6e6f632f          	.4byte	0x6e6f632f
 24a:	7566                	.2byte	0x7566
 24c:	6e6f6973          	csrrs	s2,0x6e6,30
 250:	7369722f          	.4byte	0x7369722f
 254:	672d7663          	bgeu	s10,s2,8c0 <uart_send+0xe>
 258:	756e                	.2byte	0x756e
 25a:	742d                	.2byte	0x742d
 25c:	636c6f6f          	jal	t5,c6892 <__libc_init_array+0xc469e>
 260:	6168                	.2byte	0x6168
 262:	6e69                	.2byte	0x6e69
 264:	6363672f          	.4byte	0x6363672f
 268:	62696c2f          	.4byte	0x62696c2f
 26c:	2f636367          	.4byte	0x2f636367
 270:	696c                	.2byte	0x696c
 272:	6762                	.2byte	0x6762
 274:	2e326363          	bltu	tp,gp,55a <set_pin_function+0x10>
 278:	682f0063          	beq	t5,sp,8f8 <uart_send+0x46>
 27c:	2f656d6f          	jal	s10,56572 <__libc_init_array+0x5437e>
 280:	666e6f63          	bltu	t3,t1,8fe <uart_send+0x4c>
 284:	7375                	.2byte	0x7375
 286:	6f69                	.2byte	0x6f69
 288:	2f6e                	.2byte	0x2f6e
 28a:	6972                	.2byte	0x6972
 28c:	2d766373          	csrrs	t1,0x2d7,12
 290:	2d756e67          	.4byte	0x2d756e67
 294:	6f74                	.2byte	0x6f74
 296:	68636c6f          	jal	s8,3691c <__libc_init_array+0x34728>
 29a:	6961                	.2byte	0x6961
 29c:	2f6e                	.2byte	0x2f6e
 29e:	2f636367          	.4byte	0x2f636367
 2a2:	696c                	.2byte	0x696c
 2a4:	6762                	.2byte	0x6762
 2a6:	6c006363          	bltu	zero,zero,96c <uart_sendchar+0x1c>
 2aa:	6269                	.2byte	0x6269
 2ac:	32636367          	.4byte	0x32636367
 2b0:	682e                	.2byte	0x682e
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	.2byte	0xc
   2:	0000                	.2byte	0x0
   4:	ffff                	.2byte	0xffff
   6:	ffff                	.2byte	0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	.2byte	0xd01
   e:	0002                	.2byte	0x2
  10:	0038                	.2byte	0x38
  12:	0000                	.2byte	0x0
  14:	0000                	.2byte	0x0
  16:	0000                	.2byte	0x0
  18:	1418                	.2byte	0x1418
  1a:	0000                	.2byte	0x0
  1c:	0330                	.2byte	0x330
  1e:	0000                	.2byte	0x0
  20:	0e44                	.2byte	0xe44
  22:	4420                	.2byte	0x4420
  24:	0389                	.2byte	0x389
  26:	9260                	.2byte	0x9260
  28:	9304                	.2byte	0x9304
  2a:	9405                	.2byte	0x9405
  2c:	8106                	.2byte	0x8106
  2e:	8801                	.2byte	0x8801
  30:	9502                	.2byte	0x9502
  32:	023c0307          	.4byte	0x23c0307
  36:	c10a                	.2byte	0xc10a
  38:	c844                	.2byte	0xc844
  3a:	c958                	.2byte	0xc958
  3c:	d244                	.2byte	0xd244
  3e:	d344                	.2byte	0xd344
  40:	d444                	.2byte	0xd444
  42:	d544                	.2byte	0xd544
  44:	0e48                	.2byte	0xe48
  46:	4400                	.2byte	0x4400
  48:	0000000b          	.4byte	0xb
  4c:	000c                	.2byte	0xc
  4e:	0000                	.2byte	0x0
  50:	ffff                	.2byte	0xffff
  52:	ffff                	.2byte	0xffff
  54:	7c010003          	lb	zero,1984(sp)
  58:	0d01                	.2byte	0xd01
  5a:	0002                	.2byte	0x2
  5c:	000c                	.2byte	0xc
  5e:	0000                	.2byte	0x0
  60:	004c                	.2byte	0x4c
  62:	0000                	.2byte	0x0
  64:	1748                	.2byte	0x1748
  66:	0000                	.2byte	0x0
  68:	00dc                	.2byte	0xdc
  6a:	0000                	.2byte	0x0
  6c:	000c                	.2byte	0xc
  6e:	0000                	.2byte	0x0
  70:	ffff                	.2byte	0xffff
  72:	ffff                	.2byte	0xffff
  74:	7c010003          	lb	zero,1984(sp)
  78:	0d01                	.2byte	0xd01
  7a:	0002                	.2byte	0x2
  7c:	0038                	.2byte	0x38
  7e:	0000                	.2byte	0x0
  80:	006c                	.2byte	0x6c
  82:	0000                	.2byte	0x0
  84:	1824                	.2byte	0x1824
  86:	0000                	.2byte	0x0
  88:	0334                	.2byte	0x334
  8a:	0000                	.2byte	0x0
  8c:	0e44                	.2byte	0xe44
  8e:	4420                	.2byte	0x4420
  90:	0492                	.2byte	0x492
  92:	8950                	.2byte	0x8950
  94:	95059303          	lh	t1,-1712(a1)
  98:	01815007          	.4byte	0x1815007
  9c:	0288                	.2byte	0x288
  9e:	0694                	.2byte	0x694
  a0:	0a016403          	.4byte	0xa016403
  a4:	44c1                	.2byte	0x44c1
  a6:	58c8                	.2byte	0x58c8
  a8:	44c9                	.2byte	0x44c9
  aa:	44d2                	.2byte	0x44d2
  ac:	44d444d3          	.4byte	0x44d444d3
  b0:	48d5                	.2byte	0x48d5
  b2:	000e                	.2byte	0xe
  b4:	0b44                	.2byte	0xb44
  b6:	0000                	.2byte	0x0
  b8:	000c                	.2byte	0xc
  ba:	0000                	.2byte	0x0
  bc:	ffff                	.2byte	0xffff
  be:	ffff                	.2byte	0xffff
  c0:	7c010003          	lb	zero,1984(sp)
  c4:	0d01                	.2byte	0xd01
  c6:	0002                	.2byte	0x2
  c8:	0028                	.2byte	0x28
  ca:	0000                	.2byte	0x0
  cc:	00b8                	.2byte	0xb8
  ce:	0000                	.2byte	0x0
  d0:	1b58                	.2byte	0x1b58
  d2:	0000                	.2byte	0x0
  d4:	04bc                	.2byte	0x4bc
  d6:	0000                	.2byte	0x0
  d8:	0e48                	.2byte	0xe48
  da:	5810                	.2byte	0x5810
  dc:	0389                	.2byte	0x389
  de:	0492                	.2byte	0x492
  e0:	8150                	.2byte	0x8150
  e2:	8801                	.2byte	0x8801
  e4:	0202                	.2byte	0x202
  e6:	0a94                	.2byte	0xa94
  e8:	48c1                	.2byte	0x48c1
  ea:	48c8                	.2byte	0x48c8
  ec:	44d2                	.2byte	0x44d2
  ee:	48c9                	.2byte	0x48c9
  f0:	000e                	.2byte	0xe
  f2:	0b44                	.2byte	0xb44
  f4:	000c                	.2byte	0xc
  f6:	0000                	.2byte	0x0
  f8:	ffff                	.2byte	0xffff
  fa:	ffff                	.2byte	0xffff
  fc:	7c010003          	lb	zero,1984(sp)
 100:	0d01                	.2byte	0xd01
 102:	0002                	.2byte	0x2
 104:	000c                	.2byte	0xc
 106:	0000                	.2byte	0x0
 108:	00f4                	.2byte	0xf4
 10a:	0000                	.2byte	0x0
 10c:	2014                	.2byte	0x2014
 10e:	0000                	.2byte	0x0
 110:	0070                	.2byte	0x70
 112:	0000                	.2byte	0x0
 114:	000c                	.2byte	0xc
 116:	0000                	.2byte	0x0
 118:	ffff                	.2byte	0xffff
 11a:	ffff                	.2byte	0xffff
 11c:	7c010003          	lb	zero,1984(sp)
 120:	0d01                	.2byte	0xd01
 122:	0002                	.2byte	0x2
 124:	0024                	.2byte	0x24
 126:	0000                	.2byte	0x0
 128:	0114                	.2byte	0x114
 12a:	0000                	.2byte	0x0
 12c:	2084                	.2byte	0x2084
 12e:	0000                	.2byte	0x0
 130:	0114                	.2byte	0x114
 132:	0000                	.2byte	0x0
 134:	0e44                	.2byte	0xe44
 136:	4c10                	.2byte	0x4c10
 138:	0181                	.2byte	0x181
 13a:	0288                	.2byte	0x288
 13c:	0389                	.2byte	0x389
 13e:	5002                	.2byte	0x5002
 140:	c10a                	.2byte	0xc10a
 142:	c848                	.2byte	0xc848
 144:	c94c                	.2byte	0xc94c
 146:	0e44                	.2byte	0xe44
 148:	4400                	.2byte	0x4400
 14a:	000c000b          	.4byte	0xc000b
 14e:	0000                	.2byte	0x0
 150:	ffff                	.2byte	0xffff
 152:	ffff                	.2byte	0xffff
 154:	7c010003          	lb	zero,1984(sp)
 158:	0d01                	.2byte	0xd01
 15a:	0002                	.2byte	0x2
 15c:	000c                	.2byte	0xc
 15e:	0000                	.2byte	0x0
 160:	014c                	.2byte	0x14c
 162:	0000                	.2byte	0x0
 164:	2198                	.2byte	0x2198
 166:	0000                	.2byte	0x0
 168:	004c                	.2byte	0x4c
	...
