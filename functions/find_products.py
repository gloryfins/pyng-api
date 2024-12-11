import json
import os

def find_matching_products(criteria):
    max = 2
    current = 0
    data = load_file()
    matching_products = []
    for product in data:
        if (criteria["brand"].lower() in product["name"].lower() or
            criteria["type"].lower() in product["name"].lower()):
            matching_products.append(product)
            current += 1
        if (current > max):
            current = 0
            break
    return matching_products

def load_file():
    script_dir = os.path.dirname(__file__)
    json_file_path = os.path.join(script_dir, '../data.json')
    with open(json_file_path, 'r') as file:
        data = json.load(file)
    return data
