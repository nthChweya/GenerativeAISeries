with entry {
    # This variable can hold different kinds of data.
    grade_data: any = 95;
    print(f"Grade as number: {grade_data}");

    # Now, we can assign a string to the same variable.
    grade_data = "A";  # Now a letter grade
    print(f"Grade as letter: {grade_data}");

    grade_data = 78.76;
    print(f"Grade as float: {grade_data}");

}