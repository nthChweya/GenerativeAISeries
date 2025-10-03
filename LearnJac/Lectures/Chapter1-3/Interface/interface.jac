# interface.jac - Interface declaration
obj User {
    # It has these attributes.
    has name: str;
    has email: str;

    # And it must have these methods.
    # We don't write the code for them here.
    def validate() -> bool;
    def get_display_name() -> str;
}