#KHOI TAO
add $t0,$zero,$zero

while:

# mang dst[i]
sll $t1, $t0, 2    # i * 4
add $t2, $t1, $s0  # ??a ch? src[i]
add $t3, $t1, $s1  # ??a ch? dst[i]

lw  $t4, 0($t2)    # $t4 = src[i]
sw  $t4, 0($t3)    # dst[i] = $t4

beq $t4,$zero,end
addi $t0,$t0,1
j while

end:




