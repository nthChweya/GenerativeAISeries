with entry {
    count: int = 1;
    total: int = 0;

    # This loop will continue as long as 'count' is less than or equal to 5.
    while count <= 5 {
        print(f"Adding {count} to total");
        total += count;
        print(f"Current Total is: {total}");
        count += 1;
    }
    print(f"Final total: {total}");
}