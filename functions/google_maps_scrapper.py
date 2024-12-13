from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import json
import time

def scrape_google_maps(query, max_results=5):
    options = Options()
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    options.add_argument('--no-sandbox')
    options.add_argument('--window-size=1920x1080')

    driver = webdriver.Chrome(options=options)
    driver.get("https://www.google.com/maps")
    
    time.sleep(1)
    
    search_box = driver.find_element(By.ID, "searchboxinput")
    search_box.send_keys(query)
    search_box.send_keys(Keys.RETURN)
    time.sleep(1)

    results = []
    scraped_count = 0

    while scraped_count < max_results:
        result_elements = driver.find_elements(By.CLASS_NAME, "Nv2PK")
        
        for result in result_elements:
            if scraped_count >= max_results:
                break

            try:
                result.click()
                time.sleep(1)

                name = driver.find_element(By.CLASS_NAME, "DUwDvf").text
                if "Bliblimart" in name:
                    continue
                address = driver.find_element(By.CLASS_NAME, "Io6YTe").text

                place_url = driver.current_url

                try:
                    image = driver.find_element(By.XPATH, ".//div[contains(@class,'RZ66Rb')]//img").get_attribute("src")
                except Exception as e:
                    image = None

                if image!=None:
                    results.append({
                        "name": name,
                        "address": address,
                        "url": place_url,
                        "image": image
                    })
                    scraped_count += 1

            except Exception as e:
                print(f"Error while scraping result: {e}")
                continue

    driver.quit()
    return results
