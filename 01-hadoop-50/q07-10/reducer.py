import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    ordered = []
    for line in sys.stdin:
        l = line.split(',')[0]
        d = line.split(',')[1]
        v = line.split(',')[2]
        v = int(v)
        ordered.append((l,d,v))
    sorted(ordered, key=lambda element: (element[2]))
    for l,d,v in ordered:
        sys.stdout.write("{}\t{}\t{}\n".format(l,d,v))
