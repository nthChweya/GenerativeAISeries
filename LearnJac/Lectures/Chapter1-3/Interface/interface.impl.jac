# interface.impl.jac - Implementation
#*This is where we write the code for the methods we defined in the interface. 
Jac automatically links these implementation blocks to the interface.*#
# The implementation for the validate() method.
impl User.validate {
    # It checks if the email contains an '@' and the name is not empty.
    return "@" in self.email and len(self.name) > 0;
}

# The implementation for the get_display_name() method.
impl User.get_display_name {
    return f"{self.name} <{self.email}>";
}