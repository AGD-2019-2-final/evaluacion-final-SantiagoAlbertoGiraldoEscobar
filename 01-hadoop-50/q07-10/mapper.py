import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        Letter = line.split('   ')[0]
        date = line.split('   ')[1]
        val = line.split('   ')[2]
        sys.stdout.write("{},{},{}\n".format(Letter,date,val))