import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    Letter={}
    #total = 0
    for line in sys.stdin:
        line = line.strip()
        key = line.split(',')[0]
        amount = line.split(',')[1]
        amount = int(amount)
        if key in Letter.keys():
          Letter[key].append(amount)
        else:
          Letter[key]=[]
          Letter[key].append(amount)
    for key, val in Letter.items():
        #val = list(map(int, val))
        val = sorted(val, key=lambda x: x)
        val = str(val)[1:-1]
        val = val.replace(", ", ",")
        sys.stdout.write("{}\t{}\n".format(key, val))