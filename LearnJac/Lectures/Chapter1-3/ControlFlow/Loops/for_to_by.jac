# Jac introduces a special for-to-by loop that gives you precise control over a sequence of numbers.
# This is useful when you need to iterate within a specific range with a defined step.

with entry {
    print("Converting scores (0-100) to GPA (0-4.0):");

    # This loop starts at 60, continues as long as score <= 100,
    # and increases the score by 10 in each step.
    for score = 60 to score <= 100 by score += 10 {
        gpa: float = (score - 60) * 4.0 / 40.0;
        print(f"Score {score} -> GPA {gpa}");
    }
}