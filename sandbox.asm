
; Executable Name: sandbox
; Version: 1.0
; Build using these commands:
; nasm -f elf -g -F stabs eatsyscall.asm
; ld -o eatsyscall eatsyscall.o
; Make:
;eatsyscall: eatsyscall.o
	;ld -o eatsyscall.o eatsyscall
;eatsyscall.o: eatsyscall.asm
	;nasm –f elf -g -F stabs eatsyscall.asm

section .data
section .text

	global _start

_start:
	nop
; Put your experiments between the two nops...
	mov ax, 067FEh
	mov bx, ax
	mov cl, bh
	mov ch, bl
	xchg cl, ch
; Put your experiments between the two nops...
	nop

section .bss



