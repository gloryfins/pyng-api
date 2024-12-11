from flask import Flask, request, jsonify
from functions.find_products import find_matching_products
from functions.google_maps_scrapper import scrape_google_maps
from functions.speech_recognizer_wav import recognize_speech_from_wav
from functions.text_extract import extract_text_to_json
import json
import os
import time

app = Flask(__name__)

@app.route('/stores', methods=['POST'])
def stores():
    query = "blibli store near me"
    results = scrape_google_maps(query, max_results=3)
    response = {"data": results}
    response_json = json.dumps(response, indent=2)
    return response_json, 200

@app.route('/products', methods=['POST'])
def products():
    query = request.get_json()
    keyword = str(query['query'])
    response = extract_text_to_json(keyword)
    while True:
        if json.loads(response.content) is not None:
            response_json = json.loads(response.content)
            break
        else:
            print("Waiting for response...")
            time.sleep(1)
    matching_products = find_matching_products(response_json)
    return matching_products, 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
