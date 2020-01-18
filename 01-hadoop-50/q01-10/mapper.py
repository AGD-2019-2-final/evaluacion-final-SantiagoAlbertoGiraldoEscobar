import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#

# input comes from STDIN (standard input)
if __name__ == '__main__':
    for line in sys.stdin:
        line = line.strip()
        line = line.split(',')

        if len(line) >=2:
            credit_history = line[2]

            sys.stdout.write("{}\t1\n".format(credit_history))