# KHOI TAO
    addi $t0, $zero, 1      # i = 1
    lw   $s2, 0($s0)        # max = A[0]

while:
    slt  $t1, $t0, $s1      # if (i < n) $t1 = 1
    beq  $t1, $zero, exit   # neu i >= n thi thoat

    # TINH DIA CHI A[i]
    sll  $t2, $t0, 2        # $t2 = i * 4
    add  $t2, $t2, $s0      # $t2 = dia chi A[i]
    lw   $t3, 0($t2)        # $t3 = A[i]

    # SO SANH A[i] > max
    # Thay vi dung sle, ta dung slt: neu A[i] <= max thi skip
    slt  $t4, $s2, $t3      # neu max < A[i] thi $t4 = 1
    beq  $t4, $zero, skip   # neu $t4 == 0 (tuc la A[i] <= max) thi skip

    # CAP NHAT MAX
    add  $s2, $zero, $t3    # max = A[i]

skip:
    addi $t0, $t0, 1        # i++
    j    while              # QUAY LAI VONG LAP (Rat quan trong!)

exit:
    # Ket thuc


