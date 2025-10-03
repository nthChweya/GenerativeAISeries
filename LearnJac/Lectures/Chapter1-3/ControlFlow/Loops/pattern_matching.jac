# When you have a variable that could be one of many different types or values, a long chain of if-elif-else statements can become hard to read. 
# Pattern matching provides a cleaner and more powerful way to handle these complex situations.

def process_grade_input(input: any) -> str {
    # The 'match' statement checks the input against several possible patterns.
    match input {
        case int() if 90 <= input <= 100:
            return f"Excellent work! Score: {input}";
        case int() if 80 <= input < 90:
            return f"Good job! Score: {input}";
        case int() if 70 <= input < 80:
            return f"Satisfactory. Score: {input}";
        case int() if 0 <= input < 70:
            return f"Needs improvement. Score: {input}";
        case str() if input in ["A", "B", "C", "D", "F"]:
            return f"Letter grade received: {input}";
        case list() if len(input) > 0:
            avg = sum(input) / len(input);
            return f"Average of {len(input)} grades: {avg}";
        # The 'catch-all' case: If no other pattern matched.
        case _:
            return "Invalid grade input";
    }
}

with entry {
    print(process_grade_input(95));        # Number grade
    print(process_grade_input("A"));       # Letter grade
    print(process_grade_input([88, 92, 85])); # List of grades
}