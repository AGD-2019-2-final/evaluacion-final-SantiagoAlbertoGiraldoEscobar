import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        key = line.split('\t')[0]
        Letter = line.split('\t')[1]
        Letter = Letter.split(',')
        for i in Letter:
            sys.stdout.write("{},{}\n".format(i,key))       