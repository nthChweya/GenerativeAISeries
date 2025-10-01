import from byllm { Model }
glob llm = Model(model_name="gemini/gemini-2.0-flash");

enum Personality {
    INTROVERT,
    EXTROVERT,
    AMBIVERT
}

def get_personality(name: str) -> str by llm(); # LLMs typically return strings

with entry {
    name = "Albert Einstein";
    result = get_personality(name);
    print(f"{result} personality detected for {name}");
}

# set GEMINI_API_KEY=AIzaSyDDP1c8l6ogwQaM4YTpCgxzgLu9iXCIaiE
