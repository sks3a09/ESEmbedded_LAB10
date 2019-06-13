.syntax unified

.global	read_sp
read_sp:
	mov r0,sp
	bx lr

.global	read_msp
read_msp:
	mrs r0,msp
	bx lr

.global	read_psp
read_psp:
	mrs r0,psp
	bx lr

.global	read_ctrl
read_ctrl:
	mrs r0,control
	bx lr

.global	start_user
start_user:
	movs lr,r0
	msr psp,r1
	movs r2,#0b11
	msr control,r2
	isb
	bx lr

.global	sw_priv
sw_priv:
	movs r2,#0
	msr control,r2
	isb
	bx lr
