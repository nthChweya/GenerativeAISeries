obj Calculator {
    has history: list[str] = []; # Creates an empty list of type string

    def add(a: float, b: float) -> float {
        result: float = a + b;
        self.history.append(f"{a} + {b} = {result}");
        return result;
    }

    def subtract(a: float, b: float) -> float {
        result: float = a - b;
        self.history.append(f"{a} - {b} = {result}");
        return result;
    }

    def get_history() -> list[str] {
        return self.history;
    }

    def clear_history() {
        self.history = [];
    }
}

with entry {
    # First, create an instance of our Calculator object.
    calc = Calculator();

    # Perform calculations
    result1: float = calc.add(5.0, 3.0);
    result2: float = calc.subtract(10.0, 4.0);

    print(f"Results: {result1}, {result2}");

    # Show history
    print("\nCalculation History:");
    for entry in calc.get_history() { # Loop that iterates through each item in the get_history()
        print(f"  {entry}"); # Prints each entry
    }
}