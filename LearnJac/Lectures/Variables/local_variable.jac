def add_numbers(a: int, b: int) -> int {
    result: int = a + b;  # Local variable
    return result;
}
with entry {
    sum = add_numbers(25, 10);
    print(f"Sum: {sum}");
}