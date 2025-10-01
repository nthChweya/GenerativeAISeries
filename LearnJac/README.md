# Jac for Agentic Programming

Jac is a drop-in replacement for Python and supersets Python, much like Typescript supersets Javascript or C++ supersets C. It extends Python's semantics while maintaining full interoperability with the Python ecosystem, introducing cutting-edge abstractions designed to minimize complexity and embrace AI-forward development.

Jac targets Python bytecode, so all Python libraries work with Jac.

In addtion to traditional python classes (class or Jac's dataclass-like obj), Jac programmers can also use node classes (node), edge classes (edge), and walker classes (walker) for a new type of problem solving and agentic programming.

🧠 Jac vs Traditional Python Classes

In Python, you typically use class to define objects and their behavior. Jac supports that too, but it introduces three specialized class types for agentic and graph-based programming

🧩 Jac Class Types Explained    

    node:	it Represents entities or objects in a graph i.e. Like a person or place
    edge:	it Represents relationships or connections between nodee i.e. Like a friendship or road
    walker:	it Represents agents that move through the graph and perform tasks i.e Like a robot or courier
