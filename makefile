sandbox: sandbox.o
	ld -m elf_i386 -o sandbox sandbox.o
sandbox.o: sandbox.asm
	nasm -f elf -g -F dwarf sandbox.asm
