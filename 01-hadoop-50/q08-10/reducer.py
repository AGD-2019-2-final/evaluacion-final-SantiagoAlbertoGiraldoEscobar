import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    Letter = {}
    for line in sys.stdin:
        line = line.strip()
        k = line.split(',')[0]
        val = line.split(',')[1]
        val=float(val)
        if k in Letter.keys():
            Letter[k].append(val)
        else:
            Letter[k]=[]
            Letter[k].append(val)
    for k in Letter.keys():
        suml =sum(Letter[k])
        avgl =suml/float(len(Letter[k]))
        sys.stdout.write("{}\t{}\t{}\n".format(k, suml, avgl))