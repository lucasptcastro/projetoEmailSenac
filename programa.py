import tkinter as tk
from tkinter.constants import BOTH
import pyautogui 
import pyperclip
import selenium
from modulos import *
from modulos.funcoes import sendEmail

def funcoes():
    nome = entryNome.get().title()
    sobrenome = entrySobrenome.get().title()
    email = entryEmail.get()
    vaga = entryVaga.get().title()
    empresa = entryEmpresa.get()
    sendEmail(nome=nome, sobrenome=sobrenome, email=email, vaga=vaga, empresa=empresa)




#INTERFACE
janela = tk.Tk()
janela.title('SENAC/RN')
janela.geometry("200x195")
janela.iconbitmap(r'imagens\logoSenac.ico')


#CAMPOS
labelTitulo = tk.Label(text='Automação E-mail')
labelTitulo.grid(row=1, column=0, padx=10, pady=10, sticky='nswe', columnspan=5)

labelNome = tk.Label(text='Nome:')
labelNome.grid(row=2, column=0)
entryNome = tk.Entry()
entryNome.grid(row=2, column=1)

labelSobrenome = tk.Label(text='Sobrenome:')
labelSobrenome.grid(row=3, column=0)
entrySobrenome = tk.Entry()
entrySobrenome.grid(row=3, column=1)

labelEmail = tk.Label(text='E-mail:')
labelEmail.grid(row=4, column=0)
entryEmail = tk.Entry()
entryEmail.grid(row=4, column=1)

labelVaga = tk.Label(text='Vaga:')
labelVaga.grid(row=5, column=0)
entryVaga = tk.Entry()
entryVaga.grid(row=5, column=1)

labelEmpresa = tk.Label(text='Empresa:')
labelEmpresa.grid(row=6, column=0)
entryEmpresa = tk.Entry()
entryEmpresa.grid(row=6, column=1)


#BOTÕES
botaoConcluido = tk.Button(text='Concluído', command=funcoes)
botaoConcluido.grid(row=7, column=0, padx=10, pady=10, sticky='nswe', columnspan=5)


janela.mainloop()

