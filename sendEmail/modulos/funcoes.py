from tkinter.constants import FALSE
from selenium import webdriver
import pyperclip 
import pyautogui 
from time import sleep

#FUNÇÃO PARA ENVIAR O E-MAIL
def sendEmail(nome, sobrenome, email, vaga, empresa):
    #PAUSA A CADA COMANDO PYAUTO
    pyautogui.PAUSE = 0.5 

    #ABRIR O CHROME
    driver = webdriver.Chrome(executable_path=r'./chromedriver.exe')

    #IR AO OUTLOOK
    sleep(1.5)
    pyautogui.hotkey('alt', ' ')
    pyautogui.press('x')
    driver.get('https://outlook.live.com/mail/0/')
    driver.find_element_by_xpath('/html/body/header/div/aside/div/nav/ul/li[2]/a').click()

    #LOGAR NO OUTLOOK
    sleep(2)
    #PREENCHER O E-MAIL
    pyperclip.copy('contaanonima10.001@hotmail.com')
    pyautogui.hotkey('ctrl', 'v')
    pyautogui.hotkey('enter')
    sleep(2)
    #PREENCHER A SENHA
    pyperclip.copy('contaanonima2001')
    pyautogui.hotkey('ctrl', 'v')
    pyautogui.hotkey('enter')
    driver.find_element_by_xpath('//*[@id="idBtn_Back"]').click()

    #ABRIR A CAIXA DE ENVIO DE E-MAIL
    sleep(3)
    driver.find_element_by_xpath('//*[@id="id__6"]').click()
    sleep(1)
    pyautogui.press('esc')
    sleep(3)
    driver.find_element_by_xpath('//*[@id="ReadingPaneContainerId"]/div/div/div/div[1]/div[1]/div[1]/div/div[1]/div/div/div/div/div[1]/div/div/input').click()
    sleep(3)
    
    #PREENCHER ENDEREÇO DE E-MAIL
    pyperclip.copy(email)
    sleep(1)
    pyautogui.hotkey('ctrl', 'v')
    sleep(1)
    pyautogui.press('tab', presses=3)
    sleep(1)
    
    #PREENCHER O TÍTULO
    pyperclip.copy(vaga)
    sleep(1)
    pyautogui.hotkey('ctrl', 'v')
    sleep(1)
    pyautogui.press('tab')
    sleep(1)
    #PREENCHER O CORPO DO TEXTO
    pyperclip.copy(f'''Boa tarde, {nome} {sobrenome}! Tudo bem?
    
    Você foi selecionado para uma vaga de {vaga} da empresa {empresa}.
    Para mais informações, acesse o link em anexo.

    ''')
    pyautogui.hotkey('ctrl', 'v')
    
    #ENVIAR O E-MAIL
    sleep(1)
    driver.find_element_by_xpath('//*[@id="ReadingPaneContainerId"]/div/div/div/div[1]/div[3]/div[2]/div[1]/div/div/span/button[1]').click()

