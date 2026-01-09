# BÀI 1

- `$s0`: địa chỉ cơ sở của mảng A  
- `$s1`: số lượng phần tử `n`  
- `$s2`: biến `sum`  
- `$t0`: biến chạy `i`  

## Mã C/C++

```c
int sum = 0;
for (int i = 0; i < n; i++) {
    sum = sum + A[i];
}

```
# BÀI 2

- `$s0` : mảng A
- `$s1` = biến `n`
- `$s2` = biến `max`

## Mã c/c++

```c
int i = 1;
int max = A[0];
while (i < n) {
    if (A[i] > max) {
        max = A[i];
    }
    i++;
}

```

# BÀI 3

- `$s0` : src address
- `$s1` : dst address
- `$t0` : `i`

## Mã c/c++

```c
int i = 0;
while ((dst[i] = src[i]) != 0) {
    i++;
}

```
# BÀI 4

- `$s0` : `n`
- `$s1` : `flag`
- `$t0` : `i`

## Mã c/c++

```
int flag = 1; // 1 la so nguyen to
for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
        flag = 0;
        break;
    }
}

```
# BÀI 5

- `$s0` : Mang A
- `$s1` : `n`
- `$t0` : `i
- `$t1` : `j`


## Mã c/c++

```
int i = 0, j = n - 1;
while (i < j) {
    int temp = A[i];
    A[i] = A[j];
    A[j] = temp;
    i++;
    j--;
}

```
# BÀI 6

- `$s0` : Mang A
- `$s1` : `n`
- `$s2` : `k`
- `$t0` : `i`

## Mã c/c++

```
for (int i = k; i < n - 1; i++) {
    A[i] = A[i + 1];
}
n = n - 1;

```
# BÀI 7

- Mang A : `$s0`
- `n` : `$s1`
- `max_val` : `$s2`
- `count` : `$s3`
- `max_count` : `$s4`
- `i` : `$s5`

## Mã c/c++

```
int count = 1, max_count = 0;
for (int i = 0; i < n - 1; i++) {
    if (A[i] == A[i+1]) {
        count++;
    } else {
        if (count > max_count) {
            max_count = count;
            max_val = A[i];
        }
        count = 1;
    }
}

```
# BÀI 8

- Ma tran A : `$s0`, kich thuoc N : `$s1` (NxN), `sum` : `$s2`
- Dia chi `A[i][j]` = `base + (i * N + j) * 4`

## Mã c/c++

```
int sum = 0;
for (int i = 0; i < N; i++) {
    sum += A[i][i];
}

```
# BÀI 9

- Mang A : `$s0`
- `n` : `$s1`
- `i` : `$s2`
- `temp` : `$s3`

## Mã c/c++

```
for (int i = 0; i < n - 1; i++) {
    if (A[i] > A[i+1]) {
        int temp = A[i];
        A[i] = A[i+1];
        A[i+1] = temp;
    }
}

```
# BÀI 10

- Mang A : `$s0`
- `n` : `$s1`
- `x` : `$s2`

## Mã c/c++

```
int i = n - 1;
while (i >= 0 && A[i] > x) {
    A[i + 1] = A[i];
    i--;
}
A[i + 1] = x;

```
