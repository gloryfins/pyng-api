import json
import time

from langchain_ollama import ChatOllama

# Instantiate the chat model
llm = ChatOllama(model="codellama:7b")  # Or use another model like "codellama"

def extract_text_to_json(text):
    # Create a prompt template that works with the model
    template = """
    You are a helpful assistant. Given the sentence below, extract the following details and return them in the JSON format:

    1. The brand of the product (e.g., Xiaomi).
    2. The price range (e.g., for 'under 2 million', return "<2000000"). If no price is mentioned, leave it empty String.
    3. the type of handphone (e.g., android, iPhone).

    Sentence: {text}

    Return the result as a JSON object with the keys 'brand', 'price', and 'type'.
    """

    # Format the prompt with the input text
    formatted_prompt = template.format(text=text)

    # Use the `invoke()` method with the formatted prompt string
    while True:
        print("Waiting for response...")
        response = llm.invoke([{"role": "user", "content": formatted_prompt}])
        if response is not None:
            print(response)
            return response
        else:
            print("Waiting for response...")
            time.sleep(2)
