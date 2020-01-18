@outputSchema("as:int")
def count_elements(element):
    if element == None:
        return 0
    else:
        string = str(element)
        string = string.split(',')
        d = len(string)
        return d  