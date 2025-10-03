#* In Jac, use a try...except block to handle exception. 
You put the code that might cause an error inside the try block, 
and the code to handle the error inside the except block. 
You can also use the raise keyword to create your own custom errors.*#

def safe_calculate_gpa(grades: list[int]) -> float {
    try {
        if len(grades) == 0 {
            # If the list of grades is empty, we create our own error.
            raise ValueError("No grades provided");
        }

        total = sum(grades);
        return total / len(grades);

    } except ValueError as e {
        # If a ValueError occurs, this block will run.
        print(f"Error: {e}");
        return 0.0;
    }
}

def validate_grade(grade: int) -> None {
    if grade < 0 or grade > 100 {
        raise ValueError(f"Grade {grade} is out of valid range (0-100)");
    }
}

with entry {
    # Test 1: A valid calculation.
    valid_grades: list[int] = [85, 90, 78];
    gpa: float = safe_calculate_gpa(valid_grades);
    print(f"The calculated GPA is: {gpa}");

     # Test 2: Handling a custom validation error.
    try {
        validate_grade(150);
    } except ValueError as e {
        print(f"A validation error occurred: {e}");
    }
}