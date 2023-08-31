from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.chrome.service import Service
import time
import logging
from selenium.webdriver.remote.remote_connection import LOGGER
from pathlib import Path
import csv
from selenium.webdriver.chrome.options import Options
import random


LOGGER.setLevel(logging.ERROR)

# Open the ruc.txt file and count the lines
with open('ruc.txt') as f:
    lines = f.read().splitlines()
    num_lines = len(lines)

for line in range(num_lines):
    # Print the current line, total lines, and the percentage of progress
    print(f"Line: {line + 1} of {num_lines} ({round((line + 1) / num_lines * 100, 2)}%)")

    ruc = lines[line]

    # Initialize the Chrome driver service
    service = Service(str(Path('C:\\Users\\lords\\Desktop\\R\\entregafinal\\chromedriver').resolve()))

    # Initialize the Chrome driver
    driver = webdriver.Chrome(service=service)

    # Open SUNAT's website
    driver.get("https://e-consultaruc.sunat.gob.pe/cl-ti-itmrconsruc/FrameCriterioBusquedaWeb.jsp")

    driver.delete_all_cookies()

    # Wait for a random time
    time.sleep(random.randint(3, 7))

    # Enter the RUC number in the corresponding field
    input_ruc = driver.find_element(By.ID, 'txtRuc')
    input_ruc.send_keys(f"{ruc}")

    time.sleep(random.randint(3, 7))

    # Click the "Search" button
    search_button = driver.find_element(By.ID, 'btnAceptar')
    search_button.click()

    # Wait 5 seconds for the page to load the results
    time.sleep(4)

    # Extract all the required data from the website using XPATH
    data = {}
    data['Número de RUC'] = ruc
    data['Nombre/Razón Social'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Número de RUC:')]/../following-sibling::div[1]//h4").text
    data['Tipo Contribuyente'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Tipo Contribuyente:')]/../following-sibling::div[1]//p").text
    data['Nombre Comercial'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Nombre Comercial:')]/../following-sibling::div[1]//p").text
    data['Fecha de Inscripción'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Fecha de Inscripción:')]/../following-sibling::div[1]//p").text
    data['Fecha de Inicio de Actividades'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Fecha de Inicio de Actividades:')]/../following-sibling::div[1]//p").text
    data['Estado del Contribuyente'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Estado del Contribuyente:')]/../following-sibling::div[1]//p").text
    data['Condición del Contribuyente'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Condición del Contribuyente:')]/../following-sibling::div[1]//p").text
    data['Domicilio Fiscal'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Domicilio Fiscal:')]/../following-sibling::div[1]//p").text
    data['Sistema Emisión de Comprobante'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Sistema Emisión de Comprobante:')]/../following-sibling::div[1]//p").text
    data['Actividad Comercio Exterior'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Actividad Comercio Exterior:')]/../following-sibling::div[1]//p").text
    data['Sistema Contabilidad'] = driver.find_element(By.XPATH, "//h4[contains(text(), 'Sistema Contabilidad:')]/../following-sibling::div[1]//p").text

    # If the csv file doesn't exist, create it and write the column headers
    if not Path('ruc.csv').exists():
        with open('ruc.csv', 'w', newline='',encoding="utf-8") as file:
            writer = csv.writer(file , delimiter=';')
            writer.writerow(data.keys())
            writer.writerow(data.values())
    else:
        # If the csv file exists, append the data to the columns using ';' as the delimiter
        with open('ruc.csv', 'a', newline='', encoding="utf-8") as file:
            writer = csv.writer(file, delimiter=';')
            writer.writerow(data.values())

    # Close the browser
    driver.quit()
