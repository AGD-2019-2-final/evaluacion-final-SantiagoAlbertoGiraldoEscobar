@outputSchema("as:int")
def count_elements(element):
    if element == None:
        return 0
    else:
        string = str(element)
        string = string.split(',')
        d = len(string)
        return d  
        
@outputSchema("as:chararray")
def mix_data(e1,e2):
    s1 = str(e1)
    s2 = str(e2)
    l1 = s1.split(',')
    l2 = s2.split(',')
    l1.sort()
    l2.sort()
    laux = [(x,y) for y in l2 for x in l1]
    return laux

@outputSchema("as:chararray")
def add_parentheses(s):
    return "(" + str(s) + ")"