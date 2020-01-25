# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#
.text
main:
     # TODO: Write your code here
     li $v0, 5
     syscall
     move $t0, $v0

     li $v0, 5
     syscall
     move $t1, $v0

     li $v0, 5
     syscall
     move $t2, $v0

     add $t0, $t0, $t1

     sll $t0, $t0, 2

     li $t4, 5
     mult $t2, $t4
     mflo $t2

     sub $t3, $t0, $t2

     li $v0, 1
     move $a0, $t3
     syscall

exit:
     # Exit
     li $v0, 10
     syscall
