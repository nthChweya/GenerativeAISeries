# In Jac, lists are declared with the list type.

with entry {
    # Create an empty list for storing integer grades
    alice_grades: list[int] = [];

    # Append grades to the list
    alice_grades.append(88); # [88]
    alice_grades.append(92); # [88, 92]
    alice_grades.append(85); # [88, 92, 85]

    # Access grades by index
    first_grade: int = alice_grades[0];  # 88
    print(f"Alice's first grade: {first_grade}");

    # print the entire list of grades
    print(f"Alice's grades: {alice_grades}");
}