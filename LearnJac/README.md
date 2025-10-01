# Jac/Jaseci for Agentic Programming

Jac is a drop-in replacement for Python and supersets Python, much like Typescript supersets Javascript or C++ supersets C. It extends Python's semantics while maintaining full interoperability with the Python ecosystem, introducing cutting-edge abstractions designed to minimize complexity and embrace AI-forward development.

Jac targets Python bytecode, so all Python libraries work with Jac.

In addtion to traditional python classes (class or Jac's dataclass-like obj), Jac programmers can also use node classes (node), edge classes (edge), and walker classes (walker) for a new type of problem solving and agentic programming.

Instances of node and edge classes allow for assembling objects in a graph structure to express semantic relationships between objects.

**_Walker classes inverts the traditional relationship between data and computation. Rather than moving data to computation with parameter passing, walkers enable moving computation to data as they represent computational units that moves through the topology of node and edge objects.
These new constructs gives rise to a new paradigm for problem solving and implementation we call Object-Spatial Programming (OSP)._**

🧠 Jac vs Traditional Python Classes

In Python, you typically use class to define objects and their behavior. Jac supports that too, but it introduces three specialized class types for agentic and graph-based programming

🧩 Jac Class Types Explained    

    node:	it Represents entities or objects in a graph i.e. Like a person or place
    edge:	it Represents relationships or connections between nodee i.e. Like a friendship or road
    walker:	it Represents agents that move through the graph and perform tasks i.e Like a robot or courier

🚀 Why Use These?

Jac is designed for agentic programming—where autonomous agents (walkers) interact with a graph of nodes and edges to solve problems. This is powerful for:

    1. AI agents and simulations
    2. Knowledge graphs
    3. Workflow automation
    4. Game logic
    5. Multi-agent systems    

🧠 Example Use Case: Imagine you're building a smart city simulation:

        - node: Buildings, people, vehicles
        - edge: Roads, relationships, communication links
        - walker: A delivery drone navigating the city to drop packages   

##### 🧠 Node Properties Explained

| Keyword    | Purpose | Example |
| -------- | -------- | -------- |
| has | Declares attributes | has str name = "Alice"; |
|  can | Declares behaviors | can greet { report("Hi"); } |
| report() | Outputs messages | report("Node visited"); |
| here | Refers to the current node |here.name |
| spawn | Launches a walker from the node | spawn MyWalker(); |
| architype | Optional keyword to define node type inheritance | architype = "base_type"; |

##### 🧠 Built-in Walker movement commands

    visit(node_ref) – move to a specific node
    take(edge_ref) – follow an edge
    backtrack() – return to the previous node
    stop – end the walker’s journey


