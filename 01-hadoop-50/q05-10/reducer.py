import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == '__main__':
    Month = {}
    for line in sys.stdin:
        line = line.strip()
        k = line.split(',')[0]
        count = line.split(',')[1]
        count=int(count)
        if k in Month.keys():
            Month[k].append(count)
        else:
            Month[k]=[]
            Month[k].append(count)
    for k in Month.keys():
        suml =sum(Month[k])
        sys.stdout.write("{}\t{}\n".format(k, suml))