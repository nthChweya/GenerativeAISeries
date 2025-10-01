# In this example, nodes represent meaningful entities (like Weights,Cardio Machines), 
# while walkers (agents) traverse these nodes, collect contextual information, 
# and collaborate with an LLM to generate a personalized workout plan.

# 🏋️‍♂️ Real-World Analogy
#     Imagine a virtual personal trainer:

#     It walks through a gym (graph of nodes).

#     Checks what equipment is available.

#     Stores that info in its gear.

#     Then uses AI to generate a custom workout plan.

import from byllm.llm {Model}

glob llm = Model(model_name="gemini/gemini-2.5-flash");

node Equipment {} # Defines a base node called Equipment. It's empty here but can be extended.

node Weights(Equipment) {  # Defines a node called Weights that inherits from Equipment.
    has available: bool = False;

    can check with FitnessAgent entry {
        # “Set the agent’s gear status for weights to match this node’s availability.”
        visitor.gear["weights"] = self.available; # visitor refers to the agent interacting with the node.
    }
}

node Cardio(Equipment) {
    has machine: str = "treadmill";

    can check with FitnessAgent entry {
        visitor.gear["cardio"] = self.machine;
    }
}

node Trainer {
    can plan with FitnessAgent entry {
        visitor.gear["workout"] = visitor.create_workout(visitor.gear);
        # The result of create_workout is stored in visitor.gear["workout"], updating the agent’s gear with a new workout plan.
    }
}

walker FitnessAgent {
    has gear: dict = {}; # gear: A dictionary or object holding the agent’s current equipment or status.

    can start with `root entry { # Defines a start ability that begins at the root node.
        # The entry block is the main logic that runs when start is triggered.
        visit [-->(`?Equipment)]; # means: traverse all outgoing edges from the root node that lead to nodes of type Equipment`.
        # The ?Equipment is a type filter, so it only visits nodes that are instances of Equipment (like Weights, Cardio, etc.).
    }

    """Create a personalized workout plan based on available equipment and space."""
    def create_workout(gear: dict) -> str by llm();
}

walker CoachWalker(FitnessAgent) {
    can get_plan with `root entry {
        visit [-->(`?Trainer)];
    }
}

# test harness or simulation block
with entry {
    root ++> Weights(); # Creates a new Weights node and connects it to the root node with a strong edge (++>).
    # This means the root now has a direct link to a Weights node
    root ++> Cardio();
    root ++> Trainer();

    # Creates a new walker instance of type CoachWalker.
    # It spawns at the root node, meaning it starts its traversal from there.
    agent = CoachWalker() spawn root;
    print("Your Workout Plan:");
    print(agent.gear['workout']);
}

# 🏋️‍♂️ Real-World Analogy
#     Imagine you're launching a virtual fitness app:

#     You set up the gym with weights, cardio machines, and a trainer.

#     You send in a coach agent to explore the gym.

#     The coach gathers info and builds a workout plan.

#     You print that plan for the user