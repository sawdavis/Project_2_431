fn factorial(n: i32, acc: i32 = 1) -> i32 {
    if (n <= 1) return acc;
    return factorial(n - 1, acc * n);
}
