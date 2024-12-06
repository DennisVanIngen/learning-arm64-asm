.global _main
.align 2

_main:
    mov X0, #1 // Moves value 1 (stdout) into X0
    adr X1, helloworld // Loads the address of label helloworld into X1
    mov X2, #14 // Moves value 14 into X2, X2 specifies how many bytes to write
    mov X16, #4 // Moves syscall 4 (write) into X16
    svc #0 // Call to kernal execute

    mov X0, #0 // Use return code 0
    mov X16, #1 // Moves syscall 1 (terminate program) into X16
    svc #0 // Call to kernal execute

helloworld: .ascii  "Hello, World!\n" // A label defining the memory address of the ascii string