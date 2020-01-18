Lista = [('carro','3000'),('casa','2000'),('carro','2000'),('casa','2000')]

diccionario = {}
for i in Lista:
    clave = i[0]
    valor = i[1]
    valor = int(valor)
    if clave in diccionario.keys():
        diccionario[clave].append(valor)
    else:
        diccionario[clave] =[]
        diccionario[clave].append(valor)
    for i in diccionario.keys():
        summax = max(diccionario[i])
        print(i,summax)
print(diccionario)
