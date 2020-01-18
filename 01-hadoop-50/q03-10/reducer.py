import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':
    ## cada linea de texto recibida es una
    ## entrada clave \\tabulador valor
    b=[]
    for line in sys.stdin:
        line = line.strip()
        line = line.split('\t')
        purpose = line[0]
        amount = line[1]
        amount=int(amount)
        b.append((purpose,amount))
        
       ## sys.stdout.write(\"{}\\n\".format(sorted(line)))
    b.sort(key=lambda b: b[1])
    for i in b:
       sys.stdout.write("{}\t\n".format((i[0] + "," + str(i[1]))))