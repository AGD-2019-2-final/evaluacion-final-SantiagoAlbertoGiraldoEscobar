import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        line = line.strip()
        line = line.split(',')
        if len(line) >=2:
            purpose = line[0]
            amount = line[1]
            sys.stdout.write("{}\t{}\t\n".format(purpose, amount))