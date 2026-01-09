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
