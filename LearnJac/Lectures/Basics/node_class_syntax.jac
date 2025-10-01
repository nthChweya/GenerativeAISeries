
# node: Keyword to define a node class
# ClassName: Name of your node class (e.g., Person, Location)
# has: Declares attributes (like fields in Python classes)
# can: Declares behaviors (like methods)

node ClassName {
    has <type> <attribute_name> = <default_value>;

    can <behavior_name> {
        // behavior logic
    }
}


# Example
# This defines a Person node with three attributes and a behavior called greet.
node Person {
    has str name = "Unknown";
    has int age = 0;
    has bool is_happy = true;

    can greet {
        report("Hello, my name is " + name);
    }
}

# This creates a node named Bob of type Person. (Instantiating Nodes)
Person Bob {
    name = "Bob";
    age = 30;
    is_happy = true
}

