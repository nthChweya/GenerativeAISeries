# A set is an unordered collection that does not allow duplicate items. 
# You declare a set with the set type.

with entry {
    # Track unique courses
    alice_courses: set[str] = {"Math", "Science", "English","CRE","Music"};
    bob_courses: set[str] = {"Math", "History", "Art","Music"};

    # Find common courses
    common_courses = alice_courses.intersection(bob_courses);
    print(f"Common courses: {common_courses}");

    # All unique courses
    all_courses = alice_courses.union(bob_courses);
    print(f"All courses: {all_courses}");
}

# The intersection method finds items that are present in both sets, 
# while the union method combines both sets into one, automatically removing any duplicates.