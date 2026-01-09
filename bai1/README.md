# Giả sử

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

