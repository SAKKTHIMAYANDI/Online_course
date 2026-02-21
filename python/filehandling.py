try:
    a = open('sarma.txt',"w")
    write = a.write()
    print(write)
except ValueError as e:
    print('ValueError',e)
except TypeError as e:
    print('TypeError',e)
except NameError as e:
    print('NameError',e)
