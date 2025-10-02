obj Student {
    has name: str;
    has age: int;
    has gpa: float;

     # Notice the 'self' parameter, which refers to the object itself.
    def get_info() -> str {
        return f"Name: {self.name}, Age: {self.age}, GPA: {self.gpa}";
    }
}

with entry {
    student: Student = Student("Alice", 20, 3.8);  # Create a new Student object
    print(student.get_info());
}