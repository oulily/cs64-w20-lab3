# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
     # TODO: Write your string definitions here
     prompt: .asciiz "Choose an integer number between 0 and 1000:\n\n"
     hello: .asciiz "Hello World!\n\n"
     magicnum: .asciiz "The magic number is "
     newline: .asciiz "\n\n"
     exclaim: .asciiz "!!!\n\n"

#Text Area (i.e. instructions)
.text
main:

     # TODO: Write your code here
     la $a0, prompt
     syscall

     li $v0, 5
     syscall

     move $t0, $v0

     li $v0, 4
     la $a0, magicnum
     syscall

     li $v0, 1
     move $a0, $t0
     syscall

     li $v0, 4
     la $a0, newline
     syscall

     li $v0, 4
     la $a0, exclaim
     syscall

  exit:
     # Exit
     li $v0, 10
     syscall
