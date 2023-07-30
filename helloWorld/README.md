# Hello World 

# Installation
- MAC

- ARCH

- Ubuntu

# Compilation
- MAC
i as -o helloWorldMac.o helloWorld.s
i ld -o helloWorldMac helloWorld.o

- ARCH
i arm-none-eabi-as -o helloWorld.o helloworld.asm
i arm-none-eabi-ld -o hello helloWorld.o
