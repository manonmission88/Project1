.text
#part 1 ---> checking the number if it's >= 25 
main:
 li $v0, 4
 la $a0, prompt
 syscall
 
 li $v0, 5
 syscall
 move $t2, $v0
 while:
 bgt $t2, 24, exit
 
 li $v0, 4
 la $a0, illegal
 syscall
 
 li $v0, 4
 la $a0, prompt
 syscall
 
 li $v0, 5
 syscall
 move $t2, $v0
 
 j while
 exit:
 move $a0, $v0
 jal fib
 move $a1, $v0
 
 li $v0, 4
 la $a0, output
 syscall
 
 li $v0, 1
 move $a0, $t2
 syscall
 
 li $v0, 10
 syscall

fib:
 li $t2, 0 #func 
 li $t3, 1 #func1
 li $t4, 1 #func2
 move $t5, $a0 #updated the integer from prompt and move to $t5
 sub $t6, $t5, 2
 li $v0,1
 #starts from 0
 li $t7, 0 


 .data
 prompt: .asciiz "Please enter an integer: "
 output: .asciiz "\nYou typed the number "
 illegal: .asciiz "Illegal Number!\n"
 newline: .asciiz "\n"