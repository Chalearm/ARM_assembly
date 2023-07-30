// How to compile
// as -o helloWorldMac.o helloWorld.s
// ld -o helloWorldMac helloWorld.o
.text
.global _start

_start:
    // System call to write
    mov    x0, 1             // File descriptor: 1 (stdout)
    adr    x1, message       // Address of the message
    mov    x2, message_len   // Lenght of the message
    mov    x8, 64            // System call number: 64 (write)
    svc    0                 // Make the system call

    // System call to exit
    mov    x0, 0             // Exit status: 0 (success)
    mov    x8, 93            // System call number: 93 (exit)
    svc    0                 // Make the system call

message:
    .ascii   "Hello, World!\n"
message_len = . - message