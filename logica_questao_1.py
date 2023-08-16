from math import sqrt

def mostrar_raiz(num):
    if(num >= 0):
        print("Raiz: " +  str(sqrt(num)))

def mostrar_quadrado(num):
    print("Quadrado: " + str(num * num))

try:
    num1 = float(input("Digite um numero: "))
    num2 = float(input("Digite outro numero: "))
    if(num1 <= num2):
        mostrar_raiz(num1)
        mostrar_quadrado(num2)
    else:
        mostrar_raiz(num2)
        mostrar_quadrado(num1)
except ValueError:
    print("O valor de entrada deve ser um numero")
except:
    print("Erro desconhecido")
