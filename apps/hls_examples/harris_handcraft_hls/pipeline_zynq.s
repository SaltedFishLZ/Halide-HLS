	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a9
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon-fp16
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	42, 1	@ Tag_MPextension_use
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"pipeline_zynq"
	.section	.text.halide_default_malloc,"ax",%progbits
	.weak	halide_default_malloc
	.align	2
	.type	halide_default_malloc,%function
halide_default_malloc:                  @ @halide_default_malloc
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	add	r0, r1, #128
	bl	malloc(PLT)
	mov	r1, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.LBB0_2
@ BB#1:
	add	r0, r1, #131
	bfc	r0, #0, #7
	str	r1, [r0, #-4]
.LBB0_2:
	pop	{r11, pc}
.Lfunc_end0:
	.size	halide_default_malloc, .Lfunc_end0-halide_default_malloc
	.cantunwind
	.fnend

	.section	.text.halide_default_free,"ax",%progbits
	.weak	halide_default_free
	.align	2
	.type	halide_default_free,%function
halide_default_free:                    @ @halide_default_free
	.fnstart
@ BB#0:
	ldr	r0, [r1, #-4]
	b	free(PLT)
.Lfunc_end1:
	.size	halide_default_free, .Lfunc_end1-halide_default_free
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_malloc,"ax",%progbits
	.weak	halide_set_custom_malloc
	.align	2
	.type	halide_set_custom_malloc,%function
halide_set_custom_malloc:               @ @halide_set_custom_malloc
	.fnstart
@ BB#0:
	ldr	r2, .LCPI2_1
	ldr	r1, .LCPI2_0
.LPC2_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI2_0:
	.long	_ZN6Halide7Runtime8Internal13custom_mallocE(GOT)
.LCPI2_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC2_0+8)
.Lfunc_end2:
	.size	halide_set_custom_malloc, .Lfunc_end2-halide_set_custom_malloc
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_free,"ax",%progbits
	.weak	halide_set_custom_free
	.align	2
	.type	halide_set_custom_free,%function
halide_set_custom_free:                 @ @halide_set_custom_free
	.fnstart
@ BB#0:
	ldr	r2, .LCPI3_1
	ldr	r1, .LCPI3_0
.LPC3_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI3_0:
	.long	_ZN6Halide7Runtime8Internal11custom_freeE(GOT)
.LCPI3_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC3_0+8)
.Lfunc_end3:
	.size	halide_set_custom_free, .Lfunc_end3-halide_set_custom_free
	.cantunwind
	.fnend

	.section	.text.halide_malloc,"ax",%progbits
	.weak	halide_malloc
	.align	2
	.type	halide_malloc,%function
halide_malloc:                          @ @halide_malloc
	.fnstart
@ BB#0:
	ldr	r3, .LCPI4_1
	ldr	r2, .LCPI4_0
.LPC4_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI4_0:
	.long	_ZN6Halide7Runtime8Internal13custom_mallocE(GOT)
.LCPI4_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC4_0+8)
.Lfunc_end4:
	.size	halide_malloc, .Lfunc_end4-halide_malloc
	.cantunwind
	.fnend

	.section	.text.halide_free,"ax",%progbits
	.weak	halide_free
	.align	2
	.type	halide_free,%function
halide_free:                            @ @halide_free
	.fnstart
@ BB#0:
	ldr	r3, .LCPI5_1
	ldr	r2, .LCPI5_0
.LPC5_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI5_0:
	.long	_ZN6Halide7Runtime8Internal11custom_freeE(GOT)
.LCPI5_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC5_0+8)
.Lfunc_end5:
	.size	halide_free, .Lfunc_end5-halide_free
	.cantunwind
	.fnend

	.section	.text.halide_default_error,"ax",%progbits
	.weak	halide_default_error
	.align	2
	.type	halide_default_error,%function
halide_default_error:                   @ @halide_default_error
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#4096
	sub	sp, sp, #4096
	mov	r6, r1
	ldr	r1, .LCPI6_1
	mov	r4, r0
	ldr	r0, .LCPI6_0
	movw	r2, #4094
	mov	r5, sp
	add	r7, r5, r2
.LPC6_0:
	add	r1, pc, r1
	add	r2, r0, r1
	mov	r0, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldrb	r1, [r0, #-1]
	cmp	r1, #10
	beq	.LBB6_2
@ BB#1:
	mov	r1, #10
	strh	r1, [r0], #1
.LBB6_2:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_print(PLT)
	bl	abort(PLT)
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#3:
.LCPI6_0:
	.long	.L.str(GOTOFF)
.LCPI6_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC6_0+8)
.Lfunc_end6:
	.size	halide_default_error, .Lfunc_end6-halide_default_error
	.cantunwind
	.fnend

	.section	.text.halide_error,"ax",%progbits
	.weak	halide_error
	.align	2
	.type	halide_error,%function
halide_error:                           @ @halide_error
	.fnstart
@ BB#0:
	ldr	r3, .LCPI7_1
	ldr	r2, .LCPI7_0
.LPC7_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI7_0:
	.long	_ZN6Halide7Runtime8Internal13error_handlerE(GOT)
.LCPI7_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC7_0+8)
.Lfunc_end7:
	.size	halide_error, .Lfunc_end7-halide_error
	.cantunwind
	.fnend

	.section	.text.halide_set_error_handler,"ax",%progbits
	.weak	halide_set_error_handler
	.align	2
	.type	halide_set_error_handler,%function
halide_set_error_handler:               @ @halide_set_error_handler
	.fnstart
@ BB#0:
	ldr	r2, .LCPI8_1
	ldr	r1, .LCPI8_0
.LPC8_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI8_0:
	.long	_ZN6Halide7Runtime8Internal13error_handlerE(GOT)
.LCPI8_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC8_0+8)
.Lfunc_end8:
	.size	halide_set_error_handler, .Lfunc_end8-halide_set_error_handler
	.cantunwind
	.fnend

	.section	.text.halide_print,"ax",%progbits
	.weak	halide_print
	.align	2
	.type	halide_print,%function
halide_print:                           @ @halide_print
	.fnstart
@ BB#0:
	ldr	r3, .LCPI9_1
	ldr	r2, .LCPI9_0
.LPC9_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI9_0:
	.long	_ZN6Halide7Runtime8Internal12custom_printE(GOT)
.LCPI9_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC9_0+8)
.Lfunc_end9:
	.size	halide_print, .Lfunc_end9-halide_print
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_print,"ax",%progbits
	.weak	halide_set_custom_print
	.align	2
	.type	halide_set_custom_print,%function
halide_set_custom_print:                @ @halide_set_custom_print
	.fnstart
@ BB#0:
	ldr	r2, .LCPI10_1
	ldr	r1, .LCPI10_0
.LPC10_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI10_0:
	.long	_ZN6Halide7Runtime8Internal12custom_printE(GOT)
.LCPI10_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC10_0+8)
.Lfunc_end10:
	.size	halide_set_custom_print, .Lfunc_end10-halide_set_custom_print
	.cantunwind
	.fnend

	.section	.text.halide_start_clock,"ax",%progbits
	.weak	halide_start_clock
	.align	2
	.type	halide_start_clock,%function
halide_start_clock:                     @ @halide_start_clock
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	ldr	r0, .LCPI11_1
	ldr	r4, .LCPI11_0
.LPC11_0:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB11_2
@ BB#1:
	ldr	r1, .LCPI11_3
	ldr	r0, .LCPI11_2
.LPC11_1:
	add	r5, pc, r1
	mov	r1, #0
	ldr	r0, [r0, r5]
	bl	gettimeofday(PLT)
	ldr	r0, [r4, r5]
	mov	r1, #1
	strb	r1, [r0]
.LBB11_2:
	mov	r0, #0
	pop	{r4, r5, r11, pc}
	.align	2
@ BB#3:
.LCPI11_0:
	.long	_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE(GOT)
.LCPI11_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC11_0+8)
.LCPI11_2:
	.long	_ZN6Halide7Runtime8Internal22halide_reference_clockE(GOT)
.LCPI11_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC11_1+8)
.Lfunc_end11:
	.size	halide_start_clock, .Lfunc_end11-halide_start_clock
	.cantunwind
	.fnend

	.section	.text.halide_current_time_ns,"ax",%progbits
	.weak	halide_current_time_ns
	.align	2
	.type	halide_current_time_ns,%function
halide_current_time_ns:                 @ @halide_current_time_ns
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	mov	r0, sp
	mov	r1, #0
	bl	gettimeofday(PLT)
	ldr	r1, .LCPI12_1
	ldr	r0, .LCPI12_0
.LPC12_0:
	add	r1, pc, r1
	ldr	r2, [sp, #4]
	ldr	r12, [sp]
	ldr	r0, [r0, r1]
	asr	r1, r2, #31
	ldr	r3, [r0]
	ldr	r0, [r0, #4]
	subs	r2, r2, r0
	sbc	r1, r1, r0, asr #31
	sub	r0, r12, r3
	movw	r3, #16960
	movt	r3, #15
	smlal	r2, r1, r0, r3
	mov	r3, #1000
	umull	r0, r2, r2, r3
	mla	r1, r1, r3, r2
	mov	sp, r11
	pop	{r11, pc}
	.align	2
@ BB#1:
.LCPI12_0:
	.long	_ZN6Halide7Runtime8Internal22halide_reference_clockE(GOT)
.LCPI12_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC12_0+8)
.Lfunc_end12:
	.size	halide_current_time_ns, .Lfunc_end12-halide_current_time_ns
	.cantunwind
	.fnend

	.section	.text.halide_sleep_ms,"ax",%progbits
	.weak	halide_sleep_ms
	.align	2
	.type	halide_sleep_ms,%function
halide_sleep_ms:                        @ @halide_sleep_ms
	.fnstart
@ BB#0:
	mov	r0, #1000
	mul	r0, r1, r0
	b	usleep(PLT)
.Lfunc_end13:
	.size	halide_sleep_ms, .Lfunc_end13-halide_sleep_ms
	.cantunwind
	.fnend

	.section	.text.halide_default_print,"ax",%progbits
	.weak	halide_default_print
	.align	2
	.type	halide_default_print,%function
halide_default_print:                   @ @halide_default_print
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r1
	mov	r0, r4
	bl	strlen(PLT)
	mov	r2, r0
	mov	r0, #2
	mov	r1, r4
	pop	{r4, r10, r11, lr}
	b	write(PLT)
.Lfunc_end14:
	.size	halide_default_print, .Lfunc_end14-halide_default_print
	.cantunwind
	.fnend

	.section	.text.halide_create_temp_file,"ax",%progbits
	.weak	halide_create_temp_file
	.align	2
	.type	halide_create_temp_file,%function
halide_create_temp_file:                @ @halide_create_temp_file
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r7, r1
	mov	r9, r3
	mov	r6, r2
	mvn	r8, #21
	cmp	r7, #0
	beq	.LBB15_6
@ BB#1:
	cmp	r6, #0
	beq	.LBB15_6
@ BB#2:
	cmp	r9, #0
	beq	.LBB15_6
@ BB#3:
	ldr	r0, .LCPI15_0
	ldr	r1, .LCPI15_1
.LPC15_0:
	add	r10, pc, r0
	add	r0, r1, r10
	bl	strlen(PLT)
	mov	r4, r0
	mov	r0, r7
	bl	strlen(PLT)
	ldr	r1, .LCPI15_2
	mov	r5, r0
	add	r0, r1, r10
	mov	r10, r1
	bl	strlen(PLT)
	add	r1, r4, r5
	add	r4, r1, r0
	mov	r0, r6
	bl	strlen(PLT)
	ldr	r1, [r11, #8]
	add	r0, r4, r0
	add	r0, r0, #1
	cmp	r0, r1
	bhi	.LBB15_6
@ BB#4:
	ldr	r0, .LCPI15_3
.LPC15_1:
	add	r5, pc, r0
	ldr	r0, .LCPI15_1
	add	r2, r0, r5
	add	r0, r9, r1
	sub	r4, r0, #1
	mov	r0, r9
	mov	r1, r4
	bl	halide_string_to_string(PLT)
	mov	r1, r4
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	add	r2, r10, r5
	mov	r1, r4
	bl	halide_string_to_string(PLT)
	mov	r1, r4
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	mov	r1, #0
	strb	r1, [r0]
	mov	r0, r6
	bl	strlen(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	mkstemps(PLT)
	cmn	r0, #1
	beq	.LBB15_6
@ BB#5:
	bl	close(PLT)
	mov	r8, #0
.LBB15_6:
	mov	r0, r8
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#7:
.LCPI15_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC15_0+8)
.LCPI15_1:
	.long	.L.str.7(GOTOFF)
.LCPI15_2:
	.long	.L.str.1(GOTOFF)
.LCPI15_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC15_1+8)
.Lfunc_end15:
	.size	halide_create_temp_file, .Lfunc_end15-halide_create_temp_file
	.cantunwind
	.fnend

	.section	.text.halide_host_cpu_count,"ax",%progbits
	.weak	halide_host_cpu_count
	.align	2
	.type	halide_host_cpu_count,%function
halide_host_cpu_count:                  @ @halide_host_cpu_count
	.fnstart
@ BB#0:
	mov	r0, #84
	b	sysconf(PLT)
.Lfunc_end16:
	.size	halide_host_cpu_count, .Lfunc_end16-halide_host_cpu_count
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
	.align	2
	.type	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv,%function
_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv: @ @_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	blx	r1
	mov	r0, #0
	pop	{r11, pc}
.Lfunc_end17:
	.size	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv, .Lfunc_end17-_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv
	.cantunwind
	.fnend

	.section	.text.halide_spawn_thread,"ax",%progbits
	.weak	halide_spawn_thread
	.align	2
	.type	halide_spawn_thread,%function
halide_spawn_thread:                    @ @halide_spawn_thread
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r5, r0
	mov	r0, #12
	mov	r4, r1
	bl	malloc(PLT)
	mov	r6, r0
	ldr	r1, .LCPI18_1
	ldr	r0, .LCPI18_0
	mov	r3, r6
.LPC18_0:
	add	r1, pc, r1
	str	r5, [r6]
	str	r4, [r6, #4]
	ldr	r2, [r0, r1]
	mov	r1, #0
	mov	r0, r6
	str	r1, [r0, #8]!
	mov	r1, #0
	bl	pthread_create(PLT)
	mov	r0, r6
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#1:
.LCPI18_0:
	.long	_ZN6Halide7Runtime8Internal19spawn_thread_helperEPv(GOT)
.LCPI18_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC18_0+8)
.Lfunc_end18:
	.size	halide_spawn_thread, .Lfunc_end18-halide_spawn_thread
	.cantunwind
	.fnend

	.section	.text.halide_join_thread,"ax",%progbits
	.weak	halide_join_thread
	.align	2
	.type	halide_join_thread,%function
halide_join_thread:                     @ @halide_join_thread
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	mov	r0, #0
	str	r0, [sp, #4]
	add	r1, sp, #4
	ldr	r0, [r4, #8]
	bl	pthread_join(PLT)
	mov	r0, r4
	bl	free(PLT)
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end19:
	.size	halide_join_thread, .Lfunc_end19-halide_join_thread
	.cantunwind
	.fnend

	.section	.text.halide_mutex_lock,"ax",%progbits
	.weak	halide_mutex_lock
	.align	2
	.type	halide_mutex_lock,%function
halide_mutex_lock:                      @ @halide_mutex_lock
	.fnstart
@ BB#0:
	b	pthread_mutex_lock(PLT)
.Lfunc_end20:
	.size	halide_mutex_lock, .Lfunc_end20-halide_mutex_lock
	.cantunwind
	.fnend

	.section	.text.halide_mutex_unlock,"ax",%progbits
	.weak	halide_mutex_unlock
	.align	2
	.type	halide_mutex_unlock,%function
halide_mutex_unlock:                    @ @halide_mutex_unlock
	.fnstart
@ BB#0:
	b	pthread_mutex_unlock(PLT)
.Lfunc_end21:
	.size	halide_mutex_unlock, .Lfunc_end21-halide_mutex_unlock
	.cantunwind
	.fnend

	.section	.text.halide_mutex_destroy,"ax",%progbits
	.weak	halide_mutex_destroy
	.align	2
	.type	halide_mutex_destroy,%function
halide_mutex_destroy:                   @ @halide_mutex_destroy
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	bl	pthread_mutex_destroy(PLT)
	mov	r0, r4
	mov	r1, #0
	mov	r2, #64
	pop	{r4, r10, r11, lr}
	b	memset(PLT)
.Lfunc_end22:
	.size	halide_mutex_destroy, .Lfunc_end22-halide_mutex_destroy
	.cantunwind
	.fnend

	.section	.text.halide_cond_init,"ax",%progbits
	.weak	halide_cond_init
	.align	2
	.type	halide_cond_init,%function
halide_cond_init:                       @ @halide_cond_init
	.fnstart
@ BB#0:
	mov	r1, #0
	b	pthread_cond_init(PLT)
.Lfunc_end23:
	.size	halide_cond_init, .Lfunc_end23-halide_cond_init
	.cantunwind
	.fnend

	.section	.text.halide_cond_destroy,"ax",%progbits
	.weak	halide_cond_destroy
	.align	2
	.type	halide_cond_destroy,%function
halide_cond_destroy:                    @ @halide_cond_destroy
	.fnstart
@ BB#0:
	b	pthread_cond_destroy(PLT)
.Lfunc_end24:
	.size	halide_cond_destroy, .Lfunc_end24-halide_cond_destroy
	.cantunwind
	.fnend

	.section	.text.halide_cond_broadcast,"ax",%progbits
	.weak	halide_cond_broadcast
	.align	2
	.type	halide_cond_broadcast,%function
halide_cond_broadcast:                  @ @halide_cond_broadcast
	.fnstart
@ BB#0:
	b	pthread_cond_broadcast(PLT)
.Lfunc_end25:
	.size	halide_cond_broadcast, .Lfunc_end25-halide_cond_broadcast
	.cantunwind
	.fnend

	.section	.text.halide_cond_wait,"ax",%progbits
	.weak	halide_cond_wait
	.align	2
	.type	halide_cond_wait,%function
halide_cond_wait:                       @ @halide_cond_wait
	.fnstart
@ BB#0:
	b	pthread_cond_wait(PLT)
.Lfunc_end26:
	.size	halide_cond_wait, .Lfunc_end26-halide_cond_wait
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal17clamp_num_threadsEi,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
	.align	2
	.type	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi,%function
_ZN6Halide7Runtime8Internal17clamp_num_threadsEi: @ @_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
	.fnstart
@ BB#0:
	cmp	r0, #64
	movgt	r0, #64
	bxgt	lr
	cmp	r0, #1
	movwlt	r0, #1
	bx	lr
.Lfunc_end27:
	.size	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi, .Lfunc_end27-_ZN6Halide7Runtime8Internal17clamp_num_threadsEi
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
	.align	2
	.type	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv,%function
_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv: @ @_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	ldr	r0, .LCPI28_0
	ldr	r1, .LCPI28_1
.LPC28_0:
	add	r0, pc, r0
	add	r0, r1, r0
	bl	getenv(PLT)
	cmp	r0, #0
	bne	.LBB28_2
@ BB#1:
	ldr	r0, .LCPI28_2
	ldr	r1, .LCPI28_3
.LPC28_1:
	add	r0, pc, r0
	add	r0, r1, r0
	bl	getenv(PLT)
	cmp	r0, #0
	beq	.LBB28_3
.LBB28_2:                               @ %.thread
	pop	{r11, lr}
	b	atoi(PLT)
.LBB28_3:
	pop	{r11, lr}
	b	halide_host_cpu_count(PLT)
	.align	2
@ BB#4:
.LCPI28_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC28_0+8)
.LCPI28_1:
	.long	.L.str.8(GOTOFF)
.LCPI28_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC28_1+8)
.LCPI28_3:
	.long	.L.str.1.9(GOTOFF)
.Lfunc_end28:
	.size	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv, .Lfunc_end28-_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
	.align	2
	.type	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE,%function
_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE: @ @_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#28
	sub	sp, sp, #28
	mov	r4, r0
	ldr	r0, .LCPI29_0
	cmp	r4, #0
	beq	.LBB29_12
@ BB#1:
	ldr	r1, .LCPI29_1
.LPC29_0:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r1, .LCPI29_5
.LPC29_4:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r1, .LCPI29_2
.LPC29_1:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #16]           @ 4-byte Spill
	ldr	r1, .LCPI29_3
.LPC29_2:
	add	r1, pc, r1
	ldr	r10, [r0, r1]
	ldr	r1, .LCPI29_4
.LPC29_3:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	add	r0, r0, #80
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB29_3
.LBB29_2:                               @   in Loop: Header=BB29_3 Depth=1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	add	r0, r1, #80
	bl	halide_cond_wait(PLT)
.LBB29_3:                               @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit2.thread.us
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #16]
	cmp	r0, r1
	blt	.LBB29_5
@ BB#4:                                 @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit.us
                                        @   in Loop: Header=BB29_3 Depth=1
	ldr	r0, [r4, #24]
	cmp	r0, #1
	blt	.LBB29_24
.LBB29_5:                               @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit.thread.us
                                        @   in Loop: Header=BB29_3 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r9, [r0, #64]
	cmp	r9, #0
	beq	.LBB29_2
@ BB#6:                                 @   in Loop: Header=BB29_3 Depth=1
	ldmib	r9, {r7, r8}
	ldr	r5, [r9, #12]
	ldr	r6, [r9, #20]
	add	r0, r5, #1
	str	r0, [r9, #12]
	ldr	r1, [r9, #16]
	cmp	r0, r1
	bne	.LBB29_8
@ BB#7:                                 @   in Loop: Header=BB29_3 Depth=1
	ldr	r0, [r9]
	ldr	r1, [sp, #16]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB29_8:                               @   in Loop: Header=BB29_3 Depth=1
	ldr	r0, [r9, #24]
	add	r0, r0, #1
	str	r0, [r9, #24]
	mov	r0, r10
	bl	halide_mutex_unlock(PLT)
	mov	r0, r8
	mov	r1, r7
	mov	r2, r5
	mov	r3, r6
	bl	halide_do_task(PLT)
	mov	r5, r0
	mov	r0, r10
	bl	halide_mutex_lock(PLT)
	cmp	r5, #0
	strne	r5, [r9, #28]
	ldr	r0, [r9, #24]
	sub	r1, r0, #1
	str	r1, [r9, #24]
	ldr	r1, [r9, #12]
	ldr	r2, [r9, #16]
	cmp	r1, r2
	blt	.LBB29_3
@ BB#9:                                 @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit2.us
                                        @   in Loop: Header=BB29_3 Depth=1
	cmp	r9, r4
	beq	.LBB29_3
@ BB#10:                                @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit2.us
                                        @   in Loop: Header=BB29_3 Depth=1
	cmp	r0, #1
	bgt	.LBB29_3
@ BB#11:                                @   in Loop: Header=BB29_3 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	halide_cond_broadcast(PLT)
	b	.LBB29_3
.LBB29_12:                              @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit2.thread.preheader
	ldr	r1, .LCPI29_6
.LPC29_5:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	ldrb	r1, [r1, #536]
	cmp	r1, #0
	bne	.LBB29_24
@ BB#13:
	ldr	r1, .LCPI29_7
.LPC29_6:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r1, .LCPI29_11
.LPC29_10:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r1, .LCPI29_13
.LPC29_12:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #8]            @ 4-byte Spill
	ldr	r1, .LCPI29_12
.LPC29_11:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #4]            @ 4-byte Spill
	ldr	r1, .LCPI29_14
.LPC29_13:
	add	r1, pc, r1
	ldr	r10, [r0, r1]
	ldr	r1, .LCPI29_8
.LPC29_7:
	add	r1, pc, r1
	ldr	r1, [r0, r1]
	str	r1, [sp, #16]           @ 4-byte Spill
	ldr	r1, .LCPI29_9
.LPC29_8:
	add	r1, pc, r1
	ldr	r6, [r0, r1]
	ldr	r1, .LCPI29_10
.LPC29_9:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	add	r0, r0, #80
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB29_14:                              @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit.thread
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r9, [r0, #64]
	cmp	r9, #0
	beq	.LBB29_20
@ BB#15:                                @   in Loop: Header=BB29_14 Depth=1
	ldmib	r9, {r7, r8}
	ldr	r5, [r9, #12]
	ldr	r4, [r9, #20]
	add	r0, r5, #1
	str	r0, [r9, #12]
	ldr	r1, [r9, #16]
	cmp	r0, r1
	bne	.LBB29_17
@ BB#16:                                @   in Loop: Header=BB29_14 Depth=1
	ldr	r0, [r9]
	ldr	r1, [sp, #16]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB29_17:                              @   in Loop: Header=BB29_14 Depth=1
	ldr	r0, [r9, #24]
	add	r0, r0, #1
	str	r0, [r9, #24]
	mov	r0, r6
	bl	halide_mutex_unlock(PLT)
	mov	r0, r8
	mov	r1, r7
	mov	r2, r5
	mov	r3, r4
	bl	halide_do_task(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	halide_mutex_lock(PLT)
	cmp	r4, #0
	strne	r4, [r9, #28]
	ldr	r0, [r9, #24]
	subs	r0, r0, #1
	str	r0, [r9, #24]
	bgt	.LBB29_23
@ BB#18:                                @   in Loop: Header=BB29_14 Depth=1
	ldr	r0, [r9, #12]
	ldr	r1, [r9, #16]
	cmp	r0, r1
	blt	.LBB29_23
@ BB#19:                                @   in Loop: Header=BB29_14 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	halide_cond_broadcast(PLT)
	b	.LBB29_23
.LBB29_20:                              @   in Loop: Header=BB29_14 Depth=1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	ldr	r0, [r1, #68]
	ldr	r1, [r1, #72]
	cmp	r0, r1
	ble	.LBB29_22
@ BB#21:                                @   in Loop: Header=BB29_14 Depth=1
	ldr	r4, [sp, #8]            @ 4-byte Reload
	sub	r0, r0, #1
	str	r0, [r4, #68]
	add	r0, r4, #208
	mov	r1, r4
	bl	halide_cond_wait(PLT)
	ldr	r0, [r4, #68]
	add	r0, r0, #1
	str	r0, [r4, #68]
	b	.LBB29_23
.LBB29_22:                              @   in Loop: Header=BB29_14 Depth=1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	add	r0, r1, #144
	bl	halide_cond_wait(PLT)
.LBB29_23:                              @ %_ZN6Halide7Runtime8Internal4work7runningEv.exit2.thread.backedge
                                        @   in Loop: Header=BB29_14 Depth=1
	ldrb	r0, [r10, #536]
	cmp	r0, #0
	beq	.LBB29_14
.LBB29_24:                              @ %.us-lcssa.us
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#25:
.LCPI29_0:
	.long	_ZN6Halide7Runtime8Internal10work_queueE(GOT)
.LCPI29_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_0+8)
.LCPI29_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_1+8)
.LCPI29_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_2+8)
.LCPI29_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_3+8)
.LCPI29_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_4+8)
.LCPI29_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_5+8)
.LCPI29_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_6+8)
.LCPI29_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_7+8)
.LCPI29_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_8+8)
.LCPI29_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_9+8)
.LCPI29_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_10+8)
.LCPI29_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_11+8)
.LCPI29_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_12+8)
.LCPI29_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC29_13+8)
.Lfunc_end29:
	.size	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE, .Lfunc_end29-_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE
	.cantunwind
	.fnend

	.section	.text.halide_do_task,"ax",%progbits
	.weak	halide_do_task
	.align	2
	.type	halide_do_task,%function
halide_do_task:                         @ @halide_do_task
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	ldr	lr, .LCPI30_1
	ldr	r12, .LCPI30_0
.LPC30_0:
	add	lr, pc, lr
	ldr	r12, [r12, lr]
	ldr	r12, [r12]
	pop	{r11, lr}
	bx	r12
	.align	2
@ BB#1:
.LCPI30_0:
	.long	custom_do_task(GOT)
.LCPI30_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC30_0+8)
.Lfunc_end30:
	.size	halide_do_task, .Lfunc_end30-halide_do_task
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal13worker_threadEPv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal13worker_threadEPv
	.align	2
	.type	_ZN6Halide7Runtime8Internal13worker_threadEPv,%function
_ZN6Halide7Runtime8Internal13worker_threadEPv: @ @_ZN6Halide7Runtime8Internal13worker_threadEPv
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	ldr	r1, .LCPI31_1
	ldr	r0, .LCPI31_0
.LPC31_0:
	add	r1, pc, r1
	ldr	r4, [r0, r1]
	mov	r0, r4
	bl	halide_mutex_lock(PLT)
	mov	r0, #0
	bl	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(PLT)
	mov	r0, r4
	pop	{r4, r10, r11, lr}
	b	halide_mutex_unlock(PLT)
	.align	2
@ BB#1:
.LCPI31_0:
	.long	_ZN6Halide7Runtime8Internal10work_queueE(GOT)
.LCPI31_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC31_0+8)
.Lfunc_end31:
	.size	_ZN6Halide7Runtime8Internal13worker_threadEPv, .Lfunc_end31-_ZN6Halide7Runtime8Internal13worker_threadEPv
	.cantunwind
	.fnend

	.section	.text.halide_default_do_task,"ax",%progbits
	.weak	halide_default_do_task
	.align	2
	.type	halide_default_do_task,%function
halide_default_do_task:                 @ @halide_default_do_task
	.fnstart
@ BB#0:
	mov	r12, r1
	mov	r1, r2
	mov	r2, r3
	bx	r12
.Lfunc_end32:
	.size	halide_default_do_task, .Lfunc_end32-halide_default_do_task
	.cantunwind
	.fnend

	.section	.text.halide_default_do_par_for,"ax",%progbits
	.weak	halide_default_do_par_for
	.align	2
	.type	halide_default_do_par_for,%function
halide_default_do_par_for:              @ @halide_default_do_par_for
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#36
	sub	sp, sp, #36
	mov	r7, r0
	ldr	r0, .LCPI33_1
	ldr	r9, .LCPI33_0
	mov	r4, r3
.LPC33_0:
	add	r0, pc, r0
	mov	r5, r2
	str	r1, [sp]                @ 4-byte Spill
	ldr	r6, [r9, r0]
	mov	r0, r6
	bl	halide_mutex_lock(PLT)
	ldrb	r0, [r6, #537]
	cmp	r0, #0
	beq	.LBB33_2
@ BB#1:                                 @ %..preheader_crit_edge
	ldr	r0, .LCPI33_2
.LPC33_1:
	add	r0, pc, r0
	ldr	r0, [r9, r0]
	ldr	r6, [r0, #528]
	ldr	r0, [r0, #532]
	b	.LBB33_5
.LBB33_2:
	ldr	r0, .LCPI33_3
	mov	r8, r7
	mov	r6, #0
.LPC33_2:
	add	r0, pc, r0
	ldr	r7, [r9, r0]
	add	r0, r7, #80
	strb	r6, [r7, #536]
	bl	halide_cond_init(PLT)
	add	r0, r7, #144
	bl	halide_cond_init(PLT)
	add	r0, r7, #208
	bl	halide_cond_init(PLT)
	str	r6, [r7, #64]
	ldr	r0, [r7, #532]
	cmp	r0, #0
	bne	.LBB33_4
@ BB#3:
	ldr	r0, .LCPI33_4
.LPC33_3:
	add	r0, pc, r0
	ldr	r7, [r9, r0]
	bl	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv(PLT)
	str	r0, [r7, #532]
.LBB33_4:
	ldr	r1, .LCPI33_5
.LPC33_4:
	add	r1, pc, r1
	ldr	r7, [r9, r1]
	bl	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(PLT)
	mov	r1, #1
	str	r6, [r7, #528]
	str	r0, [r7, #532]
	str	r0, [r7, #68]
	strb	r1, [r7, #537]
	mov	r7, r8
.LBB33_5:                               @ %.preheader
	ldr	r10, [r11, #8]
	sub	r1, r0, #1
	cmp	r6, r1
	bge	.LBB33_8
@ BB#6:
	ldr	r1, .LCPI33_7
	ldr	r0, .LCPI33_6
.LPC33_5:
	add	r1, pc, r1
	ldr	r8, [r9, r1]
	ldr	r6, [r0, r1]
.LBB33_7:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r6
	mov	r1, #0
	bl	halide_spawn_thread(PLT)
	ldr	r1, [r8, #528]
	add	r2, r8, r1, lsl #2
	add	r1, r1, #1
	str	r1, [r8, #528]
	str	r0, [r2, #272]
	ldr	r0, [r8, #532]
	ldr	r1, [r8, #528]
	sub	r2, r0, #1
	cmp	r1, r2
	blt	.LBB33_7
.LBB33_8:                               @ %._crit_edge
	ldr	r1, .LCPI33_8
	ldr	r2, [sp]                @ 4-byte Reload
.LPC33_6:
	add	r1, pc, r1
	ldr	r6, [r9, r1]
	add	r1, r4, r5
	str	r2, [sp, #8]
	mov	r2, r0
	str	r7, [sp, #12]
	str	r5, [sp, #16]
	str	r1, [sp, #20]
	mov	r1, #0
	str	r10, [sp, #24]
	str	r1, [sp, #32]
	str	r1, [sp, #28]
	ldr	r1, [r6, #64]
	cmp	r1, #0
	moveq	r2, r4
	cmp	r0, r4
	movle	r2, r0
	add	r0, sp, #4
	str	r2, [r6, #72]
	str	r0, [r6, #64]
	add	r0, r6, #144
	str	r1, [sp, #4]
	bl	halide_cond_broadcast(PLT)
	ldr	r0, [r6, #68]
	ldr	r1, [r6, #72]
	cmp	r1, r0
	ble	.LBB33_10
@ BB#9:
	ldr	r0, .LCPI33_9
.LPC33_7:
	add	r0, pc, r0
	ldr	r0, [r9, r0]
	add	r0, r0, #208
	bl	halide_cond_broadcast(PLT)
.LBB33_10:
	add	r0, sp, #4
	bl	_ZN6Halide7Runtime8Internal28worker_thread_already_lockedEPNS1_4workE(PLT)
	ldr	r0, .LCPI33_10
.LPC33_8:
	add	r0, pc, r0
	ldr	r0, [r9, r0]
	bl	halide_mutex_unlock(PLT)
	ldr	r0, [sp, #32]
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#11:
.LCPI33_0:
	.long	_ZN6Halide7Runtime8Internal10work_queueE(GOT)
.LCPI33_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_0+8)
.LCPI33_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_1+8)
.LCPI33_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_2+8)
.LCPI33_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_3+8)
.LCPI33_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_4+8)
.LCPI33_6:
	.long	_ZN6Halide7Runtime8Internal13worker_threadEPv(GOT)
.LCPI33_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_5+8)
.LCPI33_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_6+8)
.LCPI33_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_7+8)
.LCPI33_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC33_8+8)
.Lfunc_end33:
	.size	halide_default_do_par_for, .Lfunc_end33-halide_default_do_par_for
	.cantunwind
	.fnend

	.section	.text.halide_set_num_threads,"ax",%progbits
	.weak	halide_set_num_threads
	.align	2
	.type	halide_set_num_threads,%function
halide_set_num_threads:                 @ @halide_set_num_threads
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	cmp	r4, #0
	blt	.LBB34_3
@ BB#1:
	ldr	r1, .LCPI34_1
	ldr	r0, .LCPI34_0
.LPC34_0:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	bl	halide_mutex_lock(PLT)
	cmp	r4, #0
	bne	.LBB34_4
@ BB#2:
	bl	_ZN6Halide7Runtime8Internal27default_desired_num_threadsEv(PLT)
	mov	r4, r0
	b	.LBB34_4
.LBB34_3:                               @ %.thread
	ldr	r0, .LCPI34_2
	ldr	r1, .LCPI34_3
.LPC34_1:
	add	r5, pc, r0
	mov	r0, #0
	add	r1, r1, r5
	bl	halide_error(PLT)
	ldr	r0, .LCPI34_0
	ldr	r0, [r0, r5]
	bl	halide_mutex_lock(PLT)
.LBB34_4:
	ldr	r1, .LCPI34_4
	ldr	r0, .LCPI34_0
.LPC34_2:
	add	r1, pc, r1
	ldr	r5, [r0, r1]
	mov	r0, r4
	ldr	r6, [r5, #532]
	bl	_ZN6Halide7Runtime8Internal17clamp_num_threadsEi(PLT)
	str	r0, [r5, #532]
	mov	r0, r5
	bl	halide_mutex_unlock(PLT)
	mov	r0, r6
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#5:
.LCPI34_0:
	.long	_ZN6Halide7Runtime8Internal10work_queueE(GOT)
.LCPI34_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC34_0+8)
.LCPI34_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC34_1+8)
.LCPI34_3:
	.long	.L.str.2(GOTOFF)
.LCPI34_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC34_2+8)
.Lfunc_end34:
	.size	halide_set_num_threads, .Lfunc_end34-halide_set_num_threads
	.cantunwind
	.fnend

	.section	.text.halide_shutdown_thread_pool,"ax",%progbits
	.weak	halide_shutdown_thread_pool
	.align	2
	.type	halide_shutdown_thread_pool,%function
halide_shutdown_thread_pool:            @ @halide_shutdown_thread_pool
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	ldr	r0, .LCPI35_1
	ldr	r5, .LCPI35_0
.LPC35_0:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	ldrb	r0, [r0, #537]
	cmp	r0, #0
	beq	.LBB35_5
@ BB#1:
	ldr	r0, .LCPI35_2
.LPC35_1:
	add	r0, pc, r0
	ldr	r4, [r5, r0]
	mov	r0, r4
	bl	halide_mutex_lock(PLT)
	mov	r0, #1
	strb	r0, [r4, #536]
	add	r0, r4, #80
	bl	halide_cond_broadcast(PLT)
	add	r0, r4, #144
	bl	halide_cond_broadcast(PLT)
	add	r0, r4, #208
	bl	halide_cond_broadcast(PLT)
	mov	r0, r4
	bl	halide_mutex_unlock(PLT)
	ldr	r0, [r4, #528]
	cmp	r0, #0
	ble	.LBB35_4
@ BB#2:
	ldr	r0, .LCPI35_3
	add	r4, r4, #272
	mov	r6, #0
.LPC35_2:
	add	r0, pc, r0
	ldr	r7, [r5, r0]
.LBB35_3:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4], #4
	bl	halide_join_thread(PLT)
	ldr	r0, [r7, #528]
	add	r6, r6, #1
	cmp	r6, r0
	blt	.LBB35_3
.LBB35_4:                               @ %._crit_edge
	ldr	r0, .LCPI35_4
.LPC35_3:
	add	r0, pc, r0
	ldr	r4, [r5, r0]
	mov	r0, r4
	bl	halide_mutex_destroy(PLT)
	add	r0, r4, #80
	bl	halide_cond_destroy(PLT)
	add	r0, r4, #144
	bl	halide_cond_destroy(PLT)
	add	r0, r4, #208
	bl	halide_cond_destroy(PLT)
	mov	r0, #0
	strb	r0, [r4, #537]
.LBB35_5:
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#6:
.LCPI35_0:
	.long	_ZN6Halide7Runtime8Internal10work_queueE(GOT)
.LCPI35_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC35_0+8)
.LCPI35_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC35_1+8)
.LCPI35_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC35_2+8)
.LCPI35_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC35_3+8)
.Lfunc_end35:
	.size	halide_shutdown_thread_pool, .Lfunc_end35-halide_shutdown_thread_pool
	.cantunwind
	.fnend

	.section	.text.halide_thread_pool_cleanup,"ax",%progbits
	.weak	halide_thread_pool_cleanup
	.align	2
	.type	halide_thread_pool_cleanup,%function
halide_thread_pool_cleanup:             @ @halide_thread_pool_cleanup
	.fnstart
@ BB#0:
	b	halide_shutdown_thread_pool(PLT)
.Lfunc_end36:
	.size	halide_thread_pool_cleanup, .Lfunc_end36-halide_thread_pool_cleanup
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_do_task,"ax",%progbits
	.weak	halide_set_custom_do_task
	.align	2
	.type	halide_set_custom_do_task,%function
halide_set_custom_do_task:              @ @halide_set_custom_do_task
	.fnstart
@ BB#0:
	ldr	r2, .LCPI37_1
	ldr	r1, .LCPI37_0
.LPC37_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI37_0:
	.long	custom_do_task(GOT)
.LCPI37_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC37_0+8)
.Lfunc_end37:
	.size	halide_set_custom_do_task, .Lfunc_end37-halide_set_custom_do_task
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_do_par_for,"ax",%progbits
	.weak	halide_set_custom_do_par_for
	.align	2
	.type	halide_set_custom_do_par_for,%function
halide_set_custom_do_par_for:           @ @halide_set_custom_do_par_for
	.fnstart
@ BB#0:
	ldr	r2, .LCPI38_1
	ldr	r1, .LCPI38_0
.LPC38_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI38_0:
	.long	custom_do_par_for(GOT)
.LCPI38_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC38_0+8)
.Lfunc_end38:
	.size	halide_set_custom_do_par_for, .Lfunc_end38-halide_set_custom_do_par_for
	.cantunwind
	.fnend

	.section	.text.halide_do_par_for,"ax",%progbits
	.weak	halide_do_par_for
	.align	2
	.type	halide_do_par_for,%function
halide_do_par_for:                      @ @halide_do_par_for
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	ldr	lr, .LCPI39_1
	ldr	r12, .LCPI39_0
.LPC39_0:
	add	lr, pc, lr
	ldr	r12, [r12, lr]
	ldr	r12, [r12]
	pop	{r11, lr}
	bx	r12
	.align	2
@ BB#1:
.LCPI39_0:
	.long	custom_do_par_for(GOT)
.LCPI39_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC39_0+8)
.Lfunc_end39:
	.size	halide_do_par_for, .Lfunc_end39-halide_do_par_for
	.cantunwind
	.fnend

	.section	.text.halide_default_get_symbol,"ax",%progbits
	.weak	halide_default_get_symbol
	.align	2
	.type	halide_default_get_symbol,%function
halide_default_get_symbol:              @ @halide_default_get_symbol
	.fnstart
@ BB#0:
	mov	r1, r0
	mov	r0, #0
	b	dlsym(PLT)
.Lfunc_end40:
	.size	halide_default_get_symbol, .Lfunc_end40-halide_default_get_symbol
	.cantunwind
	.fnend

	.section	.text.halide_default_load_library,"ax",%progbits
	.weak	halide_default_load_library
	.align	2
	.type	halide_default_load_library,%function
halide_default_load_library:            @ @halide_default_load_library
	.fnstart
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r1, #1
	bl	dlopen(PLT)
	mov	r4, r0
	cmp	r4, #0
	bne	.LBB41_2
@ BB#1:
	bl	dlerror(PLT)
.LBB41_2:
	mov	r0, r4
	pop	{r4, r10, r11, pc}
.Lfunc_end41:
	.size	halide_default_load_library, .Lfunc_end41-halide_default_load_library
	.cantunwind
	.fnend

	.section	.text.halide_default_get_library_symbol,"ax",%progbits
	.weak	halide_default_get_library_symbol
	.align	2
	.type	halide_default_get_library_symbol,%function
halide_default_get_library_symbol:      @ @halide_default_get_library_symbol
	.fnstart
@ BB#0:
	b	dlsym(PLT)
.Lfunc_end42:
	.size	halide_default_get_library_symbol, .Lfunc_end42-halide_default_get_library_symbol
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_get_symbol,"ax",%progbits
	.weak	halide_set_custom_get_symbol
	.align	2
	.type	halide_set_custom_get_symbol,%function
halide_set_custom_get_symbol:           @ @halide_set_custom_get_symbol
	.fnstart
@ BB#0:
	ldr	r2, .LCPI43_1
	ldr	r1, .LCPI43_0
.LPC43_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI43_0:
	.long	_ZN6Halide7Runtime8Internal17custom_get_symbolE(GOT)
.LCPI43_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC43_0+8)
.Lfunc_end43:
	.size	halide_set_custom_get_symbol, .Lfunc_end43-halide_set_custom_get_symbol
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_load_library,"ax",%progbits
	.weak	halide_set_custom_load_library
	.align	2
	.type	halide_set_custom_load_library,%function
halide_set_custom_load_library:         @ @halide_set_custom_load_library
	.fnstart
@ BB#0:
	ldr	r2, .LCPI44_1
	ldr	r1, .LCPI44_0
.LPC44_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI44_0:
	.long	_ZN6Halide7Runtime8Internal19custom_load_libraryE(GOT)
.LCPI44_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC44_0+8)
.Lfunc_end44:
	.size	halide_set_custom_load_library, .Lfunc_end44-halide_set_custom_load_library
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_get_library_symbol,"ax",%progbits
	.weak	halide_set_custom_get_library_symbol
	.align	2
	.type	halide_set_custom_get_library_symbol,%function
halide_set_custom_get_library_symbol:   @ @halide_set_custom_get_library_symbol
	.fnstart
@ BB#0:
	ldr	r2, .LCPI45_1
	ldr	r1, .LCPI45_0
.LPC45_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI45_0:
	.long	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE(GOT)
.LCPI45_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC45_0+8)
.Lfunc_end45:
	.size	halide_set_custom_get_library_symbol, .Lfunc_end45-halide_set_custom_get_library_symbol
	.cantunwind
	.fnend

	.section	.text.halide_get_symbol,"ax",%progbits
	.weak	halide_get_symbol
	.align	2
	.type	halide_get_symbol,%function
halide_get_symbol:                      @ @halide_get_symbol
	.fnstart
@ BB#0:
	ldr	r2, .LCPI46_1
	ldr	r1, .LCPI46_0
.LPC46_0:
	add	r2, pc, r2
	ldr	r1, [r1, r2]
	ldr	r1, [r1]
	bx	r1
	.align	2
@ BB#1:
.LCPI46_0:
	.long	_ZN6Halide7Runtime8Internal17custom_get_symbolE(GOT)
.LCPI46_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC46_0+8)
.Lfunc_end46:
	.size	halide_get_symbol, .Lfunc_end46-halide_get_symbol
	.cantunwind
	.fnend

	.section	.text.halide_load_library,"ax",%progbits
	.weak	halide_load_library
	.align	2
	.type	halide_load_library,%function
halide_load_library:                    @ @halide_load_library
	.fnstart
@ BB#0:
	ldr	r2, .LCPI47_1
	ldr	r1, .LCPI47_0
.LPC47_0:
	add	r2, pc, r2
	ldr	r1, [r1, r2]
	ldr	r1, [r1]
	bx	r1
	.align	2
@ BB#1:
.LCPI47_0:
	.long	_ZN6Halide7Runtime8Internal19custom_load_libraryE(GOT)
.LCPI47_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC47_0+8)
.Lfunc_end47:
	.size	halide_load_library, .Lfunc_end47-halide_load_library
	.cantunwind
	.fnend

	.section	.text.halide_get_library_symbol,"ax",%progbits
	.weak	halide_get_library_symbol
	.align	2
	.type	halide_get_library_symbol,%function
halide_get_library_symbol:              @ @halide_get_library_symbol
	.fnstart
@ BB#0:
	ldr	r3, .LCPI48_1
	ldr	r2, .LCPI48_0
.LPC48_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI48_0:
	.long	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE(GOT)
.LCPI48_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC48_0+8)
.Lfunc_end48:
	.size	halide_get_library_symbol, .Lfunc_end48-halide_get_library_symbol
	.cantunwind
	.fnend

	.section	.text.halide_set_gpu_device,"ax",%progbits
	.weak	halide_set_gpu_device
	.align	2
	.type	halide_set_gpu_device,%function
halide_set_gpu_device:                  @ @halide_set_gpu_device
	.fnstart
@ BB#0:
	ldr	r2, .LCPI49_1
	ldr	r1, .LCPI49_0
	ldr	r3, .LCPI49_2
.LPC49_0:
	add	r2, pc, r2
	ldr	r1, [r1, r2]
	ldr	r2, [r3, r2]
	str	r0, [r1]
	mov	r0, #1
	strb	r0, [r2]
	bx	lr
	.align	2
@ BB#1:
.LCPI49_0:
	.long	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE(GOT)
.LCPI49_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC49_0+8)
.LCPI49_2:
	.long	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE(GOT)
.Lfunc_end49:
	.size	halide_set_gpu_device, .Lfunc_end49-halide_set_gpu_device
	.cantunwind
	.fnend

	.section	.text.halide_get_gpu_device,"ax",%progbits
	.weak	halide_get_gpu_device
	.align	2
	.type	halide_get_gpu_device,%function
halide_get_gpu_device:                  @ @halide_get_gpu_device
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	ldr	r0, .LCPI50_1
	mov	r1, #1
	ldr	r4, .LCPI50_0
.LPC50_0:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
.LBB50_1:                               @ %._crit_edge.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB50_2 Depth 2
	dmb	ish
.LBB50_2:                               @ %atomicrmw.start
                                        @   Parent Loop BB50_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrex	r2, [r0]
	strex	r3, r1, [r0]
	cmp	r3, #0
	bne	.LBB50_2
@ BB#3:                                 @ %atomicrmw.end
                                        @   in Loop: Header=BB50_1 Depth=1
	dmb	ish
	cmp	r2, #0
	bne	.LBB50_1
@ BB#4:                                 @ %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	ldr	r0, .LCPI50_3
	ldr	r5, .LCPI50_2
.LPC50_1:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LBB50_6
@ BB#5:                                 @ %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit._crit_edge
	ldr	r1, .LCPI50_5
	ldr	r0, .LCPI50_4
.LPC50_2:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	ldr	r0, [r0]
	b	.LBB50_9
.LBB50_6:
	ldr	r0, .LCPI50_6
	ldr	r1, .LCPI50_7
.LPC50_3:
	add	r0, pc, r0
	add	r0, r1, r0
	bl	getenv(PLT)
	mov	r1, r0
	mvn	r0, #0
	cmp	r1, #0
	beq	.LBB50_8
@ BB#7:
	mov	r0, r1
	bl	atoi(PLT)
.LBB50_8:
	ldr	r2, .LCPI50_8
	ldr	r1, .LCPI50_4
.LPC50_4:
	add	r2, pc, r2
	ldr	r1, [r1, r2]
	ldr	r2, [r5, r2]
	str	r0, [r1]
	mov	r1, #1
	strb	r1, [r2]
.LBB50_9:
	ldr	r1, .LCPI50_9
	mov	r2, #0
	dmb	ish
.LPC50_5:
	add	r1, pc, r1
	ldr	r1, [r4, r1]
	str	r2, [r1]
	pop	{r4, r5, r11, pc}
	.align	2
@ BB#10:
.LCPI50_0:
	.long	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE(GOT)
.LCPI50_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_0+8)
.LCPI50_2:
	.long	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE(GOT)
.LCPI50_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_1+8)
.LCPI50_4:
	.long	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE(GOT)
.LCPI50_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_2+8)
.LCPI50_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_3+8)
.LCPI50_7:
	.long	.L.str.10(GOTOFF)
.LCPI50_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_4+8)
.LCPI50_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC50_5+8)
.Lfunc_end50:
	.size	halide_get_gpu_device, .Lfunc_end50-halide_get_gpu_device
	.cantunwind
	.fnend

	.section	.text.halide_default_trace,"ax",%progbits
	.weak	halide_default_trace
	.align	2
	.type	halide_default_trace,%function
halide_default_trace:                   @ @halide_default_trace
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#36
	sub	sp, sp, #36
	.pad	#4096
	sub	sp, sp, #4096
	ldr	r2, .LCPI51_0
	mov	r6, r1
	ldr	r1, .LCPI51_1
	dmb	ish
.LPC51_0:
	add	r2, pc, r2
	add	r3, r1, r2
.LBB51_1:                               @ %atomicrmw.start
                                        @ =>This Inner Loop Header: Depth=1
	ldrex	r4, [r3]
	add	r1, r4, #1
	strex	r2, r1, [r3]
	cmp	r2, #0
	bne	.LBB51_1
@ BB#2:                                 @ %atomicrmw.end
	dmb	ish
	str	r0, [sp, #16]           @ 4-byte Spill
	bl	halide_get_trace_file(PLT)
	mov	r9, r0
	cmp	r9, #1
	blt	.LBB51_13
@ BB#3:
	ldrb	r0, [r6, #13]
	ldrh	r1, [r6, #14]
	add	r0, r0, #7
	lsr	r0, r0, #3
	ldr	r7, [r6, #28]
	mul	r1, r0, r1
	ldr	r0, [r6]
	str	r1, [sp, #24]           @ 4-byte Spill
	add	r5, r1, r7, lsl #2
	bl	strlen(PLT)
	add	r1, r0, #1
	add	r0, r5, r1
	mov	r5, r1
	add	r8, r0, #31
	add	r1, r6, #12
	bfc	r8, #0, #2
	add	r10, r0, #28
	lsl	r0, r7, #2
	str	r8, [sp, #28]
	str	r4, [sp, #32]
	vld1.16	{d16, d17}, [r1]
	add	r1, sp, #28
	add	r1, r1, #8
	str	r0, [sp, #20]           @ 4-byte Spill
	vst1.32	{d16, d17}, [r1]
	ldr	r0, .LCPI51_33
	ldr	r1, .LCPI51_30
.LPC51_16:
	add	r0, pc, r0
	str	r7, [sp, #52]
	ldr	r0, [r1, r0]
	mov	r1, #1
.LBB51_4:                               @ %._crit_edge.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB51_5 Depth 2
	dmb	ish
.LBB51_5:                               @ %atomicrmw.start8
                                        @   Parent Loop BB51_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrex	r2, [r0]
	strex	r3, r1, [r0]
	cmp	r3, #0
	bne	.LBB51_5
@ BB#6:                                 @ %atomicrmw.end7
                                        @   in Loop: Header=BB51_4 Depth=1
	dmb	ish
	cmp	r2, #0
	bne	.LBB51_4
@ BB#7:                                 @ %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	add	r1, sp, #28
	mov	r0, r9
	mov	r2, #28
	bl	write(PLT)
	ldr	r1, [r6, #8]
	mov	r7, r0
	cmp	r1, #0
	beq	.LBB51_9
@ BB#8:
	ldr	r2, [sp, #20]           @ 4-byte Reload
	mov	r0, r9
	bl	write(PLT)
	add	r7, r0, r7
.LBB51_9:
	ldr	r1, [r6, #4]
	sub	r10, r8, r10
	cmp	r1, #0
	beq	.LBB51_11
@ BB#10:
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r0, r9
	bl	write(PLT)
	add	r7, r0, r7
.LBB51_11:
	ldr	r1, [r6]
	mov	r0, r9
	mov	r2, r5
	bl	write(PLT)
	mov	r6, r0
	mov	r5, #0
	sub	r1, r11, #36
	mov	r0, r9
	mov	r2, r10
	str	r5, [r11, #-36]
	bl	write(PLT)
	ldr	r1, .LCPI51_34
	dmb	ish
	ldr	r2, .LCPI51_30
.LPC51_17:
	add	r1, pc, r1
	ldr	r1, [r2, r1]
	str	r5, [r1]
	add	r1, r6, r7
	add	r0, r1, r0
	cmp	r0, r8
	beq	.LBB51_78
@ BB#12:
	ldr	r0, .LCPI51_35
	ldr	r1, .LCPI51_36
.LPC51_18:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
	b	.LBB51_78
.LBB51_13:
	mov	r0, #0
	add	lr, sp, #4096
	strb	r0, [lr, #27]
	movw	r1, #4095
	add	r2, sp, #28
	ldrb	r0, [r6, #13]
	add	r7, r2, r1
	mov	r1, #8
.LBB51_14:                              @ =>This Inner Loop Header: Depth=1
	mov	r10, r1
	lsl	r1, r10, #1
	cmp	r10, r0
	blt	.LBB51_14
@ BB#15:
	cmp	r10, #65
	blt	.LBB51_17
@ BB#16:
	ldr	r0, .LCPI51_2
	ldr	r1, .LCPI51_3
.LPC51_1:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB51_17:
	ldr	r1, .LCPI51_5
	ldr	r0, .LCPI51_4
	ldr	r8, [r6, #16]
.LPC51_2:
	add	r5, pc, r1
	add	r0, r0, r5
	mov	r1, r7
	ldr	r2, [r0, r8, lsl #2]
	add	r0, sp, #28
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI51_6
	add	r2, r1, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r6]
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI51_7
	add	r2, r1, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r6, #24]
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r7
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI51_8
	add	r2, r1, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	ldrh	r0, [r6, #14]
	cmp	r0, #2
	blo	.LBB51_19
@ BB#18:
	ldr	r0, .LCPI51_9
	ldr	r1, .LCPI51_10
.LPC51_3:
	add	r0, pc, r0
	str	r8, [sp, #12]           @ 4-byte Spill
	add	r2, r1, r0
	mov	r0, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	b	.LBB51_20
.LBB51_19:
	str	r8, [sp, #12]           @ 4-byte Spill
.LBB51_20:                              @ %.preheader7
	ldr	r0, [r6, #28]
	mov	r8, r7
	cmp	r0, #1
	blt	.LBB51_29
@ BB#21:                                @ %.lr.ph14
	ldr	r0, .LCPI51_13
	mov	r7, #0
	ldr	r1, .LCPI51_14
	mov	r9, #0
.LPC51_5:
	add	r0, pc, r0
	add	r0, r1, r0
	ldr	r1, .LCPI51_12
	str	r0, [sp, #20]           @ 4-byte Spill
	ldr	r0, .LCPI51_11
.LPC51_4:
	add	r0, pc, r0
	add	r0, r1, r0
	str	r0, [sp, #24]           @ 4-byte Spill
.LBB51_22:                              @ =>This Inner Loop Header: Depth=1
	cmp	r9, #1
	blt	.LBB51_28
@ BB#23:                                @   in Loop: Header=BB51_22 Depth=1
	ldrh	r1, [r6, #14]
	cmp	r1, #2
	blo	.LBB51_25
@ BB#24:                                @   in Loop: Header=BB51_22 Depth=1
	mov	r0, r9
	bl	__modsi3(PLT)
	cmp	r0, #0
	beq	.LBB51_26
.LBB51_25:                              @   in Loop: Header=BB51_22 Depth=1
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r8
	b	.LBB51_27
.LBB51_26:                              @   in Loop: Header=BB51_22 Depth=1
	mov	r0, r5
	mov	r1, r8
	ldr	r2, [sp, #20]           @ 4-byte Reload
.LBB51_27:                              @   in Loop: Header=BB51_22 Depth=1
	bl	halide_string_to_string(PLT)
	mov	r5, r0
.LBB51_28:                              @   in Loop: Header=BB51_22 Depth=1
	ldr	r0, [r6, #8]
	mov	r1, r8
	ldr	r2, [r0, r7]
	mov	r0, #1
	str	r0, [sp]
	mov	r0, r5
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	mov	r5, r0
	ldr	r0, [r6, #28]
	add	r9, r9, #1
	add	r7, r7, #4
	cmp	r9, r0
	blt	.LBB51_22
.LBB51_29:                              @ %._crit_edge.15
	ldrh	r0, [r6, #14]
	cmp	r0, #1
	bls	.LBB51_31
@ BB#30:
	ldr	r0, .LCPI51_17
	ldr	r1, .LCPI51_18
.LPC51_7:
	add	r0, pc, r0
	b	.LBB51_32
.LBB51_31:
	ldr	r0, .LCPI51_15
	ldr	r1, .LCPI51_16
.LPC51_6:
	add	r0, pc, r0
.LBB51_32:
	add	r2, r1, r0
	mov	r0, r5
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	mov	r12, r0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB51_73
@ BB#33:
	ldrh	r0, [r6, #14]
	cmp	r0, #2
	blo	.LBB51_35
@ BB#34:
	ldr	r0, .LCPI51_21
	ldr	r1, .LCPI51_22
.LPC51_9:
	add	r0, pc, r0
	b	.LBB51_36
.LBB51_35:
	ldr	r0, .LCPI51_19
	ldr	r1, .LCPI51_20
.LPC51_8:
	add	r0, pc, r0
.LBB51_36:                              @ %.preheader
	add	r2, r1, r0
	mov	r0, r12
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	mov	r12, r0
	ldrh	r0, [r6, #14]
	cmp	r0, #0
	beq	.LBB51_73
@ BB#37:                                @ %.lr.ph
	ldr	r0, .LCPI51_23
	mov	r5, #0
	ldr	r1, .LCPI51_12
	mov	r9, #0
.LPC51_10:
	add	r0, pc, r0
	str	r8, [sp, #24]           @ 4-byte Spill
	add	r0, r1, r0
	ldr	r1, .LCPI51_25
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r8, #0
	ldr	r0, .LCPI51_24
	mov	r7, #0
.LPC51_11:
	add	r0, pc, r0
	add	r0, r1, r0
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB51_42
.LBB51_38:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	cmp	r10, #32
	bne	.LBB51_41
@ BB#39:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r2, [r0, r9]
	mov	r0, #1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r3, #0
	str	r0, [sp]
	mov	r0, r12
	bl	halide_uint64_to_string(PLT)
	b	.LBB51_69
.LBB51_40:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r2, [r0, r8]!
	ldr	r3, [r0, #4]
	mov	r0, #1
	str	r0, [sp]
	b	.LBB51_68
.LBB51_41:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r2, [r0, r8]!
	ldr	r1, [sp, #24]           @ 4-byte Reload
	ldr	r3, [r0, #4]
	mov	r0, #1
	str	r0, [sp]
	mov	r0, r12
	bl	halide_uint64_to_string(PLT)
	b	.LBB51_69
.LBB51_42:                              @ =>This Inner Loop Header: Depth=1
	cmp	r7, #1
	blt	.LBB51_44
@ BB#43:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r0, r12
	ldr	r2, [sp, #20]           @ 4-byte Reload
	bl	halide_string_to_string(PLT)
	mov	r12, r0
.LBB51_44:                              @   in Loop: Header=BB51_42 Depth=1
	ldrb	r0, [r6, #12]
	cmp	r0, #3
	bhi	.LBB51_70
@ BB#45:                                @   in Loop: Header=BB51_42 Depth=1
	lsl	r0, r0, #2
	adr	r1, .LJTI51_0
	ldr	r0, [r0, r1]
	add	pc, r0, r1
@ BB#46:
	.align	2
.LJTI51_0:
	.long	.LBB51_47-.LJTI51_0
	.long	.LBB51_49-.LJTI51_0
	.long	.LBB51_51-.LJTI51_0
	.long	.LBB51_54-.LJTI51_0
.LBB51_47:                              @   in Loop: Header=BB51_42 Depth=1
	cmp	r10, #16
	bne	.LBB51_55
@ BB#48:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	add	r0, r0, r5
	ldrsh	r2, [r0]
	b	.LBB51_67
.LBB51_49:                              @   in Loop: Header=BB51_42 Depth=1
	cmp	r10, #16
	bne	.LBB51_57
@ BB#50:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	add	r0, r0, r5
	ldrh	r2, [r0]
	b	.LBB51_59
.LBB51_51:                              @   in Loop: Header=BB51_42 Depth=1
	cmp	r10, #15
	ble	.LBB51_60
@ BB#52:                                @   in Loop: Header=BB51_42 Depth=1
	str	r12, [sp, #12]          @ 4-byte Spill
	cmp	r10, #32
	bne	.LBB51_61
@ BB#53:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	mov	r2, #0
	ldr	r1, [sp, #24]           @ 4-byte Reload
	add	r0, r0, r9
	vldr	s0, [r0]
	vcvt.f64.f32	d0, s0
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	halide_double_to_string(PLT)
	b	.LBB51_69
.LBB51_54:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	ldr	r1, [sp, #24]           @ 4-byte Reload
	ldr	r2, [r0, r9]
	mov	r0, r12
	bl	halide_pointer_to_string(PLT)
	b	.LBB51_69
.LBB51_55:                              @   in Loop: Header=BB51_42 Depth=1
	cmp	r10, #8
	bne	.LBB51_65
@ BB#56:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	add	r0, r0, r7
	ldrsb	r2, [r0]
	b	.LBB51_67
.LBB51_57:                              @   in Loop: Header=BB51_42 Depth=1
	cmp	r10, #8
	bne	.LBB51_38
@ BB#58:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	ldrb	r2, [r0, r7]
.LBB51_59:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r0, #1
	str	r0, [sp]
	mov	r0, r12
	mov	r3, #0
	bl	halide_int64_to_string(PLT)
	b	.LBB51_69
.LBB51_60:                              @ %.thread6
                                        @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r12, [sp, #12]          @ 4-byte Spill
	bl	halide_print(PLT)
	bl	abort(PLT)
	ldr	r0, [r6, #4]
	b	.LBB51_63
.LBB51_61:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	cmp	r10, #16
	bne	.LBB51_63
@ BB#62:                                @   in Loop: Header=BB51_42 Depth=1
	add	r0, r0, r5
	ldrh	r0, [r0]
	bl	halide_float16_bits_to_double(PLT)
	b	.LBB51_64
.LBB51_63:                              @   in Loop: Header=BB51_42 Depth=1
	add	r0, r0, r8
	vldr	d0, [r0]
.LBB51_64:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	mov	r2, #1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	halide_double_to_string(PLT)
	b	.LBB51_69
.LBB51_65:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r0, [r6, #4]
	cmp	r10, #32
	bne	.LBB51_40
@ BB#66:                                @   in Loop: Header=BB51_42 Depth=1
	ldr	r2, [r0, r9]
.LBB51_67:                              @   in Loop: Header=BB51_42 Depth=1
	asr	r3, r2, #31
	mov	r0, #1
	str	r0, [sp]
.LBB51_68:                              @   in Loop: Header=BB51_42 Depth=1
	ldr	r1, [sp, #24]           @ 4-byte Reload
	mov	r0, r12
	bl	halide_int64_to_string(PLT)
.LBB51_69:                              @   in Loop: Header=BB51_42 Depth=1
	mov	r12, r0
.LBB51_70:                              @   in Loop: Header=BB51_42 Depth=1
	ldrh	r0, [r6, #14]
	add	r7, r7, #1
	add	r5, r5, #2
	add	r8, r8, #8
	add	r9, r9, #4
	cmp	r7, r0
	blt	.LBB51_42
@ BB#71:
	ldr	r8, [sp, #24]           @ 4-byte Reload
	cmp	r0, #1
	bls	.LBB51_73
@ BB#72:
	ldr	r0, .LCPI51_26
	ldr	r1, .LCPI51_27
.LPC51_12:
	add	r0, pc, r0
	add	r2, r1, r0
	mov	r0, r12
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	mov	r12, r0
.LBB51_73:                              @ %.thread
	ldr	r0, .LCPI51_28
	ldr	r1, .LCPI51_29
.LPC51_13:
	add	r0, pc, r0
	add	r2, r1, r0
	mov	r0, r12
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	add	r1, sp, #28
	ldr	r7, [sp, #16]           @ 4-byte Reload
	rsb	r2, r1, #1
	add	r5, r2, r0
	asr	r6, r5, #31
	mov	r0, r7
	mov	r2, r5
	mov	r3, r6
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	ldr	r0, .LCPI51_31
	mov	r1, #1
	ldr	r8, .LCPI51_30
.LPC51_14:
	add	r0, pc, r0
	ldr	r0, [r8, r0]
.LBB51_74:                              @ %._crit_edge.i.4
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB51_75 Depth 2
	dmb	ish
.LBB51_75:                              @ %atomicrmw.start11
                                        @   Parent Loop BB51_74 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrex	r2, [r0]
	strex	r3, r1, [r0]
	cmp	r3, #0
	bne	.LBB51_75
@ BB#76:                                @ %atomicrmw.end10
                                        @   in Loop: Header=BB51_74 Depth=1
	dmb	ish
	cmp	r2, #0
	bne	.LBB51_74
@ BB#77:                                @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy4096EED2Ev.exit
	add	r9, sp, #28
	mov	r0, r7
	mov	r1, r9
	bl	halide_print(PLT)
	ldr	r0, .LCPI51_32
	mov	r1, #0
	dmb	ish
	mov	r2, r5
.LPC51_15:
	add	r0, pc, r0
	mov	r3, r6
	ldr	r0, [r8, r0]
	str	r1, [r0]
	mov	r0, r7
	mov	r1, r9
	bl	halide_msan_annotate_memory_is_initialized(PLT)
.LBB51_78:
	mov	r0, r4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#79:
.LCPI51_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_0+8)
.LCPI51_1:
	.long	_ZZ20halide_default_traceE3ids(GOTOFF)
.LCPI51_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_1+8)
.LCPI51_3:
	.long	.L.str.1.15(GOTOFF)
.LCPI51_4:
	.long	.L_ZZ20halide_default_traceE11event_types(GOTOFF)
.LCPI51_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_2+8)
.LCPI51_6:
	.long	.L.str.20.148(GOTOFF)
.LCPI51_7:
	.long	.L.str.27.118(GOTOFF)
.LCPI51_8:
	.long	.L.str.22.150(GOTOFF)
.LCPI51_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_3+8)
.LCPI51_10:
	.long	.L.str.15(GOTOFF)
.LCPI51_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_4+8)
.LCPI51_12:
	.long	.L.str.21.68(GOTOFF)
.LCPI51_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_5+8)
.LCPI51_14:
	.long	.L.str.16(GOTOFF)
.LCPI51_15:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_6+8)
.LCPI51_16:
	.long	.L.str.8.99(GOTOFF)
.LCPI51_17:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_7+8)
.LCPI51_18:
	.long	.L.str.18(GOTOFF)
.LCPI51_19:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_8+8)
.LCPI51_20:
	.long	.L.str.21(GOTOFF)
.LCPI51_21:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_9+8)
.LCPI51_22:
	.long	.L.str.20(GOTOFF)
.LCPI51_23:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_10+8)
.LCPI51_24:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_11+8)
.LCPI51_25:
	.long	.L.str.22(GOTOFF)
.LCPI51_26:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_12+8)
.LCPI51_27:
	.long	.L.str.23(GOTOFF)
.LCPI51_28:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_13+8)
.LCPI51_29:
	.long	.L.str.7.135(GOTOFF)
.LCPI51_30:
	.long	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE(GOT)
.LCPI51_31:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_14+8)
.LCPI51_32:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_15+8)
.LCPI51_33:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_16+8)
.LCPI51_34:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_17+8)
.LCPI51_35:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC51_18+8)
.LCPI51_36:
	.long	.L.str.14(GOTOFF)
.Lfunc_end51:
	.size	halide_default_trace, .Lfunc_end51-halide_default_trace
	.cantunwind
	.fnend

	.section	.text.halide_get_trace_file,"ax",%progbits
	.weak	halide_get_trace_file
	.align	2
	.type	halide_get_trace_file,%function
halide_get_trace_file:                  @ @halide_get_trace_file
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	ldr	r0, .LCPI52_1
	ldr	r6, .LCPI52_0
	mov	r1, #1
.LPC52_0:
	add	r0, pc, r0
	ldr	r0, [r6, r0]
.LBB52_1:                               @ %._crit_edge.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB52_2 Depth 2
	dmb	ish
.LBB52_2:                               @ %atomicrmw.start
                                        @   Parent Loop BB52_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrex	r2, [r0]
	strex	r3, r1, [r0]
	cmp	r3, #0
	bne	.LBB52_2
@ BB#3:                                 @ %atomicrmw.end
                                        @   in Loop: Header=BB52_1 Depth=1
	dmb	ish
	cmp	r2, #0
	bne	.LBB52_1
@ BB#4:                                 @ %_ZN6Halide7Runtime8Internal14ScopedSpinLockC2EPVi.exit
	ldr	r1, .LCPI52_3
	ldr	r0, .LCPI52_2
.LPC52_1:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.LBB52_10
@ BB#5:
	ldr	r0, .LCPI52_4
	ldr	r1, .LCPI52_5
.LPC52_2:
	add	r0, pc, r0
	add	r0, r1, r0
	bl	getenv(PLT)
	cmp	r0, #0
	beq	.LBB52_9
@ BB#6:
	ldr	r1, .LCPI52_6
	ldr	r2, .LCPI52_7
.LPC52_3:
	add	r1, pc, r1
	add	r1, r2, r1
	bl	fopen(PLT)
	mov	r5, r0
	cmp	r5, #0
	bne	.LBB52_8
@ BB#7:
	ldr	r0, .LCPI52_8
	ldr	r1, .LCPI52_9
.LPC52_4:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB52_8:
	mov	r0, r5
	bl	fileno(PLT)
	bl	halide_set_trace_file(PLT)
	ldr	r1, .LCPI52_11
	ldr	r0, .LCPI52_10
.LPC52_5:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	str	r5, [r0]
	b	.LBB52_10
.LBB52_9:
	mov	r0, #0
	bl	halide_set_trace_file(PLT)
.LBB52_10:
	ldr	r1, .LCPI52_13
	mov	r2, #0
	ldr	r0, .LCPI52_12
.LPC52_6:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	ldr	r1, [r6, r1]
	ldr	r0, [r0]
	dmb	ish
	str	r2, [r1]
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#11:
.LCPI52_0:
	.long	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE(GOT)
.LCPI52_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_0+8)
.LCPI52_2:
	.long	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE(GOT)
.LCPI52_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_1+8)
.LCPI52_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_2+8)
.LCPI52_5:
	.long	.L.str.25(GOTOFF)
.LCPI52_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_3+8)
.LCPI52_7:
	.long	.L.str.26(GOTOFF)
.LCPI52_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_4+8)
.LCPI52_9:
	.long	.L.str.27(GOTOFF)
.LCPI52_10:
	.long	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE(GOT)
.LCPI52_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_5+8)
.LCPI52_12:
	.long	_ZN6Halide7Runtime8Internal17halide_trace_fileE(GOT)
.LCPI52_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC52_6+8)
.Lfunc_end52:
	.size	halide_get_trace_file, .Lfunc_end52-halide_get_trace_file
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_trace,"ax",%progbits
	.weak	halide_set_custom_trace
	.align	2
	.type	halide_set_custom_trace,%function
halide_set_custom_trace:                @ @halide_set_custom_trace
	.fnstart
@ BB#0:
	ldr	r2, .LCPI53_1
	ldr	r1, .LCPI53_0
.LPC53_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI53_0:
	.long	_ZN6Halide7Runtime8Internal19halide_custom_traceE(GOT)
.LCPI53_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC53_0+8)
.Lfunc_end53:
	.size	halide_set_custom_trace, .Lfunc_end53-halide_set_custom_trace
	.cantunwind
	.fnend

	.section	.text.halide_set_trace_file,"ax",%progbits
	.weak	halide_set_trace_file
	.align	2
	.type	halide_set_trace_file,%function
halide_set_trace_file:                  @ @halide_set_trace_file
	.fnstart
@ BB#0:
	ldr	r2, .LCPI54_1
	ldr	r1, .LCPI54_0
	ldr	r3, .LCPI54_2
.LPC54_0:
	add	r2, pc, r2
	ldr	r1, [r1, r2]
	ldr	r2, [r3, r2]
	str	r0, [r1]
	mov	r0, #1
	strb	r0, [r2]
	bx	lr
	.align	2
@ BB#1:
.LCPI54_0:
	.long	_ZN6Halide7Runtime8Internal17halide_trace_fileE(GOT)
.LCPI54_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC54_0+8)
.LCPI54_2:
	.long	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE(GOT)
.Lfunc_end54:
	.size	halide_set_trace_file, .Lfunc_end54-halide_set_trace_file
	.cantunwind
	.fnend

	.section	.text.halide_trace,"ax",%progbits
	.weak	halide_trace
	.align	2
	.type	halide_trace,%function
halide_trace:                           @ @halide_trace
	.fnstart
@ BB#0:
	ldr	r3, .LCPI55_1
	ldr	r2, .LCPI55_0
.LPC55_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI55_0:
	.long	_ZN6Halide7Runtime8Internal19halide_custom_traceE(GOT)
.LCPI55_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC55_0+8)
.Lfunc_end55:
	.size	halide_trace, .Lfunc_end55-halide_trace
	.cantunwind
	.fnend

	.section	.text.halide_shutdown_trace,"ax",%progbits
	.weak	halide_shutdown_trace
	.align	2
	.type	halide_shutdown_trace,%function
halide_shutdown_trace:                  @ @halide_shutdown_trace
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	ldr	r0, .LCPI56_1
	ldr	r1, .LCPI56_0
.LPC56_0:
	add	r0, pc, r0
	ldr	r0, [r1, r0]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB56_2
@ BB#1:
	ldr	r3, .LCPI56_3
	ldr	r2, .LCPI56_2
	ldr	r12, .LCPI56_4
.LPC56_1:
	add	r3, pc, r3
	ldr	r6, [r1, r3]
	ldr	r4, [r2, r3]
	ldr	r5, [r12, r3]
	bl	fclose(PLT)
	mov	r1, #0
	str	r1, [r4]
	strb	r1, [r5]
	str	r1, [r6]
	pop	{r4, r5, r6, r10, r11, pc}
.LBB56_2:
	mov	r0, #0
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#3:
.LCPI56_0:
	.long	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE(GOT)
.LCPI56_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC56_0+8)
.LCPI56_2:
	.long	_ZN6Halide7Runtime8Internal17halide_trace_fileE(GOT)
.LCPI56_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC56_1+8)
.LCPI56_4:
	.long	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE(GOT)
.Lfunc_end56:
	.size	halide_shutdown_trace, .Lfunc_end56-halide_shutdown_trace
	.cantunwind
	.fnend

	.section	.text.halide_trace_cleanup,"ax",%progbits
	.weak	halide_trace_cleanup
	.align	2
	.type	halide_trace_cleanup,%function
halide_trace_cleanup:                   @ @halide_trace_cleanup
	.fnstart
@ BB#0:
	b	halide_shutdown_trace(PLT)
.Lfunc_end57:
	.size	halide_trace_cleanup, .Lfunc_end57-halide_trace_cleanup
	.cantunwind
	.fnend

	.section	.text.halide_trace_helper,"ax",%progbits
	.weak	halide_trace_helper
	.align	2
	.type	halide_trace_helper,%function
halide_trace_helper:                    @ @halide_trace_helper
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#32
	sub	sp, sp, #32
	add	lr, r11, #8
	ldm	lr, {r5, r12, lr}
	stm	sp, {r1, r2, r3}
	uxth	r1, lr
	strb	r5, [sp, #12]
	ldr	r4, [r11, #32]
	cmp	r1, #1
	movls	r1, #1
	ldr	r8, [r11, #20]
	ldr	r6, [r11, #24]
	mul	r1, r1, r4
	ldr	r7, [r11, #28]
	strb	r12, [sp, #13]
	strh	lr, [sp, #14]
	str	r8, [sp, #16]
	str	r6, [sp, #20]
	str	r7, [sp, #24]
	str	r1, [sp, #28]
	mov	r1, sp
	bl	halide_trace(PLT)
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.Lfunc_end58:
	.size	halide_trace_helper, .Lfunc_end58-halide_trace_helper
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc
	.align	2
	.type	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc,%function
_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc: @ @_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc
	.fnstart
@ BB#0:
	mov	r1, r0
.LBB59_1:                               @ =>This Inner Loop Header: Depth=1
	mov	r2, r1
	ldrb	r3, [r1], #1
	cmp	r3, #0
	bne	.LBB59_1
@ BB#2:                                 @ %.preheader
	mov	r1, #0
	cmp	r2, r0
	beq	.LBB59_14
.LBB59_3:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	tst	r1, #1
	bne	.LBB59_6
@ BB#4:                                 @   in Loop: Header=BB59_3 Depth=1
	ldrb	r3, [r2, #-1]!
	mov	r1, #0
	cmp	r3, #46
	movweq	r1, #1
	cmp	r0, r2
	bne	.LBB59_3
@ BB#5:                                 @ %.critedge
	mov	r1, #0
	cmp	r3, #46
	bne	.LBB59_14
	b	.LBB59_7
.LBB59_6:
	mov	r0, r2
.LBB59_7:                               @ %.critedge.thread
	ldrb	r1, [r0, #1]
	orr	r1, r1, #32
	uxtb	r2, r1
	mov	r1, #0
	cmp	r2, #116
	bne	.LBB59_14
@ BB#8:
	ldrb	r2, [r0, #2]
	orr	r2, r2, #32
	uxtb	r2, r2
	cmp	r2, #105
	bne	.LBB59_14
@ BB#9:
	ldrb	r2, [r0, #3]
	orr	r2, r2, #32
	uxtb	r2, r2
	cmp	r2, #102
	bne	.LBB59_14
@ BB#10:
	ldrb	r2, [r0, #4]
	mov	r1, #1
	cmp	r2, #0
	beq	.LBB59_14
@ BB#11:
	cmp	r2, #70
	beq	.LBB59_13
@ BB#12:
	cmp	r2, #102
	bne	.LBB59_15
.LBB59_13:
	ldrb	r0, [r0, #5]
	mov	r1, #0
	cmp	r0, #0
	movweq	r1, #1
.LBB59_14:                              @ %.critedge.thread10
	mov	r0, r1
	bx	lr
.LBB59_15:
	mov	r1, #0
	mov	r0, r1
	bx	lr
.Lfunc_end59:
	.size	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc, .Lfunc_end59-_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc
	.cantunwind
	.fnend

	.section	.text.halide_debug_to_file,"ax",%progbits
	.weak	halide_debug_to_file
	.align	4
	.type	halide_debug_to_file,%function
halide_debug_to_file:                   @ @halide_debug_to_file
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#164
	sub	sp, sp, #164
	.pad	#4096
	sub	sp, sp, #4096
	mov	r8, r1
	ldr	r1, [r3, #28]
	mov	r9, r2
	cmp	r1, #5
	blt	.LBB60_3
@ BB#1:
	ldr	r1, .LCPI60_5
	ldr	r2, .LCPI60_6
.LPC60_2:
	add	r1, pc, r1
	add	r1, r2, r1
	bl	halide_error(PLT)
.LBB60_2:
	mvn	r0, #0
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB60_3:
	mov	r1, r3
	mov	r4, r3
	bl	halide_copy_to_host(PLT)
	ldr	r0, .LCPI60_0
	ldr	r1, .LCPI60_1
.LPC60_0:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r8
	bl	fopen(PLT)
	mov	r10, r0
	mvn	r0, #0
	cmp	r10, #0
	beq	.LBB60_42
@ BB#4:                                 @ %.preheader64109
	vmov.i32	q8, #0x0
	sub	r12, r11, #96
	add	r0, r12, #48
	mov	r1, #1
	mov	r7, #1
	mov	lr, r4
	vst1.64	{d16, d17}, [r0]
	add	r0, r12, #32
	vst1.64	{d16, d17}, [r0]
	mov	r0, r12
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r4, #28]
	cmp	r0, #1
	blt	.LBB60_9
@ BB#5:                                 @ %.lr.ph104
	ldr	r3, [lr, #32]
	mov	r6, #1
	mov	r2, r12
	mov	r7, #1
.LBB60_6:                               @ =>This Inner Loop Header: Depth=1
	vld1.32	{d16, d17}, [r3]!
	mov	r5, r2
	cmp	r6, #3
	vst1.32	{d16, d17}, [r5]!
	ldr	r2, [r2, #4]
	mul	r7, r2, r7
	bgt	.LBB60_8
@ BB#7:                                 @   in Loop: Header=BB60_6 Depth=1
	add	r4, r6, #1
	cmp	r6, r0
	mov	r2, r5
	mov	r6, r4
	blt	.LBB60_6
.LBB60_8:                               @ %.preheader
	cmp	r0, #3
	bgt	.LBB60_11
.LBB60_9:                               @ %.lr.ph100
	add	r2, r12, r0, lsl #4
	mov	r3, #0
.LBB60_10:                              @ =>This Inner Loop Header: Depth=1
	str	r3, [r2]
	add	r0, r0, #1
	stmib	r2, {r1, r3}
	add	r2, r2, #16
	cmp	r0, #4
	blt	.LBB60_10
.LBB60_11:                              @ %._crit_edge.101
	ldrb	r0, [lr, #25]
	str	lr, [sp, #72]           @ 4-byte Spill
	add	r0, r0, #7
	lsr	r5, r0, #3
	mov	r0, r8
	bl	_ZN6Halide7Runtime8Internal18has_tiff_extensionEPKc(PLT)
	cmp	r0, #0
	beq	.LBB60_21
@ BB#12:
	movw	r1, #18761
	ldr	r3, [r11, #-92]
	strh	r1, [sp, #92]
	mov	r1, #42
	mov	lr, #4
	mov	r8, r5
	strh	r1, [sp, #94]
	mov	r1, #8
	lsl	r5, r8, #3
	mov	r2, #0
	str	r1, [sp, #96]
	mov	r1, #15
	strh	r1, [sp, #100]
	mov	r1, #256
	add	r0, sp, #210
	strh	r1, [sp, #102]
	mov	r1, #1
	ldr	r6, [r11, #-76]
	strh	lr, [sp, #104]
	str	r1, [sp, #106]
	str	r3, [sp, #110]
	movw	r3, #257
	strh	r3, [sp, #114]
	movw	r3, #258
	ldr	r12, [r11, #-60]
	strh	lr, [sp, #116]
	cmp	r12, #5
	str	r1, [sp, #118]
	movwlt	r2, #1
	str	r6, [sp, #122]
	strh	r3, [sp, #126]
	mov	r3, #3
	ldr	r4, [r11, #-44]
	strh	r3, [sp, #128]
	cmp	r4, #2
	str	r1, [sp, #130]
	strh	r5, [sp, #134]
	movw	r5, #259
	strh	r5, [sp, #138]
	movw	r5, #262
	strh	r3, [sp, #140]
	str	r1, [sp, #142]
	strh	r1, [sp, #146]
	strh	r5, [sp, #150]
	mov	r5, #0
	movwlo	r5, #1
	ands	r2, r5, r2
	strh	r3, [sp, #152]
	movne	r4, r12
	movw	r5, #277
	str	r2, [sp, #64]           @ 4-byte Spill
	cmp	r4, #2
	mov	r2, #1
	str	r1, [sp, #154]
	movwgt	r2, #2
	cmp	r4, #1
	strh	r2, [sp, #158]
	movw	r2, #273
	strh	r2, [sp, #162]
	mov	r2, #210
	strh	lr, [sp, #164]
	str	r4, [sp, #166]
	str	r2, [sp, #170]
	add	r2, r2, r4, lsl #2
	strh	r5, [sp, #174]
	movw	r5, #278
	muleq	r2, r8, r7
	strh	r3, [sp, #176]
	str	r1, [sp, #178]
	strh	r4, [sp, #182]
	strh	r5, [sp, #186]
	movw	r5, #279
	strh	lr, [sp, #188]
	str	r1, [sp, #190]
	str	r6, [sp, #194]
	strh	r5, [sp, #198]
	mov	r5, #194
	strh	lr, [sp, #200]
	str	r4, [sp, #202]
	str	r2, [sp, #206]
	movw	r2, #282
	strh	r2, [r0]
	mov	r2, #5
	strh	r2, [r0, #2]
	str	r1, [sp, #214]
	str	r5, [sp, #218]
	movw	r5, #283
	strh	r5, [r0, #12]
	ldr	r5, .LCPI60_2
	ldr	r6, .LCPI60_3
.LPC60_1:
	add	r5, pc, r5
	strh	r2, [r0, #14]
	mov	r2, #202
	ldr	r5, [r6, r5]
	str	r1, [sp, #226]
	str	r2, [sp, #230]
	mov	r2, #284
	add	r5, r5, r9, lsl #1
	strh	r2, [r0, #24]
	mov	r2, #2
	strh	r3, [r0, #26]
	str	r1, [sp, #238]
	strh	r2, [r0, #32]
	mov	r2, #296
	strh	r2, [r0, #36]
	ldrh	r2, [r5]
	str	r8, [sp, #68]           @ 4-byte Spill
	mov	r8, r12
	strh	r3, [r0, #38]
	str	r1, [sp, #250]
	strh	r1, [r0, #44]
	adr	r5, .LCPI60_4
	vld1.64	{d16, d17}, [r5:128]
	movw	r5, #339
	strh	r5, [r0, #48]
	strh	r3, [r0, #50]
	mov	r3, r10
	str	r1, [sp, #262]
	strh	r2, [r0, #56]
	movw	r2, #32997
	strh	r2, [r0, #60]
	strh	lr, [r0, #62]
	ldr	r0, [sp, #64]           @ 4-byte Reload
	str	r1, [sp, #274]
	cmp	r0, #0
	add	r0, sp, #92
	movwne	r8, #1
	add	r2, r0, #190
	str	r8, [sp, #278]
	vst1.16	{d16, d17}, [r2]
	mov	r2, #1
	str	r1, [sp, #298]
	mov	r1, #210
	bl	fwrite(PLT)
	cmp	r0, #0
	beq	.LBB60_43
@ BB#13:
	cmp	r4, #2
	blt	.LBB60_20
@ BB#14:                                @ %.lr.ph97
	mov	r0, #210
	ldr	r1, [sp, #68]           @ 4-byte Reload
	add	r0, r0, r4, lsl #3
	ldr	r9, [r11, #-76]
	mov	r6, #0
	mul	r1, r8, r1
	str	r0, [sp, #76]
	add	r7, sp, #76
	ldr	r0, [r11, #-92]
	str	r0, [sp, #64]           @ 4-byte Spill
	mul	r0, r1, r0
	mul	r5, r0, r9
.LBB60_15:                              @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	mov	r1, #4
	mov	r2, #1
	mov	r3, r10
	bl	fwrite(PLT)
	cmp	r0, #0
	beq	.LBB60_43
@ BB#16:                                @   in Loop: Header=BB60_15 Depth=1
	ldr	r0, [sp, #76]
	add	r6, r6, #1
	cmp	r6, r4
	add	r0, r5, r0
	str	r0, [sp, #76]
	blt	.LBB60_15
@ BB#17:                                @ %.lr.ph93
	ldr	r0, [sp, #64]           @ 4-byte Reload
	mov	r5, #0
	sub	r7, r11, #100
	mul	r0, r0, r8
	mul	r0, r0, r9
	str	r0, [r11, #-100]
.LBB60_18:                              @ =>This Inner Loop Header: Depth=1
	mov	r0, r7
	mov	r1, #4
	mov	r2, #1
	mov	r3, r10
	bl	fwrite(PLT)
	cmp	r0, #0
	beq	.LBB60_43
@ BB#19:                                @   in Loop: Header=BB60_18 Depth=1
	add	r5, r5, #1
	cmp	r5, r4
	blt	.LBB60_18
.LBB60_20:                              @ %.thread37
	ldr	r5, [sp, #68]           @ 4-byte Reload
	b	.LBB60_22
.LBB60_21:
	ldr	r0, [r11, #-92]
	mov	r1, #20
	mov	r2, #1
	mov	r3, r10
	str	r0, [sp, #92]
	ldr	r0, [r11, #-76]
	str	r0, [sp, #96]
	ldr	r0, [r11, #-60]
	str	r0, [sp, #100]
	ldr	r0, [r11, #-44]
	str	r0, [sp, #104]
	add	r0, sp, #92
	str	r9, [sp, #108]
	bl	fwrite(PLT)
	cmp	r0, #0
	beq	.LBB60_43
.LBB60_22:
	mov	r0, #4096
	mov	r1, r5
	bl	__aeabi_uidiv(PLT)
	ldr	r9, [r11, #-44]
	cmp	r9, #1
	blt	.LBB60_41
@ BB#23:                                @ %.lr.ph88
	mul	r1, r0, r5
	ldr	r7, [r11, #-44]
	ldr	r4, [r11, #-80]
	mov	r12, #0
	ldr	r6, [r11, #-76]
	add	r8, sp, #92
	str	r0, [sp, #56]           @ 4-byte Spill
	add	r0, sp, #76
	ldr	r2, [r11, #-96]
	add	r0, r0, #8
	ldr	r3, [r11, #-92]
	str	r7, [sp, #4]            @ 4-byte Spill
	ldr	r7, [r11, #-48]
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r5, [sp, #68]           @ 4-byte Spill
	ldr	r1, [r11, #-64]
	ldr	r5, [r11, #-60]
	ldr	lr, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #40]           @ 4-byte Spill
	add	r0, r6, r4
	str	r0, [sp, #28]           @ 4-byte Spill
	add	r0, r2, r3
	str	r10, [sp, #48]          @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	str	r4, [sp, #16]           @ 4-byte Spill
	str	r6, [sp, #12]           @ 4-byte Spill
	str	r7, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r7, [sp, #60]           @ 4-byte Spill
.LBB60_24:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB60_25 Depth 2
                                        @       Child Loop BB60_26 Depth 3
                                        @         Child Loop BB60_27 Depth 4
                                        @           Child Loop BB60_31 Depth 5
	cmp	r5, #1
	str	r1, [sp, #64]           @ 4-byte Spill
	blt	.LBB60_38
.LBB60_25:                              @ %.lr.ph82
                                        @   Parent Loop BB60_24 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB60_26 Depth 3
                                        @         Child Loop BB60_27 Depth 4
                                        @           Child Loop BB60_31 Depth 5
	str	r5, [sp, #20]           @ 4-byte Spill
	cmp	r6, #1
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r4, [sp, #72]           @ 4-byte Spill
	blt	.LBB60_36
.LBB60_26:                              @ %.lr.ph76
                                        @   Parent Loop BB60_24 Depth=1
                                        @     Parent Loop BB60_25 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB60_27 Depth 4
                                        @           Child Loop BB60_31 Depth 5
	ldr	r10, [sp, #36]          @ 4-byte Reload
	ldr	r0, [sp, #32]           @ 4-byte Reload
	cmp	r0, #1
	blt	.LBB60_35
.LBB60_27:                              @ %.lr.ph
                                        @   Parent Loop BB60_24 Depth=1
                                        @     Parent Loop BB60_25 Depth=2
                                        @       Parent Loop BB60_26 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB60_31 Depth 5
	ldr	r0, [sp, #72]           @ 4-byte Reload
	add	r9, r12, #1
	str	r10, [sp, #76]
	mov	r1, #0
	str	r0, [sp, #80]
	ldr	r0, [sp, #64]           @ 4-byte Reload
	str	r0, [sp, #84]
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r0, [sp, #88]
	ldr	r2, [lr, #28]
	cmp	r2, #1
	blt	.LBB60_32
@ BB#28:                                @ %.lr.ph.i
                                        @   in Loop: Header=BB60_27 Depth=4
	ldr	r5, [lr, #32]
	cmp	r2, #2
	ldr	r1, [r5]
	ldr	r3, [r5, #8]
	sub	r1, r10, r1
	mul	r1, r1, r3
	blt	.LBB60_32
@ BB#29:                                @ %._crit_edge.118.preheader
                                        @   in Loop: Header=BB60_27 Depth=4
	ldr	r3, [r5, #16]
	cmp	r2, #2
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r4, [r5, #24]
	sub	r3, r0, r3
	mla	r1, r3, r4, r1
	beq	.LBB60_32
@ BB#30:                                @ %._crit_edge.118.._crit_edge.118_crit_edge.preheader
                                        @   in Loop: Header=BB60_27 Depth=4
	ldr	r4, [sp, #40]           @ 4-byte Reload
	add	r3, r5, #32
	sub	r2, r2, #2
	add	r5, r5, #40
.LBB60_31:                              @ %._crit_edge.118.._crit_edge.118_crit_edge
                                        @   Parent Loop BB60_24 Depth=1
                                        @     Parent Loop BB60_25 Depth=2
                                        @       Parent Loop BB60_26 Depth=3
                                        @         Parent Loop BB60_27 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [r5], #16
	subs	r2, r2, #1
	ldr	r6, [r3], #16
	ldr	r7, [r4], #4
	sub	r7, r7, r6
	mla	r1, r7, r0, r1
	bne	.LBB60_31
.LBB60_32:                              @ %_ZNK15halide_buffer_t10address_ofEPKi.exit
                                        @   in Loop: Header=BB60_27 Depth=4
	ldrb	r5, [lr, #25]
	mov	r4, lr
	ldr	r2, [sp, #68]           @ 4-byte Reload
	add	r7, r5, #7
	ldr	r3, [lr, #12]
	lsr	r7, r7, #3
	mla	r0, r12, r2, r8
	mla	r1, r7, r1, r3
	bl	memcpy(PLT)
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r9, r0
	bne	.LBB60_34
@ BB#33:                                @   in Loop: Header=BB60_27 Depth=4
	ldr	r1, [sp, #44]           @ 4-byte Reload
	mov	r0, r8
	ldr	r3, [sp, #48]           @ 4-byte Reload
	mov	r2, #1
	bl	fwrite(PLT)
	mov	r9, #0
	cmp	r0, #0
	beq	.LBB60_44
.LBB60_34:                              @   in Loop: Header=BB60_27 Depth=4
	ldr	r0, [sp, #52]           @ 4-byte Reload
	add	r10, r10, #1
	mov	r12, r9
	mov	lr, r4
	cmp	r10, r0
	blt	.LBB60_27
.LBB60_35:                              @ %._crit_edge
                                        @   in Loop: Header=BB60_26 Depth=3
	ldr	r1, [sp, #72]           @ 4-byte Reload
	ldr	r0, [sp, #28]           @ 4-byte Reload
	add	r1, r1, #1
	str	r1, [sp, #72]           @ 4-byte Spill
	cmp	r1, r0
	blt	.LBB60_26
.LBB60_36:                              @ %._crit_edge.77
                                        @   in Loop: Header=BB60_25 Depth=2
	ldr	r2, [sp, #64]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	ldr	r5, [sp, #20]           @ 4-byte Reload
	add	r2, r2, #1
	ldr	r4, [sp, #16]           @ 4-byte Reload
	ldr	r6, [sp, #12]           @ 4-byte Reload
	add	r0, r5, r1
	str	r2, [sp, #64]           @ 4-byte Spill
	cmp	r2, r0
	blt	.LBB60_25
@ BB#37:                                @   in Loop: Header=BB60_24 Depth=1
	ldr	r9, [sp, #4]            @ 4-byte Reload
.LBB60_38:                              @ %._crit_edge.83
                                        @   in Loop: Header=BB60_24 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r2, [sp, #60]           @ 4-byte Reload
	add	r0, r9, r0
	add	r2, r2, #1
	str	r2, [sp, #60]           @ 4-byte Spill
	cmp	r2, r0
	blt	.LBB60_24
@ BB#39:                                @ %._crit_edge.89
	ldr	r10, [sp, #48]          @ 4-byte Reload
	cmp	r12, #1
	ldr	r8, [sp, #68]           @ 4-byte Reload
	blt	.LBB60_41
@ BB#40:
	mul	r1, r12, r8
	add	r0, sp, #92
	mov	r2, #1
	mov	r3, r10
	bl	fwrite(PLT)
	cmp	r0, #0
	beq	.LBB60_46
.LBB60_41:                              @ %._crit_edge.89.thread
	mov	r0, r10
	bl	fclose(PLT)
	mov	r0, #0
.LBB60_42:
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB60_43:
	mov	r0, r10
	bl	fclose(PLT)
	mvn	r0, #1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB60_44:
	ldr	r0, [sp, #48]           @ 4-byte Reload
.LBB60_45:
	bl	fclose(PLT)
	b	.LBB60_2
.LBB60_46:
	mov	r0, r10
	b	.LBB60_45
	.align	4
@ BB#47:
.LCPI60_4:
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	1                       @ 0x1
	.long	1                       @ 0x1
.LCPI60_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC60_0+8)
.LCPI60_1:
	.long	.L.str.1.29(GOTOFF)
.LCPI60_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC60_1+8)
.LCPI60_3:
	.long	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE(GOT)
.LCPI60_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC60_2+8)
.LCPI60_6:
	.long	.L.str.28(GOTOFF)
.Lfunc_end60:
	.size	halide_debug_to_file, .Lfunc_end60-halide_debug_to_file
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j
	.align	2
	.type	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j,%function
_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j: @ @_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	bl	memcmp(PLT)
	mov	r1, #0
	cmp	r0, #0
	movweq	r1, #1
	mov	r0, r1
	pop	{r11, pc}
.Lfunc_end61:
	.size	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j, .Lfunc_end61-_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
	.align	2
	.type	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t,%function
_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t: @ @_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
	.fnstart
@ BB#0:
	.save	{r4, lr}
	push	{r4, lr}
	mov	r2, r0
	mov	r0, #1
	ldr	r12, [r2, #28]
	cmp	r12, #1
	blt	.LBB62_8
@ BB#1:                                 @ %.lr.ph
	ldr	r2, [r2, #32]
	mov	r3, #0
.LBB62_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r2]
	ldr	lr, [r1]
	cmp	r4, lr
	bne	.LBB62_7
@ BB#3:                                 @   in Loop: Header=BB62_2 Depth=1
	ldr	r4, [r2, #4]
	ldr	lr, [r1, #4]
	cmp	r4, lr
	bne	.LBB62_7
@ BB#4:                                 @   in Loop: Header=BB62_2 Depth=1
	ldr	r4, [r2, #8]
	ldr	lr, [r1, #8]
	cmp	r4, lr
	bne	.LBB62_7
@ BB#5:                                 @ %_ZNK18halide_dimension_tneERKS_.exit
                                        @   in Loop: Header=BB62_2 Depth=1
	ldr	r4, [r2, #12]
	ldr	lr, [r1, #12]
	cmp	r4, lr
	bne	.LBB62_7
@ BB#6:                                 @   in Loop: Header=BB62_2 Depth=1
	add	r3, r3, #1
	add	r2, r2, #16
	add	r1, r1, #16
	cmp	r3, r12
	blt	.LBB62_2
	b	.LBB62_8
.LBB62_7:
	mov	r0, #0
.LBB62_8:                               @ %_ZNK18halide_dimension_tneERKS_.exit.thread
	pop	{r4, pc}
.Lfunc_end62:
	.size	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t, .Lfunc_end62-_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
	.align	2
	.type	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh,%function
_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh: @ @_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
	.fnstart
@ BB#0:
	sub	r0, r0, #16
	bx	lr
.Lfunc_end63:
	.size	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh, .Lfunc_end63-_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_
	.align	2
	.type	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_,%function
_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_: @ @_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r4, r0
	ldr	r0, [r11, #12]
	ldr	r7, [r11, #8]
	mov	r8, #0
	mov	r6, r1
	mov	r1, #16
	str	r8, [r4]
	add	r1, r1, r0, lsl #4
	str	r8, [r4, #4]
	add	r5, r0, r0, lsl #2
	str	r8, [r4, #8]
	str	r2, [r4, #16]
	str	r3, [r4, #24]
	str	r8, [r4, #28]
	str	r0, [r4, #32]
	mov	r0, #0
	ldr	r3, [r7, #28]
	mul	r1, r3, r1
	str	r3, [r4, #36]
	add	r9, r1, r5, lsl #3
	add	r1, r9, r2
	bl	halide_malloc(PLT)
	str	r0, [r4, #12]
	cmp	r0, #0
	beq	.LBB64_15
@ BB#1:
	lsl	r1, r5, #3
	add	r1, r0, r1
	str	r1, [r4, #40]
	str	r0, [r4, #44]
	add	r0, r0, r9
	str	r0, [r4, #20]
	ldr	r1, [r4, #16]
	cmp	r1, #0
	beq	.LBB64_5
@ BB#2:                                 @ %.lr.ph11.preheader
	ldrb	r1, [r6]
	strb	r1, [r0]
	ldr	r0, [r4, #16]
	cmp	r0, #1
	bls	.LBB64_5
@ BB#3:
	mov	r0, #1
.LBB64_4:                               @ %._crit_edge
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r1, [r6, r0]
	ldr	r2, [r4, #20]
	strb	r1, [r2, r0]
	add	r0, r0, #1
	ldr	r1, [r4, #16]
	cmp	r0, r1
	blo	.LBB64_4
.LBB64_5:                               @ %.preheader4
	ldr	r0, [r4, #36]
	cmp	r0, #1
	blt	.LBB64_8
@ BB#6:                                 @ %.lr.ph9
	mov	r0, #0
	mov	r1, #0
.LBB64_7:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r7, #32]
	add	r1, r1, #1
	ldr	r3, [r4, #40]
	add	r2, r2, r0
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, r0
	add	r0, r0, #16
	vst1.32	{d16, d17}, [r2]
	ldr	r2, [r4, #36]
	cmp	r1, r2
	blt	.LBB64_7
.LBB64_8:                               @ %.preheader
	ldr	r0, [r4, #32]
	mov	r8, #1
	cmp	r0, #0
	beq	.LBB64_15
@ BB#9:
	ldr	r0, [r11, #16]
	mov	r12, #0
.LBB64_10:                              @ %.lr.ph7
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB64_13 Depth 2
	mov	r1, r12
	ldr	r7, [r4, #44]
	add	r2, r1, r1, lsl #2
	ldr	r3, [r0, r1, lsl #2]
	add	r12, r1, #1
	add	r7, r7, r2, lsl #3
	vldr	d16, [r3, #32]
	vld1.64	{d18, d19}, [r3]!
	vld1.64	{d20, d21}, [r3]
	vstr	d16, [r7, #32]
	vst1.64	{d18, d19}, [r7]!
	vst1.64	{d20, d21}, [r7]
	ldr	r6, [r4, #36]
	ldr	r5, [r4, #44]
	ldr	r7, [r4, #40]
	cmp	r6, #1
	mul	r3, r6, r12
	add	r5, r5, r2, lsl #3
	add	r7, r7, r3, lsl #4
	str	r7, [r5, #32]
	blt	.LBB64_14
@ BB#11:                                @ %.lr.ph.preheader
                                        @   in Loop: Header=BB64_10 Depth=1
	ldr	r3, [r0, r1, lsl #2]
	ldr	r3, [r3, #32]
	vld1.32	{d16, d17}, [r3]
	vst1.32	{d16, d17}, [r7]
	ldr	r3, [r4, #36]
	cmp	r3, #2
	blt	.LBB64_14
@ BB#12:                                @   in Loop: Header=BB64_10 Depth=1
	mov	r7, #1
	mov	r6, #16
.LBB64_13:                              @ %._crit_edge.12
                                        @   Parent Loop BB64_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r3, [r0, r1, lsl #2]
	add	r7, r7, #1
	ldr	r5, [r4, #44]
	add	r5, r5, r2, lsl #3
	ldr	r3, [r3, #32]
	add	r3, r3, r6
	ldr	r5, [r5, #32]
	vld1.32	{d16, d17}, [r3]
	add	r3, r5, r6
	add	r6, r6, #16
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [r4, #36]
	cmp	r7, r3
	blt	.LBB64_13
.LBB64_14:                              @ %.loopexit
                                        @   in Loop: Header=BB64_10 Depth=1
	ldr	r1, [r4, #32]
	cmp	r12, r1
	blo	.LBB64_10
.LBB64_15:                              @ %.loopexit3
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end64:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_, .Lfunc_end64-_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
	.align	2
	.type	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv,%function
_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv: @ @_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.LBB65_3
@ BB#1:                                 @ %.lr.ph
	mov	r5, #0
	mov	r6, #0
.LBB65_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4, #44]
	add	r1, r0, r5
	mov	r0, #0
	bl	halide_device_free(PLT)
	ldr	r0, [r4, #44]
	add	r0, r0, r5
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	mov	r1, r0
	mov	r0, #0
	bl	halide_free(PLT)
	ldr	r0, [r4, #32]
	add	r6, r6, #1
	add	r5, r5, #40
	cmp	r6, r0
	blo	.LBB65_2
.LBB65_3:                               @ %._crit_edge
	ldr	r1, [r4, #12]
	mov	r0, #0
	pop	{r4, r5, r6, r10, r11, lr}
	b	halide_free(PLT)
.Lfunc_end65:
	.size	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv, .Lfunc_end65-_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal8djb_hashEPKhj,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal8djb_hashEPKhj
	.align	2
	.type	_ZN6Halide7Runtime8Internal8djb_hashEPKhj,%function
_ZN6Halide7Runtime8Internal8djb_hashEPKhj: @ @_ZN6Halide7Runtime8Internal8djb_hashEPKhj
	.fnstart
@ BB#0:
	mov	r2, r0
	movw	r0, #5381
	cmp	r1, #0
	bxeq	lr
.LBB66_1:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r0, r0, lsl #5
	ldrb	r3, [r2], #1
	subs	r1, r1, #1
	add	r0, r3, r0
	bne	.LBB66_1
@ BB#2:                                 @ %._crit_edge
	bx	lr
.Lfunc_end66:
	.size	_ZN6Halide7Runtime8Internal8djb_hashEPKhj, .Lfunc_end66-_ZN6Halide7Runtime8Internal8djb_hashEPKhj
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal11prune_cacheEv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal11prune_cacheEv
	.align	2
	.type	_ZN6Halide7Runtime8Internal11prune_cacheEv,%function
_ZN6Halide7Runtime8Internal11prune_cacheEv: @ @_ZN6Halide7Runtime8Internal11prune_cacheEv
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#52
	sub	sp, sp, #52
	ldr	r0, .LCPI67_1
	ldr	r5, .LCPI67_3
.LPC67_0:
	add	r0, pc, r0
	ldr	r1, [r5, r0]
	ldr	r6, [r1]
	cmp	r6, #0
	beq	.LBB67_31
@ BB#1:
	ldr	r12, .LCPI67_0
	mov	r4, #0
	ldr	r7, .LCPI67_2
	ldr	r1, [r12, r0]
	ldr	r0, [r7, r0]
	ldrd	r2, r3, [r1]
	ldr	lr, [r0]
	ldr	r10, [r0, #4]
	mov	r0, #0
	cmp	lr, r2
	movwls	r4, #1
	cmp	r10, r3
	movwle	r0, #1
	moveq	r0, r4
	cmp	r0, #0
	bne	.LBB67_31
@ BB#2:
	ldr	r4, .LCPI67_5
	ldr	r0, .LCPI67_4
.LPC67_1:
	add	r4, pc, r4
	ldr	r1, [r0, r4]
	ldr	r4, .LCPI67_8
.LPC67_3:
	add	r4, pc, r4
	str	r1, [sp, #32]           @ 4-byte Spill
	ldr	r0, [r0, r4]
	str	r0, [sp, #8]            @ 4-byte Spill
	ldr	r0, .LCPI67_9
.LPC67_4:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, .LCPI67_10
.LPC67_5:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	ldr	r5, .LCPI67_12
	str	r0, [sp, #4]            @ 4-byte Spill
.LPC67_6:
	add	r5, pc, r5
	ldr	r0, .LCPI67_11
	ldr	r1, [r0, r5]
	ldr	r5, .LCPI67_13
.LPC67_7:
	add	r5, pc, r5
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r0, [r0, r5]
	str	r0, [sp]                @ 4-byte Spill
	ldr	r0, .LCPI67_15
.LPC67_9:
	add	r0, pc, r0
	ldr	r1, [r12, r0]
	ldr	r0, [r7, r0]
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, .LCPI67_14
.LPC67_8:
	add	r0, pc, r0
	ldr	r0, [r7, r0]
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB67_3:                               @ %.lr.ph10
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB67_5 Depth 2
                                        @     Child Loop BB67_15 Depth 2
                                        @       Child Loop BB67_17 Depth 3
                                        @       Child Loop BB67_21 Depth 3
	ldr	r5, [r6, #4]
	ldr	r0, [r6, #28]
	cmp	r0, #0
	bne	.LBB67_29
@ BB#4:                                 @   in Loop: Header=BB67_3 Depth=1
	ldrb	r2, [r6, #24]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r3, [r0, r2, lsl #2]
	cmp	r3, r6
	beq	.LBB67_8
.LBB67_5:                               @ %.preheader2
                                        @   Parent Loop BB67_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r2, r3
	cmp	r2, #0
	beq	.LBB67_32
@ BB#6:                                 @   in Loop: Header=BB67_5 Depth=2
	ldr	r3, [r2]
	cmp	r3, r6
	bne	.LBB67_5
@ BB#7:                                 @ %.critedge
                                        @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [r6]
	str	r0, [r2]
	b	.LBB67_9
.LBB67_8:                               @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [r6]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [r1, r2, lsl #2]
.LBB67_9:                               @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, r6
	bne	.LBB67_11
@ BB#10:                                @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r5, [r0]
.LBB67_11:                              @   in Loop: Header=BB67_3 Depth=1
	cmp	r5, #0
	ldrne	r0, [r6, #8]
	strne	r0, [r5, #8]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, r6
	bne	.LBB67_13
@ BB#12:                                @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [r6, #8]
	ldr	r1, [sp]                @ 4-byte Reload
	str	r0, [r1]
.LBB67_13:                              @ %._crit_edge.15
                                        @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [r6, #8]
	cmp	r0, #0
	strne	r5, [r6, #8]
	ldr	r0, [r6, #32]
	cmp	r0, #0
	str	r0, [r11, #-32]         @ 4-byte Spill
	beq	.LBB67_28
@ BB#14:                                @ %.lr.ph
                                        @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [r6, #44]
	str	r5, [sp, #36]           @ 4-byte Spill
	mov	r5, #0
	str	r6, [sp, #40]           @ 4-byte Spill
	str	r0, [r11, #-36]         @ 4-byte Spill
.LBB67_15:                              @   Parent Loop BB67_3 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB67_17 Depth 3
                                        @       Child Loop BB67_21 Depth 3
	add	r0, r5, r5, lsl #2
	ldr	r1, [r11, #-36]         @ 4-byte Reload
	add	r2, r1, r0, lsl #3
	ldr	r12, [r2, #28]
	cmp	r12, #0
	ble	.LBB67_25
@ BB#16:                                @ %.lr.ph.i.i
                                        @   in Loop: Header=BB67_15 Depth=2
	ldr	r8, [r2, #32]
	mov	r6, #0
	mov	r7, r12
	add	r3, r8, #8
	add	r4, r8, #4
.LBB67_17:                              @   Parent Loop BB67_3 Depth=1
                                        @     Parent Loop BB67_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r3]
	cmp	r0, #1
	blt	.LBB67_19
@ BB#18:                                @   in Loop: Header=BB67_17 Depth=3
	ldr	r1, [r4]
	sub	r1, r1, #1
	mla	r6, r1, r0, r6
.LBB67_19:                              @   in Loop: Header=BB67_17 Depth=3
	add	r3, r3, #16
	add	r4, r4, #16
	subs	r7, r7, #1
	bne	.LBB67_17
@ BB#20:                                @ %.lr.ph.i.1.i
                                        @   in Loop: Header=BB67_15 Depth=2
	ldrb	r3, [r2, #25]
	add	r9, r8, #8
	add	r4, r8, #4
	mov	r2, #0
.LBB67_21:                              @   Parent Loop BB67_3 Depth=1
                                        @     Parent Loop BB67_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r9]
	cmp	r0, #0
	bge	.LBB67_23
@ BB#22:                                @   in Loop: Header=BB67_21 Depth=3
	ldr	r1, [r4]
	sub	r1, r1, #1
	mla	r2, r1, r0, r2
.LBB67_23:                              @   in Loop: Header=BB67_21 Depth=3
	add	r9, r9, #16
	add	r4, r4, #16
	subs	r12, r12, #1
	bne	.LBB67_21
@ BB#24:                                @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit.loopexit
                                        @   in Loop: Header=BB67_15 Depth=2
	add	r7, r6, #1
	b	.LBB67_26
.LBB67_25:                              @ %_ZNK15halide_buffer_t3endEv.exit.thread.i
                                        @   in Loop: Header=BB67_15 Depth=2
	ldrb	r3, [r2, #25]
	mov	r2, #0
	mov	r7, #1
.LBB67_26:                              @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit
                                        @   in Loop: Header=BB67_15 Depth=2
	add	r1, r3, #7
	sub	r0, r7, r2
	lsr	r1, r1, #3
	add	r5, r5, #1
	mul	r0, r1, r0
	subs	lr, lr, r0
	ldr	r0, [r11, #-32]         @ 4-byte Reload
	sbc	r10, r10, #0
	cmp	r5, r0
	bne	.LBB67_15
@ BB#27:                                @ %._crit_edge
                                        @   in Loop: Header=BB67_3 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	lr, [r0]
	str	r10, [r0, #4]
	ldr	r6, [sp, #40]           @ 4-byte Reload
	ldr	r5, [sp, #36]           @ 4-byte Reload
.LBB67_28:                              @   in Loop: Header=BB67_3 Depth=1
	mov	r0, r6
	mov	r4, r6
	bl	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldrd	r2, r3, [r0]
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	lr, [r0]
	ldr	r10, [r0, #4]
.LBB67_29:                              @ %.backedge
                                        @   in Loop: Header=BB67_3 Depth=1
	cmp	r5, #0
	beq	.LBB67_31
@ BB#30:                                @ %.backedge
                                        @   in Loop: Header=BB67_3 Depth=1
	cmp	lr, r2
	mov	r0, #0
	movwhi	r0, #1
	cmp	r10, r3
	mov	r7, #0
	mov	r6, r5
	movwgt	r7, #1
	moveq	r7, r0
	cmp	r7, #0
	bne	.LBB67_3
.LBB67_31:                              @ %._crit_edge.11
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB67_32:                              @ %.critedge1
	ldr	r0, .LCPI67_6
	ldr	r1, .LCPI67_7
.LPC67_2:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
	bl	halide_print(PLT)
	bl	abort(PLT)
	.align	2
@ BB#33:
.LCPI67_0:
	.long	_ZN6Halide7Runtime8Internal14max_cache_sizeE(GOT)
.LCPI67_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_0+8)
.LCPI67_2:
	.long	_ZN6Halide7Runtime8Internal18current_cache_sizeE(GOT)
.LCPI67_3:
	.long	_ZN6Halide7Runtime8Internal19least_recently_usedE(GOT)
.LCPI67_4:
	.long	_ZN6Halide7Runtime8Internal13cache_entriesE(GOT)
.LCPI67_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_1+8)
.LCPI67_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_2+8)
.LCPI67_7:
	.long	.L.str.4.31(GOTOFF)
.LCPI67_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_3+8)
.LCPI67_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_4+8)
.LCPI67_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_5+8)
.LCPI67_11:
	.long	_ZN6Halide7Runtime8Internal18most_recently_usedE(GOT)
.LCPI67_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_6+8)
.LCPI67_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_7+8)
.LCPI67_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_8+8)
.LCPI67_15:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC67_9+8)
.Lfunc_end67:
	.size	_ZN6Halide7Runtime8Internal11prune_cacheEv, .Lfunc_end67-_ZN6Halide7Runtime8Internal11prune_cacheEv
	.cantunwind
	.fnend

	.section	.text.halide_memoization_cache_set_size,"ax",%progbits
	.weak	halide_memoization_cache_set_size
	.align	2
	.type	halide_memoization_cache_set_size,%function
halide_memoization_cache_set_size:      @ @halide_memoization_cache_set_size
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	mov	r6, r0
	ldr	r1, .LCPI68_1
	ldr	r0, .LCPI68_0
.LPC68_0:
	add	r7, pc, r1
	ldr	r5, [r0, r7]
	mov	r0, r5
	bl	halide_mutex_lock(PLT)
	ldr	r0, .LCPI68_2
	ldr	r0, [r0, r7]
	orrs	r7, r6, r4
	movne	r7, r4
	moveq	r6, #1048576
	strd	r6, r7, [r0]
	bl	_ZN6Halide7Runtime8Internal11prune_cacheEv(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, lr}
	b	halide_mutex_unlock(PLT)
	.align	2
@ BB#1:
.LCPI68_0:
	.long	_ZN6Halide7Runtime8Internal16memoization_lockE(GOT)
.LCPI68_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC68_0+8)
.LCPI68_2:
	.long	_ZN6Halide7Runtime8Internal14max_cache_sizeE(GOT)
.Lfunc_end68:
	.size	halide_memoization_cache_set_size, .Lfunc_end68-halide_memoization_cache_set_size
	.cantunwind
	.fnend

	.section	.text.halide_memoization_cache_lookup,"ax",%progbits
	.weak	halide_memoization_cache_lookup
	.align	2
	.type	halide_memoization_cache_lookup,%function
halide_memoization_cache_lookup:        @ @halide_memoization_cache_lookup
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r7, r2
	mov	r5, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r5
	mov	r1, r7
	mov	r9, r3
	bl	_ZN6Halide7Runtime8Internal8djb_hashEPKhj(PLT)
	mov	r10, r0
	ldr	r0, .LCPI69_1
	ldr	r6, .LCPI69_0
.LPC69_0:
	add	r4, pc, r0
	ldr	r0, [r6, r4]
	bl	halide_mutex_lock(PLT)
	ldr	r0, .LCPI69_2
	uxtb	r1, r10
	ldr	r0, [r0, r4]
	ldr	r8, [r0, r1, lsl #2]
	cmp	r8, #0
	beq	.LBB69_18
@ BB#1:                                 @ %.lr.ph34
	ldr	r0, [r11, #8]
	cmp	r0, #1
	blt	.LBB69_12
.LBB69_2:                               @ %.lr.ph34.split.us
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB69_8 Depth 2
	ldr	r0, [r8, #24]
	cmp	r0, r10
	bne	.LBB69_11
@ BB#3:                                 @   in Loop: Header=BB69_2 Depth=1
	ldr	r0, [r8, #16]
	cmp	r0, r7
	bne	.LBB69_11
@ BB#4:                                 @   in Loop: Header=BB69_2 Depth=1
	ldr	r0, [r8, #20]
	mov	r1, r5
	mov	r2, r7
	bl	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(PLT)
	cmp	r0, #1
	bne	.LBB69_11
@ BB#5:                                 @   in Loop: Header=BB69_2 Depth=1
	ldr	r1, [r8, #40]
	mov	r0, r9
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	cmp	r0, #1
	bne	.LBB69_11
@ BB#6:                                 @   in Loop: Header=BB69_2 Depth=1
	ldr	r0, [r8, #32]
	ldr	r1, [r11, #8]
	cmp	r0, r1
	bne	.LBB69_11
@ BB#7:                                 @ %.lr.ph30.us
                                        @   in Loop: Header=BB69_2 Depth=1
	str	r9, [sp, #4]            @ 4-byte Spill
	mov	r4, #1
	ldr	r9, [r11, #12]
	mov	r6, #32
.LBB69_8:                               @   Parent Loop BB69_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r8, #44]
	ldr	r1, [r0, r6]
	ldr	r0, [r9], #4
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	ldr	r1, [r11, #8]
	cmp	r4, r1
	bge	.LBB69_10
@ BB#9:                                 @   in Loop: Header=BB69_8 Depth=2
	add	r6, r6, #40
	add	r4, r4, #1
	cmp	r0, #0
	bne	.LBB69_8
.LBB69_10:                              @ %.critedge.us
                                        @   in Loop: Header=BB69_2 Depth=1
	ldr	r9, [sp, #4]            @ 4-byte Reload
	cmp	r0, #0
	ldr	r6, .LCPI69_0
	bne	.LBB69_39
.LBB69_11:                              @   in Loop: Header=BB69_2 Depth=1
	ldr	r8, [r8]
	cmp	r8, #0
	bne	.LBB69_2
	b	.LBB69_18
.LBB69_12:                              @ %.lr.ph34..lr.ph34.split_crit_edge
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r8, #24]
	cmp	r0, r10
	bne	.LBB69_17
@ BB#13:                                @   in Loop: Header=BB69_12 Depth=1
	ldr	r0, [r8, #16]
	cmp	r0, r7
	bne	.LBB69_17
@ BB#14:                                @   in Loop: Header=BB69_12 Depth=1
	ldr	r0, [r8, #20]
	mov	r1, r5
	mov	r2, r7
	bl	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(PLT)
	cmp	r0, #1
	bne	.LBB69_17
@ BB#15:                                @   in Loop: Header=BB69_12 Depth=1
	ldr	r1, [r8, #40]
	mov	r0, r9
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	cmp	r0, #1
	bne	.LBB69_17
@ BB#16:                                @   in Loop: Header=BB69_12 Depth=1
	ldr	r0, [r8, #32]
	ldr	r1, [r11, #8]
	cmp	r0, r1
	beq	.LBB69_39
.LBB69_17:                              @   in Loop: Header=BB69_12 Depth=1
	ldr	r8, [r8]
	cmp	r8, #0
	bne	.LBB69_12
.LBB69_18:                              @ %.preheader16
	ldr	r0, [r11, #8]
	mov	r8, #1
	cmp	r0, #0
	ble	.LBB69_38
@ BB#19:
	ldr	r4, [r11, #12]
	mov	r9, #0
.LBB69_20:                              @ %.lr.ph25
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB69_22 Depth 2
                                        @     Child Loop BB69_26 Depth 2
	ldr	r8, [r4, r9, lsl #2]
	ldr	r5, [r8, #28]
	cmp	r5, #0
	ble	.LBB69_30
@ BB#21:                                @ %.lr.ph.i.i
                                        @   in Loop: Header=BB69_20 Depth=1
	ldr	r3, [r8, #32]
	mov	r12, r4
	mov	r1, #0
	mov	r0, r5
	add	r2, r3, #8
	add	r6, r3, #4
.LBB69_22:                              @   Parent Loop BB69_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r4, [r2]
	cmp	r4, #1
	blt	.LBB69_24
@ BB#23:                                @   in Loop: Header=BB69_22 Depth=2
	ldr	r7, [r6]
	sub	r7, r7, #1
	mla	r1, r7, r4, r1
.LBB69_24:                              @   in Loop: Header=BB69_22 Depth=2
	add	r2, r2, #16
	add	r6, r6, #16
	subs	r0, r0, #1
	bne	.LBB69_22
@ BB#25:                                @ %.lr.ph.i.1.i
                                        @   in Loop: Header=BB69_20 Depth=1
	ldrb	r2, [r8, #25]
	add	r6, r3, #8
	add	r4, r3, #4
	mov	r3, #0
.LBB69_26:                              @   Parent Loop BB69_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6]
	cmp	r0, #0
	bge	.LBB69_28
@ BB#27:                                @   in Loop: Header=BB69_26 Depth=2
	ldr	r7, [r4]
	sub	r7, r7, #1
	mla	r3, r7, r0, r3
.LBB69_28:                              @   in Loop: Header=BB69_26 Depth=2
	add	r6, r6, #16
	add	r4, r4, #16
	subs	r5, r5, #1
	bne	.LBB69_26
@ BB#29:                                @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit.loopexit
                                        @   in Loop: Header=BB69_20 Depth=1
	add	r0, r1, #1
	mov	r4, r12
	b	.LBB69_31
.LBB69_30:                              @ %_ZNK15halide_buffer_t3endEv.exit.thread.i
                                        @   in Loop: Header=BB69_20 Depth=1
	ldrb	r2, [r8, #25]
	mov	r3, #0
	mov	r0, #1
.LBB69_31:                              @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit
                                        @   in Loop: Header=BB69_20 Depth=1
	add	r1, r2, #7
	sub	r0, r0, r3
	lsr	r1, r1, #3
	mul	r0, r1, r0
	add	r1, r0, #16
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	halide_malloc(PLT)
	str	r0, [r8, #12]
	cmp	r0, #0
	beq	.LBB69_34
@ BB#32:                                @   in Loop: Header=BB69_20 Depth=1
	add	r0, r0, #16
	str	r0, [r8, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	mov	r1, #0
	add	r9, r9, #1
	stm	r0, {r1, r10}
	ldr	r0, [r11, #8]
	cmp	r9, r0
	blt	.LBB69_20
@ BB#33:
	ldr	r5, .LCPI69_0
	mov	r8, #1
	mov	r6, r5
	b	.LBB69_38
.LBB69_34:                              @ %.preheader
	mvn	r8, #0
	cmp	r9, #1
	blt	.LBB69_37
@ BB#35:                                @ %.lr.ph.preheader
	add	r0, r4, r9, lsl #2
	ldr	r7, [sp, #8]            @ 4-byte Reload
	add	r5, r9, #1
	mov	r6, #0
	sub	r4, r0, #4
.LBB69_36:                              @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r4]
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	halide_free(PLT)
	ldr	r0, [r4], #-4
	sub	r5, r5, #1
	cmp	r5, #1
	str	r6, [r0, #12]
	bgt	.LBB69_36
.LBB69_37:
	ldr	r5, .LCPI69_0
	mov	r6, r5
.LBB69_38:                              @ %.thread14
	ldr	r0, .LCPI69_16
.LPC69_9:
	add	r0, pc, r0
	ldr	r0, [r6, r0]
	bl	halide_mutex_unlock(PLT)
	mov	r0, r8
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB69_39:                              @ %.us-lcssa.us
	ldr	r0, .LCPI69_4
	ldr	r5, .LCPI69_3
.LPC69_1:
	add	r0, pc, r0
	ldr	r4, [r11, #12]
	ldr	r0, [r5, r0]
	ldr	r0, [r0]
	cmp	r8, r0
	beq	.LBB69_50
@ BB#40:
	ldr	r0, [r8, #4]
	cmp	r0, #0
	bne	.LBB69_42
@ BB#41:
	ldr	r0, .LCPI69_5
	ldr	r1, .LCPI69_6
.LPC69_2:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB69_42:
	ldr	r0, [r8, #8]
	cmp	r0, #0
	beq	.LBB69_44
@ BB#43:
	ldr	r1, [r8, #4]
	str	r1, [r0, #4]
	b	.LBB69_47
.LBB69_44:
	ldr	r0, .LCPI69_8
	mov	r7, r4
	ldr	r4, .LCPI69_7
.LPC69_3:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
	ldr	r0, [r0]
	cmp	r0, r8
	beq	.LBB69_46
@ BB#45:
	ldr	r0, .LCPI69_9
	ldr	r1, .LCPI69_10
.LPC69_4:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB69_46:
	ldr	r0, .LCPI69_11
	ldr	r1, [r8, #4]
.LPC69_5:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
	mov	r4, r7
	str	r1, [r0]
.LBB69_47:
	ldr	r0, [r8, #4]
	cmp	r0, #0
	bne	.LBB69_49
@ BB#48:
	ldr	r0, .LCPI69_12
	ldr	r1, .LCPI69_13
.LPC69_6:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
	ldr	r0, [r8, #4]
.LBB69_49:
	ldr	r1, .LCPI69_14
	ldr	r2, [r8, #8]
.LPC69_7:
	add	r1, pc, r1
	ldr	r1, [r5, r1]
	str	r2, [r0, #8]
	mov	r0, #0
	str	r0, [r8, #4]
	ldr	r0, [r1]
	str	r0, [r8, #8]
	ldr	r0, [r1]
	cmp	r0, #0
	strne	r8, [r0, #4]
	ldr	r0, .LCPI69_15
.LPC69_8:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	str	r8, [r0]
.LBB69_50:                              @ %.preheader18
	ldr	r0, [r11, #8]
	cmp	r0, #1
	blt	.LBB69_53
@ BB#51:                                @ %.lr.ph27
	ldr	r1, [r11, #8]
	mov	r0, #0
.LBB69_52:                              @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r8, #44]
	subs	r1, r1, #1
	ldr	r3, [r4], #4
	add	r7, r2, r0
	add	r0, r0, #40
	mov	r2, r7
	vld1.64	{d16, d17}, [r2]!
	vld1.64	{d18, d19}, [r2]
	mov	r2, r3
	vldr	d20, [r7, #32]
	vst1.64	{d16, d17}, [r2]!
	vst1.64	{d18, d19}, [r2]
	vstr	d20, [r3, #32]
	bne	.LBB69_52
.LBB69_53:                              @ %.critedge11
	ldr	r0, [r8, #28]
	ldr	r1, [r11, #8]
	add	r0, r0, r1
	str	r0, [r8, #28]
	mov	r8, #0
	b	.LBB69_38
	.align	2
@ BB#54:
.LCPI69_0:
	.long	_ZN6Halide7Runtime8Internal16memoization_lockE(GOT)
.LCPI69_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_0+8)
.LCPI69_2:
	.long	_ZN6Halide7Runtime8Internal13cache_entriesE(GOT)
.LCPI69_3:
	.long	_ZN6Halide7Runtime8Internal18most_recently_usedE(GOT)
.LCPI69_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_1+8)
.LCPI69_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_2+8)
.LCPI69_6:
	.long	.L.str.5.32(GOTOFF)
.LCPI69_7:
	.long	_ZN6Halide7Runtime8Internal19least_recently_usedE(GOT)
.LCPI69_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_3+8)
.LCPI69_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_4+8)
.LCPI69_10:
	.long	.L.str.6.33(GOTOFF)
.LCPI69_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_5+8)
.LCPI69_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_6+8)
.LCPI69_13:
	.long	.L.str.7.34(GOTOFF)
.LCPI69_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_7+8)
.LCPI69_15:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_8+8)
.LCPI69_16:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC69_9+8)
.Lfunc_end69:
	.size	halide_memoization_cache_lookup, .Lfunc_end69-halide_memoization_cache_lookup
	.cantunwind
	.fnend

	.section	.text.halide_memoization_cache_store,"ax",%progbits
	.weak	halide_memoization_cache_store
	.align	2
	.type	halide_memoization_cache_store,%function
halide_memoization_cache_store:         @ @halide_memoization_cache_store
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#36
	sub	sp, sp, #36
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r8, r3
	ldr	r0, [r11, #12]
	mov	r6, r2
	mov	r7, r1
	ldr	r0, [r0]
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	ldr	r1, .LCPI70_1
	ldr	r2, .LCPI70_0
.LPC70_0:
	add	r4, pc, r1
	ldr	r5, [r0, #4]
	ldr	r1, [r2, r4]
	mov	r0, r1
	bl	halide_mutex_lock(PLT)
	ldr	r0, .LCPI70_2
	ldr	r0, [r0, r4]
	mov	r4, r5
	uxtb	r1, r4
	ldr	r5, [r11, #8]
	ldr	r9, [r0, r1, lsl #2]
	str	r1, [sp, #12]           @ 4-byte Spill
	cmp	r9, #0
	beq	.LBB70_18
@ BB#1:                                 @ %.lr.ph31
	cmp	r5, #1
	blt	.LBB70_12
.LBB70_2:                               @ %.lr.ph31.split.us
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB70_8 Depth 2
	ldr	r0, [r9, #24]
	cmp	r0, r4
	bne	.LBB70_11
@ BB#3:                                 @   in Loop: Header=BB70_2 Depth=1
	ldr	r0, [r9, #16]
	cmp	r0, r6
	bne	.LBB70_11
@ BB#4:                                 @   in Loop: Header=BB70_2 Depth=1
	ldr	r0, [r9, #20]
	mov	r1, r7
	mov	r2, r6
	bl	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(PLT)
	cmp	r0, #1
	bne	.LBB70_11
@ BB#5:                                 @   in Loop: Header=BB70_2 Depth=1
	ldr	r1, [r9, #40]
	mov	r0, r8
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	cmp	r0, #1
	bne	.LBB70_11
@ BB#6:                                 @   in Loop: Header=BB70_2 Depth=1
	ldr	r0, [r9, #32]
	cmp	r0, r5
	bne	.LBB70_11
@ BB#7:                                 @ %.lr.ph25.us
                                        @   in Loop: Header=BB70_2 Depth=1
	str	r8, [sp, #24]           @ 4-byte Spill
	mov	r5, #1
	ldr	r1, [r9, #44]
	mov	r10, #1
	ldr	r8, [r11, #12]
	str	r4, [sp, #20]           @ 4-byte Spill
	mov	r4, #12
	str	r6, [sp, #32]           @ 4-byte Spill
	mov	r6, #32
	str	r7, [sp, #28]           @ 4-byte Spill
.LBB70_8:                               @   Parent Loop BB70_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r1, r6]
	ldr	r7, [r8], #4
	mov	r0, r7
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	ldr	r1, [r9, #44]
	ldr	r2, [r7, #12]
	ldr	r3, [r1, r4]
	cmp	r3, r2
	mov	r2, #0
	movwne	r2, #1
	and	r10, r10, r2
	ldr	r2, [r11, #8]
	cmp	r5, r2
	bge	.LBB70_10
@ BB#9:                                 @   in Loop: Header=BB70_8 Depth=2
	add	r6, r6, #40
	add	r4, r4, #40
	add	r5, r5, #1
	cmp	r0, #0
	bne	.LBB70_8
.LBB70_10:                              @ %.critedge.us
                                        @   in Loop: Header=BB70_2 Depth=1
	ldr	r5, [r11, #8]
	cmp	r0, #0
	ldr	r6, [sp, #32]           @ 4-byte Reload
	ldr	r7, [sp, #28]           @ 4-byte Reload
	ldr	r8, [sp, #24]           @ 4-byte Reload
	ldr	r4, [sp, #20]           @ 4-byte Reload
	bne	.LBB70_45
.LBB70_11:                              @   in Loop: Header=BB70_2 Depth=1
	ldr	r9, [r9]
	cmp	r9, #0
	bne	.LBB70_2
	b	.LBB70_18
.LBB70_12:                              @ %.lr.ph31..lr.ph31.split_crit_edge
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r9, #24]
	cmp	r0, r4
	bne	.LBB70_17
@ BB#13:                                @   in Loop: Header=BB70_12 Depth=1
	ldr	r0, [r9, #16]
	cmp	r0, r6
	bne	.LBB70_17
@ BB#14:                                @   in Loop: Header=BB70_12 Depth=1
	ldr	r0, [r9, #20]
	mov	r1, r7
	mov	r2, r6
	bl	_ZN6Halide7Runtime8Internal10keys_equalEPKhS3_j(PLT)
	cmp	r0, #1
	bne	.LBB70_17
@ BB#15:                                @   in Loop: Header=BB70_12 Depth=1
	ldr	r1, [r9, #40]
	mov	r0, r8
	bl	_ZN6Halide7Runtime8Internal16buffer_has_shapeEPK15halide_buffer_tPK18halide_dimension_t(PLT)
	cmp	r0, #1
	bne	.LBB70_17
@ BB#16:                                @   in Loop: Header=BB70_12 Depth=1
	ldr	r0, [r9, #32]
	cmp	r0, r5
	beq	.LBB70_47
.LBB70_17:                              @   in Loop: Header=BB70_12 Depth=1
	ldr	r9, [r9]
	cmp	r9, #0
	bne	.LBB70_12
.LBB70_18:                              @ %.preheader
	mov	r0, #0
	str	r8, [sp, #24]           @ 4-byte Spill
	str	r7, [sp, #28]           @ 4-byte Spill
	cmp	r5, #0
	str	r6, [sp, #32]           @ 4-byte Spill
	ble	.LBB70_32
@ BB#19:
	ldr	r10, [r11, #12]
	mov	r9, #0
	mov	r8, #0
	str	r4, [sp, #20]           @ 4-byte Spill
.LBB70_20:                              @ %.lr.ph18
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB70_22 Depth 2
                                        @     Child Loop BB70_26 Depth 2
	ldr	lr, [r10, r0, lsl #2]
	ldr	r6, [lr, #28]
	cmp	r6, #0
	ble	.LBB70_30
@ BB#21:                                @ %.lr.ph.i.i
                                        @   in Loop: Header=BB70_20 Depth=1
	ldr	r12, [lr, #32]
	mov	r2, #0
	mov	r1, r6
	add	r5, r12, #8
	add	r4, r12, #4
.LBB70_22:                              @   Parent Loop BB70_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r7, [r5]
	cmp	r7, #1
	blt	.LBB70_24
@ BB#23:                                @   in Loop: Header=BB70_22 Depth=2
	ldr	r3, [r4]
	sub	r3, r3, #1
	mla	r2, r3, r7, r2
.LBB70_24:                              @   in Loop: Header=BB70_22 Depth=2
	add	r5, r5, #16
	add	r4, r4, #16
	subs	r1, r1, #1
	bne	.LBB70_22
@ BB#25:                                @ %.lr.ph.i.1.i
                                        @   in Loop: Header=BB70_20 Depth=1
	ldrb	lr, [lr, #25]
	add	r5, r12, #8
	add	r4, r12, #4
	mov	r7, #0
.LBB70_26:                              @   Parent Loop BB70_20 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.LBB70_28
@ BB#27:                                @   in Loop: Header=BB70_26 Depth=2
	ldr	r3, [r4]
	sub	r3, r3, #1
	mla	r7, r3, r1, r7
.LBB70_28:                              @   in Loop: Header=BB70_26 Depth=2
	add	r5, r5, #16
	add	r4, r4, #16
	subs	r6, r6, #1
	bne	.LBB70_26
@ BB#29:                                @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit.loopexit
                                        @   in Loop: Header=BB70_20 Depth=1
	ldr	r5, [r11, #8]
	add	r1, r2, #1
	b	.LBB70_31
.LBB70_30:                              @ %_ZNK15halide_buffer_t3endEv.exit.thread.i
                                        @   in Loop: Header=BB70_20 Depth=1
	ldrb	lr, [lr, #25]
	mov	r7, #0
	mov	r1, #1
.LBB70_31:                              @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit
                                        @   in Loop: Header=BB70_20 Depth=1
	add	r2, lr, #7
	sub	r1, r1, r7
	lsr	r2, r2, #3
	add	r0, r0, #1
	mul	r1, r2, r1
	adds	r9, r1, r9
	adc	r8, r8, #0
	cmp	r0, r5
	bne	.LBB70_20
	b	.LBB70_33
.LBB70_32:
	str	r4, [sp, #20]           @ 4-byte Spill
	mov	r9, #0
	mov	r8, #0
	ldr	r10, [r11, #12]
.LBB70_33:                              @ %._crit_edge.19
	ldr	r0, .LCPI70_6
	ldr	r4, .LCPI70_5
.LPC70_2:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
	ldrd	r2, r3, [r0]
	adds	r2, r2, r9
	adc	r3, r3, r8
	strd	r2, r3, [r0]
	bl	_ZN6Halide7Runtime8Internal11prune_cacheEv(PLT)
	mov	r0, #0
	mov	r1, #48
	bl	halide_malloc(PLT)
	mov	r7, r0
	cmp	r7, #0
	beq	.LBB70_39
@ BB#34:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	stm	sp, {r0, r5, r10}
	mov	r0, r7
	ldr	r1, [sp, #28]           @ 4-byte Reload
	ldr	r2, [sp, #32]           @ 4-byte Reload
	ldr	r3, [sp, #20]           @ 4-byte Reload
	bl	_ZN6Halide7Runtime8Internal10CacheEntry4initEPKhjjPK15halide_buffer_tiPPS5_(PLT)
	cmp	r0, #0
	beq	.LBB70_39
@ BB#35:
	ldr	r0, .LCPI70_8
	mov	r3, r5
	ldr	r6, .LCPI70_2
.LPC70_4:
	add	r1, pc, r0
	ldr	r4, [sp, #12]           @ 4-byte Reload
	ldr	r0, .LCPI70_9
	ldr	r2, [r6, r1]
	ldr	r5, .LCPI70_0
	ldr	r1, [r0, r1]
	ldr	r2, [r2, r4, lsl #2]
	str	r2, [r7]
	ldr	r2, [r1]
	str	r2, [r7, #8]
	ldr	r1, [r1]
	ldr	r2, .LCPI70_10
	cmp	r1, #0
	strne	r7, [r1, #4]
.LPC70_5:
	add	r2, pc, r2
	ldr	r1, .LCPI70_11
	ldr	r0, [r0, r2]
	ldr	r2, [r1, r2]
	str	r7, [r0]
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.LBB70_37
@ BB#36:
	ldr	r0, .LCPI70_12
.LPC70_6:
	add	r0, pc, r0
	ldr	r0, [r1, r0]
	str	r7, [r0]
.LBB70_37:
	ldr	r0, .LCPI70_13
.LPC70_7:
	add	r0, pc, r0
	ldr	r0, [r6, r0]
	str	r7, [r0, r4, lsl #2]
	mov	r4, r3
	str	r4, [r7, #28]
	cmp	r4, #1
	blt	.LBB70_44
.LBB70_38:                              @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r10], #4
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	subs	r4, r4, #1
	str	r7, [r0]
	bne	.LBB70_38
	b	.LBB70_44
.LBB70_39:                              @ %.critedge9
	ldr	r0, .LCPI70_7
.LPC70_3:
	add	r0, pc, r0
	ldr	r0, [r4, r0]
	ldrd	r2, r3, [r0]
	subs	r2, r2, r9
	sbc	r3, r3, r8
	cmp	r5, #0
	strd	r2, r3, [r0]
	ble	.LBB70_42
@ BB#40:
	mov	r4, #0
.LBB70_41:                              @ %.lr.ph15
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r10], #4
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	subs	r5, r5, #1
	str	r4, [r0]
	bne	.LBB70_41
.LBB70_42:                              @ %._crit_edge
	ldr	r5, .LCPI70_0
	cmp	r7, #0
	beq	.LBB70_44
@ BB#43:
	ldr	r0, [sp, #16]           @ 4-byte Reload
	mov	r1, r7
	bl	halide_free(PLT)
.LBB70_44:                              @ %.critedge8
	ldr	r0, .LCPI70_14
.LPC70_8:
	add	r0, pc, r0
	ldr	r0, [r5, r0]
	bl	halide_mutex_unlock(PLT)
	mov	r0, #0
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB70_45:                              @ %.us-lcssa.us
	cmp	r10, #0
	bne	.LBB70_47
@ BB#46:
	ldr	r0, .LCPI70_3
	ldr	r1, .LCPI70_4
.LPC70_1:
	add	r0, pc, r0
	add	r1, r1, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB70_47:                              @ %.preheader10
	cmp	r5, #1
	mov	r7, r5
	ldr	r5, .LCPI70_0
	ldr	r6, [r11, #12]
	blt	.LBB70_44
@ BB#48:
	mov	r4, #0
.LBB70_49:                              @ %.lr.ph21
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6], #4
	ldr	r0, [r0, #12]
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	subs	r7, r7, #1
	str	r4, [r0]
	bne	.LBB70_49
	b	.LBB70_44
	.align	2
@ BB#50:
.LCPI70_0:
	.long	_ZN6Halide7Runtime8Internal16memoization_lockE(GOT)
.LCPI70_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_0+8)
.LCPI70_2:
	.long	_ZN6Halide7Runtime8Internal13cache_entriesE(GOT)
.LCPI70_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_1+8)
.LCPI70_4:
	.long	.L.str.9.35(GOTOFF)
.LCPI70_5:
	.long	_ZN6Halide7Runtime8Internal18current_cache_sizeE(GOT)
.LCPI70_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_2+8)
.LCPI70_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_3+8)
.LCPI70_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_4+8)
.LCPI70_9:
	.long	_ZN6Halide7Runtime8Internal18most_recently_usedE(GOT)
.LCPI70_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_5+8)
.LCPI70_11:
	.long	_ZN6Halide7Runtime8Internal19least_recently_usedE(GOT)
.LCPI70_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_6+8)
.LCPI70_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_7+8)
.LCPI70_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC70_8+8)
.Lfunc_end70:
	.size	halide_memoization_cache_store, .Lfunc_end70-halide_memoization_cache_store
	.cantunwind
	.fnend

	.section	.text.halide_memoization_cache_release,"ax",%progbits
	.weak	halide_memoization_cache_release
	.align	2
	.type	halide_memoization_cache_release,%function
halide_memoization_cache_release:       @ @halide_memoization_cache_release
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	mov	r0, r1
	bl	_ZN6Halide7Runtime8Internal21get_pointer_to_headerEPh(PLT)
	mov	r1, r0
	ldr	r5, [r1]
	cmp	r5, #0
	beq	.LBB71_4
@ BB#1:
	ldr	r0, .LCPI71_1
	ldr	r6, .LCPI71_0
.LPC71_0:
	add	r0, pc, r0
	ldr	r0, [r6, r0]
	bl	halide_mutex_lock(PLT)
	ldr	r1, [r5, #28]
	cmp	r1, #0
	bne	.LBB71_3
@ BB#2:
	ldr	r0, .LCPI71_2
	ldr	r1, .LCPI71_3
.LPC71_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
	bl	halide_print(PLT)
	bl	abort(PLT)
	ldr	r1, [r5, #28]
.LBB71_3:
	ldr	r0, .LCPI71_4
	sub	r1, r1, #1
	str	r1, [r5, #28]
.LPC71_2:
	add	r0, pc, r0
	ldr	r0, [r6, r0]
	pop	{r4, r5, r6, r10, r11, lr}
	b	halide_mutex_unlock(PLT)
.LBB71_4:
	mov	r0, r4
	pop	{r4, r5, r6, r10, r11, lr}
	b	halide_free(PLT)
	.align	2
@ BB#5:
.LCPI71_0:
	.long	_ZN6Halide7Runtime8Internal16memoization_lockE(GOT)
.LCPI71_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC71_0+8)
.LCPI71_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC71_1+8)
.LCPI71_3:
	.long	.L.str.12.36(GOTOFF)
.LCPI71_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC71_2+8)
.Lfunc_end71:
	.size	halide_memoization_cache_release, .Lfunc_end71-halide_memoization_cache_release
	.cantunwind
	.fnend

	.section	.text.halide_memoization_cache_cleanup,"ax",%progbits
	.weak	halide_memoization_cache_cleanup
	.align	2
	.type	halide_memoization_cache_cleanup,%function
halide_memoization_cache_cleanup:       @ @halide_memoization_cache_cleanup
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	ldr	r1, .LCPI72_1
	mov	r8, #0
	ldr	r0, .LCPI72_0
	mov	r7, #0
.LPC72_0:
	add	r1, pc, r1
	ldr	r6, [r0, r1]
.LBB72_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB72_2 Depth 2
	ldr	r4, [r6, r7, lsl #2]
	str	r8, [r6, r7, lsl #2]
	cmp	r4, #0
	beq	.LBB72_3
.LBB72_2:                               @ %.lr.ph
                                        @   Parent Loop BB72_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	mov	r0, r4
	ldr	r5, [r4]
	bl	_ZN6Halide7Runtime8Internal10CacheEntry7destroyEv(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mov	r4, r5
	cmp	r5, #0
	bne	.LBB72_2
.LBB72_3:                               @ %._crit_edge
                                        @   in Loop: Header=BB72_1 Depth=1
	add	r7, r7, #1
	cmp	r7, #256
	bne	.LBB72_1
@ BB#4:
	ldr	r1, .LCPI72_3
	ldr	r0, .LCPI72_2
	ldr	r2, .LCPI72_4
.LPC72_1:
	add	r1, pc, r1
	ldr	r3, .LCPI72_5
	ldr	r7, .LCPI72_6
	ldr	r6, [r0, r1]
	ldr	r0, [r3, r1]
	ldr	r3, [r7, r1]
	ldr	r1, [r2, r1]
	mov	r2, #0
	str	r2, [r6]
	str	r2, [r6, #4]
	str	r2, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	b	halide_mutex_destroy(PLT)
	.align	2
@ BB#5:
.LCPI72_0:
	.long	_ZN6Halide7Runtime8Internal13cache_entriesE(GOT)
.LCPI72_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC72_0+8)
.LCPI72_2:
	.long	_ZN6Halide7Runtime8Internal18current_cache_sizeE(GOT)
.LCPI72_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC72_1+8)
.LCPI72_4:
	.long	_ZN6Halide7Runtime8Internal18most_recently_usedE(GOT)
.LCPI72_5:
	.long	_ZN6Halide7Runtime8Internal16memoization_lockE(GOT)
.LCPI72_6:
	.long	_ZN6Halide7Runtime8Internal19least_recently_usedE(GOT)
.Lfunc_end72:
	.size	halide_memoization_cache_cleanup, .Lfunc_end72-halide_memoization_cache_cleanup
	.cantunwind
	.fnend

	.section	.text.halide_cache_cleanup,"ax",%progbits
	.weak	halide_cache_cleanup
	.align	2
	.type	halide_cache_cleanup,%function
halide_cache_cleanup:                   @ @halide_cache_cleanup
	.fnstart
@ BB#0:
	b	halide_memoization_cache_cleanup(PLT)
.Lfunc_end73:
	.size	halide_cache_cleanup, .Lfunc_end73-halide_cache_cleanup
	.cantunwind
	.fnend

	.section	.text.halide_string_to_string,"ax",%progbits
	.weak	halide_string_to_string
	.align	2
	.type	halide_string_to_string,%function
halide_string_to_string:                @ @halide_string_to_string
	.fnstart
@ BB#0:
	cmp	r0, r1
	bhs	.LBB74_5
@ BB#1:                                 @ %.preheader
	beq	.LBB74_4
.LBB74_2:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldrb	r3, [r2]
	cmp	r3, #0
	strb	r3, [r0]
	bxeq	lr
	add	r0, r0, #1
	add	r2, r2, #1
	cmp	r1, r0
	bne	.LBB74_2
@ BB#3:
	mov	r0, r1
.LBB74_4:                               @ %._crit_edge
	mov	r1, #0
	strb	r1, [r0, #-1]
.LBB74_5:                               @ %.loopexit
	bx	lr
.Lfunc_end74:
	.size	halide_string_to_string, .Lfunc_end74-halide_string_to_string
	.cantunwind
	.fnend

	.section	.text.halide_uint64_to_string,"ax",%progbits
	.weak	halide_uint64_to_string
	.align	2
	.type	halide_uint64_to_string,%function
halide_uint64_to_string:                @ @halide_uint64_to_string
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#36
	sub	sp, sp, #36
	mov	r7, r2
	mov	r9, r0
	mov	r0, #0
	mov	r6, r3
	ldr	r10, [r11, #8]
	mov	r8, r1
	strb	r0, [sp, #35]
	orrs	r0, r7, r6
	add	r0, sp, #4
	mov	r2, #1
	add	r5, r0, #30
	bne	.LBB75_2
@ BB#1:
	cmp	r10, #0
	ble	.LBB75_4
.LBB75_2:                               @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	mov	r4, r2
	mov	r0, r7
	mov	r1, r6
	mov	r2, #10
	mov	r3, #0
	bl	__aeabi_uldivmod(PLT)
	add	r2, r0, r0, lsl #2
	cmp	r7, #9
	mov	r3, #0
	movwhi	r3, #1
	sub	r2, r7, r2, lsl #1
	cmp	r6, #0
	movwne	r6, #1
	moveq	r6, r3
	add	r2, r2, #48
	cmp	r6, #0
	strb	r2, [r5], #-1
	add	r2, r4, #1
	mov	r7, r0
	mov	r6, r1
	bne	.LBB75_2
@ BB#3:                                 @ %.lr.ph
                                        @   in Loop: Header=BB75_2 Depth=1
	mov	r7, r0
	mov	r6, r1
	cmp	r4, r10
	blt	.LBB75_2
.LBB75_4:                               @ %._crit_edge
	add	r2, r5, #1
	mov	r0, r9
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end75:
	.size	halide_uint64_to_string, .Lfunc_end75-halide_uint64_to_string
	.cantunwind
	.fnend

	.section	.text.halide_int64_to_string,"ax",%progbits
	.weak	halide_int64_to_string
	.align	2
	.type	halide_int64_to_string,%function
halide_int64_to_string:                 @ @halide_int64_to_string
	.fnstart
@ BB#0:
	cmp	r0, r1
	bhs	.LBB76_3
@ BB#1:
	cmp	r3, #0
	bge	.LBB76_3
@ BB#2:
	mov	r12, #45
	rsbs	r2, r2, #0
	strb	r12, [r0], #1
	rsc	r3, r3, #0
.LBB76_3:
	b	halide_uint64_to_string(PLT)
.Lfunc_end76:
	.size	halide_int64_to_string, .Lfunc_end76-halide_int64_to_string
	.cantunwind
	.fnend

	.section	.text.halide_double_to_string,"ax",%progbits
	.weak	halide_double_to_string
	.align	3
	.type	halide_double_to_string,%function
halide_double_to_string:                @ @halide_double_to_string
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8}
	vpush	{d8}
	.pad	#552
	sub	sp, sp, #552
	vorr	d8, d0, d0
	mov	r10, r0
	mov	r0, #0
	mov	r6, r2
	mov	r9, r1
	str	r0, [r11, #-60]
	str	r0, [r11, #-64]
	sub	r0, r11, #64
	sub	r1, r11, #56
	mov	r2, #8
	vstr	d8, [r11, #-56]
	bl	memcpy(PLT)
	ldr	r1, [r11, #-60]
	ldr	r7, [r11, #-64]
	mov	r5, r1
	lsr	r0, r1, #31
	ubfx	r4, r1, #20, #11
	bfc	r5, #20, #12
	movw	r1, #2047
	cmp	r4, r1
	bne	.LBB77_4
@ BB#1:
	orrs	r1, r7, r5
	beq	.LBB77_18
@ BB#2:
	cmp	r0, #0
	beq	.LBB77_20
@ BB#3:
	ldr	r0, .LCPI77_20
	ldr	r1, .LCPI77_21
.LPC77_10:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_4:
	orrs	r1, r7, r5
	bne	.LBB77_9
@ BB#5:
	cmp	r4, #0
	bne	.LBB77_9
@ BB#6:
	cmp	r6, #0
	beq	.LBB77_21
@ BB#7:
	cmp	r0, #0
	beq	.LBB77_33
@ BB#8:
	ldr	r0, .LCPI77_12
	ldr	r1, .LCPI77_13
.LPC77_6:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_9:
	cmp	r0, #0
	beq	.LBB77_11
@ BB#10:
	ldr	r0, .LCPI77_0
	ldr	r1, .LCPI77_1
.LPC77_0:
	add	r0, pc, r0
	add	r2, r1, r0
	mov	r0, r10
	mov	r1, r9
	bl	halide_string_to_string(PLT)
	vneg.f64	d8, d8
	mov	r10, r0
	vstr	d8, [r11, #-56]
.LBB77_11:
	cmp	r6, #0
	beq	.LBB77_23
@ BB#12:                                @ %thread-pre-split
	vmov.f64	d16, #1.000000e+00
	mov	r6, #0
	vcmpe.f64	d8, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB77_16
@ BB#13:
	vmov.f64	d17, #1.000000e+01
.LBB77_14:                              @ %.lr.ph25
                                        @ =>This Inner Loop Header: Depth=1
	vmul.f64	d8, d8, d17
	sub	r6, r6, #1
	vcmpe.f64	d8, d16
	vmrs	APSR_nzcv, fpscr
	bmi	.LBB77_14
@ BB#15:                                @ %.thread-pre-split6_crit_edge
	vstr	d8, [r11, #-56]
.LBB77_16:                              @ %thread-pre-split6
	vmov.f64	d16, #1.000000e+01
	vcmpe.f64	d8, d16
	vmrs	APSR_nzcv, fpscr
	bge	.LBB77_27
@ BB#17:
	str	r10, [sp, #8]           @ 4-byte Spill
	mov	r8, r9
	b	.LBB77_30
.LBB77_18:
	cmp	r0, #0
	beq	.LBB77_32
@ BB#19:
	ldr	r0, .LCPI77_24
	ldr	r1, .LCPI77_25
.LPC77_12:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_20:
	ldr	r0, .LCPI77_18
	ldr	r1, .LCPI77_19
.LPC77_9:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_21:
	cmp	r0, #0
	beq	.LBB77_36
@ BB#22:
	ldr	r0, .LCPI77_16
	ldr	r1, .LCPI77_17
.LPC77_8:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_23:
	cmp	r4, #0
	beq	.LBB77_38
@ BB#24:
	movw	r0, #1075
	orr	r3, r5, #1048576
	sub	r1, r4, r0
	mov	r8, #0
	movw	r0, #1074
	cmp	r4, r0
	bhi	.LBB77_39
@ BB#25:
	mov	r6, #0
	cmn	r1, #52
	str	r1, [sp, #12]           @ 4-byte Spill
	bge	.LBB77_40
@ BB#26:
	mov	r5, #0
	mov	r4, #0
	b	.LBB77_41
.LBB77_27:
	mov	r8, r9
	str	r10, [sp, #8]           @ 4-byte Spill
.LBB77_28:                              @ %.lr.ph19
                                        @ =>This Inner Loop Header: Depth=1
	vdiv.f64	d8, d8, d16
	add	r6, r6, #1
	vcmpe.f64	d8, d16
	vmrs	APSR_nzcv, fpscr
	bge	.LBB77_28
@ BB#29:                                @ %._crit_edge.20
	vstr	d8, [r11, #-56]
.LBB77_30:
	vldr	d16, .LCPI77_2
	vmov.f64	d17, #5.000000e-01
	vmla.f64	d17, d8, d16
	vmov	r0, r1, d17
	bl	__aeabi_d2ulz(PLT)
	movw	r2, #16960
	mov	r3, #0
	movt	r2, #15
	mov	r7, r0
	mov	r5, r1
	bl	__aeabi_uldivmod(PLT)
	movw	r9, #48576
	mov	r2, r0
	movt	r9, #65520
	mov	r4, r1
	umull	r3, r0, r2, r9
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r8
	str	r3, [sp, #12]           @ 4-byte Spill
	mov	r3, r4
	sub	r10, r0, r2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI77_3
	mla	r4, r4, r9, r10
	ldr	r2, .LCPI77_4
.LPC77_1:
	add	r1, pc, r1
	add	r2, r2, r1
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	mov	r1, #6
	str	r1, [sp]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	adds	r2, r7, r1
	mov	r1, r8
	adc	r3, r5, r4
	bl	halide_int64_to_string(PLT)
	cmp	r6, #0
	blt	.LBB77_34
@ BB#31:
	ldr	r1, .LCPI77_7
	ldr	r2, .LCPI77_8
.LPC77_3:
	add	r1, pc, r1
	add	r2, r2, r1
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	b	.LBB77_35
.LBB77_32:
	ldr	r0, .LCPI77_22
	ldr	r1, .LCPI77_23
.LPC77_11:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_33:
	ldr	r0, .LCPI77_10
	ldr	r1, .LCPI77_11
.LPC77_5:
	add	r0, pc, r0
	b	.LBB77_37
.LBB77_34:
	ldr	r1, .LCPI77_5
	ldr	r2, .LCPI77_6
.LPC77_2:
	add	r1, pc, r1
	add	r2, r2, r1
	mov	r1, r8
	bl	halide_string_to_string(PLT)
	rsb	r6, r6, #0
.LBB77_35:
	mov	r1, #2
	asr	r3, r6, #31
	str	r1, [sp]
	mov	r1, r8
	mov	r2, r6
	b	.LBB77_51
.LBB77_36:
	ldr	r0, .LCPI77_14
	ldr	r1, .LCPI77_15
.LPC77_7:
	add	r0, pc, r0
.LBB77_37:
	add	r2, r1, r0
	mov	r0, r10
	mov	r1, r9
	bl	halide_string_to_string(PLT)
	b	.LBB77_52
.LBB77_38:
	vmov.i32	d0, #0x0
	mov	r0, r10
	mov	r1, r9
	mov	r2, #0
	bl	halide_double_to_string(PLT)
	b	.LBB77_52
.LBB77_39:
	mov	r0, #0
	mov	r6, r1
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB77_42
.LBB77_40:
	movw	r0, #1075
	sub	r0, r0, r4
	lsr	r1, r7, r0
	rsb	r2, r0, #32
	orr	r5, r1, r3, lsl r2
	movw	r1, #1043
	sub	r1, r1, r4
	cmp	r1, #0
	lsrge	r5, r3, r1
	lsr	r4, r3, r0
	lsr	r2, r5, r2
	orr	r2, r2, r4, lsl r0
	lslge	r2, r5, r1
	subs	r7, r7, r5, lsl r0
	sbc	r3, r3, r2
.LBB77_41:
	mov	r0, r7
	mov	r1, r3
	str	r4, [sp, #4]            @ 4-byte Spill
	mov	r7, r5
	bl	__aeabi_ul2d(PLT)
	ldr	r3, [sp, #12]           @ 4-byte Reload
	movw	r2, #33920
	movt	r2, #16686
	vmov	d16, r0, r1
	add	r2, r2, r3, lsl #20
	vmov	d17, r6, r2
	vmul.f64	d16, d17, d16
	vmov.f64	d17, #5.000000e-01
	vadd.f64	d8, d16, d17
	vmov	r0, r1, d8
	bl	__aeabi_d2ulz(PLT)
	mov	r4, r0
	mov	r5, r1
	bl	__aeabi_ul2d(PLT)
	vmov	d16, r0, r1
	subs	r2, r4, #1
	vcmpe.f64	d16, d8
	sbc	r1, r5, #0
	mov	r0, #0
	vmrs	APSR_nzcv, fpscr
	movweq	r0, #1
	ands	r0, r4, r0
	moveq	r2, r4
	moveq	r1, r5
	eor	r0, r2, #576
	ldr	r5, [sp, #4]            @ 4-byte Reload
	eor	r0, r0, #999424
	orrs	r0, r0, r1
	moveq	r1, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r7
	adds	r7, r1, #1
	adc	r3, r5, #0
	cmp	r0, #0
	moveq	r2, r0
	movne	r3, r5
	movne	r7, r1
	str	r2, [sp, #12]           @ 4-byte Spill
.LBB77_42:
	mov	r0, #1
	mov	r2, r7
	str	r0, [sp]
	add	r0, sp, #16
	add	r5, r0, #480
	add	r1, r0, #512
	mov	r0, r5
	bl	halide_int64_to_string(PLT)
	cmp	r6, #1
	blt	.LBB77_50
@ BB#43:
	mvn	r1, #95
	mov	r12, #49
.LBB77_44:                              @ %.preheader
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB77_46 Depth 2
	mov	r3, r5
	mov	r5, r0
	cmp	r0, r3
	beq	.LBB77_49
@ BB#45:                                @   in Loop: Header=BB77_44 Depth=1
	sub	r7, r3, #1
	mov	r5, r0
	mov	r4, #0
.LBB77_46:                              @ %.lr.ph
                                        @   Parent Loop BB77_44 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrb	r2, [r5, #-1]!
	add	r2, r1, r2, lsl #1
	orr	r4, r2, r4
	sxtb	r2, r4
	cmp	r2, #9
	subgt	r4, r4, #10
	add	r4, r4, #48
	strb	r4, [r5]
	mov	r4, #0
	movwgt	r4, #1
	cmp	r3, r5
	bne	.LBB77_46
@ BB#47:                                @ %._crit_edge
                                        @   in Loop: Header=BB77_44 Depth=1
	mov	r5, r3
	cmp	r2, #9
	ble	.LBB77_49
@ BB#48:                                @   in Loop: Header=BB77_44 Depth=1
	mov	r5, r7
	strb	r12, [r7]
.LBB77_49:                              @ %._crit_edge.thread
                                        @   in Loop: Header=BB77_44 Depth=1
	add	r8, r8, #1
	cmp	r8, r6
	bne	.LBB77_44
.LBB77_50:                              @ %._crit_edge.16
	mov	r0, r10
	mov	r1, r9
	mov	r2, r5
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI77_9
	ldr	r2, .LCPI77_4
.LPC77_4:
	add	r1, pc, r1
	add	r2, r2, r1
	mov	r1, r9
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #12]           @ 4-byte Reload
	mov	r1, #6
	ldr	r3, [sp, #8]            @ 4-byte Reload
	str	r1, [sp]
	mov	r1, r9
.LBB77_51:
	bl	halide_int64_to_string(PLT)
.LBB77_52:
	sub	sp, r11, #40
	vpop	{d8}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	3
@ BB#53:
.LCPI77_2:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.LCPI77_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_0+8)
.LCPI77_1:
	.long	.L.str.8.55(GOTOFF)
.LCPI77_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_1+8)
.LCPI77_4:
	.long	.L.str.27.118(GOTOFF)
.LCPI77_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_2+8)
.LCPI77_6:
	.long	.L.str.11.58(GOTOFF)
.LCPI77_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_3+8)
.LCPI77_8:
	.long	.L.str.10.57(GOTOFF)
.LCPI77_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_4+8)
.LCPI77_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_5+8)
.LCPI77_11:
	.long	.L.str.5.52(GOTOFF)
.LCPI77_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_6+8)
.LCPI77_13:
	.long	.L.str.4.51(GOTOFF)
.LCPI77_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_7+8)
.LCPI77_15:
	.long	.L.str.7.54(GOTOFF)
.LCPI77_16:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_8+8)
.LCPI77_17:
	.long	.L.str.6.53(GOTOFF)
.LCPI77_18:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_9+8)
.LCPI77_19:
	.long	.L.str.1.48(GOTOFF)
.LCPI77_20:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_10+8)
.LCPI77_21:
	.long	.L.str.47(GOTOFF)
.LCPI77_22:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_11+8)
.LCPI77_23:
	.long	.L.str.3.50(GOTOFF)
.LCPI77_24:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC77_12+8)
.LCPI77_25:
	.long	.L.str.2.49(GOTOFF)
.Lfunc_end77:
	.size	halide_double_to_string, .Lfunc_end77-halide_double_to_string
	.cantunwind
	.fnend

	.section	.text.halide_pointer_to_string,"ax",%progbits
	.weak	halide_pointer_to_string
	.align	2
	.type	halide_pointer_to_string,%function
halide_pointer_to_string:               @ @halide_pointer_to_string
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#24
	sub	sp, sp, #24
	vmov.i32	q8, #0x0
	mov	r5, sp
	mov	r12, r2
	mov	r2, r5
	mov	r3, #0
	add	lr, r5, #18
	vst1.64	{d16, d17}, [r2]!
	mov	r4, #1
	str	r3, [r2]
	add	r2, r5, #19
	ldr	r5, .LCPI78_0
	ldr	r6, .LCPI78_1
.LPC78_0:
	add	r5, pc, r5
	add	r5, r6, r5
.LBB78_1:                               @ =>This Inner Loop Header: Depth=1
	and	r6, r12, #15
	sub	r2, r2, #1
	ldrb	r6, [r5, r6]
	cmp	r4, #15
	strb	r6, [lr], #-1
	bgt	.LBB78_3
@ BB#2:                                 @   in Loop: Header=BB78_1 Depth=1
	lsr	r6, r12, #4
	add	r4, r4, #1
	orr	r12, r6, r3, lsl #28
	lsr	r3, r3, #4
	orrs	r6, r12, r3
	bne	.LBB78_1
.LBB78_3:
	mov	r3, #120
	strb	r3, [lr]
	mov	r3, #48
	strb	r3, [r2, #-2]!
	bl	halide_string_to_string(PLT)
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#4:
.LCPI78_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC78_0+8)
.LCPI78_1:
	.long	.L.str.12.59(GOTOFF)
.Lfunc_end78:
	.size	halide_pointer_to_string, .Lfunc_end78-halide_pointer_to_string
	.cantunwind
	.fnend

	.section	.text.halide_type_to_string,"ax",%progbits
	.weak	halide_type_to_string
	.align	2
	.type	halide_type_to_string,%function
halide_type_to_string:                  @ @halide_type_to_string
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#8
	sub	sp, sp, #8
	mov	r5, r2
	mov	r4, r1
	ldrsb	r1, [r5]
	cmp	r1, #3
	bhi	.LBB79_2
@ BB#1:                                 @ %switch.lookup
	ldr	r2, .LCPI79_2
	ldr	r3, .LCPI79_3
.LPC79_1:
	add	r2, pc, r2
	add	r2, r3, r2
	ldr	r2, [r2, r1, lsl #2]
	b	.LBB79_3
.LBB79_2:
	ldr	r1, .LCPI79_0
	ldr	r2, .LCPI79_1
.LPC79_0:
	add	r1, pc, r1
	add	r2, r2, r1
.LBB79_3:
	mov	r1, r4
	bl	halide_string_to_string(PLT)
	ldrb	r2, [r5, #1]
	mov	r6, #1
	mov	r1, r4
	mov	r3, #0
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	ldrh	r1, [r5, #2]
	cmp	r1, #1
	beq	.LBB79_5
@ BB#4:
	ldr	r1, .LCPI79_4
	ldr	r2, .LCPI79_5
.LPC79_2:
	add	r1, pc, r1
	add	r2, r2, r1
	mov	r1, r4
	bl	halide_string_to_string(PLT)
	ldrh	r2, [r5, #2]
	mov	r1, r4
	mov	r3, #0
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
.LBB79_5:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI79_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC79_0+8)
.LCPI79_1:
	.long	.L.str.17.60(GOTOFF)
.LCPI79_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC79_1+8)
.LCPI79_3:
	.long	.Lswitch.table(GOTOFF)
.LCPI79_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC79_2+8)
.LCPI79_5:
	.long	.L.str.18.65(GOTOFF)
.Lfunc_end79:
	.size	halide_type_to_string, .Lfunc_end79-halide_type_to_string
	.cantunwind
	.fnend

	.section	.text.halide_buffer_to_string,"ax",%progbits
	.weak	halide_buffer_to_string
	.align	2
	.type	halide_buffer_to_string,%function
halide_buffer_to_string:                @ @halide_buffer_to_string
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r5, r2
	mov	r4, r1
	cmp	r5, #0
	beq	.LBB80_5
@ BB#1:
	ldr	r1, .LCPI80_0
	ldr	r2, .LCPI80_1
.LPC80_0:
	add	r6, pc, r1
	mov	r1, r4
	add	r2, r2, r6
	bl	halide_string_to_string(PLT)
	ldrd	r2, r3, [r5]
	mov	r7, #1
	mov	r1, r4
	str	r7, [sp]
	bl	halide_uint64_to_string(PLT)
	ldr	r9, .LCPI80_2
	mov	r1, r4
	add	r6, r9, r6
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r5, #8]
	mov	r1, r4
	bl	halide_pointer_to_string(PLT)
	mov	r1, r4
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r5, #12]
	mov	r1, r4
	bl	halide_pointer_to_string(PLT)
	mov	r1, r4
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldrd	r2, r3, [r5, #16]
	mov	r1, r4
	str	r7, [sp]
	bl	halide_uint64_to_string(PLT)
	mov	r1, r4
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	add	r2, r5, #24
	mov	r1, r4
	bl	halide_type_to_string(PLT)
	ldr	r1, [r5, #28]
	cmp	r1, #1
	blt	.LBB80_4
@ BB#2:                                 @ %.lr.ph
	ldr	r1, .LCPI80_3
	mov	r6, #0
	ldr	r2, .LCPI80_4
	mov	r8, #1
.LPC80_1:
	add	r1, pc, r1
	add	r2, r2, r1
	add	r7, r9, r1
	str	r2, [sp, #8]            @ 4-byte Spill
	mov	r9, #0
	ldr	r2, .LCPI80_5
	add	r10, r2, r1
.LBB80_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r2, [sp, #8]            @ 4-byte Reload
	mov	r1, r4
	bl	halide_string_to_string(PLT)
	ldr	r1, [r5, #32]
	ldr	r2, [r1, r6]
	mov	r1, r4
	str	r8, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	mov	r1, r4
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, [r5, #32]
	add	r1, r1, r6
	ldr	r2, [r1, #4]
	mov	r1, r4
	str	r8, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	mov	r1, r4
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, [r5, #32]
	add	r1, r1, r6
	ldr	r2, [r1, #8]
	mov	r1, r4
	str	r8, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	mov	r1, r4
	mov	r2, r10
	bl	halide_string_to_string(PLT)
	ldr	r1, [r5, #28]
	add	r9, r9, #1
	add	r6, r6, #16
	cmp	r9, r1
	blt	.LBB80_3
.LBB80_4:                               @ %._crit_edge
	ldr	r1, .LCPI80_6
	ldr	r2, .LCPI80_7
.LPC80_2:
	add	r1, pc, r1
	b	.LBB80_6
.LBB80_5:
	ldr	r1, .LCPI80_8
	ldr	r2, .LCPI80_9
.LPC80_3:
	add	r1, pc, r1
.LBB80_6:
	add	r2, r2, r1
	mov	r1, r4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	halide_string_to_string(PLT)
	.align	2
@ BB#7:
.LCPI80_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC80_0+8)
.LCPI80_1:
	.long	.L.str.20.67(GOTOFF)
.LCPI80_2:
	.long	.L.str.21.68(GOTOFF)
.LCPI80_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC80_1+8)
.LCPI80_4:
	.long	.L.str.22.70(GOTOFF)
.LCPI80_5:
	.long	.L.str.23.71(GOTOFF)
.LCPI80_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC80_2+8)
.LCPI80_7:
	.long	.L.str.8.99(GOTOFF)
.LCPI80_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC80_3+8)
.LCPI80_9:
	.long	.L.str.19.66(GOTOFF)
.Lfunc_end80:
	.size	halide_buffer_to_string, .Lfunc_end80-halide_buffer_to_string
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	.align	2
	.type	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t,%function
_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t: @ @_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	mov	r5, r0
	mov	r6, r4
	mov	r0, #0
	ldr	r1, [r6, #16]!
	tst	r1, #2
	beq	.LBB81_5
@ BB#1:
	mvn	r0, #13
	tst	r1, #1
	bne	.LBB81_5
@ BB#2:
	ldr	r1, [r4, #8]
	mvn	r0, #18
	cmp	r1, #0
	beq	.LBB81_5
@ BB#3:
	ldr	r2, [r1, #24]
	mov	r0, r5
	mov	r1, r4
	blx	r2
	cmp	r0, #0
	mvn	r0, #13
	bne	.LBB81_5
@ BB#4:
	ldrd	r0, r1, [r6]
	bfc	r0, #1, #1
	strd	r0, r1, [r6]
	mov	r0, r5
	mov	r1, r4
	bl	halide_msan_annotate_buffer_is_initialized(PLT)
	mov	r0, #0
.LBB81_5:
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end81:
	.size	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t, .Lfunc_end81-_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_device_release,"ax",%progbits
	.weak	halide_device_release
	.align	2
	.type	halide_device_release,%function
halide_device_release:                  @ @halide_device_release
	.fnstart
@ BB#0:
	ldr	r1, [r1, #20]
	bx	r1
.Lfunc_end82:
	.size	halide_device_release, .Lfunc_end82-halide_device_release
	.cantunwind
	.fnend

	.section	.text.halide_copy_to_host,"ax",%progbits
	.weak	halide_copy_to_host
	.align	2
	.type	halide_copy_to_host,%function
halide_copy_to_host:                    @ @halide_copy_to_host
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	ldr	r1, .LCPI83_1
	mov	r5, r0
	ldr	r0, .LCPI83_0
.LPC83_0:
	add	r1, pc, r1
	ldr	r6, [r0, r1]
	mov	r0, r6
	bl	halide_mutex_lock(PLT)
	mov	r0, r5
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	halide_mutex_unlock(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#1:
.LCPI83_0:
	.long	_ZN6Halide7Runtime8Internal17device_copy_mutexE(GOT)
.LCPI83_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC83_0+8)
.Lfunc_end83:
	.size	halide_copy_to_host, .Lfunc_end83-halide_copy_to_host
	.cantunwind
	.fnend

	.section	.text.halide_copy_to_device,"ax",%progbits
	.weak	halide_copy_to_device
	.align	2
	.type	halide_copy_to_device,%function
halide_copy_to_device:                  @ @halide_copy_to_device
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r9, r0
	ldr	r0, .LCPI84_1
	ldr	r8, .LCPI84_0
	mov	r6, r2
.LPC84_0:
	add	r0, pc, r0
	mov	r4, r1
	ldr	r0, [r8, r0]
	bl	halide_mutex_lock(PLT)
	cmp	r6, #0
	bne	.LBB84_2
@ BB#1:
	ldr	r6, [r4, #8]
	mvn	r7, #18
	cmp	r6, #0
	beq	.LBB84_16
.LBB84_2:
	ldrd	r0, r1, [r4]
	orrs	r0, r0, r1
	beq	.LBB84_11
@ BB#3:
	ldr	r0, [r4, #8]
	cmp	r0, r6
	beq	.LBB84_12
@ BB#4:
	cmp	r0, #0
	beq	.LBB84_9
@ BB#5:
	ldr	r0, [r4, #16]
	tst	r0, #2
	beq	.LBB84_9
@ BB#6:
	tst	r0, #1
	beq	.LBB84_8
@ BB#7:
	ldr	r0, .LCPI84_2
	ldr	r1, .LCPI84_3
.LPC84_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r9
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB84_8:
	mov	r0, r9
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal27copy_to_host_already_lockedEPvP15halide_buffer_t(PLT)
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB84_16
.LBB84_9:
	mov	r0, r9
	mov	r1, r4
	bl	halide_device_free(PLT)
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB84_16
@ BB#10:
	ldrd	r0, r1, [r4, #16]
	orr	r0, r0, #1
	strd	r0, r1, [r4, #16]
	ldm	r4, {r0, r1}
	orrs	r0, r0, r1
	bne	.LBB84_12
.LBB84_11:                              @ %.thread
	mov	r0, r9
	mov	r1, r4
	mov	r2, r6
	bl	halide_device_malloc(PLT)
	mov	r7, r0
	cmp	r7, #0
	bne	.LBB84_16
.LBB84_12:                              @ %.thread3
	mov	r5, r4
	mov	r7, #0
	ldr	r0, [r5, #16]!
	tst	r0, #1
	beq	.LBB84_16
@ BB#13:
	mvn	r7, #14
	tst	r0, #2
	bne	.LBB84_16
@ BB#14:
	ldr	r2, [r6, #28]
	mov	r0, r9
	mov	r1, r4
	blx	r2
	cmp	r0, #0
	bne	.LBB84_16
@ BB#15:
	ldrd	r0, r1, [r5]
	mov	r7, #0
	bfc	r0, #0, #1
	strd	r0, r1, [r5]
.LBB84_16:
	ldr	r0, .LCPI84_4
.LPC84_2:
	add	r0, pc, r0
	ldr	r0, [r8, r0]
	bl	halide_mutex_unlock(PLT)
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#17:
.LCPI84_0:
	.long	_ZN6Halide7Runtime8Internal17device_copy_mutexE(GOT)
.LCPI84_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC84_0+8)
.LCPI84_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC84_1+8)
.LCPI84_3:
	.long	.L.str.17.76(GOTOFF)
.LCPI84_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC84_2+8)
.Lfunc_end84:
	.size	halide_copy_to_device, .Lfunc_end84-halide_copy_to_device
	.cantunwind
	.fnend

	.section	.text.halide_device_free,"ax",%progbits
	.weak	halide_device_free
	.align	2
	.type	halide_device_free,%function
halide_device_free:                     @ @halide_device_free
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r6, r1
	mov	r4, r0
	cmp	r6, #0
	beq	.LBB85_5
@ BB#1:
	ldr	r7, [r6, #8]
	cmp	r7, #0
	beq	.LBB85_5
@ BB#2:
	ldr	r0, [r7]
	blx	r0
	ldr	r2, [r7, #12]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	mov	r5, r0
	ldr	r0, [r7, #4]
	blx	r0
	ldrd	r0, r1, [r6]
	orrs	r0, r0, r1
	beq	.LBB85_4
@ BB#3:
	ldr	r0, .LCPI85_0
	ldr	r1, .LCPI85_1
.LPC85_0:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB85_4:
	cmp	r5, #0
	mvnne	r5, #17
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, pc}
.LBB85_5:                               @ %.thread
	ldrd	r0, r1, [r6, #16]
	mov	r5, #0
	bfc	r0, #1, #1
	strd	r0, r1, [r6, #16]
	mov	r0, r5
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#6:
.LCPI85_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC85_0+8)
.LCPI85_1:
	.long	.L.str.33(GOTOFF)
.Lfunc_end85:
	.size	halide_device_free, .Lfunc_end85-halide_device_free
	.cantunwind
	.fnend

	.section	.text.halide_device_malloc,"ax",%progbits
	.weak	halide_device_malloc
	.align	2
	.type	halide_device_malloc,%function
halide_device_malloc:                   @ @halide_device_malloc
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r6, r1
	mov	r4, r0
	ldr	r0, [r6, #8]
	mov	r5, r2
	cmp	r0, #0
	beq	.LBB86_4
@ BB#1:
	cmp	r0, r5
	beq	.LBB86_4
@ BB#2:
	mov	r0, r4
	mov	r1, #1024
	bl	halide_malloc(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB86_5
@ BB#3:
	ldr	r0, .LCPI86_0
	mov	r3, #0
	mov	r1, r5
	ldr	r2, .LCPI86_1
	strb	r3, [r1, #1023]!
.LPC86_0:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r5
	bl	halide_string_to_string(PLT)
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB86_6
.LBB86_4:
	ldr	r0, [r5]
	blx	r0
	ldr	r2, [r5, #8]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	mov	r4, r0
	ldr	r0, [r5, #4]
	blx	r0
	cmp	r4, #0
	mvnne	r4, #15
	mov	r0, r4
	pop	{r4, r5, r6, r10, r11, pc}
.LBB86_5:
	ldr	r0, .LCPI86_2
	ldr	r1, .LCPI86_1
.LPC86_1:
	add	r6, pc, r0
	mov	r0, #0
	add	r2, r1, r6
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI86_3
	add	r1, r0, r6
	mov	r0, r4
.LBB86_6:                               @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r4, #15
	mov	r0, r4
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#7:
.LCPI86_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC86_0+8)
.LCPI86_1:
	.long	.L.str.30(GOTOFF)
.LCPI86_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC86_1+8)
.LCPI86_3:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end86:
	.size	halide_device_malloc, .Lfunc_end86-halide_device_malloc
	.cantunwind
	.fnend

	.section	.text.halide_device_sync,"ax",%progbits
	.weak	halide_device_sync
	.align	2
	.type	halide_device_sync,%function
halide_device_sync:                     @ @halide_device_sync
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	mov	r2, r0
	mvn	r0, #18
	cmp	r1, #0
	beq	.LBB87_3
@ BB#1:
	ldr	r3, [r1, #8]
	cmp	r3, #0
	beq	.LBB87_3
@ BB#2:
	ldr	r3, [r3, #16]
	mov	r0, r2
	blx	r3
	cmp	r0, #0
	mvnne	r0, #16
.LBB87_3:                               @ %.thread
	pop	{r11, pc}
.Lfunc_end87:
	.size	halide_device_sync, .Lfunc_end87-halide_device_sync
	.cantunwind
	.fnend

	.section	.text.halide_weak_device_free,"ax",%progbits
	.weak	halide_weak_device_free
	.align	2
	.type	halide_weak_device_free,%function
halide_weak_device_free:                @ @halide_weak_device_free
	.fnstart
@ BB#0:
	b	halide_device_free(PLT)
.Lfunc_end88:
	.size	halide_weak_device_free, .Lfunc_end88-halide_weak_device_free
	.cantunwind
	.fnend

	.section	.text.halide_device_free_as_destructor,"ax",%progbits
	.weak	halide_device_free_as_destructor
	.align	2
	.type	halide_device_free_as_destructor,%function
halide_device_free_as_destructor:       @ @halide_device_free_as_destructor
	.fnstart
@ BB#0:
	b	halide_device_free(PLT)
.Lfunc_end89:
	.size	halide_device_free_as_destructor, .Lfunc_end89-halide_device_free_as_destructor
	.cantunwind
	.fnend

	.section	.text.halide_device_and_host_malloc,"ax",%progbits
	.weak	halide_device_and_host_malloc
	.align	2
	.type	halide_device_and_host_malloc,%function
halide_device_and_host_malloc:          @ @halide_device_and_host_malloc
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r6, r1
	mov	r4, r0
	ldr	r0, [r6, #8]
	mov	r5, r2
	cmp	r0, #0
	beq	.LBB90_3
@ BB#1:
	cmp	r0, r5
	beq	.LBB90_3
@ BB#2:
	ldr	r0, .LCPI90_0
	ldr	r1, .LCPI90_1
.LPC90_0:
	add	r0, pc, r0
	b	.LBB90_5
.LBB90_3:
	ldr	r0, [r5]
	blx	r0
	ldr	r2, [r5, #32]
	mov	r0, r4
	mov	r1, r6
	blx	r2
	mov	r6, r0
	ldr	r0, [r5, #4]
	blx	r0
	mov	r0, #0
	cmp	r6, #0
	beq	.LBB90_6
@ BB#4:
	ldr	r0, .LCPI90_2
	ldr	r1, .LCPI90_3
.LPC90_1:
	add	r0, pc, r0
.LBB90_5:
	add	r1, r1, r0
	mov	r0, r4
	bl	halide_error(PLT)
	mvn	r0, #15
.LBB90_6:
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#7:
.LCPI90_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC90_0+8)
.LCPI90_1:
	.long	.L.str.36(GOTOFF)
.LCPI90_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC90_1+8)
.LCPI90_3:
	.long	.L.str.37(GOTOFF)
.Lfunc_end90:
	.size	halide_device_and_host_malloc, .Lfunc_end90-halide_device_and_host_malloc
	.cantunwind
	.fnend

	.section	.text.halide_device_and_host_free,"ax",%progbits
	.weak	halide_device_and_host_free
	.align	2
	.type	halide_device_and_host_free,%function
halide_device_and_host_free:            @ @halide_device_and_host_free
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	mov	r5, r0
	cmp	r4, #0
	beq	.LBB91_7
@ BB#1:
	ldr	r7, [r4, #8]
	cmp	r7, #0
	beq	.LBB91_5
@ BB#2:
	ldr	r0, [r7]
	blx	r0
	ldr	r2, [r7, #36]
	mov	r0, r5
	mov	r1, r4
	blx	r2
	mov	r6, r0
	ldr	r0, [r7, #4]
	blx	r0
	ldrd	r0, r1, [r4]
	orrs	r0, r0, r1
	beq	.LBB91_4
@ BB#3:
	ldr	r0, .LCPI91_0
	ldr	r1, .LCPI91_1
.LPC91_0:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r5
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB91_4:
	cmp	r6, #0
	mvnne	r6, #17
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, pc}
.LBB91_5:
	ldr	r1, [r4, #12]
	cmp	r1, #0
	beq	.LBB91_7
@ BB#6:
	mov	r0, r5
	bl	halide_free(PLT)
	mov	r0, #0
	str	r0, [r4, #12]
.LBB91_7:                               @ %.thread
	ldrd	r0, r1, [r4, #16]
	mov	r6, #0
	bfc	r0, #1, #1
	strd	r0, r1, [r4, #16]
	mov	r0, r6
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#8:
.LCPI91_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC91_0+8)
.LCPI91_1:
	.long	.L.str.39(GOTOFF)
.Lfunc_end91:
	.size	halide_device_and_host_free, .Lfunc_end91-halide_device_and_host_free
	.cantunwind
	.fnend

	.section	.text.halide_default_device_and_host_malloc,"ax",%progbits
	.weak	halide_default_device_and_host_malloc
	.align	2
	.type	halide_default_device_and_host_malloc,%function
halide_default_device_and_host_malloc:  @ @halide_default_device_and_host_malloc
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r10, r1
	mov	r8, r2
	ldr	r5, [r10, #28]
	mov	r9, r0
	cmp	r5, #0
	ble	.LBB92_10
@ BB#1:                                 @ %.lr.ph.i.i
	ldr	r3, [r10, #32]
	mov	r1, #0
	mov	r0, r5
	add	r2, r3, #8
	add	r7, r3, #4
.LBB92_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r2]
	cmp	r6, #1
	blt	.LBB92_4
@ BB#3:                                 @   in Loop: Header=BB92_2 Depth=1
	ldr	r4, [r7]
	sub	r4, r4, #1
	mla	r1, r4, r6, r1
.LBB92_4:                               @   in Loop: Header=BB92_2 Depth=1
	add	r2, r2, #16
	add	r7, r7, #16
	subs	r0, r0, #1
	bne	.LBB92_2
@ BB#5:                                 @ %.lr.ph.i.1.i
	ldrb	r2, [r10, #25]
	add	r6, r3, #8
	add	r7, r3, #4
	mov	r3, #0
.LBB92_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6]
	cmp	r0, #0
	bge	.LBB92_8
@ BB#7:                                 @   in Loop: Header=BB92_6 Depth=1
	ldr	r4, [r7]
	sub	r4, r4, #1
	mla	r3, r4, r0, r3
.LBB92_8:                               @   in Loop: Header=BB92_6 Depth=1
	add	r6, r6, #16
	add	r7, r7, #16
	subs	r5, r5, #1
	bne	.LBB92_6
@ BB#9:                                 @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit.loopexit
	add	r0, r1, #1
	b	.LBB92_11
.LBB92_10:                              @ %_ZNK15halide_buffer_t3endEv.exit.thread.i
	ldrb	r2, [r10, #25]
	mov	r3, #0
	mov	r0, #1
.LBB92_11:                              @ %_ZNK15halide_buffer_t13size_in_bytesEv.exit
	add	r1, r2, #7
	sub	r0, r0, r3
	lsr	r1, r1, #3
	mul	r1, r1, r0
	mov	r0, r9
	bl	halide_malloc(PLT)
	mov	r1, r0
	mvn	r0, #0
	str	r1, [r10, #12]
	cmp	r1, #0
	beq	.LBB92_14
@ BB#12:
	mov	r0, r9
	mov	r1, r10
	mov	r2, r8
	bl	halide_device_malloc(PLT)
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.LBB92_14
@ BB#13:
	ldr	r1, [r10, #12]
	mov	r0, r9
	bl	halide_free(PLT)
	mov	r0, #0
	str	r0, [r10, #12]
	mov	r0, r6
.LBB92_14:
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end92:
	.size	halide_default_device_and_host_malloc, .Lfunc_end92-halide_default_device_and_host_malloc
	.cantunwind
	.fnend

	.section	.text.halide_default_device_and_host_free,"ax",%progbits
	.weak	halide_default_device_and_host_free
	.align	2
	.type	halide_default_device_and_host_free,%function
halide_default_device_and_host_free:    @ @halide_default_device_and_host_free
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r1
	mov	r6, r0
	bl	halide_device_free(PLT)
	ldr	r1, [r4, #12]
	mov	r5, r0
	cmp	r1, #0
	beq	.LBB93_2
@ BB#1:
	mov	r0, r6
	bl	halide_free(PLT)
	mov	r0, #0
	str	r0, [r4, #12]
.LBB93_2:
	ldrd	r0, r1, [r4, #16]
	bfc	r0, #0, #2
	strd	r0, r1, [r4, #16]
	mov	r0, r5
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end93:
	.size	halide_default_device_and_host_free, .Lfunc_end93-halide_default_device_and_host_free
	.cantunwind
	.fnend

	.section	.text.halide_device_and_host_free_as_destructor,"ax",%progbits
	.weak	halide_device_and_host_free_as_destructor
	.align	2
	.type	halide_device_and_host_free_as_destructor,%function
halide_device_and_host_free_as_destructor: @ @halide_device_and_host_free_as_destructor
	.fnstart
@ BB#0:
	b	halide_device_and_host_free(PLT)
.Lfunc_end94:
	.size	halide_device_and_host_free_as_destructor, .Lfunc_end94-halide_device_and_host_free_as_destructor
	.cantunwind
	.fnend

	.section	.text.halide_device_host_nop_free,"ax",%progbits
	.weak	halide_device_host_nop_free
	.align	2
	.type	halide_device_host_nop_free,%function
halide_device_host_nop_free:            @ @halide_device_host_nop_free
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end95:
	.size	halide_device_host_nop_free, .Lfunc_end95-halide_device_host_nop_free
	.cantunwind
	.fnend

	.section	.text.halide_float16_bits_to_float,"ax",%progbits
	.weak	halide_float16_bits_to_float
	.align	2
	.type	halide_float16_bits_to_float,%function
halide_float16_bits_to_float:           @ @halide_float16_bits_to_float
	.fnstart
@ BB#0:
	mov	r1, #-2147483648
	ubfx	r2, r0, #10, #5
	and	r1, r1, r0, lsl #16
	bfc	r0, #10, #22
	cmp	r0, #0
	beq	.LBB96_3
@ BB#1:
	cmp	r2, #0
	bne	.LBB96_3
@ BB#2:
	clz	r2, r0
	mov	r3, #864026624
	eor	r2, r2, #31
	mov	r12, #1
	add	r3, r3, r2, lsl #23
	bic	r0, r0, r12, lsl r2
	orr	r1, r3, r1
	rsb	r2, r2, #23
	orr	r0, r1, r0, lsl r2
	vmov	s0, r0
	bx	lr
.LBB96_3:
	lsl	r0, r0, #13
	mov	r3, #0
	cmp	r2, #0
	beq	.LBB96_7
@ BB#4:
	cmp	r2, #31
	bne	.LBB96_6
@ BB#5:
	movw	r3, #0
	movt	r3, #32640
	b	.LBB96_7
.LBB96_6:
	mov	r3, #939524096
	add	r3, r3, r2, lsl #23
.LBB96_7:
	orr	r0, r0, r1
	orr	r0, r0, r3
	vmov	s0, r0
	bx	lr
.Lfunc_end96:
	.size	halide_float16_bits_to_float, .Lfunc_end96-halide_float16_bits_to_float
	.cantunwind
	.fnend

	.section	.text.halide_float16_bits_to_double,"ax",%progbits
	.weak	halide_float16_bits_to_double
	.align	2
	.type	halide_float16_bits_to_double,%function
halide_float16_bits_to_double:          @ @halide_float16_bits_to_double
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	bl	halide_float16_bits_to_float(PLT)
	vcvt.f64.f32	d0, s0
	pop	{r11, pc}
.Lfunc_end97:
	.size	halide_float16_bits_to_double, .Lfunc_end97-halide_float16_bits_to_double
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
	.align	2
	.type	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t,%function
_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t: @ @_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
	.fnstart
@ BB#0:
	mov	r3, #4
	mov	r12, #0
	str	r3, [r2, #28]
	ldr	r3, [r1, #12]
	cmp	r3, #0
	beq	.LBB98_4
@ BB#1:
	ldr	r3, [r1, #16]
	mov	r12, #1
	cmp	r3, #0
	beq	.LBB98_4
@ BB#2:
	ldr	r3, [r1, #20]
	mov	r12, #2
	cmp	r3, #0
	beq	.LBB98_4
@ BB#3:
	ldr	r3, [r1, #24]
	mov	r12, #3
	cmp	r3, #0
	streq	r12, [r2, #28]
	b	.LBB98_5
.LBB98_4:
	str	r12, [r2, #28]
.LBB98_5:                               @ %.loopexit16
	ldr	r1, [r1, #60]
	sub	r1, r1, #1
	cmp	r1, #7
	bhi	.LBB98_9
@ BB#6:                                 @ %.loopexit16
	lsl	r1, r1, #2
	adr	r3, .LJTI98_0
	ldr	r1, [r1, r3]
	add	pc, r1, r3
@ BB#7:
	.align	2
.LJTI98_0:
	.long	.LBB98_8-.LJTI98_0
	.long	.LBB98_10-.LJTI98_0
	.long	.LBB98_9-.LJTI98_0
	.long	.LBB98_11-.LJTI98_0
	.long	.LBB98_9-.LJTI98_0
	.long	.LBB98_9-.LJTI98_0
	.long	.LBB98_9-.LJTI98_0
	.long	.LBB98_12-.LJTI98_0
.LBB98_8:
	movw	r0, #2049
	b	.LBB98_13
.LBB98_9:
	ldr	r1, .LCPI98_0
	ldr	r12, .LCPI98_1
	ldr	r3, .LCPI98_2
.LPC98_0:
	add	r2, pc, r1
	add	r1, r12, r2
	add	r2, r3, r2
	b	halide_error_failed_to_upgrade_buffer_t(PLT)
.LBB98_10:
	movw	r0, #4097
	b	.LBB98_13
.LBB98_11:
	movw	r0, #8193
	b	.LBB98_13
.LBB98_12:
	movw	r0, #16385
.LBB98_13:
	movt	r0, #1
	str	r0, [r2, #24]
	mov	r0, #0
	bx	lr
	.align	2
@ BB#14:
.LCPI98_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC98_0+8)
.LCPI98_1:
	.long	.L.str.79(GOTOFF)
.LCPI98_2:
	.long	.L.str.1.80(GOTOFF)
.Lfunc_end98:
	.size	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t, .Lfunc_end98-_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_upgrade_buffer_t,"ax",%progbits
	.weak	halide_upgrade_buffer_t
	.align	2
	.type	halide_upgrade_buffer_t,%function
halide_upgrade_buffer_t:                @ @halide_upgrade_buffer_t
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r5, r2
	mov	r10, r0
	ldr	r0, [r5, #8]
	mov	r9, r1
	cmp	r0, #0
	bne	.LBB99_2
@ BB#1:
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	orrs	r1, r2, r1
	beq	.LBB99_12
.LBB99_2:
	ldrb	r1, [r3, #25]
	ldr	r2, [r5, #60]
	add	r1, r1, #7
	cmp	r2, r1, lsr #3
	bne	.LBB99_5
@ BB#3:
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	str	r0, [r3, #12]
	orrs	r0, r2, r1
	beq	.LBB99_9
@ BB#4:
	ldm	r2, {r0, r1, r2}
	b	.LBB99_14
.LBB99_5:
	mov	r0, r10
	mov	r1, #1024
	add	r8, r3, #24
	bl	halide_malloc(PLT)
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.LBB99_7
@ BB#6:
	mov	r0, #0
	mov	r7, r6
	strb	r0, [r7, #1023]!
.LBB99_7:                               @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI99_0
	ldr	r1, .LCPI99_1
.LPC99_0:
	add	r4, pc, r0
	mov	r0, r6
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r5, #60]
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r7
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI99_2
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI99_3
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_type_to_string(PLT)
	ldr	r1, .LCPI99_4
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r8, .LCPI99_5
	cmp	r6, #0
	mov	r2, r6
	mov	r5, r0
	addeq	r2, r8, r4
	mov	r0, r10
	mov	r1, r9
	bl	halide_error_failed_to_upgrade_buffer_t(PLT)
	mov	r7, r0
	cmp	r6, #0
	beq	.LBB99_10
@ BB#8:
	rsb	r0, r6, #1
	mov	r1, r6
	add	r2, r0, r5
	mov	r0, r10
	asr	r3, r2, #31
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	b	.LBB99_11
.LBB99_9:
	mov	r0, #0
	b	.LBB99_13
.LBB99_10:
	ldr	r0, .LCPI99_6
.LPC99_1:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, r10
	bl	halide_error(PLT)
.LBB99_11:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev.exit
	mov	r0, r10
	mov	r1, r6
	bl	halide_free(PLT)
	b	.LBB99_18
.LBB99_12:                              @ %.thread
	mov	r0, #0
	str	r0, [r3, #12]
.LBB99_13:                              @ %.preheader
	mov	r1, #0
	mov	r2, #0
.LBB99_14:                              @ %.preheader
	stm	r3, {r0, r1, r2}
	ldr	r0, [r3, #28]
	cmp	r0, #1
	blt	.LBB99_17
@ BB#15:                                @ %.lr.ph
	ldr	r7, [r3, #32]
	add	r1, r5, #44
	add	r2, r5, #12
	add	r6, r5, #28
.LBB99_16:                              @ =>This Inner Loop Header: Depth=1
	ldr	r4, [r1], #4
	subs	r0, r0, #1
	str	r4, [r7]
	ldr	r4, [r2], #4
	str	r4, [r7, #4]
	ldr	r4, [r6], #4
	str	r4, [r7, #8]
	add	r7, r7, #16
	bne	.LBB99_16
.LBB99_17:                              @ %._crit_edge
	ldrb	r1, [r5, #65]
	mov	r7, #0
	add	r0, r3, #16
	ldrb	r6, [r5, #64]
	cmp	r1, #0
	orrne	r6, r6, #2
	strd	r6, r7, [r0]
.LBB99_18:
	mov	r0, r7
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#19:
.LCPI99_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC99_0+8)
.LCPI99_1:
	.long	.L.str.2.81(GOTOFF)
.LCPI99_2:
	.long	.L.str.54(GOTOFF)
.LCPI99_3:
	.long	.L.str.4.83(GOTOFF)
.LCPI99_4:
	.long	.L.str.8.99(GOTOFF)
.LCPI99_5:
	.long	.L.str.21.164(GOTOFF)
.LCPI99_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC99_1+8)
.Lfunc_end99:
	.size	halide_upgrade_buffer_t, .Lfunc_end99-halide_upgrade_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_downgrade_buffer_t,"ax",%progbits
	.weak	halide_downgrade_buffer_t
	.align	2
	.type	halide_downgrade_buffer_t,%function
halide_downgrade_buffer_t:              @ @halide_downgrade_buffer_t
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r5, r3
	mov	r7, r2
	mov	r8, r1
	mov	r9, r0
	mov	r0, r5
	mov	r1, #0
	mov	r2, #72
	bl	memset(PLT)
	ldr	r0, [r7, #28]
	cmp	r0, #5
	blt	.LBB100_2
@ BB#1:
	ldr	r0, .LCPI100_0
	ldr	r1, .LCPI100_1
.LPC100_0:
	add	r0, pc, r0
	add	r2, r1, r0
	mov	r0, r9
	mov	r1, r8
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	halide_error_failed_to_downgrade_buffer_t(PLT)
.LBB100_2:
	ldr	r1, [r7, #12]
	cmp	r0, #1
	str	r1, [r5, #8]
	blt	.LBB100_5
@ BB#3:                                 @ %.lr.ph
	ldr	r3, [r7, #32]
	add	r0, r5, #44
	add	r1, r5, #12
	add	r2, r5, #28
	mov	r4, #0
.LBB100_4:                              @ =>This Inner Loop Header: Depth=1
	ldr	r6, [r3]
	add	r4, r4, #1
	str	r6, [r0], #4
	ldr	r6, [r3, #4]
	str	r6, [r1], #4
	ldr	r6, [r3, #8]
	add	r3, r3, #16
	str	r6, [r2], #4
	ldr	r6, [r7, #28]
	cmp	r4, r6
	blt	.LBB100_4
.LBB100_5:                              @ %._crit_edge
	ldrb	r0, [r7, #25]
	mov	r1, r8
	mov	r2, r7
	mov	r3, r5
	add	r0, r0, #7
	lsr	r0, r0, #3
	str	r0, [r5, #60]
	mov	r0, r9
	pop	{r4, r5, r6, r7, r8, r9, r11, lr}
	b	halide_downgrade_buffer_t_device_fields(PLT)
	.align	2
@ BB#6:
.LCPI100_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC100_0+8)
.LCPI100_1:
	.long	.L.str.6.86(GOTOFF)
.Lfunc_end100:
	.size	halide_downgrade_buffer_t, .Lfunc_end100-halide_downgrade_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_downgrade_buffer_t_device_fields,"ax",%progbits
	.weak	halide_downgrade_buffer_t_device_fields
	.align	2
	.type	halide_downgrade_buffer_t_device_fields,%function
halide_downgrade_buffer_t_device_fields: @ @halide_downgrade_buffer_t_device_fields
	.fnstart
@ BB#0:
	.save	{r4, r5, r7, r10, r11, lr}
	push	{r4, r5, r7, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r5, r2
	mov	r4, r3
	ldrb	r0, [r5, #16]
	and	r1, r0, #1
	strb	r1, [r4, #64]
	ubfx	r0, r0, #1, #1
	strb	r0, [r4, #65]
	ldr	r2, [r5]
	ldr	r1, [r5, #4]
	ldm	r4, {r0, r7}
	orrs	r3, r2, r1
	beq	.LBB101_3
@ BB#1:
	orrs	r3, r0, r7
	beq	.LBB101_6
@ BB#2:
	str	r2, [r0]
	str	r1, [r0, #4]
	ldr	r1, [r5, #8]
	str	r1, [r0, #8]
	mov	r0, #0
	pop	{r4, r5, r7, r10, r11, pc}
.LBB101_3:
	orrs	r1, r0, r7
	beq	.LBB101_5
@ BB#4:
	bl	free(PLT)
	mov	r0, #0
	str	r0, [r4]
	str	r0, [r4, #4]
.LBB101_5:
	mov	r0, #0
	pop	{r4, r5, r7, r10, r11, pc}
.LBB101_6:
	mov	r0, #16
	bl	malloc(PLT)
	ldm	r5, {r1, r2}
	stm	r0, {r1, r2}
	ldr	r1, [r5, #8]
	str	r1, [r0, #8]
	mov	r1, #0
	strd	r0, r1, [r4]
	mov	r0, #0
	pop	{r4, r5, r7, r10, r11, pc}
.Lfunc_end101:
	.size	halide_downgrade_buffer_t_device_fields, .Lfunc_end101-halide_downgrade_buffer_t_device_fields
	.cantunwind
	.fnend

	.section	.text.halide_copy_to_host_legacy,"ax",%progbits
	.weak	halide_copy_to_host_legacy
	.align	2
	.type	halide_copy_to_host_legacy,%function
halide_copy_to_host_legacy:             @ @halide_copy_to_host_legacy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#104
	sub	sp, sp, #104
	vmov.i32	q8, #0x0
	mov	r5, r0
	mov	r0, #0
	sub	r2, r11, #56
	str	r0, [r11, #-20]
	mov	r0, r2
	vst1.64	{d16, d17}, [r0]!
	mov	r4, r1
	vst1.64	{d16, d17}, [r0]
	mov	r0, sp
	add	r1, r0, #48
	str	r0, [r11, #-24]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t(PLT)
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB102_4
@ BB#1:
	ldr	r0, .LCPI102_0
	sub	r3, r11, #56
	ldr	r7, .LCPI102_1
	mov	r2, r4
.LPC102_0:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB102_4
@ BB#2:                                 @ %.critedge
	sub	r1, r11, #56
	mov	r0, r5
	bl	halide_copy_to_host(PLT)
	cmp	r0, #0
	bne	.LBB102_4
@ BB#3:
	ldr	r0, .LCPI102_2
	sub	r2, r11, #56
	mov	r3, r4
.LPC102_1:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	mov	r6, r0
	cmp	r6, #0
	movwne	r6, #1
.LBB102_4:                              @ %.critedge1
	mov	r0, r6
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#5:
.LCPI102_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC102_0+8)
.LCPI102_1:
	.long	.L.str.79(GOTOFF)
.LCPI102_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC102_1+8)
.Lfunc_end102:
	.size	halide_copy_to_host_legacy, .Lfunc_end102-halide_copy_to_host_legacy
	.cantunwind
	.fnend

	.section	.text.halide_copy_to_device_legacy,"ax",%progbits
	.weak	halide_copy_to_device_legacy
	.align	2
	.type	halide_copy_to_device_legacy,%function
halide_copy_to_device_legacy:           @ @halide_copy_to_device_legacy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#104
	sub	sp, sp, #104
	vmov.i32	q8, #0x0
	mov	r6, r2
	mov	r5, r0
	mov	r0, #0
	add	r2, sp, #64
	str	r0, [sp, #100]
	mov	r0, r2
	mov	r4, r1
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	mov	r0, sp
	add	r1, r0, #48
	str	r0, [sp, #96]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t(PLT)
	mov	r7, #1
	cmp	r0, #0
	bne	.LBB103_4
@ BB#1:
	ldr	r0, .LCPI103_0
	add	r3, sp, #64
	ldr	r8, .LCPI103_1
	mov	r2, r4
.LPC103_0:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB103_4
@ BB#2:                                 @ %.critedge
	add	r1, sp, #64
	mov	r0, r5
	mov	r2, r6
	bl	halide_copy_to_device(PLT)
	cmp	r0, #0
	bne	.LBB103_4
@ BB#3:
	ldr	r0, .LCPI103_2
	add	r2, sp, #64
	mov	r3, r4
.LPC103_1:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, r5
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	mov	r7, r0
	cmp	r7, #0
	movwne	r7, #1
.LBB103_4:                              @ %.critedge1
	mov	r0, r7
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#5:
.LCPI103_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC103_0+8)
.LCPI103_1:
	.long	.L.str.79(GOTOFF)
.LCPI103_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC103_1+8)
.Lfunc_end103:
	.size	halide_copy_to_device_legacy, .Lfunc_end103-halide_copy_to_device_legacy
	.cantunwind
	.fnend

	.section	.text.halide_device_sync_legacy,"ax",%progbits
	.weak	halide_device_sync_legacy
	.align	2
	.type	halide_device_sync_legacy,%function
halide_device_sync_legacy:              @ @halide_device_sync_legacy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#104
	sub	sp, sp, #104
	vmov.i32	q8, #0x0
	mov	r5, r0
	mov	r0, #0
	sub	r2, r11, #56
	str	r0, [r11, #-20]
	mov	r0, r2
	vst1.64	{d16, d17}, [r0]!
	mov	r4, r1
	vst1.64	{d16, d17}, [r0]
	mov	r0, sp
	add	r1, r0, #48
	str	r0, [r11, #-24]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t(PLT)
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB104_4
@ BB#1:
	ldr	r0, .LCPI104_0
	sub	r3, r11, #56
	ldr	r7, .LCPI104_1
	mov	r2, r4
.LPC104_0:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB104_4
@ BB#2:                                 @ %.critedge
	sub	r1, r11, #56
	mov	r0, r5
	bl	halide_device_sync(PLT)
	cmp	r0, #0
	bne	.LBB104_4
@ BB#3:
	ldr	r0, .LCPI104_2
	sub	r2, r11, #56
	mov	r3, r4
.LPC104_1:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	mov	r6, r0
	cmp	r6, #0
	movwne	r6, #1
.LBB104_4:                              @ %.critedge1
	mov	r0, r6
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#5:
.LCPI104_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC104_0+8)
.LCPI104_1:
	.long	.L.str.79(GOTOFF)
.LCPI104_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC104_1+8)
.Lfunc_end104:
	.size	halide_device_sync_legacy, .Lfunc_end104-halide_device_sync_legacy
	.cantunwind
	.fnend

	.section	.text.halide_device_malloc_legacy,"ax",%progbits
	.weak	halide_device_malloc_legacy
	.align	2
	.type	halide_device_malloc_legacy,%function
halide_device_malloc_legacy:            @ @halide_device_malloc_legacy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#104
	sub	sp, sp, #104
	vmov.i32	q8, #0x0
	mov	r6, r2
	mov	r5, r0
	mov	r0, #0
	add	r2, sp, #64
	str	r0, [sp, #100]
	mov	r0, r2
	mov	r4, r1
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	mov	r0, sp
	add	r1, r0, #48
	str	r0, [sp, #96]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t(PLT)
	mov	r7, #1
	cmp	r0, #0
	bne	.LBB105_4
@ BB#1:
	ldr	r0, .LCPI105_0
	add	r3, sp, #64
	ldr	r8, .LCPI105_1
	mov	r2, r4
.LPC105_0:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB105_4
@ BB#2:                                 @ %.critedge
	add	r1, sp, #64
	mov	r0, r5
	mov	r2, r6
	bl	halide_device_malloc(PLT)
	cmp	r0, #0
	bne	.LBB105_4
@ BB#3:
	ldr	r0, .LCPI105_2
	add	r2, sp, #64
	mov	r3, r4
.LPC105_1:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, r5
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	mov	r7, r0
	cmp	r7, #0
	movwne	r7, #1
.LBB105_4:                              @ %.critedge1
	mov	r0, r7
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#5:
.LCPI105_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC105_0+8)
.LCPI105_1:
	.long	.L.str.79(GOTOFF)
.LCPI105_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC105_1+8)
.Lfunc_end105:
	.size	halide_device_malloc_legacy, .Lfunc_end105-halide_device_malloc_legacy
	.cantunwind
	.fnend

	.section	.text.halide_device_free_legacy,"ax",%progbits
	.weak	halide_device_free_legacy
	.align	2
	.type	halide_device_free_legacy,%function
halide_device_free_legacy:              @ @halide_device_free_legacy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#104
	sub	sp, sp, #104
	vmov.i32	q8, #0x0
	mov	r5, r0
	mov	r0, #0
	sub	r2, r11, #56
	str	r0, [r11, #-20]
	mov	r0, r2
	vst1.64	{d16, d17}, [r0]!
	mov	r4, r1
	vst1.64	{d16, d17}, [r0]
	mov	r0, sp
	add	r1, r0, #48
	str	r0, [r11, #-24]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	mov	r1, r4
	bl	_ZN6Halide7Runtime8Internal29guess_type_and_dimensionalityEPvP8buffer_tP15halide_buffer_t(PLT)
	mov	r6, #1
	cmp	r0, #0
	bne	.LBB106_4
@ BB#1:
	ldr	r0, .LCPI106_0
	sub	r3, r11, #56
	ldr	r7, .LCPI106_1
	mov	r2, r4
.LPC106_0:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB106_4
@ BB#2:                                 @ %.critedge
	sub	r1, r11, #56
	mov	r0, r5
	bl	halide_device_free(PLT)
	cmp	r0, #0
	bne	.LBB106_4
@ BB#3:
	ldr	r0, .LCPI106_2
	sub	r2, r11, #56
	mov	r3, r4
.LPC106_1:
	add	r0, pc, r0
	add	r1, r7, r0
	mov	r0, r5
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	mov	r6, r0
	cmp	r6, #0
	movwne	r6, #1
.LBB106_4:                              @ %.critedge1
	mov	r0, r6
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#5:
.LCPI106_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC106_0+8)
.LCPI106_1:
	.long	.L.str.79(GOTOFF)
.LCPI106_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC106_1+8)
.Lfunc_end106:
	.size	halide_device_free_legacy, .Lfunc_end106-halide_device_free_legacy
	.cantunwind
	.fnend

	.section	.text.halide_error_bounds_inference_call_failed,"ax",%progbits
	.weak	halide_error_bounds_inference_call_failed
	.align	2
	.type	halide_error_bounds_inference_call_failed,%function
halide_error_bounds_inference_call_failed: @ @halide_error_bounds_inference_call_failed
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#8
	sub	sp, sp, #8
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r2
	mov	r5, r0
	bl	halide_malloc(PLT)
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.LBB107_2
@ BB#1:
	mov	r0, #0
	mov	r7, r6
	strb	r0, [r7, #1023]!
.LBB107_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI107_0
	ldr	r1, .LCPI107_1
.LPC107_0:
	add	r4, pc, r0
	mov	r0, r6
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI107_2
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r8, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r8
	bl	halide_int64_to_string(PLT)
	cmp	r6, #0
	beq	.LBB107_4
@ BB#3:
	rsb	r1, r6, #1
	add	r2, r1, r0
	mov	r0, r5
	asr	r3, r2, #31
	mov	r1, r6
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r5
	mov	r1, r6
	b	.LBB107_5
.LBB107_4:
	ldr	r0, .LCPI107_3
	ldr	r1, .LCPI107_4
.LPC107_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r5
.LBB107_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r5
	mov	r1, r6
	bl	halide_free(PLT)
	mov	r0, r8
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI107_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC107_0+8)
.LCPI107_1:
	.long	.L.str.91(GOTOFF)
.LCPI107_2:
	.long	.L.str.1.92(GOTOFF)
.LCPI107_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC107_1+8)
.LCPI107_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end107:
	.size	halide_error_bounds_inference_call_failed, .Lfunc_end107-halide_error_bounds_inference_call_failed
	.cantunwind
	.fnend

	.section	.text.halide_error_extern_stage_failed,"ax",%progbits
	.weak	halide_error_extern_stage_failed
	.align	2
	.type	halide_error_extern_stage_failed,%function
halide_error_extern_stage_failed:       @ @halide_error_extern_stage_failed
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#8
	sub	sp, sp, #8
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r2
	mov	r5, r0
	bl	halide_malloc(PLT)
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.LBB108_2
@ BB#1:
	mov	r0, #0
	mov	r7, r6
	strb	r0, [r7, #1023]!
.LBB108_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI108_0
	ldr	r1, .LCPI108_1
.LPC108_0:
	add	r4, pc, r0
	mov	r0, r6
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI108_2
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r8, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r8
	bl	halide_int64_to_string(PLT)
	cmp	r6, #0
	beq	.LBB108_4
@ BB#3:
	rsb	r1, r6, #1
	add	r2, r1, r0
	mov	r0, r5
	asr	r3, r2, #31
	mov	r1, r6
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r5
	mov	r1, r6
	b	.LBB108_5
.LBB108_4:
	ldr	r0, .LCPI108_3
	ldr	r1, .LCPI108_4
.LPC108_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r5
.LBB108_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r5
	mov	r1, r6
	bl	halide_free(PLT)
	mov	r0, r8
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI108_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC108_0+8)
.LCPI108_1:
	.long	.L.str.2.93(GOTOFF)
.LCPI108_2:
	.long	.L.str.1.92(GOTOFF)
.LCPI108_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC108_1+8)
.LCPI108_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end108:
	.size	halide_error_extern_stage_failed, .Lfunc_end108-halide_error_extern_stage_failed
	.cantunwind
	.fnend

	.section	.text.halide_error_explicit_bounds_too_small,"ax",%progbits
	.weak	halide_error_explicit_bounds_too_small
	.align	2
	.type	halide_error_explicit_bounds_too_small,%function
halide_error_explicit_bounds_too_small: @ @halide_error_explicit_bounds_too_small
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	mov	r7, r3
	mov	r9, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB109_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB109_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI109_0
	ldr	r1, .LCPI109_1
.LPC109_0:
	add	r10, pc, r0
	mov	r0, r5
	add	r2, r1, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI109_2
	add	r2, r1, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI109_3
	add	r2, r1, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	asr	r3, r7, #31
	mov	r4, #1
	mov	r1, r6
	str	r4, [sp]
	mov	r2, r7
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI109_4
	add	r7, r1, r10
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r6
	str	r4, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI109_5
	add	r2, r1, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #12]
	mov	r1, r6
	str	r4, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #16]
	mov	r1, r6
	str	r4, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI109_6
	add	r2, r1, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB109_4
@ BB#3:
	rsb	r1, r5, #1
	ldr	r4, [sp, #8]            @ 4-byte Reload
	add	r2, r1, r0
	mov	r1, r5
	asr	r3, r2, #31
	mov	r0, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB109_5
.LBB109_4:
	ldr	r0, .LCPI109_7
	ldr	r4, [sp, #8]            @ 4-byte Reload
	ldr	r1, .LCPI109_8
.LPC109_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB109_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI109_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC109_0+8)
.LCPI109_1:
	.long	.L.str.3.94(GOTOFF)
.LCPI109_2:
	.long	.L.str.4.95(GOTOFF)
.LCPI109_3:
	.long	.L.str.5.96(GOTOFF)
.LCPI109_4:
	.long	.L.str.6.97(GOTOFF)
.LCPI109_5:
	.long	.L.str.7.98(GOTOFF)
.LCPI109_6:
	.long	.L.str.8.99(GOTOFF)
.LCPI109_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC109_1+8)
.LCPI109_8:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end109:
	.size	halide_error_explicit_bounds_too_small, .Lfunc_end109-halide_error_explicit_bounds_too_small
	.cantunwind
	.fnend

	.section	.text.halide_error_bad_type,"ax",%progbits
	.weak	halide_error_bad_type
	.align	2
	.type	halide_error_bad_type,%function
halide_error_bad_type:                  @ @halide_error_bad_type
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#8
	sub	sp, sp, #8
	mov	r7, r1
	add	r6, r11, #8
	ldm	r6, {r1, r5, r6}
	mov	r4, r0
	strb	r3, [sp, #4]
	ldr	r0, [r11, #20]
	strb	r5, [sp, #5]
	strh	r0, [sp, #6]
	mov	r0, r4
	strb	r2, [sp]
	strb	r1, [sp, #1]
	mov	r1, #1024
	strh	r6, [sp, #2]
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB110_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB110_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI110_0
	ldr	r2, .LCPI110_1
.LPC110_0:
	add	r7, pc, r1
	mov	r1, r6
	add	r2, r2, r7
	bl	halide_string_to_string(PLT)
	add	r2, sp, #4
	mov	r1, r6
	bl	halide_type_to_string(PLT)
	ldr	r1, .LCPI110_2
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r2, sp
	mov	r1, r6
	bl	halide_type_to_string(PLT)
	cmp	r5, #0
	beq	.LBB110_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB110_5
.LBB110_4:
	ldr	r0, .LCPI110_3
	ldr	r1, .LCPI110_4
.LPC110_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB110_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #2
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#6:
.LCPI110_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC110_0+8)
.LCPI110_1:
	.long	.L.str.9.100(GOTOFF)
.LCPI110_2:
	.long	.L.str.10.101(GOTOFF)
.LCPI110_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC110_1+8)
.LCPI110_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end110:
	.size	halide_error_bad_type, .Lfunc_end110-halide_error_bad_type
	.cantunwind
	.fnend

	.section	.text.halide_error_access_out_of_bounds,"ax",%progbits
	.weak	halide_error_access_out_of_bounds
	.align	2
	.type	halide_error_access_out_of_bounds,%function
halide_error_access_out_of_bounds:      @ @halide_error_access_out_of_bounds
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	ldr	r8, [r11, #12]
	mov	r5, r3
	mov	r6, r2
	mov	r4, r1
	mov	r10, r0
	cmp	r5, r8
	bge	.LBB111_5
@ BB#1:
	mov	r0, r10
	mov	r1, #1024
	str	r6, [sp, #8]            @ 4-byte Spill
	bl	halide_malloc(PLT)
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.LBB111_3
@ BB#2:
	mov	r0, #0
	mov	r7, r6
	strb	r0, [r7, #1023]!
.LBB111_3:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	mov	r0, r6
	mov	r1, r7
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI111_6
	ldr	r2, .LCPI111_1
.LPC111_2:
	add	r4, pc, r1
	mov	r1, r7
	add	r2, r2, r4
	bl	halide_string_to_string(PLT)
	asr	r3, r5, #31
	mov	r9, #1
	mov	r1, r7
	str	r9, [sp]
	mov	r2, r5
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI111_7
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	asr	r3, r8, #31
	mov	r1, r7
	mov	r2, r8
	str	r9, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI111_3
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #8]            @ 4-byte Reload
	mov	r1, r7
	str	r9, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	cmp	r6, #0
	beq	.LBB111_10
@ BB#4:
	rsb	r1, r6, #1
	add	r2, r1, r0
	mov	r0, r10
	asr	r3, r2, #31
	mov	r1, r6
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r10
	mov	r1, r6
	b	.LBB111_11
.LBB111_5:
	ldr	r8, [r11, #16]
	ldr	r9, [r11, #8]
	cmp	r9, r8
	ble	.LBB111_15
@ BB#6:
	mov	r0, r10
	mov	r1, #1024
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB111_8
@ BB#7:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB111_8:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit1
	mov	r0, r5
	mov	r1, r7
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI111_0
	ldr	r2, .LCPI111_1
.LPC111_0:
	add	r4, pc, r1
	mov	r1, r7
	add	r2, r2, r4
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r9, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r9
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI111_2
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r8, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r8
	mov	r9, #1
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI111_3
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	asr	r3, r6, #31
	mov	r1, r7
	mov	r2, r6
	str	r9, [sp]
	bl	halide_int64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB111_12
@ BB#9:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r10
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r10
	mov	r1, r5
	b	.LBB111_13
.LBB111_10:
	ldr	r0, .LCPI111_8
	ldr	r1, .LCPI111_5
.LPC111_3:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r10
.LBB111_11:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r10
	mov	r1, r6
	b	.LBB111_14
.LBB111_12:
	ldr	r0, .LCPI111_4
	ldr	r1, .LCPI111_5
.LPC111_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r10
.LBB111_13:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit2
	bl	halide_error(PLT)
	mov	r0, r10
	mov	r1, r5
.LBB111_14:
	bl	halide_free(PLT)
.LBB111_15:
	mvn	r0, #3
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#16:
.LCPI111_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC111_0+8)
.LCPI111_1:
	.long	.L.str.11.102(GOTOFF)
.LCPI111_2:
	.long	.L.str.14.105(GOTOFF)
.LCPI111_3:
	.long	.L.str.13.104(GOTOFF)
.LCPI111_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC111_1+8)
.LCPI111_5:
	.long	.L.str.21.164(GOTOFF)
.LCPI111_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC111_2+8)
.LCPI111_7:
	.long	.L.str.12.103(GOTOFF)
.LCPI111_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC111_3+8)
.Lfunc_end111:
	.size	halide_error_access_out_of_bounds, .Lfunc_end111-halide_error_access_out_of_bounds
	.cantunwind
	.fnend

	.section	.text.halide_error_buffer_allocation_too_large,"ax",%progbits
	.weak	halide_error_buffer_allocation_too_large
	.align	2
	.type	halide_error_buffer_allocation_too_large,%function
halide_error_buffer_allocation_too_large: @ @halide_error_buffer_allocation_too_large
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB112_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB112_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI112_0
	ldr	r1, .LCPI112_1
.LPC112_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI112_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	ldr	r1, .LCPI112_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB112_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB112_5
.LBB112_4:
	ldr	r0, .LCPI112_4
	ldr	r1, .LCPI112_5
.LPC112_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB112_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI112_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC112_0+8)
.LCPI112_1:
	.long	.L.str.15.106(GOTOFF)
.LCPI112_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI112_3:
	.long	.L.str.17.108(GOTOFF)
.LCPI112_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC112_1+8)
.LCPI112_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end112:
	.size	halide_error_buffer_allocation_too_large, .Lfunc_end112-halide_error_buffer_allocation_too_large
	.cantunwind
	.fnend

	.section	.text.halide_error_buffer_extents_negative,"ax",%progbits
	.weak	halide_error_buffer_extents_negative
	.align	2
	.type	halide_error_buffer_extents_negative,%function
halide_error_buffer_extents_negative:   @ @halide_error_buffer_extents_negative
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r10, r1
	mov	r1, #1024
	mov	r8, r3
	mov	r6, r2
	mov	r9, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB113_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB113_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI113_0
	ldr	r1, .LCPI113_1
.LPC113_0:
	add	r4, pc, r0
	mov	r0, r5
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r10
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI113_2
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	asr	r3, r6, #31
	mov	r10, #1
	mov	r1, r7
	str	r10, [sp]
	mov	r2, r6
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI113_3
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	asr	r3, r8, #31
	mov	r1, r7
	mov	r2, r8
	str	r10, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI113_4
	add	r2, r1, r4
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB113_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r9
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r9
	mov	r1, r5
	b	.LBB113_5
.LBB113_4:
	ldr	r0, .LCPI113_5
	ldr	r1, .LCPI113_6
.LPC113_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r9
.LBB113_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r9
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #27
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI113_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC113_0+8)
.LCPI113_1:
	.long	.L.str.18.109(GOTOFF)
.LCPI113_2:
	.long	.L.str.19.110(GOTOFF)
.LCPI113_3:
	.long	.L.str.20.111(GOTOFF)
.LCPI113_4:
	.long	.L.str.8.99(GOTOFF)
.LCPI113_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC113_1+8)
.LCPI113_6:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end113:
	.size	halide_error_buffer_extents_negative, .Lfunc_end113-halide_error_buffer_extents_negative
	.cantunwind
	.fnend

	.section	.text.halide_error_buffer_extents_too_large,"ax",%progbits
	.weak	halide_error_buffer_extents_too_large
	.align	2
	.type	halide_error_buffer_extents_too_large,%function
halide_error_buffer_extents_too_large:  @ @halide_error_buffer_extents_too_large
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB114_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB114_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI114_0
	ldr	r1, .LCPI114_1
.LPC114_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI114_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI114_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB114_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB114_5
.LBB114_4:
	ldr	r0, .LCPI114_4
	ldr	r1, .LCPI114_5
.LPC114_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB114_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #5
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI114_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC114_0+8)
.LCPI114_1:
	.long	.L.str.21.112(GOTOFF)
.LCPI114_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI114_3:
	.long	.L.str.17.108(GOTOFF)
.LCPI114_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC114_1+8)
.LCPI114_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end114:
	.size	halide_error_buffer_extents_too_large, .Lfunc_end114-halide_error_buffer_extents_too_large
	.cantunwind
	.fnend

	.section	.text.halide_error_constraints_make_required_region_smaller,"ax",%progbits
	.weak	halide_error_constraints_make_required_region_smaller
	.align	2
	.type	halide_error_constraints_make_required_region_smaller,%function
halide_error_constraints_make_required_region_smaller: @ @halide_error_constraints_make_required_region_smaller
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	ldr	r2, [r11, #16]
	mov	r8, r3
	mov	r6, r1
	ldr	r3, [r11, #12]
	add	r1, r8, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	sub	r1, r1, #1
	str	r1, [sp, #4]            @ 4-byte Spill
	add	r1, r3, r2
	sub	r4, r1, #1
	mov	r1, #1024
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB115_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB115_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI115_0
	ldr	r1, .LCPI115_1
.LPC115_0:
	add	r10, pc, r0
	mov	r0, r5
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI115_2
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI115_3
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #12]
	mov	r9, #1
	mov	r1, r7
	str	r9, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI115_4
	add	r6, r1, r10
	mov	r1, r7
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	asr	r3, r4, #31
	mov	r1, r7
	mov	r2, r4
	str	r9, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI115_5
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI115_6
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	asr	r3, r8, #31
	mov	r1, r7
	mov	r2, r8
	str	r9, [sp]
	bl	halide_int64_to_string(PLT)
	mov	r1, r7
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #4]            @ 4-byte Reload
	mov	r1, r7
	str	r9, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI115_7
	add	r2, r1, r10
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB115_4
@ BB#3:
	rsb	r1, r5, #1
	ldr	r4, [sp, #8]            @ 4-byte Reload
	add	r2, r1, r0
	mov	r1, r5
	asr	r3, r2, #31
	mov	r0, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB115_5
.LBB115_4:
	ldr	r0, .LCPI115_8
	ldr	r4, [sp, #8]            @ 4-byte Reload
	ldr	r1, .LCPI115_9
.LPC115_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB115_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #6
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI115_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC115_0+8)
.LCPI115_1:
	.long	.L.str.22.113(GOTOFF)
.LCPI115_2:
	.long	.L.str.23.114(GOTOFF)
.LCPI115_3:
	.long	.L.str.24.115(GOTOFF)
.LCPI115_4:
	.long	.L.str.6.97(GOTOFF)
.LCPI115_5:
	.long	.L.str.25.116(GOTOFF)
.LCPI115_6:
	.long	.L.str.26.117(GOTOFF)
.LCPI115_7:
	.long	.L.str.27.118(GOTOFF)
.LCPI115_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC115_1+8)
.LCPI115_9:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end115:
	.size	halide_error_constraints_make_required_region_smaller, .Lfunc_end115-halide_error_constraints_make_required_region_smaller
	.cantunwind
	.fnend

	.section	.text.halide_error_constraint_violated,"ax",%progbits
	.weak	halide_error_constraint_violated
	.align	2
	.type	halide_error_constraint_violated,%function
halide_error_constraint_violated:       @ @halide_error_constraint_violated
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r4, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r7, r2
	mov	r10, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB116_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB116_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI116_0
	ldr	r1, .LCPI116_1
.LPC116_0:
	add	r8, pc, r0
	mov	r0, r5
	add	r2, r1, r8
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI116_2
	add	r4, r1, r8
	mov	r1, r6
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	asr	r3, r7, #31
	mov	r9, #1
	mov	r1, r6
	str	r9, [sp]
	mov	r2, r7
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI116_3
	add	r2, r1, r8
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #8]            @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r6
	str	r9, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI116_4
	add	r2, r1, r8
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB116_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r10
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r10
	mov	r1, r5
	b	.LBB116_5
.LBB116_4:
	ldr	r0, .LCPI116_5
	ldr	r1, .LCPI116_6
.LPC116_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r10
.LBB116_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r10
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #7
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI116_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC116_0+8)
.LCPI116_1:
	.long	.L.str.28.119(GOTOFF)
.LCPI116_2:
	.long	.L.str.29(GOTOFF)
.LCPI116_3:
	.long	.L.str.30.120(GOTOFF)
.LCPI116_4:
	.long	.L.str.8.99(GOTOFF)
.LCPI116_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC116_1+8)
.LCPI116_6:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end116:
	.size	halide_error_constraint_violated, .Lfunc_end116-halide_error_constraint_violated
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_small_i64,"ax",%progbits
	.weak	halide_error_param_too_small_i64
	.align	2
	.type	halide_error_param_too_small_i64,%function
halide_error_param_too_small_i64:       @ @halide_error_param_too_small_i64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB117_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB117_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI117_0
	ldr	r1, .LCPI117_1
.LPC117_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI117_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI117_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB117_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB117_5
.LBB117_4:
	ldr	r0, .LCPI117_4
	ldr	r1, .LCPI117_5
.LPC117_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB117_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #8
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI117_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC117_0+8)
.LCPI117_1:
	.long	.L.str.31(GOTOFF)
.LCPI117_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI117_3:
	.long	.L.str.32(GOTOFF)
.LCPI117_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC117_1+8)
.LCPI117_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end117:
	.size	halide_error_param_too_small_i64, .Lfunc_end117-halide_error_param_too_small_i64
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_small_u64,"ax",%progbits
	.weak	halide_error_param_too_small_u64
	.align	2
	.type	halide_error_param_too_small_u64,%function
halide_error_param_too_small_u64:       @ @halide_error_param_too_small_u64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB118_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB118_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI118_0
	ldr	r1, .LCPI118_1
.LPC118_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI118_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	ldr	r1, .LCPI118_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB118_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB118_5
.LBB118_4:
	ldr	r0, .LCPI118_4
	ldr	r1, .LCPI118_5
.LPC118_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB118_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #8
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI118_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC118_0+8)
.LCPI118_1:
	.long	.L.str.31(GOTOFF)
.LCPI118_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI118_3:
	.long	.L.str.32(GOTOFF)
.LCPI118_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC118_1+8)
.LCPI118_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end118:
	.size	halide_error_param_too_small_u64, .Lfunc_end118-halide_error_param_too_small_u64
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_small_f64,"ax",%progbits
	.weak	halide_error_param_too_small_f64
	.align	2
	.type	halide_error_param_too_small_f64,%function
halide_error_param_too_small_f64:       @ @halide_error_param_too_small_f64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.vsave	{d8, d9}
	vpush	{d8, d9}
	mov	r8, r1
	mov	r1, #1024
	vmov.f64	d8, d1
	mov	r4, r0
	vmov.f64	d9, d0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB119_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB119_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI119_0
	ldr	r1, .LCPI119_1
.LPC119_0:
	add	r7, pc, r0
	mov	r0, r5
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI119_2
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	vmov.f64	d0, d9
	mov	r2, #1
	bl	halide_double_to_string(PLT)
	ldr	r1, .LCPI119_3
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	vmov.f64	d0, d8
	mov	r2, #1
	bl	halide_double_to_string(PLT)
	cmp	r5, #0
	beq	.LBB119_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB119_5
.LBB119_4:
	ldr	r0, .LCPI119_4
	ldr	r1, .LCPI119_5
.LPC119_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB119_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #8
	vpop	{d8, d9}
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI119_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC119_0+8)
.LCPI119_1:
	.long	.L.str.31(GOTOFF)
.LCPI119_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI119_3:
	.long	.L.str.32(GOTOFF)
.LCPI119_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC119_1+8)
.LCPI119_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end119:
	.size	halide_error_param_too_small_f64, .Lfunc_end119-halide_error_param_too_small_f64
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_large_i64,"ax",%progbits
	.weak	halide_error_param_too_large_i64
	.align	2
	.type	halide_error_param_too_large_i64,%function
halide_error_param_too_large_i64:       @ @halide_error_param_too_large_i64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB120_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB120_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI120_0
	ldr	r1, .LCPI120_1
.LPC120_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI120_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI120_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_int64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB120_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB120_5
.LBB120_4:
	ldr	r0, .LCPI120_4
	ldr	r1, .LCPI120_5
.LPC120_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB120_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #9
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI120_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC120_0+8)
.LCPI120_1:
	.long	.L.str.31(GOTOFF)
.LCPI120_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI120_3:
	.long	.L.str.33.121(GOTOFF)
.LCPI120_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC120_1+8)
.LCPI120_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end120:
	.size	halide_error_param_too_large_i64, .Lfunc_end120-halide_error_param_too_large_i64
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_large_u64,"ax",%progbits
	.weak	halide_error_param_too_large_u64
	.align	2
	.type	halide_error_param_too_large_u64,%function
halide_error_param_too_large_u64:       @ @halide_error_param_too_large_u64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r8, r1
	mov	r1, #1024
	str	r3, [sp, #8]            @ 4-byte Spill
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB121_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB121_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI121_0
	ldr	r1, .LCPI121_1
.LPC121_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI121_2
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r3, [sp, #8]            @ 4-byte Reload
	mov	r6, #1
	mov	r1, r7
	mov	r2, r10
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	ldr	r1, .LCPI121_3
	add	r2, r1, r9
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r7
	ldr	r3, [r11, #12]
	str	r6, [sp]
	bl	halide_uint64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB121_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB121_5
.LBB121_4:
	ldr	r0, .LCPI121_4
	ldr	r1, .LCPI121_5
.LPC121_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB121_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #9
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI121_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC121_0+8)
.LCPI121_1:
	.long	.L.str.31(GOTOFF)
.LCPI121_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI121_3:
	.long	.L.str.33.121(GOTOFF)
.LCPI121_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC121_1+8)
.LCPI121_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end121:
	.size	halide_error_param_too_large_u64, .Lfunc_end121-halide_error_param_too_large_u64
	.cantunwind
	.fnend

	.section	.text.halide_error_param_too_large_f64,"ax",%progbits
	.weak	halide_error_param_too_large_f64
	.align	2
	.type	halide_error_param_too_large_f64,%function
halide_error_param_too_large_f64:       @ @halide_error_param_too_large_f64
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.vsave	{d8, d9}
	vpush	{d8, d9}
	mov	r8, r1
	mov	r1, #1024
	vmov.f64	d8, d1
	mov	r4, r0
	vmov.f64	d9, d0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB122_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB122_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI122_0
	ldr	r1, .LCPI122_1
.LPC122_0:
	add	r7, pc, r0
	mov	r0, r5
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI122_2
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	vmov.f64	d0, d9
	mov	r2, #1
	bl	halide_double_to_string(PLT)
	ldr	r1, .LCPI122_3
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	vmov.f64	d0, d8
	mov	r2, #1
	bl	halide_double_to_string(PLT)
	cmp	r5, #0
	beq	.LBB122_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB122_5
.LBB122_4:
	ldr	r0, .LCPI122_4
	ldr	r1, .LCPI122_5
.LPC122_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB122_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #9
	vpop	{d8, d9}
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI122_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC122_0+8)
.LCPI122_1:
	.long	.L.str.31(GOTOFF)
.LCPI122_2:
	.long	.L.str.16.107(GOTOFF)
.LCPI122_3:
	.long	.L.str.33.121(GOTOFF)
.LCPI122_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC122_1+8)
.LCPI122_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end122:
	.size	halide_error_param_too_large_f64, .Lfunc_end122-halide_error_param_too_large_f64
	.cantunwind
	.fnend

	.section	.text.halide_error_out_of_memory,"ax",%progbits
	.weak	halide_error_out_of_memory
	.align	2
	.type	halide_error_out_of_memory,%function
halide_error_out_of_memory:             @ @halide_error_out_of_memory
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	ldr	r1, .LCPI123_0
	ldr	r2, .LCPI123_1
.LPC123_0:
	add	r1, pc, r1
	add	r1, r2, r1
	bl	halide_error(PLT)
	mvn	r0, #10
	pop	{r11, pc}
	.align	2
@ BB#1:
.LCPI123_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC123_0+8)
.LCPI123_1:
	.long	.L.str.34(GOTOFF)
.Lfunc_end123:
	.size	halide_error_out_of_memory, .Lfunc_end123-halide_error_out_of_memory
	.cantunwind
	.fnend

	.section	.text.halide_error_buffer_argument_is_null,"ax",%progbits
	.weak	halide_error_buffer_argument_is_null
	.align	2
	.type	halide_error_buffer_argument_is_null,%function
halide_error_buffer_argument_is_null:   @ @halide_error_buffer_argument_is_null
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r8, r1
	mov	r1, #1024
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB124_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB124_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI124_0
	ldr	r1, .LCPI124_1
.LPC124_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI124_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB124_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB124_5
.LBB124_4:
	ldr	r0, .LCPI124_3
	ldr	r1, .LCPI124_4
.LPC124_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB124_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #11
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI124_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC124_0+8)
.LCPI124_1:
	.long	.L.str.35(GOTOFF)
.LCPI124_2:
	.long	.L.str.36.122(GOTOFF)
.LCPI124_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC124_1+8)
.LCPI124_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end124:
	.size	halide_error_buffer_argument_is_null, .Lfunc_end124-halide_error_buffer_argument_is_null
	.cantunwind
	.fnend

	.section	.text.halide_error_debug_to_file_failed,"ax",%progbits
	.weak	halide_error_debug_to_file_failed
	.align	2
	.type	halide_error_debug_to_file_failed,%function
halide_error_debug_to_file_failed:      @ @halide_error_debug_to_file_failed
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r10, r1
	mov	r1, #1024
	mov	r9, r3
	mov	r8, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB125_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB125_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI125_0
	ldr	r1, .LCPI125_1
.LPC125_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r10
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI125_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI125_3
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r9, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r9
	bl	halide_int64_to_string(PLT)
	cmp	r5, #0
	beq	.LBB125_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB125_5
.LBB125_4:
	ldr	r0, .LCPI125_4
	ldr	r1, .LCPI125_5
.LPC125_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB125_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #12
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI125_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC125_0+8)
.LCPI125_1:
	.long	.L.str.37.123(GOTOFF)
.LCPI125_2:
	.long	.L.str.38(GOTOFF)
.LCPI125_3:
	.long	.L.str.39.124(GOTOFF)
.LCPI125_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC125_1+8)
.LCPI125_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end125:
	.size	halide_error_debug_to_file_failed, .Lfunc_end125-halide_error_debug_to_file_failed
	.cantunwind
	.fnend

	.section	.text.halide_error_failed_to_upgrade_buffer_t,"ax",%progbits
	.weak	halide_error_failed_to_upgrade_buffer_t
	.align	2
	.type	halide_error_failed_to_upgrade_buffer_t,%function
halide_error_failed_to_upgrade_buffer_t: @ @halide_error_failed_to_upgrade_buffer_t
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB126_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB126_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI126_0
	ldr	r1, .LCPI126_1
.LPC126_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI126_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB126_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB126_5
.LBB126_4:
	ldr	r0, .LCPI126_3
	ldr	r1, .LCPI126_4
.LPC126_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB126_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #28
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI126_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC126_0+8)
.LCPI126_1:
	.long	.L.str.40.125(GOTOFF)
.LCPI126_2:
	.long	.L.str.19.147(GOTOFF)
.LCPI126_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC126_1+8)
.LCPI126_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end126:
	.size	halide_error_failed_to_upgrade_buffer_t, .Lfunc_end126-halide_error_failed_to_upgrade_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_error_failed_to_downgrade_buffer_t,"ax",%progbits
	.weak	halide_error_failed_to_downgrade_buffer_t
	.align	2
	.type	halide_error_failed_to_downgrade_buffer_t,%function
halide_error_failed_to_downgrade_buffer_t: @ @halide_error_failed_to_downgrade_buffer_t
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB127_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB127_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI127_0
	ldr	r1, .LCPI127_1
.LPC127_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI127_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB127_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB127_5
.LBB127_4:
	ldr	r0, .LCPI127_3
	ldr	r1, .LCPI127_4
.LPC127_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB127_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #29
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI127_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC127_0+8)
.LCPI127_1:
	.long	.L.str.42(GOTOFF)
.LCPI127_2:
	.long	.L.str.19.147(GOTOFF)
.LCPI127_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC127_1+8)
.LCPI127_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end127:
	.size	halide_error_failed_to_downgrade_buffer_t, .Lfunc_end127-halide_error_failed_to_downgrade_buffer_t
	.cantunwind
	.fnend

	.section	.text.halide_error_unaligned_host_ptr,"ax",%progbits
	.weak	halide_error_unaligned_host_ptr
	.align	2
	.type	halide_error_unaligned_host_ptr,%function
halide_error_unaligned_host_ptr:        @ @halide_error_unaligned_host_ptr
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.pad	#8
	sub	sp, sp, #8
	mov	r8, r1
	mov	r1, #1024
	mov	r9, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB128_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB128_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI128_0
	ldr	r1, .LCPI128_1
.LPC128_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI128_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r9, #31
	str	r1, [sp]
	mov	r1, r7
	mov	r2, r9
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI128_3
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB128_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB128_5
.LBB128_4:
	ldr	r0, .LCPI128_4
	ldr	r1, .LCPI128_5
.LPC128_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB128_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #23
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI128_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC128_0+8)
.LCPI128_1:
	.long	.L.str.43(GOTOFF)
.LCPI128_2:
	.long	.L.str.44(GOTOFF)
.LCPI128_3:
	.long	.L.str.45(GOTOFF)
.LCPI128_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC128_1+8)
.LCPI128_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end128:
	.size	halide_error_unaligned_host_ptr, .Lfunc_end128-halide_error_unaligned_host_ptr
	.cantunwind
	.fnend

	.section	.text.halide_error_bad_fold,"ax",%progbits
	.weak	halide_error_bad_fold
	.align	2
	.type	halide_error_bad_fold,%function
halide_error_bad_fold:                  @ @halide_error_bad_fold
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r3
	mov	r10, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB129_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB129_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI129_0
	ldr	r1, .LCPI129_1
.LPC129_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r10
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI129_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI129_3
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI129_4
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB129_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB129_5
.LBB129_4:
	ldr	r0, .LCPI129_5
	ldr	r1, .LCPI129_6
.LPC129_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB129_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #24
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI129_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC129_0+8)
.LCPI129_1:
	.long	.L.str.46(GOTOFF)
.LCPI129_2:
	.long	.L.str.47.126(GOTOFF)
.LCPI129_3:
	.long	.L.str.48(GOTOFF)
.LCPI129_4:
	.long	.L.str.27.118(GOTOFF)
.LCPI129_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC129_1+8)
.LCPI129_6:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end129:
	.size	halide_error_bad_fold, .Lfunc_end129-halide_error_bad_fold
	.cantunwind
	.fnend

	.section	.text.halide_error_fold_factor_too_small,"ax",%progbits
	.weak	halide_error_fold_factor_too_small
	.align	2
	.type	halide_error_fold_factor_too_small,%function
halide_error_fold_factor_too_small:     @ @halide_error_fold_factor_too_small
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	mov	r10, r1
	mov	r1, #1024
	mov	r8, r3
	mov	r7, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.LBB130_2
@ BB#1:
	mov	r0, #0
	mov	r6, r5
	strb	r0, [r6, #1023]!
.LBB130_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI130_0
	ldr	r1, .LCPI130_1
.LPC130_0:
	add	r9, pc, r0
	mov	r0, r5
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r8, #31
	str	r1, [sp]
	mov	r1, r6
	mov	r2, r8
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI130_2
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI130_3
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, r6
	mov	r2, r10
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI130_4
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #8]
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI130_5
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r11, #12]
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r6
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI130_6
	add	r2, r1, r9
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB130_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB130_5
.LBB130_4:
	ldr	r0, .LCPI130_7
	ldr	r1, .LCPI130_8
.LPC130_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB130_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #25
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI130_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC130_0+8)
.LCPI130_1:
	.long	.L.str.49(GOTOFF)
.LCPI130_2:
	.long	.L.str.50(GOTOFF)
.LCPI130_3:
	.long	.L.str.47.126(GOTOFF)
.LCPI130_4:
	.long	.L.str.51(GOTOFF)
.LCPI130_5:
	.long	.L.str.29(GOTOFF)
.LCPI130_6:
	.long	.L.str.52(GOTOFF)
.LCPI130_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC130_1+8)
.LCPI130_8:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end130:
	.size	halide_error_fold_factor_too_small, .Lfunc_end130-halide_error_fold_factor_too_small
	.cantunwind
	.fnend

	.section	.text.halide_error_requirement_failed,"ax",%progbits
	.weak	halide_error_requirement_failed
	.align	2
	.type	halide_error_requirement_failed,%function
halide_error_requirement_failed:        @ @halide_error_requirement_failed
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r9, r1
	mov	r1, #1024
	mov	r8, r2
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB131_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB131_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI131_0
	ldr	r1, .LCPI131_1
.LPC131_0:
	add	r6, pc, r0
	mov	r0, r5
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r9
	bl	halide_string_to_string(PLT)
	ldr	r1, .LCPI131_2
	add	r2, r1, r6
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r8
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB131_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB131_5
.LBB131_4:
	ldr	r0, .LCPI131_3
	ldr	r1, .LCPI131_4
.LPC131_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB131_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #26
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#6:
.LCPI131_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC131_0+8)
.LCPI131_1:
	.long	.L.str.53(GOTOFF)
.LCPI131_2:
	.long	.L.str.54(GOTOFF)
.LCPI131_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC131_1+8)
.LCPI131_4:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end131:
	.size	halide_error_requirement_failed, .Lfunc_end131-halide_error_requirement_failed
	.cantunwind
	.fnend

	.section	.text.halide_error_specialize_fail,"ax",%progbits
	.weak	halide_error_specialize_fail
	.align	2
	.type	halide_error_specialize_fail,%function
halide_error_specialize_fail:           @ @halide_error_specialize_fail
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r6, r1
	mov	r1, #1024
	mov	r4, r0
	bl	halide_malloc(PLT)
	mov	r5, r0
	mov	r7, #0
	cmp	r5, #0
	beq	.LBB132_2
@ BB#1:
	mov	r0, #0
	mov	r7, r5
	strb	r0, [r7, #1023]!
.LBB132_2:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit
	ldr	r0, .LCPI132_0
	ldr	r1, .LCPI132_1
.LPC132_0:
	add	r0, pc, r0
	add	r2, r1, r0
	mov	r0, r5
	mov	r1, r7
	bl	halide_string_to_string(PLT)
	mov	r1, r7
	mov	r2, r6
	bl	halide_string_to_string(PLT)
	cmp	r5, #0
	beq	.LBB132_4
@ BB#3:
	rsb	r1, r5, #1
	add	r2, r1, r0
	mov	r0, r4
	asr	r3, r2, #31
	mov	r1, r5
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, r4
	mov	r1, r5
	b	.LBB132_5
.LBB132_4:
	ldr	r0, .LCPI132_2
	ldr	r1, .LCPI132_3
.LPC132_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r4
.LBB132_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_free(PLT)
	mvn	r0, #30
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#6:
.LCPI132_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC132_0+8)
.LCPI132_1:
	.long	.L.str.55(GOTOFF)
.LCPI132_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC132_1+8)
.LCPI132_3:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end132:
	.size	halide_error_specialize_fail, .Lfunc_end132-halide_error_specialize_fail
	.cantunwind
	.fnend

	.section	.text.halide_profiler_get_state,"ax",%progbits
	.weak	halide_profiler_get_state
	.align	2
	.type	halide_profiler_get_state,%function
halide_profiler_get_state:              @ @halide_profiler_get_state
	.fnstart
@ BB#0:
	ldr	r0, .LCPI133_0
	ldr	r1, .LCPI133_1
.LPC133_0:
	add	r0, pc, r0
	add	r0, r1, r0
	bx	lr
	.align	2
@ BB#1:
.LCPI133_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC133_0+8)
.LCPI133_1:
	.long	_ZZ25halide_profiler_get_stateE1s(GOTOFF)
.Lfunc_end133:
	.size	halide_profiler_get_state, .Lfunc_end133-halide_profiler_get_state
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
	.align	2
	.type	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy,%function
_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy: @ @_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	.vsave	{d8, d9}
	vpush	{d8, d9}
	mov	r5, r2
	mov	r9, r1
	mov	r4, r0
	bl	halide_profiler_get_state(PLT)
	mov	r8, r0
	ldr	r6, [r8, #80]
	b	.LBB134_2
.LBB134_1:                              @   in Loop: Header=BB134_2 Depth=1
	ldr	r6, [r6, #56]
.LBB134_2:                              @ =>This Inner Loop Header: Depth=1
	cmp	r6, #0
	beq	.LBB134_5
@ BB#3:                                 @ %.lr.ph8
                                        @   in Loop: Header=BB134_2 Depth=1
	ldr	r0, [r6, #48]
	cmp	r0, r4
	bne	.LBB134_1
@ BB#4:                                 @   in Loop: Header=BB134_2 Depth=1
	ldr	r0, [r6, #60]
	cmp	r0, r9
	bne	.LBB134_1
	b	.LBB134_12
.LBB134_5:                              @ %.critedge
	mov	r0, #80
	bl	malloc(PLT)
	mov	r7, r0
	mov	r6, #0
	cmp	r7, #0
	beq	.LBB134_12
@ BB#6:
	ldr	r0, [r8, #80]
	mov	r6, #0
	vmov.i32	q4, #0x0
	str	r0, [r7, #56]
	str	r4, [r7, #48]
	ldr	r0, [r8, #68]
	str	r0, [r7, #64]
	add	r0, r7, #32
	str	r9, [r7, #60]
	str	r6, [r7, #68]
	str	r6, [r7, #72]
	str	r6, [r7, #76]
	vst1.64	{d8, d9}, [r0]
	mov	r0, r7
	vst1.64	{d8, d9}, [r0]!
	vst1.64	{d8, d9}, [r0]
	lsl	r0, r9, #6
	bl	malloc(PLT)
	str	r0, [r7, #52]
	cmp	r0, #0
	beq	.LBB134_11
@ BB#7:                                 @ %.preheader
	cmp	r9, #0
	ble	.LBB134_10
@ BB#8:
	mov	r1, #0
	mov	r2, r9
.LBB134_9:                              @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	str	r1, [r0, #4]
	subs	r2, r2, #1
	str	r1, [r0]
	ldr	r3, [r5], #8
	str	r3, [r0, #56]
	add	r3, r0, #40
	str	r1, [r0, #60]
	vst1.64	{d8, d9}, [r3]
	add	r3, r0, #24
	vst1.64	{d8, d9}, [r3]
	add	r3, r0, #8
	add	r0, r0, #64
	vst1.64	{d8, d9}, [r3]
	bne	.LBB134_9
.LBB134_10:                             @ %._crit_edge
	ldr	r0, [r8, #68]
	mov	r6, r7
	add	r0, r0, r9
	str	r0, [r8, #68]
	str	r7, [r8, #80]
	b	.LBB134_12
.LBB134_11:
	mov	r0, r7
	bl	free(PLT)
.LBB134_12:                             @ %.loopexit
	mov	r0, r6
	vpop	{d8, d9}
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end134:
	.size	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy, .Lfunc_end134-_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
	.align	2
	.type	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi,%function
_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi: @ @_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	ldr	r4, [r0, #80]
	cmp	r4, #0
	beq	.LBB135_5
@ BB#1:
	ldr	lr, [sp, #24]
	mov	r6, #0
	mov	r5, r4
.LBB135_2:                              @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	mov	r12, r5
	ldr	r5, [r12, #64]
	cmp	r5, r1
	bgt	.LBB135_4
@ BB#3:                                 @   in Loop: Header=BB135_2 Depth=1
	ldr	r7, [r12, #60]
	add	r7, r7, r5
	cmp	r7, r1
	bgt	.LBB135_6
.LBB135_4:                              @   in Loop: Header=BB135_2 Depth=1
	ldr	r5, [r12, #56]
	mov	r6, r12
	cmp	r5, #0
	bne	.LBB135_2
.LBB135_5:                              @ %.loopexit
	pop	{r4, r5, r6, r7, r11, pc}
.LBB135_6:
	cmp	r6, #0
	beq	.LBB135_8
@ BB#7:
	ldr	r7, [r12, #56]
	str	r7, [r6, #56]
	str	r4, [r12, #56]
	str	r12, [r0, #80]
.LBB135_8:                              @ %.critedge
	ldr	r0, [r12, #52]
	asr	r7, lr, #31
	vldr	s3, .LCPI135_0
	add	r0, r0, r1, lsl #6
	vldr	s2, .LCPI135_1
	vmov	s0, lr
	ldr	r1, [r0, -r5, lsl #6]!
	vmov.32	d0[1], r7
	ldr	r7, [r0, #4]
	adds	r4, r1, r2
	adc	r5, r7, r3
	strd	r4, r5, [r0]
	add	r0, r0, #40
	vld1.64	{d16, d17}, [r0]
	vadd.i64	q8, q8, q0
	vst1.64	{d16, d17}, [r0]
	ldm	r12, {r0, r1}
	adds	r0, r0, r2
	str	r0, [r12]
	adc	r0, r1, r3
	str	r0, [r12, #4]
	ldr	r0, [r12, #72]
	add	r0, r0, #1
	str	r0, [r12, #72]
	add	r0, r12, #32
	vld1.64	{d16, d17}, [r0]
	vadd.i64	q8, q8, q0
	vst1.64	{d16, d17}, [r0]
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#9:
.LCPI135_0:
	.long	0                       @ float 0
.LCPI135_1:
	.long	1                       @ float 1.40129846E-45
.Lfunc_end135:
	.size	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi, .Lfunc_end135-_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
	.align	2
	.type	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv,%function
_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv: @ @_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	bl	halide_profiler_get_state(PLT)
	mov	r4, r0
	bl	halide_mutex_lock(PLT)
	ldr	r0, [r4, #72]
	cmn	r0, #2
	beq	.LBB136_11
@ BB#1:                                 @ %.lr.ph
	add	r8, sp, #8
	add	r9, sp, #4
.LBB136_2:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB136_4 Depth 2
	mov	r0, #0
	bl	halide_current_time_ns(PLT)
	mov	r10, r0
	mov	r5, r1
	b	.LBB136_4
.LBB136_3:                              @ %.thread
                                        @   in Loop: Header=BB136_4 Depth=2
	mov	r0, r4
	ldr	r5, [r4, #64]
	bl	halide_mutex_unlock(PLT)
	mov	r0, #0
	mov	r1, r5
	bl	halide_sleep_ms(PLT)
	mov	r0, r4
	bl	halide_mutex_lock(PLT)
	mov	r10, r6
	mov	r5, r7
.LBB136_4:                              @   Parent Loop BB136_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r2, [r4, #84]
	cmp	r2, #0
	beq	.LBB136_6
@ BB#5:                                 @   in Loop: Header=BB136_4 Depth=2
	mov	r0, r8
	mov	r1, r9
	blx	r2
	b	.LBB136_7
.LBB136_6:                              @   in Loop: Header=BB136_4 Depth=2
	ldr	r0, [r4, #72]
	str	r0, [sp, #8]
	ldr	r0, [r4, #76]
	str	r0, [sp, #4]
.LBB136_7:                              @   in Loop: Header=BB136_4 Depth=2
	mov	r0, #0
	bl	halide_current_time_ns(PLT)
	mov	r7, r1
	ldr	r1, [sp, #8]
	mov	r6, r0
	cmn	r1, #2
	beq	.LBB136_10
@ BB#8:                                 @   in Loop: Header=BB136_4 Depth=2
	cmp	r1, #0
	blt	.LBB136_3
@ BB#9:                                 @   in Loop: Header=BB136_4 Depth=2
	ldr	r0, [sp, #4]
	subs	r2, r6, r10
	sbc	r3, r7, r5
	str	r0, [sp]
	mov	r0, r4
	bl	_ZN6Halide7Runtime8Internal9bill_funcEP21halide_profiler_stateiyi(PLT)
	b	.LBB136_3
.LBB136_10:                             @   in Loop: Header=BB136_2 Depth=1
	ldr	r0, [r4, #72]
	cmn	r0, #2
	bne	.LBB136_2
.LBB136_11:                             @ %._crit_edge
	mov	r0, #0
	strb	r0, [r4, #88]
	mov	r0, r4
	bl	halide_mutex_unlock(PLT)
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end136:
	.size	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv, .Lfunc_end136-_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv
	.cantunwind
	.fnend

	.section	.text.halide_profiler_get_pipeline_state,"ax",%progbits
	.weak	halide_profiler_get_pipeline_state
	.align	2
	.type	halide_profiler_get_pipeline_state,%function
halide_profiler_get_pipeline_state:     @ @halide_profiler_get_pipeline_state
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r6, r0
	bl	halide_profiler_get_state(PLT)
	mov	r4, r0
	bl	halide_mutex_lock(PLT)
	ldr	r0, [r4, #80]
	mov	r5, #0
	b	.LBB137_2
.LBB137_1:                              @   in Loop: Header=BB137_2 Depth=1
	ldr	r0, [r0, #56]
.LBB137_2:                              @ =>This Inner Loop Header: Depth=1
	cmp	r0, #0
	beq	.LBB137_5
@ BB#3:                                 @ %.lr.ph
                                        @   in Loop: Header=BB137_2 Depth=1
	ldr	r1, [r0, #48]
	cmp	r1, r6
	bne	.LBB137_1
@ BB#4:
	mov	r5, r0
.LBB137_5:                              @ %._crit_edge
	mov	r0, r4
	bl	halide_mutex_unlock(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end137:
	.size	halide_profiler_get_pipeline_state, .Lfunc_end137-halide_profiler_get_pipeline_state
	.cantunwind
	.fnend

	.section	.text.halide_profiler_pipeline_start,"ax",%progbits
	.weak	halide_profiler_pipeline_start
	.align	2
	.type	halide_profiler_pipeline_start,%function
halide_profiler_pipeline_start:         @ @halide_profiler_pipeline_start
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	mov	r6, r3
	mov	r7, r2
	mov	r5, r1
	mov	r8, r0
	bl	halide_profiler_get_state(PLT)
	mov	r4, r0
	bl	halide_mutex_lock(PLT)
	ldrb	r0, [r4, #88]
	cmp	r0, #0
	bne	.LBB138_2
@ BB#1:
	mov	r0, r8
	bl	halide_start_clock(PLT)
	ldr	r1, .LCPI138_1
	ldr	r0, .LCPI138_0
.LPC138_0:
	add	r1, pc, r1
	ldr	r0, [r0, r1]
	mov	r1, #0
	bl	halide_spawn_thread(PLT)
	mov	r0, #1
	strb	r0, [r4, #88]
.LBB138_2:
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	bl	_ZN6Halide7Runtime8Internal23find_or_create_pipelineEPKciPKy(PLT)
	cmp	r0, #0
	beq	.LBB138_4
@ BB#3:
	ldr	r1, [r0, #68]
	add	r1, r1, #1
	str	r1, [r0, #68]
	ldr	r5, [r0, #64]
	b	.LBB138_5
.LBB138_4:
	mov	r0, r8
	bl	halide_error_out_of_memory(PLT)
	mov	r5, r0
.LBB138_5:
	mov	r0, r4
	bl	halide_mutex_unlock(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI138_0:
	.long	_ZN6Halide7Runtime8Internal24sampling_profiler_threadEPv(GOT)
.LCPI138_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC138_0+8)
.Lfunc_end138:
	.size	halide_profiler_pipeline_start, .Lfunc_end138-halide_profiler_pipeline_start
	.cantunwind
	.fnend

	.section	.text.halide_profiler_stack_peak_update,"ax",%progbits
	.weak	halide_profiler_stack_peak_update
	.align	2
	.type	halide_profiler_stack_peak_update,%function
halide_profiler_stack_peak_update:      @ @halide_profiler_stack_peak_update
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#12
	sub	sp, sp, #12
	mov	r10, r1
	cmp	r10, #0
	bne	.LBB139_2
@ BB#1:
	ldr	r1, .LCPI139_0
	mov	r4, r2
	ldr	r3, .LCPI139_1
.LPC139_0:
	add	r1, pc, r1
	add	r1, r3, r1
	bl	halide_print(PLT)
	bl	abort(PLT)
	mov	r2, r4
.LBB139_2:                              @ %.preheader
	ldr	r1, [r10, #60]
	cmp	r1, #1
	blt	.LBB139_13
@ BB#3:                                 @ %.lr.ph
	mov	r12, #0
.LBB139_4:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB139_6 Depth 2
                                        @       Child Loop BB139_8 Depth 3
	mov	r3, r2
	ldr	r4, [r3, r12, lsl #3]!
	ldr	r5, [r3, #4]
	strd	r4, r5, [sp]            @ 8-byte Spill
	orrs	r3, r4, r5
	beq	.LBB139_12
@ BB#5:                                 @   in Loop: Header=BB139_4 Depth=1
	ldr	r1, [r10, #52]
	add	r4, r1, r12, lsl #6
	ldr	lr, [r4, #32]!
	ldr	r6, [r4, #4]
.LBB139_6:                              @   Parent Loop BB139_4 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB139_8 Depth 3
	ldrd	r0, r1, [sp]            @ 8-byte Reload
	mov	r7, #0
	mov	r3, #0
	cmp	lr, r0
	movwhs	r7, #1
	cmp	r6, r1
	movwhs	r3, #1
	strd	r0, r1, [sp]            @ 8-byte Spill
	moveq	r3, r7
	cmp	r3, #0
	bne	.LBB139_11
@ BB#7:                                 @   in Loop: Header=BB139_6 Depth=2
	dmb	ish
.LBB139_8:                              @ %cmpxchg.start
                                        @   Parent Loop BB139_4 Depth=1
                                        @     Parent Loop BB139_6 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldrexd	r8, r9, [r4]
	eor	r7, r8, lr
	eor	r5, r9, r6
	orrs	r7, r7, r5
	bne	.LBB139_10
@ BB#9:                                 @ %cmpxchg.trystore
                                        @   in Loop: Header=BB139_8 Depth=3
	ldrd	r0, r1, [sp]            @ 8-byte Reload
	strexd	r5, r0, r1, [r4]
	cmp	r5, #0
	bne	.LBB139_8
.LBB139_10:                             @ %cmpxchg.failure
                                        @   in Loop: Header=BB139_6 Depth=2
	mov	lr, r8
	mov	r6, r9
	dmb	ish
	cmp	r7, #0
	bne	.LBB139_6
.LBB139_11:                             @ %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit.loopexit
                                        @   in Loop: Header=BB139_4 Depth=1
	ldr	r1, [r10, #60]
.LBB139_12:                             @ %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit
                                        @   in Loop: Header=BB139_4 Depth=1
	add	r12, r12, #1
	cmp	r12, r1
	blt	.LBB139_4
.LBB139_13:                             @ %._crit_edge
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#14:
.LCPI139_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC139_0+8)
.LCPI139_1:
	.long	.L.str.128(GOTOFF)
.Lfunc_end139:
	.size	halide_profiler_stack_peak_update, .Lfunc_end139-halide_profiler_stack_peak_update
	.cantunwind
	.fnend

	.section	.text.halide_profiler_memory_allocate,"ax",%progbits
	.weak	halide_profiler_memory_allocate
	.align	2
	.type	halide_profiler_memory_allocate,%function
halide_profiler_memory_allocate:        @ @halide_profiler_memory_allocate
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	ldr	r7, [r11, #12]
	mov	r4, r2
	ldr	r8, [r11, #8]
	mov	r6, r0
	mov	r10, r1
	orrs	r0, r8, r7
	beq	.LBB140_31
@ BB#1:
	cmp	r10, #0
	bne	.LBB140_3
@ BB#2:
	ldr	r0, .LCPI140_0
	ldr	r1, .LCPI140_1
.LPC140_0:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r6
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB140_3:
	cmp	r4, #0
	bge	.LBB140_5
@ BB#4:
	ldr	r0, .LCPI140_2
	ldr	r1, .LCPI140_3
.LPC140_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r6
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB140_5:
	ldr	r0, [r10, #60]
	cmp	r0, r4
	bgt	.LBB140_7
@ BB#6:
	ldr	r0, .LCPI140_4
	ldr	r1, .LCPI140_5
.LPC140_2:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r6
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB140_7:
	ldr	lr, [r10, #52]
	mov	r0, r4
	add	r1, r10, #76
	dmb	ish
.LBB140_8:                              @ %atomicrmw.start
                                        @ =>This Inner Loop Header: Depth=1
	ldrex	r2, [r1]
	add	r2, r2, #1
	strex	r3, r2, [r1]
	cmp	r3, #0
	bne	.LBB140_8
@ BB#9:                                 @ %atomicrmw.end
	dmb	ish
	add	r1, r10, #24
.LBB140_10:                             @ %atomicrmw.start2
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r2, r3, [r1]
	adds	r4, r2, r8
	adc	r5, r3, r7
	strexd	r2, r4, r5, [r1]
	cmp	r2, #0
	bne	.LBB140_10
@ BB#11:                                @ %atomicrmw.end1
	dmb	ish
	add	r1, r10, #8
.LBB140_12:                             @ %atomicrmw.start8
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r4, r5, [r1]
	adds	r2, r4, r8
	adc	r3, r5, r7
	strexd	r6, r2, r3, [r1]
	cmp	r6, #0
	bne	.LBB140_12
@ BB#13:                                @ %atomicrmw.end7
	dmb	ish
	adds	r2, r4, r8
	ldr	r1, [r10, #16]!
	mov	r12, r8
	adc	r3, r5, r7
	ldr	r6, [r10, #4]
.LBB140_14:                             @ =>This Loop Header: Depth=1
                                        @     Child Loop BB140_16 Depth 2
	cmp	r1, r2
	mov	r5, #0
	movwhs	r5, #1
	cmp	r6, r3
	mov	r4, #0
	movwhs	r4, #1
	moveq	r4, r5
	cmp	r4, #0
	bne	.LBB140_19
@ BB#15:                                @   in Loop: Header=BB140_14 Depth=1
	dmb	ish
.LBB140_16:                             @ %cmpxchg.start
                                        @   Parent Loop BB140_14 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrexd	r8, r9, [r10]
	eor	r5, r8, r1
	eor	r4, r9, r6
	orrs	r5, r5, r4
	bne	.LBB140_18
@ BB#17:                                @ %cmpxchg.trystore
                                        @   in Loop: Header=BB140_16 Depth=2
	strexd	r4, r2, r3, [r10]
	cmp	r4, #0
	bne	.LBB140_16
.LBB140_18:                             @ %cmpxchg.failure
                                        @   in Loop: Header=BB140_14 Depth=1
	mov	r1, r8
	mov	r6, r9
	dmb	ish
	cmp	r5, #0
	bne	.LBB140_14
.LBB140_19:                             @ %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit
	add	r0, lr, r0, lsl #6
	dmb	ish
	add	r1, r0, #60
.LBB140_20:                             @ %atomicrmw.start28
                                        @ =>This Inner Loop Header: Depth=1
	ldrex	r2, [r1]
	add	r2, r2, #1
	strex	r3, r2, [r1]
	cmp	r3, #0
	bne	.LBB140_20
@ BB#21:                                @ %atomicrmw.end27
	add	r1, r0, #24
	dmb	ish
.LBB140_22:                             @ %atomicrmw.start32
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r2, r3, [r1]
	adds	r4, r2, r12
	adc	r5, r3, r7
	strexd	r2, r4, r5, [r1]
	cmp	r2, #0
	bne	.LBB140_22
@ BB#23:                                @ %atomicrmw.end31
	add	r1, r0, #8
	dmb	ish
.LBB140_24:                             @ %atomicrmw.start44
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r4, r5, [r1]
	adds	r2, r4, r12
	adc	r3, r5, r7
	strexd	r6, r2, r3, [r1]
	cmp	r6, #0
	bne	.LBB140_24
@ BB#25:                                @ %atomicrmw.end43
	dmb	ish
	adds	r8, r4, r12
	ldr	r1, [r0, #16]!
	adc	r9, r5, r7
	ldr	r6, [r0, #4]
.LBB140_26:                             @ =>This Loop Header: Depth=1
                                        @     Child Loop BB140_28 Depth 2
	cmp	r1, r8
	mov	r7, #0
	movwhs	r7, #1
	cmp	r6, r9
	mov	r5, #0
	movwhs	r5, #1
	moveq	r5, r7
	cmp	r5, #0
	bne	.LBB140_31
@ BB#27:                                @   in Loop: Header=BB140_26 Depth=1
	dmb	ish
.LBB140_28:                             @ %cmpxchg.start59
                                        @   Parent Loop BB140_26 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldrexd	r4, r5, [r0]
	eor	r7, r4, r1
	eor	r2, r5, r6
	orrs	r7, r7, r2
	bne	.LBB140_30
@ BB#29:                                @ %cmpxchg.trystore58
                                        @   in Loop: Header=BB140_28 Depth=2
	strexd	r2, r8, r9, [r0]
	cmp	r2, #0
	bne	.LBB140_28
.LBB140_30:                             @ %cmpxchg.failure56
                                        @   in Loop: Header=BB140_26 Depth=1
	mov	r1, r4
	mov	r6, r5
	dmb	ish
	cmp	r7, #0
	bne	.LBB140_26
.LBB140_31:                             @ %_ZN12_GLOBAL__N_125sync_compare_max_and_swapIyEEvPT_S1_.exit3
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#32:
.LCPI140_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC140_0+8)
.LCPI140_1:
	.long	.L.str.1.129(GOTOFF)
.LCPI140_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC140_1+8)
.LCPI140_3:
	.long	.L.str.2.130(GOTOFF)
.LCPI140_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC140_2+8)
.LCPI140_5:
	.long	.L.str.3.131(GOTOFF)
.Lfunc_end140:
	.size	halide_profiler_memory_allocate, .Lfunc_end140-halide_profiler_memory_allocate
	.cantunwind
	.fnend

	.section	.text.halide_profiler_memory_free,"ax",%progbits
	.weak	halide_profiler_memory_free
	.align	2
	.type	halide_profiler_memory_free,%function
halide_profiler_memory_free:            @ @halide_profiler_memory_free
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.setfp	r11, sp, #24
	add	r11, sp, #24
	ldr	r7, [r11, #12]
	mov	r9, r2
	ldr	r6, [r11, #8]
	mov	r8, r0
	mov	r5, r1
	orrs	r0, r6, r7
	beq	.LBB141_12
@ BB#1:
	cmp	r5, #0
	bne	.LBB141_3
@ BB#2:
	ldr	r0, .LCPI141_0
	ldr	r1, .LCPI141_1
.LPC141_0:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r8
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB141_3:
	cmp	r9, #0
	bge	.LBB141_5
@ BB#4:
	ldr	r0, .LCPI141_2
	ldr	r1, .LCPI141_3
.LPC141_1:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r8
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB141_5:
	ldr	r0, [r5, #60]
	cmp	r0, r9
	bgt	.LBB141_7
@ BB#6:
	ldr	r0, .LCPI141_4
	ldr	r1, .LCPI141_5
.LPC141_2:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, r8
	bl	halide_print(PLT)
	bl	abort(PLT)
.LBB141_7:
	ldr	r0, [r5, #52]
	add	r1, r5, #8
	dmb	ish
.LBB141_8:                              @ %atomicrmw.start
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r2, r3, [r1]
	subs	r4, r2, r6
	sbc	r5, r3, r7
	strexd	r2, r4, r5, [r1]
	cmp	r2, #0
	bne	.LBB141_8
@ BB#9:                                 @ %atomicrmw.end
	add	r0, r0, r9, lsl #6
	dmb	ish
	add	r0, r0, #8
.LBB141_10:                             @ %atomicrmw.start4
                                        @ =>This Inner Loop Header: Depth=1
	ldrexd	r2, r3, [r0]
	subs	r4, r2, r6
	sbc	r5, r3, r7
	strexd	r1, r4, r5, [r0]
	cmp	r1, #0
	bne	.LBB141_10
@ BB#11:                                @ %atomicrmw.end3
	dmb	ish
.LBB141_12:
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.align	2
@ BB#13:
.LCPI141_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC141_0+8)
.LCPI141_1:
	.long	.L.str.4.132(GOTOFF)
.LCPI141_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC141_1+8)
.LCPI141_3:
	.long	.L.str.5.133(GOTOFF)
.LCPI141_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC141_2+8)
.LCPI141_5:
	.long	.L.str.6.134(GOTOFF)
.Lfunc_end141:
	.size	halide_profiler_memory_free, .Lfunc_end141-halide_profiler_memory_free
	.cantunwind
	.fnend

	.section	.text.halide_profiler_report_unlocked,"ax",%progbits
	.weak	halide_profiler_report_unlocked
	.align	3
	.type	halide_profiler_report_unlocked,%function
halide_profiler_report_unlocked:        @ @halide_profiler_report_unlocked
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9, d10}
	vpush	{d8, d9, d10}
	.pad	#152
	sub	sp, sp, #152
	.pad	#1024
	sub	sp, sp, #1024
	mov	lr, #0
	add	r5, sp, #148
	strb	lr, [sp, #1171]
	ldr	r9, [r1, #80]
	str	r0, [sp, #128]          @ 4-byte Spill
	cmp	r9, #0
	beq	.LBB142_49
@ BB#1:
	movw	r0, #1023
	add	r3, sp, #148
	add	r6, r3, r0
	ldr	r0, .LCPI142_1
	ldr	r5, .LCPI142_2
	add	r8, sp, #148
.LPC142_0:
	add	r0, pc, r0
	vldr	d9, .LCPI142_42
	add	r1, r5, r0
	vldr	s16, .LCPI142_43
	str	r1, [sp, #52]           @ 4-byte Spill
	ldr	r1, .LCPI142_3
	add	r1, r1, r0
	str	r1, [sp, #48]           @ 4-byte Spill
	ldr	r1, .LCPI142_4
	add	r1, r1, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	ldr	r1, .LCPI142_5
	add	r1, r1, r0
	str	r1, [sp, #40]           @ 4-byte Spill
	ldr	r1, .LCPI142_6
	add	r1, r1, r0
	str	r1, [sp, #36]           @ 4-byte Spill
	ldr	r1, .LCPI142_7
	add	r1, r1, r0
	str	r1, [sp, #32]           @ 4-byte Spill
	ldr	r1, .LCPI142_8
	add	r0, r1, r0
	ldr	r1, .LCPI142_13
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, .LCPI142_12
.LPC142_2:
	add	r0, pc, r0
	add	r1, r1, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	ldr	r1, .LCPI142_14
	add	r1, r1, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r1, .LCPI142_15
	add	r0, r1, r0
	ldr	r1, .LCPI142_17
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, .LCPI142_16
.LPC142_3:
	add	r0, pc, r0
	add	r1, r1, r0
	str	r1, [sp, #116]          @ 4-byte Spill
	ldr	r1, .LCPI142_18
	add	r0, r1, r0
	ldr	r1, .LCPI142_19
	str	r0, [sp, #112]          @ 4-byte Spill
	ldr	r0, .LCPI142_20
.LPC142_4:
	add	r1, pc, r1
	add	r2, r0, r1
	ldr	r1, .LCPI142_21
	str	r2, [sp, #124]          @ 4-byte Spill
	ldr	r2, .LCPI142_22
.LPC142_5:
	add	r1, pc, r1
	add	r1, r2, r1
	ldr	r2, .LCPI142_25
	str	r1, [sp, #108]          @ 4-byte Spill
	ldr	r1, .LCPI142_23
.LPC142_6:
	add	r1, pc, r1
	add	r1, r0, r1
	str	r1, [sp, #104]          @ 4-byte Spill
	ldr	r1, .LCPI142_24
.LPC142_7:
	add	r1, pc, r1
	add	r2, r2, r1
	str	r2, [sp, #100]          @ 4-byte Spill
	ldr	r2, .LCPI142_26
	add	r1, r2, r1
	ldr	r2, .LCPI142_40
	str	r1, [sp, #96]           @ 4-byte Spill
	ldr	r1, .LCPI142_27
.LPC142_8:
	add	r1, pc, r1
	add	r1, r0, r1
	str	r1, [sp, #92]           @ 4-byte Spill
	ldr	r1, .LCPI142_41
.LPC142_17:
	add	r1, pc, r1
	add	r1, r5, r1
	mov	r5, r3
	str	r1, [sp, #88]           @ 4-byte Spill
	ldr	r1, .LCPI142_39
.LPC142_16:
	add	r1, pc, r1
	add	r1, r2, r1
	ldr	r2, .LCPI142_32
	str	r1, [sp, #84]           @ 4-byte Spill
	ldr	r1, .LCPI142_31
.LPC142_11:
	add	r1, pc, r1
	add	r1, r2, r1
	ldr	r2, .LCPI142_35
	str	r1, [sp, #80]           @ 4-byte Spill
	ldr	r1, .LCPI142_33
.LPC142_12:
	add	r1, pc, r1
	add	r1, r0, r1
	str	r1, [sp, #76]           @ 4-byte Spill
	ldr	r1, .LCPI142_34
.LPC142_13:
	add	r1, pc, r1
	add	r1, r2, r1
	ldr	r2, .LCPI142_38
	str	r1, [sp, #72]           @ 4-byte Spill
	ldr	r1, .LCPI142_36
.LPC142_14:
	add	r1, pc, r1
	add	r1, r0, r1
	str	r1, [sp, #68]           @ 4-byte Spill
	ldr	r1, .LCPI142_37
.LPC142_15:
	add	r1, pc, r1
	add	r1, r2, r1
	ldr	r2, .LCPI142_29
	str	r1, [sp, #64]           @ 4-byte Spill
	ldr	r1, .LCPI142_28
.LPC142_9:
	add	r1, pc, r1
	add	r1, r2, r1
	str	r1, [sp, #60]           @ 4-byte Spill
	ldr	r1, .LCPI142_30
.LPC142_10:
	add	r1, pc, r1
	add	r0, r0, r1
	ldr	r1, .LCPI142_11
	str	r0, [sp, #56]           @ 4-byte Spill
	ldr	r0, .LCPI142_10
.LPC142_1:
	add	r0, pc, r0
	str	r0, [sp, #12]           @ 4-byte Spill
	add	r0, r1, r0
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB142_2:                              @ %.lr.ph66
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB142_12 Depth 2
                                        @     Child Loop BB142_17 Depth 2
                                        @       Child Loop BB142_20 Depth 3
                                        @       Child Loop BB142_24 Depth 3
                                        @       Child Loop BB142_28 Depth 3
                                        @       Child Loop BB142_33 Depth 3
                                        @       Child Loop BB142_39 Depth 3
                                        @       Child Loop BB142_41 Depth 3
	ldrd	r0, r1, [r9]
	mov	r4, r9
	mov	r10, lr
	str	r9, [sp, #132]          @ 4-byte Spill
	ldr	r9, [r4, #68]
	bl	__aeabi_ul2f(PLT)
	cmp	r9, #0
	mov	lr, r10
	mov	r9, r4
	beq	.LBB142_48
@ BB#3:                                 @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv.exit
                                        @   in Loop: Header=BB142_2 Depth=1
	strb	lr, [sp, #148]
	mov	r1, r6
	vmov	s0, r0
	ldr	r0, [r9, #32]
	ldr	r2, [r9, #48]
	vdiv.f32	s20, s0, s16
	str	r0, [sp, #144]          @ 4-byte Spill
	mov	r0, r8
	ldr	r5, [r9, #36]
	ldr	r10, [r9, #40]
	ldr	r7, [r9, #44]
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #52]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #48]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	vcvt.f64.f32	d0, s20
	mov	r1, r6
	mov	r2, #0
	bl	halide_double_to_string(PLT)
	ldr	r2, [sp, #44]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #40]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r9, #72]
	mov	r4, #1
	mov	r1, r6
	str	r4, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r2, [sp, #36]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r9, #68]
	mov	r1, r6
	str	r4, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r2, [sp, #32]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r1, [r9, #68]
	mov	r2, #0
	vmov	s0, r1
	mov	r1, r6
	vcvt.f32.s32	s0, s0
	vdiv.f32	s0, s20, s0
	vcvt.f64.f32	d0, s0
	bl	halide_double_to_string(PLT)
	ldr	r2, [sp, #28]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #144]          @ 4-byte Reload
	mov	r1, r5
	mov	r5, r0
	eor	r0, r1, r7
	eor	r3, r2, r10
	orrs	r0, r3, r0
	str	r0, [sp, #120]          @ 4-byte Spill
	bne	.LBB142_7
@ BB#4:                                 @   in Loop: Header=BB142_2 Depth=1
	str	r9, [sp, #132]          @ 4-byte Spill
	b	.LBB142_8
	.align	3
@ BB#5:
.LCPI142_42:
	.long	3654794683              @ double 1.0E-10
	.long	1037794527
	.align	2
@ BB#6:
.LCPI142_43:
	.long	1232348160              @ float 1.0E+6
.LBB142_7:                              @   in Loop: Header=BB142_2 Depth=1
	mov	r0, r2
	str	r9, [sp, #132]          @ 4-byte Spill
	bl	__aeabi_ul2d(PLT)
	mov	r9, r0
	mov	r4, r1
	mov	r0, r10
	mov	r1, r7
	bl	__aeabi_ul2d(PLT)
	vmov	d16, r0, r1
	mov	r0, r5
	vadd.f64	d16, d16, d9
	mov	r1, r6
	vmov	d17, r9, r4
	ldr	r2, [sp, #8]            @ 4-byte Reload
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s20, d16
	bl	halide_string_to_string(PLT)
	vcvt.f64.f32	d0, s20
	mov	r1, r6
	mov	r2, #0
	bl	halide_double_to_string(PLT)
	ldr	r1, .LCPI142_2
	ldr	r2, [sp, #12]           @ 4-byte Reload
	add	r2, r1, r2
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r5, r0
.LBB142_8:                              @   in Loop: Header=BB142_2 Depth=1
	ldr	r2, [sp, #24]           @ 4-byte Reload
	mov	r0, r5
	mov	r1, r6
	mov	r9, #0
	ldr	r7, [sp, #124]          @ 4-byte Reload
	bl	halide_string_to_string(PLT)
	ldr	r4, [sp, #132]          @ 4-byte Reload
	mov	r5, #1
	mov	r1, r6
	ldr	r2, [r4, #76]
	str	r5, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r2, [sp, #20]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldrd	r2, r3, [r4, #16]
	mov	r1, r6
	str	r5, [sp]
	bl	halide_uint64_to_string(PLT)
	ldr	r2, [sp, #16]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	ldr	r0, [sp, #128]          @ 4-byte Reload
	mov	r1, r8
	bl	halide_print(PLT)
	ldrd	r0, r1, [r4]
	mov	lr, r9
	mov	r9, r4
	orrs	r0, r0, r1
	bne	.LBB142_15
@ BB#9:                                 @   in Loop: Header=BB142_2 Depth=1
	ldrd	r0, r1, [r9, #24]
	orrs	r0, r0, r1
	bne	.LBB142_15
@ BB#10:                                @ %.preheader
                                        @   in Loop: Header=BB142_2 Depth=1
	ldr	r0, [r9, #60]
	cmp	r0, #1
	blt	.LBB142_48
@ BB#11:                                @ %.lr.ph
                                        @   in Loop: Header=BB142_2 Depth=1
	ldr	r1, [r9, #52]
	mov	r12, r9
	mov	r3, #1
	add	r2, r1, #32
	mov	r1, #0
.LBB142_12:                             @   Parent Loop BB142_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldm	r2, {r4, r9}
	orrs	r4, r4, r9
	movwne	r4, #1
	orr	r1, r1, r4
	bne	.LBB142_14
@ BB#13:                                @   in Loop: Header=BB142_12 Depth=2
	add	r4, r3, #1
	cmp	r3, r0
	add	r2, r2, #64
	mov	r3, r4
	blt	.LBB142_12
.LBB142_14:                             @ %._crit_edge
                                        @   in Loop: Header=BB142_2 Depth=1
	mov	r9, r12
	tst	r1, #1
	beq	.LBB142_48
.LBB142_15:                             @ %.thread19.preheader
                                        @   in Loop: Header=BB142_2 Depth=1
	ldr	r0, [r9, #60]
	cmp	r0, #1
	blt	.LBB142_48
@ BB#16:                                @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv.exit16.lr.ph
                                        @   in Loop: Header=BB142_2 Depth=1
	mov	r4, #0
.LBB142_17:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5clearEv.exit16
                                        @   Parent Loop BB142_2 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB142_20 Depth 3
                                        @       Child Loop BB142_24 Depth 3
                                        @       Child Loop BB142_28 Depth 3
                                        @       Child Loop BB142_33 Depth 3
                                        @       Child Loop BB142_39 Depth 3
                                        @       Child Loop BB142_41 Depth 3
	strb	lr, [sp, #148]
	cmp	r4, #0
	ldr	r0, [r9, #52]
	add	r10, r0, r4, lsl #6
	bne	.LBB142_19
@ BB#18:                                @   in Loop: Header=BB142_17 Depth=2
	ldrd	r0, r1, [r10]
	mov	r5, r8
	orrs	r0, r0, r1
	beq	.LBB142_47
.LBB142_19:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #116]          @ 4-byte Reload
	mov	r0, r8
	mov	r1, r6
	str	r4, [sp, #140]          @ 4-byte Spill
	bl	halide_string_to_string(PLT)
	ldr	r2, [r10, #56]
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #112]          @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	sub	r0, r5, r8
	cmp	r0, #24
	bhi	.LBB142_21
.LBB142_20:                             @ %.lr.ph30
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	sub	r0, r5, r8
	cmp	r0, #25
	blo	.LBB142_20
.LBB142_21:                             @ %._crit_edge.31
                                        @   in Loop: Header=BB142_17 Depth=2
	vldr	s0, [r9, #68]
	mov	r7, r10
	vcvt.f32.s32	s0, s0
	ldrd	r0, r1, [r7]
	vmul.f32	s20, s0, s16
	bl	__aeabi_ul2f(PLT)
	vmov	s0, r0
	mov	r0, r5
	vdiv.f32	s0, s0, s20
	mov	r1, r6
	mov	r2, #0
	mov	r4, #0
	vcvt.f64.f32	d0, s0
	bl	halide_double_to_string(PLT)
	cmp	r0, #0
	beq	.LBB142_23
@ BB#22:                                @   in Loop: Header=BB142_17 Depth=2
	sub	r4, r0, #3
	mov	r0, #0
	cmp	r4, r8
	movlo	r4, r8
	strb	r0, [r4]
.LBB142_23:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi.exit
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #108]          @ 4-byte Reload
	mov	r0, r4
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r4, [sp, #104]          @ 4-byte Reload
	mov	r5, r0
	sub	r0, r5, r8
	cmp	r0, #34
	bhi	.LBB142_25
.LBB142_24:                             @ %.lr.ph34
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	sub	r0, r5, r8
	cmp	r0, #35
	blo	.LBB142_24
.LBB142_25:                             @ %._crit_edge.35
                                        @   in Loop: Header=BB142_17 Depth=2
	ldrd	r2, r3, [r9]
	mov	r4, #0
	orrs	r0, r2, r3
	beq	.LBB142_27
@ BB#26:                                @   in Loop: Header=BB142_17 Depth=2
	ldrd	r0, r1, [r7]
	mov	r12, #100
	umull	r0, r4, r0, r12
	mla	r1, r1, r12, r4
	bl	__aeabi_uldivmod(PLT)
	mov	r4, r0
.LBB142_27:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #100]          @ 4-byte Reload
	mov	r0, r5
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r4, #31
	str	r1, [sp]
	mov	r1, r6
	mov	r2, r4
	bl	halide_int64_to_string(PLT)
	ldr	r2, [sp, #96]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r4, [sp, #92]           @ 4-byte Reload
	mov	r10, r0
	sub	r0, r10, r8
	cmp	r0, #42
	bhi	.LBB142_29
.LBB142_28:                             @ %.lr.ph39
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r10
	mov	r1, r6
	mov	r2, r4
	bl	halide_string_to_string(PLT)
	mov	r10, r0
	sub	r0, r10, r8
	cmp	r0, #43
	blo	.LBB142_28
.LBB142_29:                             @ %._crit_edge.40
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r0, [sp, #120]          @ 4-byte Reload
	mov	r4, #58
	cmp	r0, #0
	beq	.LBB142_35
@ BB#30:                                @   in Loop: Header=BB142_17 Depth=2
	add	r5, r7, #40
	ldm	r5, {r0, r1, r4, r5}
	str	r7, [sp, #144]          @ 4-byte Spill
	bl	__aeabi_ul2d(PLT)
	mov	r7, r0
	mov	r9, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ul2d(PLT)
	vmov	d16, r0, r1
	mov	r0, r10
	vadd.f64	d16, d16, d9
	mov	r1, r6
	vmov	d17, r7, r9
	ldr	r2, [sp, #60]           @ 4-byte Reload
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s20, d16
	bl	halide_string_to_string(PLT)
	vcvt.f64.f32	d0, s20
	mov	r1, r6
	mov	r2, #0
	mov	r10, #0
	bl	halide_double_to_string(PLT)
	cmp	r0, #0
	beq	.LBB142_32
@ BB#31:                                @   in Loop: Header=BB142_17 Depth=2
	sub	r10, r0, #3
	mov	r0, #0
	cmp	r10, r8
	movlo	r10, r8
	strb	r0, [r10]
.LBB142_32:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi.exit18.preheader
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r5, [sp, #56]           @ 4-byte Reload
	sub	r0, r10, r8
	mov	r4, #73
	cmp	r0, #57
	bhi	.LBB142_34
.LBB142_33:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EE5eraseEi.exit18
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r0, r10
	mov	r1, r6
	mov	r2, r5
	bl	halide_string_to_string(PLT)
	mov	r10, r0
	sub	r0, r10, r8
	cmp	r0, #58
	blo	.LBB142_33
.LBB142_34:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r7, [sp, #144]          @ 4-byte Reload
.LBB142_35:                             @ %.loopexit
                                        @   in Loop: Header=BB142_17 Depth=2
	mov	r9, r7
	mov	r0, #0
	ldr	r2, [r9, #60]!
	cmp	r2, #0
	beq	.LBB142_37
@ BB#36:                                @   in Loop: Header=BB142_17 Depth=2
	ldrd	r0, r1, [r7, #24]
	asr	r3, r2, #31
	bl	__aeabi_uldivmod(PLT)
.LBB142_37:                             @   in Loop: Header=BB142_17 Depth=2
	mov	r5, r7
	ldr	r2, [r5, #16]!
	ldr	r1, [r5, #4]
	orrs	r1, r2, r1
	beq	.LBB142_43
@ BB#38:                                @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #80]           @ 4-byte Reload
	mov	r1, r6
	str	r0, [sp, #136]          @ 4-byte Spill
	mov	r0, r10
	str	r7, [sp, #144]          @ 4-byte Spill
	bl	halide_string_to_string(PLT)
	ldrd	r2, r3, [r5]
	mov	r10, #1
	mov	r1, r6
	str	r10, [sp]
	bl	halide_uint64_to_string(PLT)
	sub	r1, r0, r8
	mov	r2, #0
	cmp	r1, r4
	mov	r5, #0
	movwhs	r2, #1
	cmp	r5, r1, asr #31
	ldr	r7, [sp, #76]           @ 4-byte Reload
	movne	r2, r10
	cmp	r2, #0
	bne	.LBB142_40
.LBB142_39:                             @ %.lr.ph49
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	sub	r1, r0, r8
	mov	r2, #0
	cmp	r1, r4
	movwlo	r2, #1
	cmp	r5, r1, asr #31
	movne	r2, r5
	cmp	r2, #0
	bne	.LBB142_39
.LBB142_40:                             @ %._crit_edge.50
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #72]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [r9]
	mov	r9, #1
	mov	r1, r6
	str	r9, [sp]
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	sub	r1, r0, r8
	add	r4, r4, #15
	cmp	r1, r4
	mov	r2, #0
	movwhs	r2, #1
	cmp	r5, r1, asr #31
	ldr	r7, [sp, #68]           @ 4-byte Reload
	movne	r2, r9
	cmp	r2, #0
	bne	.LBB142_42
.LBB142_41:                             @ %.lr.ph55
                                        @   Parent Loop BB142_2 Depth=1
                                        @     Parent Loop BB142_17 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	mov	r1, r6
	mov	r2, r7
	bl	halide_string_to_string(PLT)
	sub	r1, r0, r8
	mov	r2, #0
	cmp	r1, r4
	movwlo	r2, #1
	cmp	r5, r1, asr #31
	movne	r2, r5
	cmp	r2, #0
	bne	.LBB142_41
.LBB142_42:                             @ %._crit_edge.56
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #64]           @ 4-byte Reload
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldr	r2, [sp, #136]          @ 4-byte Reload
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r6
	asr	r3, r2, #31
	bl	halide_int64_to_string(PLT)
	ldr	r9, [sp, #132]          @ 4-byte Reload
	mov	r10, r0
	ldr	r4, [sp, #140]          @ 4-byte Reload
	ldr	r7, [sp, #144]          @ 4-byte Reload
	b	.LBB142_44
.LBB142_43:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r9, [sp, #132]          @ 4-byte Reload
	ldr	r4, [sp, #140]          @ 4-byte Reload
.LBB142_44:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r0, [r7, #32]!
	ldr	r1, [r7, #4]
	orrs	r0, r0, r1
	beq	.LBB142_46
@ BB#45:                                @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #84]           @ 4-byte Reload
	mov	r0, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	ldrd	r2, r3, [r7]
	mov	r1, #1
	str	r1, [sp]
	mov	r1, r6
	bl	halide_uint64_to_string(PLT)
	mov	r10, r0
.LBB142_46:                             @   in Loop: Header=BB142_17 Depth=2
	ldr	r2, [sp, #88]           @ 4-byte Reload
	mov	r0, r10
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r5, r0
	ldr	r0, [sp, #128]          @ 4-byte Reload
	mov	r1, r8
	bl	halide_print(PLT)
	ldr	r7, [sp, #124]          @ 4-byte Reload
	mov	lr, #0
.LBB142_47:                             @ %.thread19
                                        @   in Loop: Header=BB142_17 Depth=2
	ldr	r0, [r9, #60]
	add	r4, r4, #1
	cmp	r4, r0
	blt	.LBB142_17
.LBB142_48:                             @ %.loopexit23
                                        @   in Loop: Header=BB142_2 Depth=1
	ldr	r9, [r9, #56]
	cmp	r9, #0
	bne	.LBB142_2
.LBB142_49:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi2ELy1024EED2Ev.exit
	add	r1, sp, #148
	rsb	r0, r1, #1
	add	r2, r0, r5
	ldr	r0, [sp, #128]          @ 4-byte Reload
	asr	r3, r2, #31
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	sub	sp, r11, #56
	vpop	{d8, d9, d10}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#50:
.LCPI142_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_0+8)
.LCPI142_2:
	.long	.L.str.7.135(GOTOFF)
.LCPI142_3:
	.long	.L.str.8.136(GOTOFF)
.LCPI142_4:
	.long	.L.str.9.137(GOTOFF)
.LCPI142_5:
	.long	.L.str.10.138(GOTOFF)
.LCPI142_6:
	.long	.L.str.11.139(GOTOFF)
.LCPI142_7:
	.long	.L.str.12.140(GOTOFF)
.LCPI142_8:
	.long	.L.str.13.141(GOTOFF)
.LCPI142_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_1+8)
.LCPI142_11:
	.long	.L.str.14.142(GOTOFF)
.LCPI142_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_2+8)
.LCPI142_13:
	.long	.L.str.15.143(GOTOFF)
.LCPI142_14:
	.long	.L.str.16.144(GOTOFF)
.LCPI142_15:
	.long	.L.str.17.145(GOTOFF)
.LCPI142_16:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_3+8)
.LCPI142_17:
	.long	.L.str.18.146(GOTOFF)
.LCPI142_18:
	.long	.L.str.19.147(GOTOFF)
.LCPI142_19:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_4+8)
.LCPI142_20:
	.long	.L.str.20.148(GOTOFF)
.LCPI142_21:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_5+8)
.LCPI142_22:
	.long	.L.str.21.149(GOTOFF)
.LCPI142_23:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_6+8)
.LCPI142_24:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_7+8)
.LCPI142_25:
	.long	.L.str.22.150(GOTOFF)
.LCPI142_26:
	.long	.L.str.23.151(GOTOFF)
.LCPI142_27:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_8+8)
.LCPI142_28:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_9+8)
.LCPI142_29:
	.long	.L.str.24.152(GOTOFF)
.LCPI142_30:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_10+8)
.LCPI142_31:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_11+8)
.LCPI142_32:
	.long	.L.str.25.153(GOTOFF)
.LCPI142_33:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_12+8)
.LCPI142_34:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_13+8)
.LCPI142_35:
	.long	.L.str.26.154(GOTOFF)
.LCPI142_36:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_14+8)
.LCPI142_37:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_15+8)
.LCPI142_38:
	.long	.L.str.27.155(GOTOFF)
.LCPI142_39:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_16+8)
.LCPI142_40:
	.long	.L.str.28.156(GOTOFF)
.LCPI142_41:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC142_17+8)
.Lfunc_end142:
	.size	halide_profiler_report_unlocked, .Lfunc_end142-halide_profiler_report_unlocked
	.cantunwind
	.fnend

	.section	.text.halide_profiler_report,"ax",%progbits
	.weak	halide_profiler_report
	.align	2
	.type	halide_profiler_report,%function
halide_profiler_report:                 @ @halide_profiler_report
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r4, r0
	bl	halide_profiler_get_state(PLT)
	mov	r5, r0
	bl	halide_mutex_lock(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	halide_profiler_report_unlocked(PLT)
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	b	halide_mutex_unlock(PLT)
.Lfunc_end143:
	.size	halide_profiler_report, .Lfunc_end143-halide_profiler_report
	.cantunwind
	.fnend

	.section	.text.halide_profiler_reset,"ax",%progbits
	.weak	halide_profiler_reset
	.align	2
	.type	halide_profiler_reset,%function
halide_profiler_reset:                  @ @halide_profiler_reset
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	bl	halide_profiler_get_state(PLT)
	mov	r4, r0
	bl	halide_mutex_lock(PLT)
	b	.LBB144_2
.LBB144_1:                              @ %.lr.ph
                                        @   in Loop: Header=BB144_2 Depth=1
	ldr	r0, [r5, #56]
	str	r0, [r4, #80]
	ldr	r0, [r5, #52]
	bl	free(PLT)
	mov	r0, r5
	bl	free(PLT)
.LBB144_2:                              @ %.lr.ph
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r5, [r4, #80]
	cmp	r5, #0
	bne	.LBB144_1
@ BB#3:                                 @ %._crit_edge
	mov	r0, #0
	str	r0, [r4, #68]
	mov	r0, r4
	pop	{r4, r5, r11, lr}
	b	halide_mutex_unlock(PLT)
.Lfunc_end144:
	.size	halide_profiler_reset, .Lfunc_end144-halide_profiler_reset
	.cantunwind
	.fnend

	.section	.text.halide_profiler_shutdown,"ax",%progbits
	.weak	halide_profiler_shutdown
	.align	2
	.type	halide_profiler_shutdown,%function
halide_profiler_shutdown:               @ @halide_profiler_shutdown
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	bl	halide_profiler_get_state(PLT)
	mov	r1, r0
	ldrb	r0, [r1, #88]
	cmp	r0, #0
	beq	.LBB145_4
@ BB#1:
	mvn	r0, #1
	str	r0, [r1, #72]
.LBB145_2:                              @ =>This Inner Loop Header: Depth=1
	dmb	ish
	ldrb	r0, [r1, #88]
	cmp	r0, #0
	bne	.LBB145_2
@ BB#3:
	mvn	r0, #0
	str	r0, [r1, #72]
	mov	r0, #0
	pop	{r11, lr}
	b	halide_profiler_report_unlocked(PLT)
.LBB145_4:
	pop	{r11, pc}
.Lfunc_end145:
	.size	halide_profiler_shutdown, .Lfunc_end145-halide_profiler_shutdown
	.cantunwind
	.fnend

	.section	.text.halide_profiler_pipeline_end,"ax",%progbits
	.weak	halide_profiler_pipeline_end
	.align	2
	.type	halide_profiler_pipeline_end,%function
halide_profiler_pipeline_end:           @ @halide_profiler_pipeline_end
	.fnstart
@ BB#0:
	mvn	r0, #0
	str	r0, [r1, #72]
	bx	lr
.Lfunc_end146:
	.size	halide_profiler_pipeline_end, .Lfunc_end146-halide_profiler_pipeline_end
	.cantunwind
	.fnend

	.section	.text.halide_msan_annotate_memory_is_initialized,"ax",%progbits
	.weak	halide_msan_annotate_memory_is_initialized
	.align	2
	.type	halide_msan_annotate_memory_is_initialized,%function
halide_msan_annotate_memory_is_initialized: @ @halide_msan_annotate_memory_is_initialized
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end147:
	.size	halide_msan_annotate_memory_is_initialized, .Lfunc_end147-halide_msan_annotate_memory_is_initialized
	.cantunwind
	.fnend

	.section	.text.halide_msan_annotate_buffer_is_initialized,"ax",%progbits
	.weak	halide_msan_annotate_buffer_is_initialized
	.align	2
	.type	halide_msan_annotate_buffer_is_initialized,%function
halide_msan_annotate_buffer_is_initialized: @ @halide_msan_annotate_buffer_is_initialized
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end148:
	.size	halide_msan_annotate_buffer_is_initialized, .Lfunc_end148-halide_msan_annotate_buffer_is_initialized
	.cantunwind
	.fnend

	.section	.text.halide_msan_annotate_buffer_is_initialized_as_destructor,"ax",%progbits
	.weak	halide_msan_annotate_buffer_is_initialized_as_destructor
	.align	2
	.type	halide_msan_annotate_buffer_is_initialized_as_destructor,%function
halide_msan_annotate_buffer_is_initialized_as_destructor: @ @halide_msan_annotate_buffer_is_initialized_as_destructor
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end149:
	.size	halide_msan_annotate_buffer_is_initialized_as_destructor, .Lfunc_end149-halide_msan_annotate_buffer_is_initialized_as_destructor
	.cantunwind
	.fnend

	.section	.text.halide_default_can_use_target_features,"ax",%progbits
	.weak	halide_default_can_use_target_features
	.align	2
	.type	halide_default_can_use_target_features,%function
halide_default_can_use_target_features: @ @halide_default_can_use_target_features
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#16
	sub	sp, sp, #16
	mov	r4, r0
	ldr	r0, .LCPI150_1
	ldr	r7, .LCPI150_0
	mov	r5, r1
.LPC150_0:
	add	r0, pc, r0
	ldrb	r0, [r7, r0]
	cmp	r0, #0
	bne	.LBB150_2
@ BB#1:
	mov	r6, sp
	mov	r0, r6
	bl	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv(PLT)
	ldr	r0, .LCPI150_2
	vld1.64	{d16, d17}, [r6]
.LPC150_1:
	add	r0, pc, r0
	add	r1, r7, r0
	add	r1, r1, #16
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	strb	r1, [r7, r0]
.LBB150_2:
	ldr	r0, .LCPI150_3
.LPC150_2:
	add	r0, pc, r0
	add	r0, r7, r0
	ldrd	r0, r1, [r0, #16]
	and	r1, r1, r5
	and	r0, r0, r4
	orrs	r2, r0, r1
	beq	.LBB150_4
@ BB#3:
	ldr	r2, .LCPI150_4
.LPC150_3:
	add	r2, pc, r2
	add	r2, r7, r2
	ldrd	r2, r3, [r2, #24]
	bic	r1, r1, r3
	bic	r0, r0, r2
	orrs	r0, r0, r1
	mov	r0, #0
	moveq	r0, #1
	b	.LBB150_5
.LBB150_4:
	mov	r0, #1
.LBB150_5:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.align	2
@ BB#6:
.LCPI150_0:
	.long	_MergedGlobals(GOTOFF)
.LCPI150_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC150_0+8)
.LCPI150_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC150_1+8)
.LCPI150_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC150_2+8)
.LCPI150_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC150_3+8)
.Lfunc_end150:
	.size	halide_default_can_use_target_features, .Lfunc_end150-halide_default_can_use_target_features
	.cantunwind
	.fnend

	.section	.text.halide_set_custom_can_use_target_features,"ax",%progbits
	.weak	halide_set_custom_can_use_target_features
	.align	2
	.type	halide_set_custom_can_use_target_features,%function
halide_set_custom_can_use_target_features: @ @halide_set_custom_can_use_target_features
	.fnstart
@ BB#0:
	ldr	r2, .LCPI151_1
	ldr	r1, .LCPI151_0
.LPC151_0:
	add	r2, pc, r2
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	str	r0, [r2]
	mov	r0, r1
	bx	lr
	.align	2
@ BB#1:
.LCPI151_0:
	.long	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE(GOT)
.LCPI151_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC151_0+8)
.Lfunc_end151:
	.size	halide_set_custom_can_use_target_features, .Lfunc_end151-halide_set_custom_can_use_target_features
	.cantunwind
	.fnend

	.section	.text.halide_can_use_target_features,"ax",%progbits
	.weak	halide_can_use_target_features
	.align	2
	.type	halide_can_use_target_features,%function
halide_can_use_target_features:         @ @halide_can_use_target_features
	.fnstart
@ BB#0:
	ldr	r3, .LCPI152_1
	ldr	r2, .LCPI152_0
.LPC152_0:
	add	r3, pc, r3
	ldr	r2, [r2, r3]
	ldr	r2, [r2]
	bx	r2
	.align	2
@ BB#1:
.LCPI152_0:
	.long	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE(GOT)
.LCPI152_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC152_0+8)
.Lfunc_end152:
	.size	halide_can_use_target_features, .Lfunc_end152-halide_can_use_target_features
	.cantunwind
	.fnend

	.section	.text._ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,"ax",%progbits
	.weak	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.align	2
	.type	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv,%function
_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv: @ @_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.fnstart
@ BB#0:
	vmov.i32	q8, #0x0
	vst1.64	{d16, d17}, [r0]
	bx	lr
.Lfunc_end153:
	.size	_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv, .Lfunc_end153-_ZN6Halide7Runtime8Internal23halide_get_cpu_featuresEv
	.cantunwind
	.fnend

	.section	.text.halide_zynq_set_fd,"ax",%progbits
	.weak	halide_zynq_set_fd
	.align	2
	.type	halide_zynq_set_fd,%function
halide_zynq_set_fd:                     @ @halide_zynq_set_fd
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	cmp	r0, #0
	beq	.LBB154_3
@ BB#1:
	cmp	r1, #0
	beq	.LBB154_5
@ BB#2:
	ldr	r2, .LCPI154_0
	ldr	r3, .LCPI154_1
.LPC154_0:
	add	r2, pc, r2
	add	r2, r3, r2
	stmib	r2, {r0, r1}
	mov	r0, #0
	pop	{r4, r5, r11, pc}
.LBB154_3:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB154_8
@ BB#4:
	mov	r1, r4
	ldr	r0, .LCPI154_6
	ldr	r2, .LCPI154_7
	strb	r5, [r1, #1023]!
.LPC154_3:
	add	r0, pc, r0
	b	.LBB154_7
.LBB154_5:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB154_9
@ BB#6:
	ldr	r0, .LCPI154_2
	mov	r1, r4
	ldr	r2, .LCPI154_3
	strb	r5, [r1, #1023]!
.LPC154_1:
	add	r0, pc, r0
.LBB154_7:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB154_11
.LBB154_8:
	ldr	r0, .LCPI154_8
	ldr	r1, .LCPI154_7
.LPC154_4:
	add	r5, pc, r0
	b	.LBB154_10
.LBB154_9:
	ldr	r0, .LCPI154_4
	ldr	r1, .LCPI154_3
.LPC154_2:
	add	r5, pc, r0
.LBB154_10:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	add	r2, r1, r5
	mov	r0, #0
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI154_5
	add	r1, r0, r5
	mov	r0, #0
.LBB154_11:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r0, #0
	pop	{r4, r5, r11, pc}
	.align	2
@ BB#12:
.LCPI154_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC154_0+8)
.LCPI154_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI154_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC154_1+8)
.LCPI154_3:
	.long	.L.str.1.165(GOTOFF)
.LCPI154_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC154_2+8)
.LCPI154_5:
	.long	.L.str.21.164(GOTOFF)
.LCPI154_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC154_3+8)
.LCPI154_7:
	.long	.L.str.163(GOTOFF)
.LCPI154_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC154_4+8)
.Lfunc_end154:
	.size	halide_zynq_set_fd, .Lfunc_end154-halide_zynq_set_fd
	.cantunwind
	.fnend

	.section	.text.halide_zynq_init,"ax",%progbits
	.weak	halide_zynq_init
	.align	2
	.type	halide_zynq_init,%function
halide_zynq_init:                       @ @halide_zynq_init
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	ldr	r0, .LCPI155_0
	ldr	r5, .LCPI155_1
.LPC155_0:
	add	r0, pc, r0
	add	r0, r5, r0
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #8]
	orrs	r0, r1, r0
	beq	.LBB155_3
@ BB#1:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB155_7
@ BB#2:
	ldr	r0, .LCPI155_2
	mov	r1, r4
	ldr	r2, .LCPI155_3
	strb	r5, [r1, #1023]!
.LPC155_1:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB155_8
.LBB155_3:
	ldr	r0, .LCPI155_6
	mov	r2, #420
	ldr	r1, .LCPI155_7
.LPC155_3:
	add	r4, pc, r0
	add	r0, r1, r4
	mov	r1, #2
	bl	open(PLT)
	add	r1, r5, r4
	cmn	r0, #1
	str	r0, [r1, #8]
	beq	.LBB155_9
@ BB#4:
	ldr	r0, .LCPI155_8
	mov	r2, #420
	ldr	r1, .LCPI155_9
.LPC155_4:
	add	r4, pc, r0
	add	r0, r1, r4
	mov	r1, #2
	bl	open(PLT)
	mov	r1, r0
	add	r0, r5, r4
	str	r1, [r0, #4]
	mov	r0, #0
	cmn	r1, #1
	bne	.LBB155_16
@ BB#5:
	mov	r0, #0
	mov	r1, #1024
	mov	r6, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB155_13
@ BB#6:
	ldr	r0, .LCPI155_10
	mov	r1, r4
	ldr	r2, .LCPI155_11
	strb	r6, [r1, #1023]!
.LPC155_5:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB155_14
.LBB155_7:
	ldr	r0, .LCPI155_4
	ldr	r1, .LCPI155_3
.LPC155_2:
	add	r5, pc, r0
	mov	r0, #0
	add	r2, r1, r5
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI155_5
	add	r1, r0, r5
	mov	r0, #0
.LBB155_8:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit2
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r0, #0
	pop	{r4, r5, r6, r10, r11, pc}
.LBB155_9:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB155_11
@ BB#10:
	ldr	r0, .LCPI155_14
	mov	r1, r4
	ldr	r2, .LCPI155_15
	strb	r5, [r1, #1023]!
.LPC155_8:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB155_12
.LBB155_11:
	ldr	r0, .LCPI155_16
	ldr	r1, .LCPI155_15
.LPC155_9:
	add	r5, pc, r0
	mov	r0, #0
	add	r2, r1, r5
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI155_5
	add	r1, r0, r5
	mov	r0, #0
.LBB155_12:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit4
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	b	.LBB155_15
.LBB155_13:
	ldr	r0, .LCPI155_12
	ldr	r1, .LCPI155_11
.LPC155_6:
	add	r6, pc, r0
	mov	r0, #0
	add	r2, r1, r6
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI155_5
	add	r1, r0, r6
	mov	r0, #0
.LBB155_14:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	ldr	r0, .LCPI155_13
.LPC155_7:
	add	r0, pc, r0
	add	r0, r5, r0
	ldr	r0, [r0, #8]
	bl	close(PLT)
.LBB155_15:
	mov	r0, #0
	mov	r1, #0
	bl	halide_zynq_set_fd(PLT)
	mvn	r0, #1
.LBB155_16:
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#17:
.LCPI155_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_0+8)
.LCPI155_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI155_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_1+8)
.LCPI155_3:
	.long	.L.str.3.166(GOTOFF)
.LCPI155_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_2+8)
.LCPI155_5:
	.long	.L.str.21.164(GOTOFF)
.LCPI155_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_3+8)
.LCPI155_7:
	.long	.L.str.4.167(GOTOFF)
.LCPI155_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_4+8)
.LCPI155_9:
	.long	.L.str.6.169(GOTOFF)
.LCPI155_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_5+8)
.LCPI155_11:
	.long	.L.str.7.170(GOTOFF)
.LCPI155_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_6+8)
.LCPI155_13:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_7+8)
.LCPI155_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_8+8)
.LCPI155_15:
	.long	.L.str.5.168(GOTOFF)
.LCPI155_16:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC155_9+8)
.Lfunc_end155:
	.size	halide_zynq_init, .Lfunc_end155-halide_zynq_init
	.cantunwind
	.fnend

	.section	.text.halide_zynq_free,"ax",%progbits
	.weak	halide_zynq_free
	.align	2
	.type	halide_zynq_free,%function
halide_zynq_free:                       @ @halide_zynq_free
	.fnstart
@ BB#0:
	bx	lr
.Lfunc_end156:
	.size	halide_zynq_free, .Lfunc_end156-halide_zynq_free
	.cantunwind
	.fnend

	.section	.text.halide_zynq_cma_alloc,"ax",%progbits
	.weak	halide_zynq_cma_alloc
	.align	2
	.type	halide_zynq_cma_alloc,%function
halide_zynq_cma_alloc:                  @ @halide_zynq_cma_alloc
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	.pad	#8
	sub	sp, sp, #8
	mov	r4, r0
	ldr	r0, .LCPI157_0
	ldr	r7, .LCPI157_1
.LPC157_0:
	add	r0, pc, r0
	add	r0, r7, r0
	ldr	r0, [r0, #8]
	cmp	r0, #0
	beq	.LBB157_6
@ BB#1:
	mov	r0, #24
	bl	malloc(PLT)
	mov	r6, r0
	cmp	r6, #0
	beq	.LBB157_8
@ BB#2:
	ldr	r0, [r4, #28]
	cmp	r0, #1
	bhi	.LBB157_11
@ BB#3:
	mov	r0, r6
	bl	free(PLT)
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB157_25
@ BB#4:
	ldr	r0, .LCPI157_12
	mov	r1, r4
	ldr	r2, .LCPI157_13
	strb	r5, [r1, #1023]!
.LPC157_7:
	add	r0, pc, r0
.LBB157_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB157_27
.LBB157_6:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB157_21
@ BB#7:
	mov	r1, r4
	ldr	r0, .LCPI157_18
	ldr	r2, .LCPI157_19
	strb	r5, [r1, #1023]!
.LPC157_11:
	add	r0, pc, r0
	b	.LBB157_10
.LBB157_8:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB157_22
@ BB#9:
	ldr	r0, .LCPI157_15
	mov	r1, r4
	ldr	r2, .LCPI157_16
	strb	r5, [r1, #1023]!
.LPC157_9:
	add	r0, pc, r0
.LBB157_10:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit1
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB157_24
.LBB157_11:
	ldrb	r1, [r4, #25]
	mov	r3, #0
	cmp	r0, #3
	add	r1, r1, #7
	lsr	r1, r1, #3
	str	r1, [r6, #20]
	blo	.LBB157_16
@ BB#12:                                @ %.preheader
	subs	r12, r0, #2
	beq	.LBB157_16
@ BB#13:                                @ %.lr.ph
	ldr	r5, [r4, #32]
	sub	r3, r0, #2
	add	r5, r5, #4
.LBB157_14:                             @ =>This Inner Loop Header: Depth=1
	ldr	r2, [r5], #16
	subs	r3, r3, #1
	mul	r1, r2, r1
	bne	.LBB157_14
@ BB#15:                                @ %..loopexit_crit_edge
	mov	r3, r12
	str	r1, [r6, #20]
.LBB157_16:                             @ %.loopexit
	ldr	r1, [r4, #32]
	add	r2, r1, r3, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	r1, .LCPI157_2
	ldr	r2, [r2, #4]
	str	r2, [r6, #8]
	ldr	r0, [r0, #-12]
	str	r0, [r6, #12]
.LPC157_1:
	add	r0, pc, r1
	add	r0, r7, r0
	movw	r1, #23072
	ldr	r0, [r0, #8]
	movt	r1, #49156
	str	r2, [r6, #16]
	mov	r2, r6
	bl	ioctl(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.LBB157_28
@ BB#17:
	mov	r0, r6
	bl	free(PLT)
	mov	r0, #0
	mov	r1, #1024
	mov	r6, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB157_19
@ BB#18:
	mov	r0, #0
	mov	r6, r4
	strb	r0, [r6, #1023]!
.LBB157_19:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EEC2EPvPc.exit6
	ldr	r0, .LCPI157_3
	ldr	r1, .LCPI157_4
.LPC157_2:
	add	r7, pc, r0
	mov	r0, r4
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	mov	r1, #1
	asr	r3, r5, #31
	str	r1, [sp]
	mov	r1, r6
	mov	r2, r5
	bl	halide_int64_to_string(PLT)
	ldr	r1, .LCPI157_5
	add	r2, r1, r7
	mov	r1, r6
	bl	halide_string_to_string(PLT)
	cmp	r4, #0
	beq	.LBB157_31
@ BB#20:
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB157_32
.LBB157_21:
	ldr	r0, .LCPI157_20
	ldr	r1, .LCPI157_19
.LPC157_12:
	add	r5, pc, r0
	b	.LBB157_23
.LBB157_22:
	ldr	r0, .LCPI157_17
	ldr	r1, .LCPI157_16
.LPC157_10:
	add	r5, pc, r0
.LBB157_23:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit1
	add	r2, r1, r5
	mov	r0, #0
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI157_7
	add	r1, r0, r5
	mov	r0, #0
.LBB157_24:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit1
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r5, #0
	b	.LBB157_33
.LBB157_25:
	ldr	r0, .LCPI157_14
	ldr	r1, .LCPI157_13
.LPC157_8:
	add	r5, pc, r0
.LBB157_26:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	add	r2, r1, r5
	mov	r0, #0
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI157_7
	add	r1, r0, r5
	mov	r0, #0
.LBB157_27:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r5, #2
	b	.LBB157_33
.LBB157_28:
	mov	r5, #0
	ldr	r12, .LCPI157_8
	ldr	lr, [r6]
	str	r6, [r4]
.LPC157_4:
	add	r1, pc, r12
	str	r5, [r4, #4]
	add	r1, r7, r1
	ldr	r2, [r6, #12]
	ldr	r3, [r6, #16]
	ldr	r7, [r1, #8]
	ldr	r0, [r6, #20]
	mul	r1, r2, r3
	lsl	r2, lr, #12
	str	r7, [sp]
	str	r2, [sp, #4]
	mov	r2, #2
	mov	r3, #1
	mul	r1, r1, r0
	mov	r0, #0
	bl	mmap(PLT)
	str	r0, [r4, #12]
	cmn	r0, #1
	bne	.LBB157_33
@ BB#29:
	mov	r0, r6
	bl	free(PLT)
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB157_34
@ BB#30:
	mov	r1, r4
	ldr	r0, .LCPI157_9
	ldr	r2, .LCPI157_10
	strb	r5, [r1, #1023]!
.LPC157_5:
	add	r0, pc, r0
	b	.LBB157_5
.LBB157_31:
	ldr	r0, .LCPI157_6
	ldr	r1, .LCPI157_7
.LPC157_3:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
.LBB157_32:                             @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit7
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r5, #1
.LBB157_33:
	mov	r0, r5
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.LBB157_34:
	ldr	r0, .LCPI157_11
	ldr	r1, .LCPI157_10
.LPC157_6:
	add	r5, pc, r0
	b	.LBB157_26
	.align	2
@ BB#35:
.LCPI157_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_0+8)
.LCPI157_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI157_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_1+8)
.LCPI157_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_2+8)
.LCPI157_4:
	.long	.L.str.13.174(GOTOFF)
.LCPI157_5:
	.long	.L.str.14.175(GOTOFF)
.LCPI157_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_3+8)
.LCPI157_7:
	.long	.L.str.21.164(GOTOFF)
.LCPI157_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_4+8)
.LCPI157_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_5+8)
.LCPI157_10:
	.long	.L.str.15.176(GOTOFF)
.LCPI157_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_6+8)
.LCPI157_12:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_7+8)
.LCPI157_13:
	.long	.L.str.12.173(GOTOFF)
.LCPI157_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_8+8)
.LCPI157_15:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_9+8)
.LCPI157_16:
	.long	.L.str.11.172(GOTOFF)
.LCPI157_17:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_10+8)
.LCPI157_18:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_11+8)
.LCPI157_19:
	.long	.L.str.10.171(GOTOFF)
.LCPI157_20:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC157_12+8)
.Lfunc_end157:
	.size	halide_zynq_cma_alloc, .Lfunc_end157-halide_zynq_cma_alloc
	.cantunwind
	.fnend

	.section	.text.halide_zynq_cma_free,"ax",%progbits
	.weak	halide_zynq_cma_free
	.align	2
	.type	halide_zynq_cma_free,%function
halide_zynq_cma_free:                   @ @halide_zynq_cma_free
	.fnstart
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
	.setfp	r11, sp, #16
	add	r11, sp, #16
	mov	r4, r0
	ldr	r0, .LCPI158_0
	ldr	r6, .LCPI158_1
.LPC158_0:
	add	r0, pc, r0
	add	r0, r6, r0
	ldr	r0, [r0, #8]
	cmp	r0, #0
	beq	.LBB158_2
@ BB#1:
	ldr	r5, [r4]
	ldr	r0, [r4, #12]
	add	r3, r5, #12
	ldm	r3, {r1, r2, r3}
	mul	r1, r1, r2
	mul	r1, r1, r3
	bl	munmap(PLT)
	ldr	r0, .LCPI158_2
	movw	r1, #23075
	movt	r1, #49156
	mov	r2, r5
.LPC158_1:
	add	r0, pc, r0
	add	r0, r6, r0
	ldr	r0, [r0, #8]
	bl	ioctl(PLT)
	mov	r0, r5
	bl	free(PLT)
	mov	r0, #0
	str	r0, [r4]
	str	r0, [r4, #4]
	pop	{r4, r5, r6, r10, r11, pc}
.LBB158_2:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB158_4
@ BB#3:
	ldr	r0, .LCPI158_3
	mov	r1, r4
	ldr	r2, .LCPI158_4
	strb	r5, [r1, #1023]!
.LPC158_2:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB158_5
.LBB158_4:
	ldr	r0, .LCPI158_5
	ldr	r1, .LCPI158_4
.LPC158_3:
	add	r5, pc, r0
	mov	r0, #0
	add	r2, r1, r5
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI158_6
	add	r1, r0, r5
	mov	r0, #0
.LBB158_5:                              @ %_ZN6Halide7Runtime8Internal12_GLOBAL__N_17PrinterILi1ELy1024EED2Ev.exit
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r0, #0
	pop	{r4, r5, r6, r10, r11, pc}
	.align	2
@ BB#6:
.LCPI158_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC158_0+8)
.LCPI158_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI158_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC158_1+8)
.LCPI158_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC158_2+8)
.LCPI158_4:
	.long	.L.str.10.171(GOTOFF)
.LCPI158_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC158_3+8)
.LCPI158_6:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end158:
	.size	halide_zynq_cma_free, .Lfunc_end158-halide_zynq_cma_free
	.cantunwind
	.fnend

	.section	.text.halide_zynq_subimage,"ax",%progbits
	.weak	halide_zynq_subimage
	.align	2
	.type	halide_zynq_subimage,%function
halide_zynq_subimage:                   @ @halide_zynq_subimage
	.fnstart
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
	ldr	r12, [r0]
	mov	lr, r1
	vld1.32	{d16, d17}, [r12]!
	vldr	d18, [r12]
	ldr	r12, [sp, #8]
	vst1.32	{d16, d17}, [lr]!
	vstr	d18, [lr]
	str	r3, [r1, #8]
	str	r12, [r1, #12]
	ldr	r0, [r0, #12]
	sub	r0, r2, r0
	str	r0, [r1, #4]
	mov	r0, #0
	pop	{r11, pc}
.Lfunc_end159:
	.size	halide_zynq_subimage, .Lfunc_end159-halide_zynq_subimage
	.cantunwind
	.fnend

	.section	.text.halide_zynq_hwacc_launch,"ax",%progbits
	.weak	halide_zynq_hwacc_launch
	.align	2
	.type	halide_zynq_hwacc_launch,%function
halide_zynq_hwacc_launch:               @ @halide_zynq_hwacc_launch
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r2, r0
	ldr	r0, .LCPI160_0
	ldr	r1, .LCPI160_1
.LPC160_0:
	add	r0, pc, r0
	add	r0, r1, r0
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB160_2
@ BB#1:
	movw	r1, #23076
	movt	r1, #49156
	bl	ioctl(PLT)
	pop	{r4, r5, r11, pc}
.LBB160_2:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB160_4
@ BB#3:
	ldr	r0, .LCPI160_2
	mov	r1, r4
	ldr	r2, .LCPI160_3
	strb	r5, [r1, #1023]!
.LPC160_1:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB160_5
.LBB160_4:
	ldr	r0, .LCPI160_4
	ldr	r1, .LCPI160_3
.LPC160_2:
	add	r5, pc, r0
	mov	r0, #0
	add	r2, r1, r5
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI160_5
	add	r1, r0, r5
	mov	r0, #0
.LBB160_5:
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r0, #0
	pop	{r4, r5, r11, pc}
	.align	2
@ BB#6:
.LCPI160_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC160_0+8)
.LCPI160_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI160_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC160_1+8)
.LCPI160_3:
	.long	.L.str.10.171(GOTOFF)
.LCPI160_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC160_2+8)
.LCPI160_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end160:
	.size	halide_zynq_hwacc_launch, .Lfunc_end160-halide_zynq_hwacc_launch
	.cantunwind
	.fnend

	.section	.text.halide_zynq_hwacc_sync,"ax",%progbits
	.weak	halide_zynq_hwacc_sync
	.align	2
	.type	halide_zynq_hwacc_sync,%function
halide_zynq_hwacc_sync:                 @ @halide_zynq_hwacc_sync
	.fnstart
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	mov	r2, r0
	ldr	r0, .LCPI161_0
	ldr	r1, .LCPI161_1
.LPC161_0:
	add	r0, pc, r0
	add	r0, r1, r0
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.LBB161_2
@ BB#1:
	movw	r1, #23077
	movt	r1, #49156
	bl	ioctl(PLT)
	pop	{r4, r5, r11, pc}
.LBB161_2:
	mov	r0, #0
	mov	r1, #1024
	mov	r5, #0
	bl	halide_malloc(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.LBB161_4
@ BB#3:
	ldr	r0, .LCPI161_2
	mov	r1, r4
	ldr	r2, .LCPI161_3
	strb	r5, [r1, #1023]!
.LPC161_1:
	add	r0, pc, r0
	add	r2, r2, r0
	mov	r0, r4
	bl	halide_string_to_string(PLT)
	rsb	r1, r4, #1
	add	r2, r1, r0
	mov	r0, #0
	asr	r3, r2, #31
	mov	r1, r4
	bl	halide_msan_annotate_memory_is_initialized(PLT)
	mov	r0, #0
	mov	r1, r4
	b	.LBB161_5
.LBB161_4:
	ldr	r0, .LCPI161_4
	ldr	r1, .LCPI161_3
.LPC161_2:
	add	r5, pc, r0
	mov	r0, #0
	add	r2, r1, r5
	mov	r1, #0
	bl	halide_string_to_string(PLT)
	ldr	r0, .LCPI161_5
	add	r1, r0, r5
	mov	r0, #0
.LBB161_5:
	bl	halide_error(PLT)
	mov	r0, #0
	mov	r1, r4
	bl	halide_free(PLT)
	mvn	r0, #0
	pop	{r4, r5, r11, pc}
	.align	2
@ BB#6:
.LCPI161_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC161_0+8)
.LCPI161_1:
	.long	_MergedGlobals(GOTOFF)
.LCPI161_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC161_1+8)
.LCPI161_3:
	.long	.L.str.10.171(GOTOFF)
.LCPI161_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC161_2+8)
.LCPI161_5:
	.long	.L.str.21.164(GOTOFF)
.Lfunc_end161:
	.size	halide_zynq_hwacc_sync, .Lfunc_end161-halide_zynq_hwacc_sync
	.cantunwind
	.fnend

	.section	.text.pipeline_zynq,"ax",%progbits
	.globl	pipeline_zynq
	.align	2
	.type	pipeline_zynq,%function
pipeline_zynq:                          @ @pipeline_zynq
	.fnstart
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.pad	#236
	sub	sp, sp, #236
	str	r0, [sp, #108]          @ 4-byte Spill
	cmp	r0, #0
	beq	.LBB162_43
@ BB#1:                                 @ %assert succeeded
	cmp	r1, #0
	beq	.LBB162_44
@ BB#2:                                 @ %assert succeeded2
	ldr	r9, [r1, #32]
	mov	r10, r1
	mov	r4, #0
	ldr	r0, [r9, #8]
	ldr	r5, [r9, #4]
	str	r0, [sp, #68]           @ 4-byte Spill
	ldr	r0, [r9]
	str	r0, [sp, #100]          @ 4-byte Spill
	add	r0, r5, #63
	ldr	r8, [r9, #16]
	asr	r1, r0, #6
	cmp	r1, #1
	str	r8, [sp, #92]           @ 4-byte Spill
	asrgt	r4, r0, #6
	ldr	r6, [r9, #20]
	cmp	r1, #2
	mov	r11, r4
	add	r2, r6, #63
	orrlt	r11, r11, #1
	asr	r2, r2, #6
	str	r6, [sp, #112]          @ 4-byte Spill
	mul	r2, r2, r1
	mov	r1, r11
	sub	r7, r2, #1
	str	r2, [sp, #32]           @ 4-byte Spill
	mov	r0, r7
	bl	__aeabi_idiv(PLT)
	mls	r1, r0, r11, r7
	add	r6, r6, r8
	str	r6, [sp, #64]           @ 4-byte Spill
	ldr	r12, [sp, #100]         @ 4-byte Reload
	and	r2, r1, r4
	asr	r1, r1, #31
	sub	r0, r0, r2, asr #31
	bic	r1, r1, r4, asr #31
	add	lr, r5, r12
	add	r0, r0, r1
	sub	r2, r12, #3
	add	r0, r8, r0, lsl #6
	add	r1, r0, #63
	sub	r0, r6, #1
	cmp	r1, r0
	str	r0, [sp, #20]           @ 4-byte Spill
	movge	r1, r0
	bic	r0, r11, r4, asr #31
	str	r1, [sp, #88]           @ 4-byte Spill
	rsb	r1, r11, #0
	and	r1, r1, r4, asr #31
	orr	r0, r0, r1
	lsl	r1, r0, #6
	cmp	r1, r5
	mov	r1, r5
	lsllt	r1, r0, #6
	add	r0, r1, r12
	sub	r1, lr, #10
	str	r0, [sp, #76]           @ 4-byte Spill
	sub	r0, lr, #13
	cmp	r2, r0
	movlt	r0, r2
	add	r2, r5, #5
	bfc	r2, #0, #4
	add	r2, r12, r2
	add	r3, r2, #12
	add	r2, lr, #2
	cmp	r3, r2
	movlt	r2, r3
	cmp	r12, r1
	movlt	r1, r12
	sub	r3, lr, #64
	str	r1, [sp, #84]           @ 4-byte Spill
	sub	r1, r6, #64
	cmp	r8, r1
	movlt	r1, r8
	cmp	r12, r3
	str	r1, [sp, #80]           @ 4-byte Spill
	movlt	r3, r12
	ldr	r4, [sp, #108]          @ 4-byte Reload
	ldrh	r1, [r4, #26]
	str	r1, [sp, #52]           @ 4-byte Spill
	ldrb	r1, [r4, #25]
	str	r1, [sp, #48]           @ 4-byte Spill
	ldrb	r1, [r4, #24]
	str	r1, [sp, #56]           @ 4-byte Spill
	ldr	r7, [r4, #32]
	ldr	r1, [r4, #12]
	ldr	r6, [r7, #8]
	ldr	r8, [r7, #4]
	str	r6, [sp, #60]           @ 4-byte Spill
	ldr	r6, [r7]
	str	r6, [sp, #116]          @ 4-byte Spill
	ldr	r6, [r7, #20]
	ldr	r11, [r7, #16]
	str	r6, [sp, #104]          @ 4-byte Spill
	ldr	r6, [r7, #24]
	str	r6, [sp, #28]           @ 4-byte Spill
	ldrh	r6, [r10, #26]
	str	r6, [sp, #40]           @ 4-byte Spill
	ldrb	r6, [r10, #25]
	str	r6, [sp, #36]           @ 4-byte Spill
	ldrb	r6, [r10, #24]
	str	r6, [sp, #44]           @ 4-byte Spill
	ldr	r6, [r10, #12]
	cmp	r6, #0
	str	r6, [sp, #24]           @ 4-byte Spill
	ldr	r7, [r9, #24]
	str	r7, [sp, #96]           @ 4-byte Spill
	mov	r7, r1
	bne	.LBB162_7
@ BB#3:                                 @ %_halide_buffer_is_bounds_query.exit54
	mov	r6, r1
	mov	r1, r11
	ldm	r10, {r7, r11}
	orrs	r7, r7, r11
	mov	r11, r1
	mov	r1, r6
	mov	r7, r1
	bne	.LBB162_7
@ BB#4:                                 @ %true_bb
	str	r11, [sp, #72]          @ 4-byte Spill
	ldr	r7, [sp, #76]           @ 4-byte Reload
	vmov.i32	q8, #0x0
	sub	r6, r7, r3
	str	r6, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #120]
	str	r6, [sp, #124]
	mov	r6, #1
	str	r6, [sp, #128]
	mov	r6, #0
	str	r6, [sp, #132]
	ldr	r7, [sp, #80]           @ 4-byte Reload
	rsb	r11, r7, #1
	str	r7, [sp, #136]
	ldr	r7, [sp, #88]           @ 4-byte Reload
	add	r7, r11, r7
	mov	r11, #0
	str	r7, [sp, #140]
	mov	r7, #8
	ldr	r6, [sp, #16]           @ 4-byte Reload
	vst1.64	{d16, d17}, [r10]
	str	r6, [sp, #144]
	mov	r6, #1
	strb	r6, [r10, #24]
	strb	r7, [r10, #25]
	mov	r7, #2
	strh	r6, [r10, #26]
	add	r6, sp, #120
	cmp	r6, r9
	str	r7, [r10, #28]
	mov	r7, r1
	str	r11, [sp, #148]
	str	r9, [r10, #32]
	beq	.LBB162_6
@ BB#5:                                 @ %.lr.ph.preheader.i.49
	vld1.64	{d16, d17}, [r6]!
	vst1.32	{d16, d17}, [r9]
	ldr	r7, [r10, #32]
	vld1.64	{d16, d17}, [r6]
	add	r7, r7, #16
	vst1.32	{d16, d17}, [r7]
	ldr	r7, [r4, #12]
.LBB162_6:                              @ %_halide_buffer_init.exit53
	str	r11, [r10, #16]
	str	r11, [r10, #20]
	ldr	r11, [sp, #72]          @ 4-byte Reload
.LBB162_7:                              @ %after_bb
	sub	r0, r2, r0
	cmp	r7, #0
	str	r0, [sp, #72]           @ 4-byte Spill
	beq	.LBB162_9
@ BB#8:
	mov	r6, r5
	mov	r5, #0
	b	.LBB162_15
.LBB162_9:                              @ %_halide_buffer_is_bounds_query.exit48
	ldm	r4, {r0, r9}
	mov	r6, r5
	orrs	r0, r0, r9
	bne	.LBB162_13
@ BB#10:                                @ %true_bb3
	ldr	r0, [sp, #84]           @ 4-byte Reload
	mov	r7, #1
	mov	r9, #0
	vmov.i32	q8, #0x0
	mov	r5, r11
	ldr	r11, [r4, #32]
	str	r0, [sp, #152]
	ldr	r0, [sp, #72]           @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #156]
	str	r7, [sp, #160]
	str	r9, [sp, #164]
	ldr	r2, [sp, #92]           @ 4-byte Reload
	str	r2, [sp, #168]
	ldr	r2, [sp, #112]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r4]
	add	r2, r2, #6
	strb	r7, [r4, #24]
	str	r2, [sp, #172]
	str	r0, [sp, #176]
	mov	r0, #8
	strb	r0, [r4, #25]
	mov	r0, #2
	strh	r7, [r4, #26]
	mov	r7, #0
	str	r0, [r4, #28]
	add	r0, sp, #152
	str	r9, [sp, #180]
	cmp	r0, r11
	beq	.LBB162_12
@ BB#11:                                @ %.lr.ph.preheader.i
	vld1.64	{d16, d17}, [r0]!
	vst1.32	{d16, d17}, [r11]
	ldr	r2, [r4, #32]
	vld1.64	{d16, d17}, [r0]
	add	r0, r2, #16
	vst1.32	{d16, d17}, [r0]
	ldr	r7, [r4, #12]
.LBB162_12:                             @ %_halide_buffer_init.exit
	mov	r11, r5
	str	r9, [r4, #16]
	str	r9, [r4, #20]
.LBB162_13:                             @ %after_bb5
	mov	r5, #0
	cmp	r7, #0
	bne	.LBB162_15
@ BB#14:
	ldm	r4, {r0, r7}
	mov	r5, #0
	orrs	r0, r0, r7
	movweq	r5, #1
.LBB162_15:                             @ %_halide_buffer_is_bounds_query.exit47
	ldr	r2, [r10, #12]
	mov	r0, #0
	mov	r9, r8
	cmp	r2, #0
	mov	r2, #0
	bne	.LBB162_17
@ BB#16:
	ldm	r10, {r2, r7}
	orrs	r2, r2, r7
	mov	r2, #0
	movweq	r2, #1
.LBB162_17:                             @ %_halide_buffer_is_bounds_query.exit
	orrs	r2, r5, r2
	ldr	r5, [sp, #112]          @ 4-byte Reload
	ldr	r7, [sp, #104]          @ 4-byte Reload
	bne	.LBB162_60
@ BB#18:                                @ %true_bb6
	ldr	r0, [sp, #44]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_46
@ BB#19:                                @ %true_bb6
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #8
	bne	.LBB162_46
@ BB#20:                                @ %true_bb6
	ldr	r0, [sp, #40]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_46
@ BB#21:                                @ %assert succeeded10
	ldr	r8, [sp, #92]           @ 4-byte Reload
	ldr	r0, [sp, #56]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_47
@ BB#22:                                @ %assert succeeded10
	ldr	r0, [sp, #48]           @ 4-byte Reload
	cmp	r0, #8
	bne	.LBB162_47
@ BB#23:                                @ %assert succeeded10
	ldr	r0, [sp, #52]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_47
@ BB#24:                                @ %assert succeeded12
	cmp	r12, r3
	bgt	.LBB162_49
@ BB#25:                                @ %assert succeeded12
	ldr	r0, [sp, #76]           @ 4-byte Reload
	sub	r0, r0, r6
	cmp	r0, r12
	bgt	.LBB162_49
@ BB#26:                                @ %assert succeeded14
	cmp	r6, #0
	blt	.LBB162_50
@ BB#27:                                @ %assert succeeded16
	ldr	r0, [sp, #80]           @ 4-byte Reload
	cmp	r8, r0
	bgt	.LBB162_51
@ BB#28:                                @ %assert succeeded16
	ldr	r0, [sp, #88]           @ 4-byte Reload
	sub	r0, r0, r5
	cmp	r0, r8
	bge	.LBB162_51
@ BB#29:                                @ %assert succeeded18
	str	r1, [sp, #88]           @ 4-byte Spill
	cmp	r5, #0
	blt	.LBB162_52
@ BB#30:                                @ %assert succeeded20
	ldr	r2, [sp, #84]           @ 4-byte Reload
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r1, [sp, #116]          @ 4-byte Reload
	add	r0, r0, r2
	mov	r3, r2
	cmp	r1, r2
	bgt	.LBB162_53
@ BB#31:                                @ %assert succeeded20
	ldr	r2, [sp, #116]          @ 4-byte Reload
	sub	r1, r0, r9
	cmp	r1, r2
	bge	.LBB162_53
@ BB#32:                                @ %assert succeeded22
	cmp	r9, #0
	blt	.LBB162_55
@ BB#33:                                @ %assert succeeded24
	ldr	r2, [sp, #64]           @ 4-byte Reload
	cmp	r11, r8
	bgt	.LBB162_56
@ BB#34:                                @ %assert succeeded24
	add	r0, r2, #6
	sub	r0, r0, r7
	cmp	r0, r11
	bgt	.LBB162_56
@ BB#35:                                @ %assert succeeded26
	cmp	r7, #0
	blt	.LBB162_58
@ BB#36:                                @ %assert succeeded28
	ldr	r0, [sp, #68]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_61
@ BB#37:                                @ %assert succeeded30
	ldr	r0, [sp, #60]           @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB162_62
@ BB#38:                                @ %assert succeeded34
	ldr	r2, [sp, #96]           @ 4-byte Reload
	smmul	r0, r2, r5
	asr	r1, r0, #31
	mov	r3, r1
	smlal	r1, r3, r2, r5
	eor	r2, r1, r0, asr #31
	mov	r1, #0
	eor	r3, r3, r0, asr #31
	cmp	r2, #0
	mov	r0, #0
	movwge	r1, #1
	cmp	r3, #0
	movne	r1, r0
	cmp	r1, #0
	beq	.LBB162_64
@ BB#39:                                @ %assert succeeded36
	smull	r2, r3, r5, r6
	mov	r1, #0
	mov	lr, r6
	cmp	r2, #0
	movwge	r1, #1
	cmp	r3, #0
	movwlt	r0, #1
	moveq	r0, r1
	cmp	r0, #0
	beq	.LBB162_65
@ BB#40:                                @ %assert succeeded40
	ldr	r2, [sp, #28]           @ 4-byte Reload
	smmul	r0, r2, r7
	mov	r6, r2
	asr	r1, r0, #31
	mov	r3, r1
	smlal	r1, r3, r2, r7
	eor	r2, r1, r0, asr #31
	mov	r1, #0
	eor	r3, r3, r0, asr #31
	cmp	r2, #0
	mov	r0, #0
	movwge	r1, #1
	cmp	r3, #0
	movne	r1, r0
	cmp	r1, #0
	beq	.LBB162_66
@ BB#41:                                @ %assert succeeded42
	smull	r2, r3, r7, r9
	mov	r1, #0
	cmp	r2, #0
	movwge	r1, #1
	cmp	r3, #0
	movwlt	r0, #1
	moveq	r0, r1
	cmp	r0, #0
	beq	.LBB162_68
@ BB#42:                                @ %produce output$1
	str	lr, [sp, #188]
	str	r5, [sp, #192]
	str	r12, [sp, #196]
	str	r8, [sp, #200]
	ldr	r2, [sp, #96]           @ 4-byte Reload
	ldr	r1, .LCPI162_24
	ldr	r0, .LCPI162_23
	str	r2, [sp, #204]
.LPC162_16:
	add	r1, pc, r1
	ldr	r2, [sp, #116]          @ 4-byte Reload
	add	r1, r0, r1
	mov	r0, #0
	str	r2, [sp, #208]
	str	r11, [sp, #212]
	str	r6, [sp, #216]
	ldr	r2, [sp, #24]           @ 4-byte Reload
	str	r2, [sp, #220]
	str	r10, [sp, #224]
	ldr	r2, [sp, #88]           @ 4-byte Reload
	str	r2, [sp, #228]
	add	r2, sp, #188
	str	r4, [sp, #232]
	str	r2, [sp]
	mov	r2, #0
	ldr	r3, [sp, #32]           @ 4-byte Reload
	bl	halide_do_par_for(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_43:                             @ %assert failed
	ldr	r0, .LCPI162_26
	ldr	r1, .LCPI162_20
.LPC162_18:
	add	r0, pc, r0
	b	.LBB162_45
.LBB162_44:                             @ %assert failed1
	ldr	r0, .LCPI162_25
	ldr	r1, .LCPI162_17
.LPC162_17:
	add	r0, pc, r0
.LBB162_45:                             @ %assert failed
	add	r1, r1, r0
	mov	r0, #0
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	b	halide_error_buffer_argument_is_null(PLT)
.LBB162_46:                             @ %assert failed9
	ldr	r7, [sp, #36]           @ 4-byte Reload
	mov	r3, #8
	mov	r2, #1
	ldr	r1, .LCPI162_1
	ldr	r0, .LCPI162_0
	str	r7, [sp]
.LPC162_0:
	add	r1, pc, r1
	str	r3, [sp, #4]
	add	r1, r0, r1
	ldr	r3, [sp, #40]           @ 4-byte Reload
	mov	r0, #0
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, [sp, #44]           @ 4-byte Reload
	b	.LBB162_48
.LBB162_47:                             @ %assert failed11
	ldr	r7, [sp, #48]           @ 4-byte Reload
	mov	r3, #8
	ldr	r1, .LCPI162_3
	mov	r2, #1
	ldr	r0, .LCPI162_2
	str	r7, [sp]
.LPC162_1:
	add	r1, pc, r1
	str	r3, [sp, #4]
	add	r1, r0, r1
	ldr	r3, [sp, #52]           @ 4-byte Reload
	mov	r0, #0
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r2, [sp, #56]           @ 4-byte Reload
.LBB162_48:                             @ %destructor_block
	mov	r3, #1
	bl	halide_error_bad_type(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_49:                             @ %assert failed13
	ldr	r7, [sp, #76]           @ 4-byte Reload
	sub	r1, lr, #1
	ldr	r2, .LCPI162_4
	sub	r7, r7, #1
	ldr	r0, .LCPI162_0
	stm	sp, {r7, r12}
	str	r1, [sp, #8]
.LPC162_2:
	add	r1, pc, r2
	add	r1, r0, r1
	b	.LBB162_54
.LBB162_50:                             @ %assert failed15
	ldr	r0, .LCPI162_5
	mov	r2, #0
	ldr	r1, .LCPI162_0
	mov	r3, r6
.LPC162_3:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
	b	.LBB162_59
.LBB162_51:                             @ %assert failed17
	ldr	r2, [sp, #88]           @ 4-byte Reload
	ldr	r1, .LCPI162_6
	stm	sp, {r2, r8}
.LPC162_4:
	add	r1, pc, r1
	ldr	r2, [sp, #20]           @ 4-byte Reload
	ldr	r0, .LCPI162_0
	str	r2, [sp, #8]
	add	r1, r0, r1
	mov	r0, #0
	mov	r2, #1
	ldr	r3, [sp, #80]           @ 4-byte Reload
	b	.LBB162_57
.LBB162_52:                             @ %assert failed19
	ldr	r0, .LCPI162_7
	mov	r2, #1
	ldr	r1, .LCPI162_0
	mov	r3, r5
.LPC162_5:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
	b	.LBB162_59
.LBB162_53:                             @ %assert failed21
	ldr	r7, [sp, #116]          @ 4-byte Reload
	ldr	r2, .LCPI162_8
	add	r6, r7, r9
	ldr	r1, .LCPI162_2
	stm	sp, {r0, r7}
	sub	r6, r6, #1
.LPC162_6:
	add	r0, pc, r2
	str	r6, [sp, #8]
	add	r1, r1, r0
.LBB162_54:                             @ %destructor_block
	mov	r0, #0
	mov	r2, #0
	b	.LBB162_57
.LBB162_55:                             @ %assert failed23
	ldr	r0, .LCPI162_9
	mov	r2, #0
	ldr	r1, .LCPI162_2
	mov	r3, r9
.LPC162_7:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
	b	.LBB162_59
.LBB162_56:                             @ %assert failed25
	ldr	r1, .LCPI162_10
	add	r3, r11, r7
	ldr	r0, .LCPI162_2
	add	r2, r2, #5
.LPC162_8:
	add	r1, pc, r1
	sub	r3, r3, #1
	stm	sp, {r2, r11}
	add	r1, r0, r1
	mov	r0, #0
	mov	r2, #1
	str	r3, [sp, #8]
	mov	r3, r8
.LBB162_57:                             @ %destructor_block
	bl	halide_error_access_out_of_bounds(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_58:                             @ %assert failed27
	ldr	r0, .LCPI162_11
	mov	r2, #1
	ldr	r1, .LCPI162_2
	mov	r3, r7
.LPC162_9:
	add	r0, pc, r0
	add	r1, r1, r0
	mov	r0, #0
.LBB162_59:                             @ %destructor_block
	bl	halide_error_buffer_extents_negative(PLT)
.LBB162_60:                             @ %destructor_block
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_61:                             @ %assert failed29
	mov	r2, r0
	ldr	r0, .LCPI162_12
	ldr	r1, .LCPI162_13
	mov	r3, #1
	ldr	r7, .LCPI162_14
	str	r3, [sp]
.LPC162_10:
	add	r3, pc, r7
	b	.LBB162_63
.LBB162_62:                             @ %assert failed31
	ldr	r7, .LCPI162_16
	mov	r3, #1
	mov	r2, r0
	str	r3, [sp]
	ldr	r0, .LCPI162_12
.LPC162_11:
	add	r3, pc, r7
	ldr	r1, .LCPI162_15
.LBB162_63:                             @ %destructor_block
	add	r1, r1, r3
	add	r3, r0, r3
	mov	r0, #0
	bl	halide_error_constraint_violated(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_64:                             @ %assert failed35
	ldr	r1, .LCPI162_17
	mvn	r6, #-2147483648
	ldr	r7, .LCPI162_18
	str	r6, [sp]
	str	r0, [sp, #4]
.LPC162_12:
	add	r0, pc, r7
	b	.LBB162_67
.LBB162_65:                             @ %assert failed37
	ldr	r1, .LCPI162_19
	mvn	r6, #-2147483648
	ldr	r0, .LCPI162_17
	mov	r7, #0
.LPC162_13:
	add	r1, pc, r1
	stm	sp, {r6, r7}
	b	.LBB162_69
.LBB162_66:                             @ %assert failed41
	ldr	r7, .LCPI162_21
	mvn	r6, #-2147483648
	str	r6, [sp]
	str	r0, [sp, #4]
.LPC162_14:
	add	r0, pc, r7
	ldr	r1, .LCPI162_20
.LBB162_67:                             @ %destructor_block
	add	r1, r1, r0
	mov	r0, #0
	bl	halide_error_buffer_allocation_too_large(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB162_68:                             @ %assert failed43
	ldr	r1, .LCPI162_22
	mvn	r6, #-2147483648
	mov	r7, #0
	ldr	r0, .LCPI162_20
	stm	sp, {r6, r7}
.LPC162_15:
	add	r1, pc, r1
.LBB162_69:                             @ %destructor_block
	add	r1, r0, r1
	mov	r0, #0
	bl	halide_error_buffer_extents_too_large(PLT)
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.align	2
@ BB#70:
.LCPI162_0:
	.long	.Lstr.179(GOTOFF)
.LCPI162_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_0+8)
.LCPI162_2:
	.long	.Lstr.180(GOTOFF)
.LCPI162_3:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_1+8)
.LCPI162_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_2+8)
.LCPI162_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_3+8)
.LCPI162_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_4+8)
.LCPI162_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_5+8)
.LCPI162_8:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_6+8)
.LCPI162_9:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_7+8)
.LCPI162_10:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_8+8)
.LCPI162_11:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_9+8)
.LCPI162_12:
	.long	.Lstr.182(GOTOFF)
.LCPI162_13:
	.long	.Lstr.181(GOTOFF)
.LCPI162_14:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_10+8)
.LCPI162_15:
	.long	.Lstr.183(GOTOFF)
.LCPI162_16:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_11+8)
.LCPI162_17:
	.long	.Lstr.178(GOTOFF)
.LCPI162_18:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_12+8)
.LCPI162_19:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_13+8)
.LCPI162_20:
	.long	.Lstr(GOTOFF)
.LCPI162_21:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_14+8)
.LCPI162_22:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_15+8)
.LCPI162_23:
	.long	par_for_pipeline_zynq_output$1.s0.x.xo.xo(GOTOFF)
.LCPI162_24:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_16+8)
.LCPI162_25:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_17+8)
.LCPI162_26:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC162_18+8)
.Lfunc_end162:
	.size	pipeline_zynq, .Lfunc_end162-pipeline_zynq
	.cantunwind
	.fnend

	.section	".text.par_for_pipeline_zynq_output$1.s0.x.xo.xo","ax",%progbits
	.align	2
	.type	par_for_pipeline_zynq_output$1.s0.x.xo.xo,%function
par_for_pipeline_zynq_output$1.s0.x.xo.xo: @ @"par_for_pipeline_zynq_output$1.s0.x.xo.xo"
	.fnstart
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9}
	vpush	{d8, d9}
	.pad	#304
	sub	sp, sp, #304
	mov	r5, r2
	str	r0, [r11, #-292]        @ 4-byte Spill
	ldr	r0, [r5, #4]
	mov	r10, r1
	ldr	r8, [r5]
	mov	r6, #0
	ldr	r7, [r5, #8]
	str	r0, [r11, #-284]        @ 4-byte Spill
	ldr	r0, [r5, #12]
	str	r8, [r11, #-268]        @ 4-byte Spill
	str	r7, [r11, #-288]        @ 4-byte Spill
	str	r0, [r11, #-280]        @ 4-byte Spill
	add	r0, r8, #63
	asr	r1, r0, #6
	cmp	r1, #1
	asrgt	r6, r0, #6
	cmp	r1, #2
	mov	r4, r6
	orrlt	r4, r4, #1
	rsb	r0, r4, #0
	bic	r1, r4, r6, asr #31
	and	r0, r0, r6, asr #31
	orr	r9, r1, r0
	mov	r0, r10
	mov	r1, r4
	bl	__modsi3(PLT)
	and	r1, r9, r0, asr #31
	add	r0, r1, r0
	add	r1, r7, r8
	str	r0, [r11, #-276]        @ 4-byte Spill
	add	r0, r7, r0, lsl #6
	sub	r2, r1, #64
	str	r1, [r11, #-272]        @ 4-byte Spill
	cmp	r0, r2
	movlt	r2, r0
	add	r0, r0, #64
	cmp	r0, r1
	str	r2, [r11, #-312]        @ 4-byte Spill
	movge	r0, r1
	sub	r1, r2, #3
	sub	r9, r0, #13
	str	r1, [r11, #-304]        @ 4-byte Spill
	cmp	r1, r9
	add	r0, r0, #2
	movlt	r9, r1
	add	r1, r2, #76
	cmp	r1, r0
	str	r9, [r11, #-308]        @ 4-byte Spill
	movlt	r0, r1
	add	r1, r2, #66
	cmp	r0, r1
	movle	r0, r1
	mov	r1, r4
	sub	r0, r0, r9
	add	r7, r0, #1
	mov	r0, r10
	bl	__aeabi_idiv(PLT)
	mls	r2, r0, r4, r10
	str	r0, [r11, #-320]        @ 4-byte Spill
	vmov.i32	q4, #0x0
	ldr	r8, [r5, #40]
	str	r9, [r11, #-192]
	asr	r1, r2, #31
	and	r10, r2, r6
	sub	r0, r0, r10, asr #31
	ldr	r2, [r11, #-280]        @ 4-byte Reload
	bic	r1, r1, r6, asr #31
	str	r7, [r11, #-188]
	add	r0, r0, r1
	str	r1, [r11, #-328]        @ 4-byte Spill
	ldr	r1, [r11, #-284]        @ 4-byte Reload
	add	r0, r2, r0, lsl #6
	add	r1, r2, r1
	ldr	r2, [r5, #20]
	sub	r6, r1, #64
	cmp	r0, r6
	str	r2, [r11, #-324]        @ 4-byte Spill
	movlt	r6, r0
	ldr	r2, [r5, #24]
	add	r0, r0, #64
	cmp	r0, r1
	sub	r3, r6, #3
	movlt	r1, r0
	str	r2, [r11, #-332]        @ 4-byte Spill
	add	r0, r1, #2
	ldr	r2, [r5, #28]
	add	r1, r6, #66
	cmp	r1, r0
	movgt	r0, r1
	str	r2, [r11, #-316]        @ 4-byte Spill
	sub	r0, r0, r6
	ldr	r2, [r5, #32]
	add	r4, r0, #4
	sub	r0, r11, #264
	mov	r1, r0
	str	r2, [r11, #-300]        @ 4-byte Spill
	ldr	r2, [r5, #16]
	mov	r5, #0
	vst1.64	{d8, d9}, [r1]!
	str	r2, [r11, #-296]        @ 4-byte Spill
	mov	r2, #1
	str	r2, [r11, #-184]
	str	r5, [r11, #-180]
	str	r3, [r11, #-176]
	mov	r3, #8
	str	r4, [r11, #-172]
	str	r7, [r11, #-168]
	strb	r2, [r11, #-240]
	strb	r3, [r11, #-239]
	sub	r3, r11, #192
	str	r5, [r11, #-164]
	strh	r2, [r11, #-238]
	mov	r2, #2
	str	r2, [r11, #-236]
	sub	r2, r11, #224
	vld1.64	{d16, d17}, [r3]
	add	r3, r3, #16
	str	r2, [r11, #-232]
	vst1.64	{d16, d17}, [r2]!
	vld1.64	{d16, d17}, [r3]
	str	r5, [r1]
	vst1.64	{d16, d17}, [r2]
	str	r5, [r1, #4]
	bl	halide_zynq_cma_alloc(PLT)
	cmp	r0, #0
	bne	.LBB163_10
@ BB#1:                                 @ %assert succeeded
	umull	r2, r3, r4, r7
	mov	r0, #0
	str	r8, [r11, #-348]        @ 4-byte Spill
	cmp	r2, #0
	movwge	r0, #1
	cmp	r3, #0
	movne	r0, r5
	cmp	r0, #0
	beq	.LBB163_11
@ BB#2:                                 @ %assert succeeded2
	ldr	lr, [r11, #-252]
	str	r6, [r11, #-344]        @ 4-byte Spill
	cmp	lr, #0
	beq	.LBB163_12
@ BB#3:                                 @ %for padded$1.s0.y.preheader
	ldr	r7, [r11, #-288]        @ 4-byte Reload
	asr	r10, r10, #31
	ldr	r2, [r11, #-276]        @ 4-byte Reload
	mvn	r0, r7
	rsb	r1, r7, #63
	sub	r3, r0, r2, lsl #6
	mvn	r0, #64
	sub	r0, r0, r7
	sub	r2, r0, r2, lsl #6
	ldr	r0, [r11, #-268]        @ 4-byte Reload
	str	r3, [r11, #-336]        @ 4-byte Spill
	sub	r4, r1, r0
	ldr	r0, [r11, #-272]        @ 4-byte Reload
	cmp	r3, r4
	str	r4, [r11, #-340]        @ 4-byte Spill
	mvn	r6, r0
	movgt	r4, r3
	cmp	r2, r6
	sub	r8, r4, #13
	movgt	r6, r2
	add	r5, r4, #3
	add	r12, r6, #13
	sub	r7, r4, #29
	cmp	r8, r12
	sub	r3, r4, #61
	movle	r8, r12
	cmp	r12, r5
	movgt	r5, r12
	cmp	r7, r12
	sub	r1, r5, r8
	movle	r7, r12
	add	r0, lr, r1
	sub	r1, r5, r7
	str	r0, [r11, #-352]        @ 4-byte Spill
	add	r0, lr, r1
	str	r0, [r11, #-268]        @ 4-byte Spill
	sub	r0, r4, #45
	cmp	r0, r12
	sub	r9, r6, #2
	movle	r0, r12
	cmp	r3, r12
	sub	r6, r4, #76
	movgt	r12, r3
	sub	r2, r5, r0
	cmp	r9, r6
	add	r1, lr, r2
	movgt	r6, r9
	sub	r3, r5, r12
	str	r1, [r11, #-272]        @ 4-byte Spill
	add	r1, lr, r3
	mvn	r6, r6
	rsb	r4, r4, #65
	str	r1, [r11, #-276]        @ 4-byte Spill
	cmp	r6, r4
	ldr	r1, [r11, #-320]        @ 4-byte Reload
	ldr	r2, [r11, #-328]        @ 4-byte Reload
	movgt	r4, r6
	add	r4, r4, r5
	ldr	r3, [r11, #-324]        @ 4-byte Reload
	add	r1, r2, r1
	add	r6, r4, #2
	rsb	r4, r5, #2
	rsb	r5, r8, #2
	sub	r8, r1, r10
	ldr	r10, [r11, #-280]       @ 4-byte Reload
	ldr	r2, [r11, #-284]        @ 4-byte Reload
	rsb	r7, r7, #2
	mvn	r1, r10
	rsb	r0, r0, #2
	sub	r9, r1, r8, lsl #6
	rsb	r1, r10, #63
	sub	r8, r1, r2
	ldr	r1, [r11, #-332]        @ 4-byte Reload
	ldr	r2, [r11, #-316]        @ 4-byte Reload
	rsb	r12, r12, #2
	cmp	r9, r8
	str	r8, [r11, #-284]        @ 4-byte Spill
	movgt	r8, r9
	mvn	r1, r1
	sub	r1, r1, r8
	str	r9, [r11, #-320]        @ 4-byte Spill
	mul	r1, r2, r1
	mov	r9, #0
	mov	r10, #70
	sub	r1, r1, r3
	ldr	r3, [r11, #-348]        @ 4-byte Reload
	add	r8, r3, r1
	ldr	r3, [r11, #-352]        @ 4-byte Reload
.LBB163_4:                              @ %for padded$1.s0.y
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r4, r8
	subs	r10, r10, #1
	vld1.8	{d16, d17}, [r1]
	add	r1, lr, r9
	vst1.8	{d16, d17}, [r1]
	add	r1, r5, r8
	vld1.8	{d16, d17}, [r1]
	add	r1, r3, r9
	vst1.8	{d16, d17}, [r1]
	add	r1, r7, r8
	vld1.8	{d16, d17}, [r1]
	ldr	r1, [r11, #-268]        @ 4-byte Reload
	add	r1, r1, r9
	vst1.8	{d16, d17}, [r1]
	add	r1, r0, r8
	vld1.8	{d16, d17}, [r1]
	ldr	r1, [r11, #-272]        @ 4-byte Reload
	add	r1, r1, r9
	vst1.8	{d16, d17}, [r1]
	add	r1, r12, r8
	vld1.8	{d16, d17}, [r1]
	add	r8, r8, r2
	ldr	r1, [r11, #-276]        @ 4-byte Reload
	add	r1, r1, r9
	add	r9, r9, r6
	vst1.8	{d16, d17}, [r1]
	bne	.LBB163_4
@ BB#5:                                 @ %consume padded$1
	ldr	r0, [r11, #-312]        @ 4-byte Reload
	mov	r1, #1
	ldr	r3, [r11, #-344]        @ 4-byte Reload
	mov	r2, #0
	mov	r7, #8
	mov	r5, lr
	str	r0, [r11, #-88]
	mov	r0, #64
	str	r0, [r11, #-84]
	str	r1, [r11, #-80]
	str	r2, [r11, #-76]
	str	r3, [r11, #-72]
	str	r0, [r11, #-68]
	str	r0, [r11, #-64]
	sub	r0, r11, #160
	mov	r3, r0
	str	r2, [r11, #-60]
	vst1.64	{d8, d9}, [r3]!
	strb	r1, [r11, #-136]
	strb	r7, [r11, #-135]
	sub	r7, r11, #88
	strh	r1, [r11, #-134]
	mov	r1, #2
	str	r1, [r11, #-132]
	sub	r1, r11, #120
	vld1.64	{d16, d17}, [r7]
	add	r7, r7, #16
	str	r1, [r11, #-128]
	vst1.64	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r7]
	str	r2, [r3]
	vst1.64	{d16, d17}, [r1]
	str	r2, [r3, #4]
	bl	halide_zynq_cma_alloc(PLT)
	ldr	r8, [r11, #-292]        @ 4-byte Reload
	mov	r4, r0
	cmp	r4, #0
	bne	.LBB163_14
@ BB#6:                                 @ %assert succeeded6
	ldr	r6, [r11, #-148]
	mov	r9, r5
	cmp	r6, #0
	beq	.LBB163_13
@ BB#7:                                 @ %assert succeeded8
	sub	r4, sp, #24
	mov	sp, r4
	sub	sp, sp, #8
	mov	r0, #70
	ldr	r1, [r11, #-308]        @ 4-byte Reload
	str	r0, [sp]
	mov	r3, #70
	ldr	r0, [r11, #-304]        @ 4-byte Reload
	sub	r0, r0, r1
	mov	r1, r4
	add	r2, r9, r0
	sub	r0, r11, #264
	bl	halide_zynq_subimage(PLT)
	add	sp, sp, #8
	sub	r7, sp, #24
	mov	sp, r7
	sub	sp, sp, #8
	mov	r0, #64
	mov	r1, r7
	str	r0, [sp]
	sub	r0, r11, #160
	mov	r2, r6
	mov	r3, #64
	bl	halide_zynq_subimage(PLT)
	add	sp, sp, #8
	mov	r1, sp
	sub	r0, r1, #48
	mov	sp, r0
	vld1.64	{d16, d17}, [r4]!
	mov	r2, r0
	vst1.64	{d16, d17}, [r2]!
	vld1.64	{d16, d17}, [r7]!
	vldr	d18, [r4]
	vstr	d18, [r2]
	sub	r2, r1, #24
	vldr	d18, [r7]
	vst1.64	{d16, d17}, [r2]
	vstr	d18, [r1, #-8]
	bl	halide_zynq_hwacc_launch(PLT)
	bl	halide_zynq_hwacc_sync(PLT)
	ldr	r0, [r11, #-320]        @ 4-byte Reload
	mov	r7, #0
	ldr	r1, [r11, #-284]        @ 4-byte Reload
	ldr	r4, [r11, #-296]        @ 4-byte Reload
	cmp	r0, r1
	ldr	r2, [r11, #-280]        @ 4-byte Reload
	movgt	r1, r0
	ldr	r3, [r11, #-340]        @ 4-byte Reload
	mvn	r0, r1
	ldr	r1, [r11, #-288]        @ 4-byte Reload
	mul	r0, r4, r0
	mla	r1, r4, r2, r1
	ldr	r2, [r11, #-336]        @ 4-byte Reload
	cmp	r2, r3
	movgt	r3, r2
	add	r2, r6, #32
	sub	r0, r0, r3
	add	r3, r6, #48
	sub	r0, r0, r1
	ldr	r1, [r11, #-300]        @ 4-byte Reload
	add	r0, r1, r0
	add	r1, r6, #16
.LBB163_8:                              @ %for output$1.s0.y.yi
                                        @ =>This Inner Loop Header: Depth=1
	add	r5, r6, r7
	vld1.64	{d16, d17}, [r5:128]
	sub	r5, r0, #1
	vst1.8	{d16, d17}, [r5]
	add	r5, r1, r7
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #15
	vst1.8	{d16, d17}, [r5]
	add	r5, r2, r7
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #31
	vst1.8	{d16, d17}, [r5]
	add	r5, r3, r7
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #47
	add	r7, r7, #64
	add	r0, r0, r4
	vst1.8	{d16, d17}, [r5]
	cmp	r7, #4096
	bne	.LBB163_8
@ BB#9:                                 @ %call_destructor.exit12
	mov	r0, r8
	mov	r1, r6
	bl	halide_zynq_free(PLT)
	sub	r0, r11, #160
	bl	halide_zynq_cma_free(PLT)
	mov	r0, r8
	mov	r1, r9
	bl	halide_zynq_free(PLT)
	sub	r0, r11, #264
	bl	halide_zynq_cma_free(PLT)
	mov	r0, #0
.LBB163_10:                             @ %call_destructor.exit11
	sub	sp, r11, #48
	vpop	{d8, d9}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.LBB163_11:                             @ %assert failed1
	ldr	r0, .LCPI163_0
	ldr	r1, .LCPI163_1
	sub	sp, sp, #8
	mvn	r6, #-2147483648
.LPC163_0:
	add	r1, pc, r1
	mov	r7, #0
	stm	sp, {r6, r7}
	add	r1, r0, r1
	ldr	r0, [r11, #-292]        @ 4-byte Reload
	bl	halide_error_buffer_allocation_too_large(PLT)
	add	sp, sp, #8
	b	.LBB163_10
.LBB163_12:                             @ %assert failed3
	ldr	r0, [r11, #-292]        @ 4-byte Reload
	bl	halide_error_out_of_memory(PLT)
	b	.LBB163_10
.LBB163_13:                             @ %call_destructor.exit
	mov	r0, r8
	mov	r5, r9
	bl	halide_error_out_of_memory(PLT)
	mov	r4, r0
	mov	r0, #0
	cmp	r4, #0
	beq	.LBB163_10
.LBB163_14:                             @ %call_destructor.exit.thread
	mov	r0, r8
	mov	r1, r5
	bl	halide_zynq_free(PLT)
	mov	r0, r4
	b	.LBB163_10
	.align	2
@ BB#15:
.LCPI163_0:
	.long	.Lstr.184(GOTOFF)
.LCPI163_1:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC163_0+8)
.Lfunc_end163:
	.size	par_for_pipeline_zynq_output$1.s0.x.xo.xo, .Lfunc_end163-par_for_pipeline_zynq_output$1.s0.x.xo.xo
	.cantunwind
	.fnend

	.section	.text.pipeline_zynq_argv,"ax",%progbits
	.globl	pipeline_zynq_argv
	.align	2
	.type	pipeline_zynq_argv,%function
pipeline_zynq_argv:                     @ @pipeline_zynq_argv
	.fnstart
@ BB#0:                                 @ %entry
	ldr	r2, [r0]
	ldr	r1, [r0, #4]
	mov	r0, r2
	b	pipeline_zynq(PLT)
.Lfunc_end164:
	.size	pipeline_zynq_argv, .Lfunc_end164-pipeline_zynq_argv
	.cantunwind
	.fnend

	.section	.text.pipeline_zynq_metadata,"ax",%progbits
	.globl	pipeline_zynq_metadata
	.align	2
	.type	pipeline_zynq_metadata,%function
pipeline_zynq_metadata:                 @ @pipeline_zynq_metadata
	.fnstart
@ BB#0:                                 @ %entry
	ldr	r0, .LCPI165_0
	ldr	r1, .LCPI165_1
.LPC165_0:
	add	r0, pc, r0
	add	r0, r1, r0
	bx	lr
	.align	2
@ BB#1:
.LCPI165_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC165_0+8)
.LCPI165_1:
	.long	.Lpipeline_zynq_metadata_storage(GOTOFF)
.Lfunc_end165:
	.size	pipeline_zynq_metadata, .Lfunc_end165-pipeline_zynq_metadata
	.cantunwind
	.fnend

	.section	.text.pipeline_zynq_old_buffer_t,"ax",%progbits
	.globl	pipeline_zynq_old_buffer_t
	.align	2
	.type	pipeline_zynq_old_buffer_t,%function
pipeline_zynq_old_buffer_t:             @ @pipeline_zynq_old_buffer_t
	.fnstart
@ BB#0:                                 @ %entry
	.save	{r4, r5, r6, r7, r8, r9, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	.pad	#144
	sub	sp, sp, #144
	vmov.i32	q8, #0x0
	mov	r9, r1
	mov	r1, sp
	add	r3, sp, #32
	mov	r2, r1
	mov	r6, #1
	vst1.64	{d16, d17}, [r2]!
	mov	r7, #8
	vst1.64	{d16, d17}, [r2]
	mov	r2, r3
	mov	r4, #2
	mov	r5, r0
	vst1.64	{d16, d17}, [r2]!
	add	r0, sp, #72
	strb	r6, [sp, #56]
	strb	r7, [sp, #57]
	strh	r6, [sp, #58]
	str	r4, [sp, #60]
	str	r1, [sp, #64]
	mov	r1, #0
	str	r1, [r2]
	str	r1, [r2, #4]
	mov	r2, r0
	vst1.64	{d16, d17}, [r2]!
	ldr	r12, .LCPI166_0
	vst1.64	{d16, d17}, [r2]
	add	r2, sp, #104
	ldr	r8, .LCPI166_1
	vst1.64	{d16, d17}, [r2]!
	strb	r6, [sp, #128]
	strb	r7, [sp, #129]
	strh	r6, [sp, #130]
	str	r4, [sp, #132]
	str	r0, [sp, #136]
.LPC166_0:
	add	r0, pc, r12
	str	r1, [r2]
	str	r1, [r2, #4]
	add	r1, r8, r0
	mov	r0, #0
	mov	r2, r5
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB166_8
@ BB#1:                                 @ %assert succeeded
	ldr	r0, .LCPI166_2
	add	r3, sp, #104
	ldr	r6, .LCPI166_3
	mov	r2, r9
.LPC166_1:
	add	r0, pc, r0
	add	r1, r6, r0
	mov	r0, #0
	bl	halide_upgrade_buffer_t(PLT)
	cmp	r0, #0
	bne	.LBB166_8
@ BB#2:                                 @ %assert succeeded2
	add	r0, sp, #32
	add	r1, sp, #104
	bl	pipeline_zynq(PLT)
	cmp	r0, #0
	bne	.LBB166_8
@ BB#3:                                 @ %assert succeeded4
	ldr	r0, [sp, #44]
	cmp	r0, #0
	ldreq	r0, [sp, #32]
	ldreq	r1, [sp, #36]
	orrseq	r0, r0, r1
	bne	.LBB166_10
@ BB#4:                                 @ %true_bb
	ldr	r0, .LCPI166_5
	add	r2, sp, #32
	mov	r3, r5
.LPC166_3:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, #0
	bl	halide_downgrade_buffer_t(PLT)
.LBB166_5:                              @ %true_bb
	cmp	r0, #0
	bne	.LBB166_8
@ BB#6:                                 @ %after_bb
	ldr	r0, [sp, #116]
	cmp	r0, #0
	ldreq	r0, [sp, #104]
	ldreq	r1, [sp, #108]
	orrseq	r0, r0, r1
	beq	.LBB166_9
@ BB#7:                                 @ %false_bb10
	ldr	r0, .LCPI166_6
	add	r2, sp, #104
	mov	r3, r9
.LPC166_4:
	add	r0, pc, r0
	add	r1, r6, r0
	mov	r0, #0
	bl	halide_downgrade_buffer_t_device_fields(PLT)
.LBB166_8:                              @ %destructor_block
	add	sp, sp, #144
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB166_9:                              @ %true_bb9
	ldr	r0, .LCPI166_7
	add	r2, sp, #104
	mov	r3, r9
.LPC166_5:
	add	r0, pc, r0
	add	r1, r6, r0
	mov	r0, #0
	bl	halide_downgrade_buffer_t(PLT)
	add	sp, sp, #144
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.LBB166_10:                             @ %false_bb
	ldr	r0, .LCPI166_4
	add	r2, sp, #32
	mov	r3, r5
.LPC166_2:
	add	r0, pc, r0
	add	r1, r8, r0
	mov	r0, #0
	bl	halide_downgrade_buffer_t_device_fields(PLT)
	b	.LBB166_5
	.align	2
@ BB#11:
.LCPI166_0:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_0+8)
.LCPI166_1:
	.long	.Lstr(GOTOFF)
.LCPI166_2:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_1+8)
.LCPI166_3:
	.long	.Lstr.178(GOTOFF)
.LCPI166_4:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_2+8)
.LCPI166_5:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_3+8)
.LCPI166_6:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_4+8)
.LCPI166_7:
	.long	_GLOBAL_OFFSET_TABLE_-(.LPC166_5+8)
.Lfunc_end166:
	.size	pipeline_zynq_old_buffer_t, .Lfunc_end166-pipeline_zynq_old_buffer_t
	.cantunwind
	.fnend

	.type	_ZN6Halide7Runtime8Internal13custom_mallocE,%object @ @_ZN6Halide7Runtime8Internal13custom_mallocE
	.section	.data.rel,"aw",%progbits
	.weak	_ZN6Halide7Runtime8Internal13custom_mallocE
	.align	2
_ZN6Halide7Runtime8Internal13custom_mallocE:
	.long	halide_default_malloc
	.size	_ZN6Halide7Runtime8Internal13custom_mallocE, 4

	.type	_ZN6Halide7Runtime8Internal11custom_freeE,%object @ @_ZN6Halide7Runtime8Internal11custom_freeE
	.weak	_ZN6Halide7Runtime8Internal11custom_freeE
	.align	2
_ZN6Halide7Runtime8Internal11custom_freeE:
	.long	halide_default_free
	.size	_ZN6Halide7Runtime8Internal11custom_freeE, 4

	.type	_ZN6Halide7Runtime8Internal13error_handlerE,%object @ @_ZN6Halide7Runtime8Internal13error_handlerE
	.weak	_ZN6Halide7Runtime8Internal13error_handlerE
	.align	2
_ZN6Halide7Runtime8Internal13error_handlerE:
	.long	halide_default_error
	.size	_ZN6Halide7Runtime8Internal13error_handlerE, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Error: "
	.size	.L.str, 8

	.type	_ZN6Halide7Runtime8Internal12custom_printE,%object @ @_ZN6Halide7Runtime8Internal12custom_printE
	.section	.data.rel,"aw",%progbits
	.weak	_ZN6Halide7Runtime8Internal12custom_printE
	.align	2
_ZN6Halide7Runtime8Internal12custom_printE:
	.long	halide_default_print
	.size	_ZN6Halide7Runtime8Internal12custom_printE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE,%object @ @_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE
	.bss
	.weak	_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE
_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE:
	.byte	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_reference_clock_initedE, 1

	.type	_ZN6Halide7Runtime8Internal22halide_reference_clockE,%object @ @_ZN6Halide7Runtime8Internal22halide_reference_clockE
	.weak	_ZN6Halide7Runtime8Internal22halide_reference_clockE
	.align	2
_ZN6Halide7Runtime8Internal22halide_reference_clockE:
	.zero	8
	.size	_ZN6Halide7Runtime8Internal22halide_reference_clockE, 8

	.type	.L.str.7,%object        @ @.str.7
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.7:
	.asciz	"/tmp/"
	.size	.L.str.7, 6

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"XXXXXX"
	.size	.L.str.1, 7

	.type	_ZN6Halide7Runtime8Internal10work_queueE,%object @ @_ZN6Halide7Runtime8Internal10work_queueE
	.bss
	.weak	_ZN6Halide7Runtime8Internal10work_queueE
	.align	3
_ZN6Halide7Runtime8Internal10work_queueE:
	.zero	544
	.size	_ZN6Halide7Runtime8Internal10work_queueE, 544

	.type	custom_do_task,%object  @ @custom_do_task
	.section	.data.rel,"aw",%progbits
	.weak	custom_do_task
	.align	2
custom_do_task:
	.long	halide_default_do_task
	.size	custom_do_task, 4

	.type	custom_do_par_for,%object @ @custom_do_par_for
	.weak	custom_do_par_for
	.align	2
custom_do_par_for:
	.long	halide_default_do_par_for
	.size	custom_do_par_for, 4

	.section	.fini_array,"aw",%fini_array
	.align	2
	.long	halide_thread_pool_cleanup(target1)
	.long	halide_trace_cleanup(target1)
	.long	halide_cache_cleanup(target1)
	.long	halide_profiler_shutdown(target1)
	.type	.L.str.8,%object        @ @.str.8
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.8:
	.asciz	"HL_NUM_THREADS"
	.size	.L.str.8, 15

	.type	.L.str.1.9,%object      @ @.str.1.9
.L.str.1.9:
	.asciz	"HL_NUMTHREADS"
	.size	.L.str.1.9, 14

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"halide_set_num_threads: must be >= 0."
	.size	.L.str.2, 38

	.type	_ZN6Halide7Runtime8Internal17custom_get_symbolE,%object @ @_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.section	.data.rel,"aw",%progbits
	.weak	_ZN6Halide7Runtime8Internal17custom_get_symbolE
	.align	2
_ZN6Halide7Runtime8Internal17custom_get_symbolE:
	.long	halide_default_get_symbol
	.size	_ZN6Halide7Runtime8Internal17custom_get_symbolE, 4

	.type	_ZN6Halide7Runtime8Internal19custom_load_libraryE,%object @ @_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.weak	_ZN6Halide7Runtime8Internal19custom_load_libraryE
	.align	2
_ZN6Halide7Runtime8Internal19custom_load_libraryE:
	.long	halide_default_load_library
	.size	_ZN6Halide7Runtime8Internal19custom_load_libraryE, 4

	.type	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE,%object @ @_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.weak	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE
	.align	2
_ZN6Halide7Runtime8Internal25custom_get_library_symbolE:
	.long	halide_default_get_library_symbol
	.size	_ZN6Halide7Runtime8Internal25custom_get_library_symbolE, 4

	.type	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE,%object @ @_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE
	.align	2
_ZN6Halide7Runtime8Internal17halide_gpu_deviceE:
	.long	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_gpu_deviceE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE,%object @ @_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE
	.align	2
_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE:
	.long	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_gpu_device_lockE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE,%object @ @_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE
_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE:
	.byte	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_gpu_device_initializedE, 1

	.type	.L.str.10,%object       @ @.str.10
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.10:
	.asciz	"HL_GPU_DEVICE"
	.size	.L.str.10, 14

	.type	_ZN6Halide7Runtime8Internal17halide_trace_fileE,%object @ @_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17halide_trace_fileE
	.align	2
_ZN6Halide7Runtime8Internal17halide_trace_fileE:
	.long	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal17halide_trace_fileE, 4

	.type	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE,%object @ @_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
	.weak	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE
	.align	2
_ZN6Halide7Runtime8Internal22halide_trace_file_lockE:
	.long	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal22halide_trace_file_lockE, 4

	.type	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE,%object @ @_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
	.weak	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE
_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE:
	.byte	0                       @ 0x0
	.size	_ZN6Halide7Runtime8Internal29halide_trace_file_initializedE, 1

	.type	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE,%object @ @_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
	.weak	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE
	.align	2
_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE:
	.long	0
	.size	_ZN6Halide7Runtime8Internal35halide_trace_file_internally_openedE, 4

	.type	_ZN6Halide7Runtime8Internal19halide_custom_traceE,%object @ @_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.section	.data.rel,"aw",%progbits
	.weak	_ZN6Halide7Runtime8Internal19halide_custom_traceE
	.align	2
_ZN6Halide7Runtime8Internal19halide_custom_traceE:
	.long	halide_default_trace
	.size	_ZN6Halide7Runtime8Internal19halide_custom_traceE, 4

	.type	_ZZ20halide_default_traceE3ids,%object @ @_ZZ20halide_default_traceE3ids
	.data
	.align	2
_ZZ20halide_default_traceE3ids:
	.long	1                       @ 0x1
	.size	_ZZ20halide_default_traceE3ids, 4

	.type	.L.str.14,%object       @ @.str.14
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.14:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/tracing.cpp:63 Assert failed: written == total_size && \"Can't write to trace file\"\n"
	.size	.L.str.14, 129

	.type	.L.str.1.15,%object     @ @.str.1.15
.L.str.1.15:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/tracing.cpp:72 Assert failed: print_bits <= 64 && \"Tracing bad type\"\n"
	.size	.L.str.1.15, 115

	.type	.L_ZZ20halide_default_traceE11event_types,%object @ @_ZZ20halide_default_traceE11event_types
	.section	.data.rel.ro.local,"aw",%progbits
	.align	2
.L_ZZ20halide_default_traceE11event_types:
	.long	.L.str.2.17
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7.18
	.long	.L.str.8.19
	.long	.L.str.9
	.long	.L.str.10.20
	.long	.L.str.11
	.size	.L_ZZ20halide_default_traceE11event_types, 40

	.type	.L.str.15,%object       @ @.str.15
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.15:
	.asciz	"<"
	.size	.L.str.15, 2

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	">, <"
	.size	.L.str.16, 5

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	">)"
	.size	.L.str.18, 3

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	" = <"
	.size	.L.str.20, 5

	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	" = "
	.size	.L.str.21, 4

	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/tracing.cpp:140 Assert failed: print_bits >= 16 && \"Tracing a bad type\"\n"
	.size	.L.str.22, 118

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	">"
	.size	.L.str.23, 2

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"HL_TRACE_FILE"
	.size	.L.str.25, 14

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"ab"
	.size	.L.str.26, 3

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/tracing.cpp:199 Assert failed: file && \"Failed to open trace file\\n\"\n"
	.size	.L.str.27, 115

	.type	.L.str.2.17,%object     @ @.str.2.17
.L.str.2.17:
	.asciz	"Load"
	.size	.L.str.2.17, 5

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Store"
	.size	.L.str.3, 6

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Begin realization"
	.size	.L.str.4, 18

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"End realization"
	.size	.L.str.5, 16

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Produce"
	.size	.L.str.6, 8

	.type	.L.str.7.18,%object     @ @.str.7.18
.L.str.7.18:
	.asciz	"End produce"
	.size	.L.str.7.18, 12

	.type	.L.str.8.19,%object     @ @.str.8.19
.L.str.8.19:
	.asciz	"Consume"
	.size	.L.str.8.19, 8

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"End consume"
	.size	.L.str.9, 12

	.type	.L.str.10.20,%object    @ @.str.10.20
.L.str.10.20:
	.asciz	"Begin pipeline"
	.size	.L.str.10.20, 15

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"End pipeline"
	.size	.L.str.11, 13

	.type	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE,%object @ @_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.data
	.weak	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE
	.align	1
_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE:
	.short	3                       @ 0x3
	.short	3                       @ 0x3
	.short	1                       @ 0x1
	.short	2                       @ 0x2
	.short	1                       @ 0x1
	.short	2                       @ 0x2
	.short	1                       @ 0x1
	.short	2                       @ 0x2
	.short	1                       @ 0x1
	.short	2                       @ 0x2
	.size	_ZN6Halide7Runtime8Internal30pixel_type_to_tiff_sample_typeE, 20

	.type	.L.str.28,%object       @ @.str.28
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.28:
	.asciz	"Can't debug_to_file a Func with more than four dimensions\n"
	.size	.L.str.28, 59

	.type	.L.str.1.29,%object     @ @.str.1.29
.L.str.1.29:
	.asciz	"wb"
	.size	.L.str.1.29, 3

	.type	_ZN6Halide7Runtime8Internal16memoization_lockE,%object @ @_ZN6Halide7Runtime8Internal16memoization_lockE
	.bss
	.weak	_ZN6Halide7Runtime8Internal16memoization_lockE
	.align	3
_ZN6Halide7Runtime8Internal16memoization_lockE:
	.zero	64
	.size	_ZN6Halide7Runtime8Internal16memoization_lockE, 64

	.type	_ZN6Halide7Runtime8Internal13cache_entriesE,%object @ @_ZN6Halide7Runtime8Internal13cache_entriesE
	.weak	_ZN6Halide7Runtime8Internal13cache_entriesE
	.align	2
_ZN6Halide7Runtime8Internal13cache_entriesE:
	.zero	1024
	.size	_ZN6Halide7Runtime8Internal13cache_entriesE, 1024

	.type	_ZN6Halide7Runtime8Internal18most_recently_usedE,%object @ @_ZN6Halide7Runtime8Internal18most_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal18most_recently_usedE
	.align	2
_ZN6Halide7Runtime8Internal18most_recently_usedE:
	.long	0
	.size	_ZN6Halide7Runtime8Internal18most_recently_usedE, 4

	.type	_ZN6Halide7Runtime8Internal19least_recently_usedE,%object @ @_ZN6Halide7Runtime8Internal19least_recently_usedE
	.weak	_ZN6Halide7Runtime8Internal19least_recently_usedE
	.align	2
_ZN6Halide7Runtime8Internal19least_recently_usedE:
	.long	0
	.size	_ZN6Halide7Runtime8Internal19least_recently_usedE, 4

	.type	_ZN6Halide7Runtime8Internal14max_cache_sizeE,%object @ @_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.data
	.weak	_ZN6Halide7Runtime8Internal14max_cache_sizeE
	.align	3
_ZN6Halide7Runtime8Internal14max_cache_sizeE:
	.long	1048576                 @ 0x100000
	.long	0
	.size	_ZN6Halide7Runtime8Internal14max_cache_sizeE, 8

	.type	_ZN6Halide7Runtime8Internal18current_cache_sizeE,%object @ @_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.bss
	.weak	_ZN6Halide7Runtime8Internal18current_cache_sizeE
	.align	3
_ZN6Halide7Runtime8Internal18current_cache_sizeE:
	.long	0                       @ 0x0
	.long	0
	.size	_ZN6Halide7Runtime8Internal18current_cache_sizeE, 8

	.type	.L.str.4.31,%object     @ @.str.4.31
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.4.31:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:277 Assert failed: prev_hash_entry != NULL\n"
	.size	.L.str.4.31, 99

	.type	.L.str.5.32,%object     @ @.str.5.32
.L.str.5.32:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:364 Assert failed: entry->more_recent != NULL\n"
	.size	.L.str.5.32, 102

	.type	.L.str.6.33,%object     @ @.str.6.33
.L.str.6.33:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:368 Assert failed: least_recently_used == entry\n"
	.size	.L.str.6.33, 104

	.type	.L.str.7.34,%object     @ @.str.7.34
.L.str.7.34:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:371 Assert failed: entry->more_recent != NULL\n"
	.size	.L.str.7.34, 102

	.type	.L.str.9.35,%object     @ @.str.9.35
.L.str.9.35:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:463 Assert failed: no_host_pointers_equal\n"
	.size	.L.str.9.35, 98

	.type	.L.str.12.36,%object    @ @.str.12.36
.L.str.12.36:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/cache.cpp:541 Assert failed: entry->in_use_count > 0\n"
	.size	.L.str.12.36, 99

	.type	.L.str.47,%object       @ @.str.47
.L.str.47:
	.asciz	"-nan"
	.size	.L.str.47, 5

	.type	.L.str.1.48,%object     @ @.str.1.48
.L.str.1.48:
	.asciz	"nan"
	.size	.L.str.1.48, 4

	.type	.L.str.2.49,%object     @ @.str.2.49
.L.str.2.49:
	.asciz	"-inf"
	.size	.L.str.2.49, 5

	.type	.L.str.3.50,%object     @ @.str.3.50
.L.str.3.50:
	.asciz	"inf"
	.size	.L.str.3.50, 4

	.type	.L.str.4.51,%object     @ @.str.4.51
.L.str.4.51:
	.asciz	"-0.000000e+00"
	.size	.L.str.4.51, 14

	.type	.L.str.5.52,%object     @ @.str.5.52
.L.str.5.52:
	.asciz	"0.000000e+00"
	.size	.L.str.5.52, 13

	.type	.L.str.6.53,%object     @ @.str.6.53
.L.str.6.53:
	.asciz	"-0.000000"
	.size	.L.str.6.53, 10

	.type	.L.str.7.54,%object     @ @.str.7.54
.L.str.7.54:
	.asciz	"0.000000"
	.size	.L.str.7.54, 9

	.type	.L.str.8.55,%object     @ @.str.8.55
.L.str.8.55:
	.asciz	"-"
	.size	.L.str.8.55, 2

	.type	.L.str.10.57,%object    @ @.str.10.57
.L.str.10.57:
	.asciz	"e+"
	.size	.L.str.10.57, 3

	.type	.L.str.11.58,%object    @ @.str.11.58
.L.str.11.58:
	.asciz	"e-"
	.size	.L.str.11.58, 3

	.type	.L.str.12.59,%object    @ @.str.12.59
.L.str.12.59:
	.asciz	"0123456789abcdef"
	.size	.L.str.12.59, 17

	.type	.L.str.17.60,%object    @ @.str.17.60
.L.str.17.60:
	.asciz	"bad_type_code"
	.size	.L.str.17.60, 14

	.type	.L.str.16.61,%object    @ @.str.16.61
.L.str.16.61:
	.asciz	"handle"
	.size	.L.str.16.61, 7

	.type	.L.str.15.62,%object    @ @.str.15.62
.L.str.15.62:
	.asciz	"float"
	.size	.L.str.15.62, 6

	.type	.L.str.14.63,%object    @ @.str.14.63
.L.str.14.63:
	.asciz	"uint"
	.size	.L.str.14.63, 5

	.type	.L.str.13.64,%object    @ @.str.13.64
.L.str.13.64:
	.asciz	"int"
	.size	.L.str.13.64, 4

	.type	.L.str.18.65,%object    @ @.str.18.65
.L.str.18.65:
	.asciz	"x"
	.size	.L.str.18.65, 2

	.type	.L.str.19.66,%object    @ @.str.19.66
.L.str.19.66:
	.asciz	"NULL"
	.size	.L.str.19.66, 5

	.type	.L.str.20.67,%object    @ @.str.20.67
.L.str.20.67:
	.asciz	"buffer("
	.size	.L.str.20.67, 8

	.type	.L.str.21.68,%object    @ @.str.21.68
.L.str.21.68:
	.asciz	", "
	.size	.L.str.21.68, 3

	.type	.L.str.22.70,%object    @ @.str.22.70
.L.str.22.70:
	.asciz	", {"
	.size	.L.str.22.70, 4

	.type	.L.str.23.71,%object    @ @.str.23.71
.L.str.23.71:
	.asciz	"}"
	.size	.L.str.23.71, 2

	.type	_ZN6Halide7Runtime8Internal17device_copy_mutexE,%object @ @_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.bss
	.weak	_ZN6Halide7Runtime8Internal17device_copy_mutexE
	.align	3
_ZN6Halide7Runtime8Internal17device_copy_mutexE:
	.zero	64
	.size	_ZN6Halide7Runtime8Internal17device_copy_mutexE, 64

	.type	.L.str.17.76,%object    @ @.str.17.76
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.17.76:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/device_interface.cpp:104 Assert failed: !buf->host_dirty()\n"
	.size	.L.str.17.76, 105

	.type	.L.str.33,%object       @ @.str.33
.L.str.33:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/device_interface.cpp:211 Assert failed: buf->device == 0\n"
	.size	.L.str.33, 103

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"halide_device_malloc doesn't support switching interfaces\n"
	.size	.L.str.30, 59

	.type	.L.str.36,%object       @ @.str.36
.L.str.36:
	.asciz	"halide_device_and_host_malloc doesn't support switching interfaces\n"
	.size	.L.str.36, 68

	.type	.L.str.37,%object       @ @.str.37
.L.str.37:
	.asciz	"allocating host and device memory failed\n"
	.size	.L.str.37, 42

	.type	.L.str.39,%object       @ @.str.39
.L.str.39:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/device_interface.cpp:282 Assert failed: buf->device == 0\n"
	.size	.L.str.39, 103

	.type	.L.str.79,%object       @ @.str.79
.L.str.79:
	.zero	1
	.size	.L.str.79, 1

	.type	.L.str.1.80,%object     @ @.str.1.80
.L.str.1.80:
	.asciz	"elem_size of buffer was not in [1, 2, 4, 8]"
	.size	.L.str.1.80, 44

	.type	.L.str.2.81,%object     @ @.str.2.81
.L.str.2.81:
	.asciz	"buffer has incorrect elem_size ("
	.size	.L.str.2.81, 33

	.type	.L.str.4.83,%object     @ @.str.4.83
.L.str.4.83:
	.asciz	"for expected type ("
	.size	.L.str.4.83, 20

	.type	.L.str.6.86,%object     @ @.str.6.86
.L.str.6.86:
	.asciz	"buffer has more than four dimensions"
	.size	.L.str.6.86, 37

	.type	.L.str.91,%object       @ @.str.91
.L.str.91:
	.asciz	"Bounds inference call to external stage "
	.size	.L.str.91, 41

	.type	.L.str.1.92,%object     @ @.str.1.92
.L.str.1.92:
	.asciz	" returned non-zero value: "
	.size	.L.str.1.92, 27

	.type	.L.str.2.93,%object     @ @.str.2.93
.L.str.2.93:
	.asciz	"Call to external stage "
	.size	.L.str.2.93, 24

	.type	.L.str.3.94,%object     @ @.str.3.94
.L.str.3.94:
	.asciz	"Bounds given for "
	.size	.L.str.3.94, 18

	.type	.L.str.4.95,%object     @ @.str.4.95
.L.str.4.95:
	.asciz	" in "
	.size	.L.str.4.95, 5

	.type	.L.str.5.96,%object     @ @.str.5.96
.L.str.5.96:
	.asciz	" (from "
	.size	.L.str.5.96, 8

	.type	.L.str.6.97,%object     @ @.str.6.97
.L.str.6.97:
	.asciz	" to "
	.size	.L.str.6.97, 5

	.type	.L.str.7.98,%object     @ @.str.7.98
.L.str.7.98:
	.asciz	") do not cover required region (from "
	.size	.L.str.7.98, 38

	.type	.L.str.8.99,%object     @ @.str.8.99
.L.str.8.99:
	.asciz	")"
	.size	.L.str.8.99, 2

	.type	.L.str.9.100,%object    @ @.str.9.100
.L.str.9.100:
	.asciz	" has type "
	.size	.L.str.9.100, 11

	.type	.L.str.10.101,%object   @ @.str.10.101
.L.str.10.101:
	.asciz	" but type of the buffer passed in is "
	.size	.L.str.10.101, 38

	.type	.L.str.11.102,%object   @ @.str.11.102
.L.str.11.102:
	.asciz	" is accessed at "
	.size	.L.str.11.102, 17

	.type	.L.str.12.103,%object   @ @.str.12.103
.L.str.12.103:
	.asciz	", which is before the min ("
	.size	.L.str.12.103, 28

	.type	.L.str.13.104,%object   @ @.str.13.104
.L.str.13.104:
	.asciz	") in dimension "
	.size	.L.str.13.104, 16

	.type	.L.str.14.105,%object   @ @.str.14.105
.L.str.14.105:
	.asciz	", which is beyond the max ("
	.size	.L.str.14.105, 28

	.type	.L.str.15.106,%object   @ @.str.15.106
.L.str.15.106:
	.asciz	"Total allocation for buffer "
	.size	.L.str.15.106, 29

	.type	.L.str.16.107,%object   @ @.str.16.107
.L.str.16.107:
	.asciz	" is "
	.size	.L.str.16.107, 5

	.type	.L.str.17.108,%object   @ @.str.17.108
.L.str.17.108:
	.asciz	", which exceeds the maximum size of "
	.size	.L.str.17.108, 37

	.type	.L.str.18.109,%object   @ @.str.18.109
.L.str.18.109:
	.asciz	"The extents for buffer "
	.size	.L.str.18.109, 24

	.type	.L.str.19.110,%object   @ @.str.19.110
.L.str.19.110:
	.asciz	" dimension "
	.size	.L.str.19.110, 12

	.type	.L.str.20.111,%object   @ @.str.20.111
.L.str.20.111:
	.asciz	" is negative ("
	.size	.L.str.20.111, 15

	.type	.L.str.21.112,%object   @ @.str.21.112
.L.str.21.112:
	.asciz	"Product of extents for buffer "
	.size	.L.str.21.112, 31

	.type	.L.str.22.113,%object   @ @.str.22.113
.L.str.22.113:
	.asciz	"Applying the constraints on "
	.size	.L.str.22.113, 29

	.type	.L.str.23.114,%object   @ @.str.23.114
.L.str.23.114:
	.asciz	" to the required region made it smaller. "
	.size	.L.str.23.114, 42

	.type	.L.str.24.115,%object   @ @.str.24.115
.L.str.24.115:
	.asciz	"Required size: "
	.size	.L.str.24.115, 16

	.type	.L.str.25.116,%object   @ @.str.25.116
.L.str.25.116:
	.asciz	". "
	.size	.L.str.25.116, 3

	.type	.L.str.26.117,%object   @ @.str.26.117
.L.str.26.117:
	.asciz	"Constrained size: "
	.size	.L.str.26.117, 19

	.type	.L.str.27.118,%object   @ @.str.27.118
.L.str.27.118:
	.asciz	"."
	.size	.L.str.27.118, 2

	.type	.L.str.28.119,%object   @ @.str.28.119
.L.str.28.119:
	.asciz	"Constraint violated: "
	.size	.L.str.28.119, 22

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	" ("
	.size	.L.str.29, 3

	.type	.L.str.30.120,%object   @ @.str.30.120
.L.str.30.120:
	.asciz	") == "
	.size	.L.str.30.120, 6

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"Parameter "
	.size	.L.str.31, 11

	.type	.L.str.32,%object       @ @.str.32
.L.str.32:
	.asciz	" but must be at least "
	.size	.L.str.32, 23

	.type	.L.str.33.121,%object   @ @.str.33.121
.L.str.33.121:
	.asciz	" but must be at most "
	.size	.L.str.33.121, 22

	.type	.L.str.34,%object       @ @.str.34
.L.str.34:
	.asciz	"Out of memory (halide_malloc returned NULL)"
	.size	.L.str.34, 44

	.type	.L.str.35,%object       @ @.str.35
.L.str.35:
	.asciz	"Buffer argument "
	.size	.L.str.35, 17

	.type	.L.str.36.122,%object   @ @.str.36.122
.L.str.36.122:
	.asciz	" is NULL"
	.size	.L.str.36.122, 9

	.type	.L.str.37.123,%object   @ @.str.37.123
.L.str.37.123:
	.asciz	"Failed to dump function "
	.size	.L.str.37.123, 25

	.type	.L.str.38,%object       @ @.str.38
.L.str.38:
	.asciz	" to file "
	.size	.L.str.38, 10

	.type	.L.str.39.124,%object   @ @.str.39.124
.L.str.39.124:
	.asciz	" with error "
	.size	.L.str.39.124, 13

	.type	.L.str.40.125,%object   @ @.str.40.125
.L.str.40.125:
	.asciz	"Failed to upgrade buffer_t to halide_buffer_t for "
	.size	.L.str.40.125, 51

	.type	.L.str.42,%object       @ @.str.42
.L.str.42:
	.asciz	"Failed to downgrade halide_buffer_t to buffer_t for "
	.size	.L.str.42, 53

	.type	.L.str.43,%object       @ @.str.43
.L.str.43:
	.asciz	"The host pointer of "
	.size	.L.str.43, 21

	.type	.L.str.44,%object       @ @.str.44
.L.str.44:
	.asciz	" is not aligned to a "
	.size	.L.str.44, 22

	.type	.L.str.45,%object       @ @.str.45
.L.str.45:
	.asciz	" bytes boundary."
	.size	.L.str.45, 17

	.type	.L.str.46,%object       @ @.str.46
.L.str.46:
	.asciz	"The folded storage dimension "
	.size	.L.str.46, 30

	.type	.L.str.47.126,%object   @ @.str.47.126
.L.str.47.126:
	.asciz	" of "
	.size	.L.str.47.126, 5

	.type	.L.str.48,%object       @ @.str.48
.L.str.48:
	.asciz	" was accessed out of order by loop "
	.size	.L.str.48, 36

	.type	.L.str.49,%object       @ @.str.49
.L.str.49:
	.asciz	"The fold factor ("
	.size	.L.str.49, 18

	.type	.L.str.50,%object       @ @.str.50
.L.str.50:
	.asciz	") of dimension "
	.size	.L.str.50, 16

	.type	.L.str.51,%object       @ @.str.51
.L.str.51:
	.asciz	" is too small to store the required region accessed by loop "
	.size	.L.str.51, 61

	.type	.L.str.52,%object       @ @.str.52
.L.str.52:
	.asciz	")."
	.size	.L.str.52, 3

	.type	.L.str.53,%object       @ @.str.53
.L.str.53:
	.asciz	"Requirement Failed: ("
	.size	.L.str.53, 22

	.type	.L.str.54,%object       @ @.str.54
.L.str.54:
	.asciz	") "
	.size	.L.str.54, 3

	.type	.L.str.55,%object       @ @.str.55
.L.str.55:
	.asciz	"A schedule specialized with specialize_fail() was chosen: "
	.size	.L.str.55, 59

	.type	_ZZ25halide_profiler_get_stateE1s,%object @ @_ZZ25halide_profiler_get_stateE1s
	.data
	.align	3
_ZZ25halide_profiler_get_stateE1s:
	.zero	64
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	0                       @ 0x0
	.long	0
	.long	0
	.byte	0                       @ 0x0
	.zero	7
	.size	_ZZ25halide_profiler_get_stateE1s, 96

	.type	.L.str.128,%object      @ @.str.128
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.128:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:204 Assert failed: p_stats != NULL\n"
	.size	.L.str.128, 94

	.type	.L.str.1.129,%object    @ @.str.1.129
.L.str.1.129:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:231 Assert failed: p_stats != NULL\n"
	.size	.L.str.1.129, 94

	.type	.L.str.2.130,%object    @ @.str.2.130
.L.str.2.130:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:232 Assert failed: func_id >= 0\n"
	.size	.L.str.2.130, 91

	.type	.L.str.3.131,%object    @ @.str.3.131
.L.str.3.131:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:233 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.3.131, 107

	.type	.L.str.4.132,%object    @ @.str.4.132
.L.str.4.132:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:267 Assert failed: p_stats != NULL\n"
	.size	.L.str.4.132, 94

	.type	.L.str.5.133,%object    @ @.str.5.133
.L.str.5.133:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:268 Assert failed: func_id >= 0\n"
	.size	.L.str.5.133, 91

	.type	.L.str.6.134,%object    @ @.str.6.134
.L.str.6.134:
	.asciz	"/nobackup/zhliang/AHA/Halide-HLS/src/runtime/profiler.cpp:269 Assert failed: func_id < p_stats->num_funcs\n"
	.size	.L.str.6.134, 107

	.type	.L.str.7.135,%object    @ @.str.7.135
.L.str.7.135:
	.asciz	"\n"
	.size	.L.str.7.135, 2

	.type	.L.str.8.136,%object    @ @.str.8.136
.L.str.8.136:
	.asciz	" total time: "
	.size	.L.str.8.136, 14

	.type	.L.str.9.137,%object    @ @.str.9.137
.L.str.9.137:
	.asciz	" ms"
	.size	.L.str.9.137, 4

	.type	.L.str.10.138,%object   @ @.str.10.138
.L.str.10.138:
	.asciz	"  samples: "
	.size	.L.str.10.138, 12

	.type	.L.str.11.139,%object   @ @.str.11.139
.L.str.11.139:
	.asciz	"  runs: "
	.size	.L.str.11.139, 9

	.type	.L.str.12.140,%object   @ @.str.12.140
.L.str.12.140:
	.asciz	"  time/run: "
	.size	.L.str.12.140, 13

	.type	.L.str.13.141,%object   @ @.str.13.141
.L.str.13.141:
	.asciz	" ms\n"
	.size	.L.str.13.141, 5

	.type	.L.str.14.142,%object   @ @.str.14.142
.L.str.14.142:
	.asciz	" average threads used: "
	.size	.L.str.14.142, 24

	.type	.L.str.15.143,%object   @ @.str.15.143
.L.str.15.143:
	.asciz	" heap allocations: "
	.size	.L.str.15.143, 20

	.type	.L.str.16.144,%object   @ @.str.16.144
.L.str.16.144:
	.asciz	"  peak heap usage: "
	.size	.L.str.16.144, 20

	.type	.L.str.17.145,%object   @ @.str.17.145
.L.str.17.145:
	.asciz	" bytes\n"
	.size	.L.str.17.145, 8

	.type	.L.str.18.146,%object   @ @.str.18.146
.L.str.18.146:
	.asciz	"  "
	.size	.L.str.18.146, 3

	.type	.L.str.19.147,%object   @ @.str.19.147
.L.str.19.147:
	.asciz	": "
	.size	.L.str.19.147, 3

	.type	.L.str.20.148,%object   @ @.str.20.148
.L.str.20.148:
	.asciz	" "
	.size	.L.str.20.148, 2

	.type	.L.str.21.149,%object   @ @.str.21.149
.L.str.21.149:
	.asciz	"ms"
	.size	.L.str.21.149, 3

	.type	.L.str.22.150,%object   @ @.str.22.150
.L.str.22.150:
	.asciz	"("
	.size	.L.str.22.150, 2

	.type	.L.str.23.151,%object   @ @.str.23.151
.L.str.23.151:
	.asciz	"%)"
	.size	.L.str.23.151, 3

	.type	.L.str.24.152,%object   @ @.str.24.152
.L.str.24.152:
	.asciz	"threads: "
	.size	.L.str.24.152, 10

	.type	.L.str.25.153,%object   @ @.str.25.153
.L.str.25.153:
	.asciz	" peak: "
	.size	.L.str.25.153, 8

	.type	.L.str.26.154,%object   @ @.str.26.154
.L.str.26.154:
	.asciz	" num: "
	.size	.L.str.26.154, 7

	.type	.L.str.27.155,%object   @ @.str.27.155
.L.str.27.155:
	.asciz	" avg: "
	.size	.L.str.27.155, 7

	.type	.L.str.28.156,%object   @ @.str.28.156
.L.str.28.156:
	.asciz	" stack: "
	.size	.L.str.28.156, 9

	.type	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE,%object @ @_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.section	.data.rel,"aw",%progbits
	.weak	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE
	.align	2
_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE:
	.long	halide_default_can_use_target_features
	.size	_ZN6Halide7Runtime8Internal30custom_can_use_target_featuresE, 4

	.type	.L.str.163,%object      @ @.str.163
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.163:
	.asciz	"hwacc is uninitialized\n"
	.size	.L.str.163, 24

	.type	.L.str.21.164,%object   @ @.str.21.164
.L.str.21.164:
	.asciz	"Printer buffer allocation failed.\n"
	.size	.L.str.21.164, 35

	.type	.L.str.1.165,%object    @ @.str.1.165
.L.str.1.165:
	.asciz	"cma is uninitialized\n"
	.size	.L.str.1.165, 22

	.type	.L.str.3.166,%object    @ @.str.3.166
.L.str.3.166:
	.asciz	"Zynq runtime is already initialized.\n"
	.size	.L.str.3.166, 38

	.type	.L.str.4.167,%object    @ @.str.4.167
.L.str.4.167:
	.asciz	"/dev/cmabuffer0"
	.size	.L.str.4.167, 16

	.type	.L.str.5.168,%object    @ @.str.5.168
.L.str.5.168:
	.asciz	"Failed to open cma provider!\n"
	.size	.L.str.5.168, 30

	.type	.L.str.6.169,%object    @ @.str.6.169
.L.str.6.169:
	.asciz	"/dev/hwacc0"
	.size	.L.str.6.169, 12

	.type	.L.str.7.170,%object    @ @.str.7.170
.L.str.7.170:
	.asciz	"Failed to open hwacc device!\n"
	.size	.L.str.7.170, 30

	.type	.L.str.10.171,%object   @ @.str.10.171
.L.str.10.171:
	.asciz	"Zynq runtime is uninitialized.\n"
	.size	.L.str.10.171, 32

	.type	.L.str.11.172,%object   @ @.str.11.172
.L.str.11.172:
	.asciz	"malloc failed.\n"
	.size	.L.str.11.172, 16

	.type	.L.str.12.173,%object   @ @.str.12.173
.L.str.12.173:
	.asciz	"buffer_t has less than 2 dimension, not supported in CMA driver.\n"
	.size	.L.str.12.173, 66

	.type	.L.str.13.174,%object   @ @.str.13.174
.L.str.13.174:
	.asciz	"cma_get_buffer() returned "
	.size	.L.str.13.174, 27

	.type	.L.str.14.175,%object   @ @.str.14.175
.L.str.14.175:
	.asciz	" (failed).\n"
	.size	.L.str.14.175, 12

	.type	.L.str.15.176,%object   @ @.str.15.176
.L.str.15.176:
	.asciz	"mmap failed.\n"
	.size	.L.str.15.176, 14

	.type	.Lstr,%object           @ @str
	.section	.rodata,"a",%progbits
	.align	5
.Lstr:
	.asciz	"p2:input"
	.size	.Lstr, 9

	.type	.Lstr.178,%object       @ @str.178
	.align	5
.Lstr.178:
	.asciz	"output$1"
	.size	.Lstr.178, 9

	.type	.Lstr.179,%object       @ @str.179
	.align	5
.Lstr.179:
	.asciz	"Output buffer output$1"
	.size	.Lstr.179, 23

	.type	.Lstr.180,%object       @ @str.180
	.align	5
.Lstr.180:
	.asciz	"Input buffer p2:input"
	.size	.Lstr.180, 22

	.type	.Lstr.181,%object       @ @str.181
	.align	5
.Lstr.181:
	.asciz	"output$1.stride.0"
	.size	.Lstr.181, 18

	.type	.Lstr.182,%object       @ @str.182
	.align	5
.Lstr.182:
	.asciz	"1"
	.size	.Lstr.182, 2

	.type	.Lstr.183,%object       @ @str.183
	.align	5
.Lstr.183:
	.asciz	"p2:input.stride.0"
	.size	.Lstr.183, 18

	.type	.Lstr.184,%object       @ @str.184
	.align	5
.Lstr.184:
	.asciz	"padded$1"
	.size	.Lstr.184, 9

	.type	.L__unnamed_1,%object   @ @0
	.section	.data.rel.ro.local,"aw",%progbits
	.align	4
.L__unnamed_1:
	.long	.Lstr
	.long	1                       @ 0x1
	.long	2                       @ 0x2
	.byte	1                       @ 0x1
	.byte	8                       @ 0x8
	.short	1                       @ 0x1
	.long	0
	.long	0
	.long	0
	.long	.Lstr.178
	.long	2                       @ 0x2
	.long	2                       @ 0x2
	.byte	1                       @ 0x1
	.byte	8                       @ 0x8
	.short	1                       @ 0x1
	.long	0
	.long	0
	.long	0
	.size	.L__unnamed_1, 56

	.type	.Lstr.185,%object       @ @str.185
	.section	.rodata,"a",%progbits
	.align	5
.Lstr.185:
	.asciz	"arm-32-linux-zynq"
	.size	.Lstr.185, 18

	.type	.Lstr.186,%object       @ @str.186
	.align	5
.Lstr.186:
	.asciz	"pipeline_zynq"
	.size	.Lstr.186, 14

	.type	.Lpipeline_zynq_metadata_storage,%object @ @pipeline_zynq_metadata_storage
	.section	.data.rel.ro.local,"aw",%progbits
	.align	4
.Lpipeline_zynq_metadata_storage:
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	.L__unnamed_1
	.long	.Lstr.185
	.long	.Lstr.186
	.size	.Lpipeline_zynq_metadata_storage, 20

	.type	.Lswitch.table,%object  @ @switch.table
	.align	2
.Lswitch.table:
	.long	.L.str.13.64
	.long	.L.str.14.63
	.long	.L.str.15.62
	.long	.L.str.16.61
	.size	.Lswitch.table, 16

	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,32,8

	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.ident	"clang version 3.7.1 (tags/RELEASE_371/final)"
	.section	".note.GNU-stack","",%progbits
