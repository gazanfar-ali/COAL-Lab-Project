.data
msg_input:   .asciiz "Enter a string (max 20 chars): "
msg_enc:     .asciiz "\nEncrypted string: "
msg_dec:     .asciiz "\nDecrypted string: "
newline:     .asciiz "\n"

text:        .space 21
key:         .word 3

.text
main:

    li $v0, 4
    la $a0, msg_input
    syscall

    li $v0, 8
    la $a0, text
    li $a1, 21
    syscall

    lw $t0, key
    la $t1, text
encrypt:
    lb $t2, 0($t1)
    beq $t2, $zero, enc_done
    add $t2, $t2, $t0
    sb $t2, 0($t1)
    addi $t1, $t1, 1
    j encrypt
enc_done:

    li $v0, 4
    la $a0, msg_enc
    syscall

    li $v0, 4
    la $a0, text
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    lw $t0, key
    la $t1, text
decrypt:
    lb $t2, 0($t1)
    beq $t2, $zero, dec_done
    sub $t2, $t2, $t0
    sb $t2, 0($t1)
    addi $t1, $t1, 1
    j decrypt
dec_done:

    li $v0, 4
    la $a0, msg_dec
    syscall

    li $v0, 4
    la $a0, text
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall
