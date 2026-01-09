# KHOI TAO
    add $s2, $zero, $zero    # sum = 0
    add $t0, $zero, $zero    # i = 0

loop:
    slt $t1, $t0, $s1        # Kiem tra i < n
    beq $t1, $zero, exit     # Neu i >= n thi thoat (branch if equal 0)

    sll $t2, $t0, 2          # $t2 = i * 4 (offset)
    add $t2, $s0, $t2        # $t2 = dia chi cua A[i] (base + offset)
    lw  $t3, 0($t2)          # Lay gia tri tu RAM A[i] nap vao thanh ghi $t3

    add $s2, $s2, $t3        # sum = sum + A[i]

    addi $t0, $t0, 1         # i = i + 1
    j loop                   # Quay lai nhan loop

exit:
    # Ket thuc chuong trinh
