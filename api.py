import json
import time
import random

from flask import Flask, request
from flask_cors import CORS

from functions.find_products import find_matching_products
from functions.google_maps_scrapper import scrape_google_maps
from functions.text_extract import extract_text_to_json

app = Flask(__name__)
CORS(app, origins="http://localhost:3000")

@app.route('/stores', methods=['POST'])
def stores():
    query = "blibli store near me"
    results = scrape_google_maps(query, max_results=3)

    response = {
        "message": "Certainly, here is the list of locations you requested, starting with the nearest to your location, feel free to reach out if you need more details.",
        "data": results
    }
    response_json = json.dumps(response, indent=2)
    return response_json, 200

@app.route('/products', methods=['POST'])
def products():
    query = request.get_json()
    keyword = str(query['userText'])
    response = extract_text_to_json(keyword)
    while True:
        if json.loads(response.content) is not None:
            response_json = json.loads(response.content)
            break
        else:
            print("Waiting for response...")
            time.sleep(1)
    matching_products = find_matching_products(response_json)
    message=[
        "Here's the list of products you asked for, Let me know if you need more details",
        "As requested, here is a list of our products tailored to your needs",
        "Here's the list of products available for purchase, Feel free to reach out if you'd like to make a purchase"
    ]
    random_message=random.choice(message)
    response = {
        "message": random_message,
        "data": matching_products
    }
    return response, 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
