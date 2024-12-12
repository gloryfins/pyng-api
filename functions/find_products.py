import json
import os

def find_matching_products(criteria):
    max = 2
    current = 0
    data = load_file()
    matching_products = []
    result = check_number(criteria["price"])
    print(result)
    for product in data:
        if (criteria["brand"].lower() in product["name"].lower() or
            criteria["type"].lower() in product["name"].lower()):
            if product["discounted_price"] ==0:
                product["price"] = product["original_price"]
            else:
                product["price"] = product["discounted_price"]

            if result["criteria"]==">":
                if product["price"] > int(result["num"]):
                    matching_products.append(product)
                    current += 1
            elif result["criteria"]=="<":
                if product["price"] < int(result["num"]):
                    matching_products.append(product)
                    current += 1
            elif result["criteria"]=="<=":
                if product["price"] <= int(result["num"]):
                    matching_products.append(product)
                    current += 1
            elif result["criteria"]==">=":
                if product["price"] >= int(result["num"]):
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

def check_number(value):
    value_len = len(value)
    criteria =""
    num=""
    for i in range(value_len):
        if not value[i].isdigit():
            criteria += value[i]
        else:
            num+=value[i]
    response={
        "criteria": criteria,
        "num": num
    }
    return response