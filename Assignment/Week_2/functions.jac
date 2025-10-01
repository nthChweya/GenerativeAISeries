# Functions with Reasoning
# The method='Reason' parameter enables step-by-step reasoning for complex tasks

import from byllm.llm { Model }

glob llm = Model(model_name="gemini/gemini-2.0-flash");

def analyze_sentiment(text: str) -> str by llm(method='Reason');

def generate_response(original_text: str, sentiment: str) -> str by llm();

with entry {
    customer_feedback = "I'm really disappointed with the product quality. The delivery was late and the item doesn't match the description at all.";

    # Function performs step-by-step sentiment analysis
    sentiment = analyze_sentiment(customer_feedback);

    # Function generates response based on sentiment
    response = generate_response(customer_feedback, sentiment);

    print(f"Customer sentiment: {sentiment}");
    print(f"Suggested response: {response}");
}