
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
	mov eax, 5
DoMore:	dec eax
	jnz DoMore
; Put your experiments between the two nops...
	nop

section .bss



