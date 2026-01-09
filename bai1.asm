# Gi? s?:
# $s0: ??a ch? c? s? c?a m?ng A
# $s1: s? l??ng ph?n t? n
# $s2: bi?n sum
# $t0: bi?n ch?y i
#int sum = 0;
#for (int i = 0; i < n; i++) {
#    sum = sum + A[i];
#}

# Kh?i t?o
    add $s2, $zero, $zero    # sum = 0
    add $t0, $zero, $zero    # i = 0

loop:
    slt $t1, $t0, $s1        # Ki?m tra i < n
    beq $t1, $zero, exit     # N?u i >= n thì thoát

    sll $t2, $t0, 2          # $t2 = i * 4
    add $t2, $s0, $t2        # $t2 = ??a ch? c?a A[i]
    lw  $t3, 0($t2)          # L?y giá tr? A[i] n?p vào $t3

    add $s2, $s2, $t3        # sum = sum + A[i] (C?ng tr?c ti?p vào thanh ghi)

    addi $t0, $t0, 1         # i = i + 1
    j loop                   # Nh?y ng??c l?i ?? ti?p t?c vòng l?p

exit:
    # K?t thúc ch??ng trình