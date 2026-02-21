try:
    a =input()
    print(a/b)

except ValueError as e:
    print('value error',e)
except TypeError as e:
    print('type error',e)
except NameError as e:
    print('Name error',e)
