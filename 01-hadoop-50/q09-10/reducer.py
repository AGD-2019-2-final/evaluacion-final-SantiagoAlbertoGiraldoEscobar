import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    minimo = []
    ordered = []
    for line in sys.stdin:
        l = line.split(',')[0]
        d = line.split(',')[1]
        v = line.split(',')[2]
        v = int(v)
        ordered.append((l,d,v))
        ordered.sort(key=lambda b: (b[2]))
    n = len(ordered)
    for i in range(6):
        minimo.append(ordered[i])
    for l,d,v in minimo:
        sys.stdout.write("{}\t{}\t{}\n".format(l,d,v))