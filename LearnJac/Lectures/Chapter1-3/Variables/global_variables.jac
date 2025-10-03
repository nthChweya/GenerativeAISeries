glob school_name: str = "Jac High School";
glob passing_grade: int = 60;
glob honor_threshold: float = 3.5;

def get_school_info() -> str {
    return f"Welcome to {school_name}";
}

with entry {
    print(get_school_info());
    print(f"Honor threshold is {honor_threshold}");
}