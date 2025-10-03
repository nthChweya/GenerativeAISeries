def process_class_grades(grades: dict[str, list[int]]) -> None { #-> None: The function doesn’t return anything; it just prints results.
    # This loop iterates through the key-value pairs in the dictionary.
    for (student, student_grades) in grades.items() {
        total: int = 0;
        # This nested loop iterates through the list of grades for each student.
        for grade in student_grades {
            total += grade;
        }
        average: float = total / len(student_grades);
        print(f"{student}'s average grade: {average}");
    }
}

with entry {
    class_grades: dict[str, list[int]] = {
        "Alice": [88, 92, 85],
        "Bob": [79, 83, 77],
        "Charlie": [95, 89, 92]
    };

    process_class_grades(class_grades);
}