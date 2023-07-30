// How to build
// arm-none-eabi-as -o helloWorld.o helloworld.asm
// arm-none-eabi-ld -o hello helloWorld.o
.section .data
hello_msg:
    .asciz "Hello, \nWorld!\n\n"

.section .text
.global _start
_start:
	// Write "Hello, World!" to stdout (file descriptor 1)
	mov r0, #1
	ldr r1, =hello_msg
	ldr r2, =15      // Length of the message (including newline)
	mov r7,#4
	swi 0

	// Exit the program
	mov r7, #1
	swi 0
