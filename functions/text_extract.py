import json

from langchain_ollama import ChatOllama

# Instantiate the chat model
llm = ChatOllama(model="codellama:7b")  # Or use another model like "codellama"


def extract_text_to_json(text):
    # Create a prompt template that works with the model
    template = """
    You are a helpful assistant. Given the sentence below, extract the following details and return them in the JSON format:

    1. The brand of the product (e.g., Xiaomi).
    2. The price range (e.g., for 'under 2 million', return >2000000).
    3. the type of handphone (e.g., android).

    Sentence: {text}

    Return the result as a JSON object with the keys 'brand', 'price', and 'type'.
    """

    # Format the prompt with the input text
    formatted_prompt = template.format(text=text)

    # Use the `invoke()` method with the formatted prompt string
    response = llm.invoke([{"role": "user", "content": formatted_prompt}])

    print(response.content)

    return response.content

#  how to extract the value from json
# # extract value
# parsed_response = json.loads(response.content)
# print(parsed_response)
# brand = parsed_response.get("brand", "Brand not found")
# price = parsed_response.get("price", "Price not found")
# type = parsed_response.get("type", "Price not found")
# print(brand, price, type)
