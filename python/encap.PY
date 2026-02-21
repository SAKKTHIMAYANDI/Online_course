
class company:
    def __init__(self):
        self.companyname = 'google'
        self._companyname = 'google'
        self.__companyname = 'google'

c1 = company()
print(c1.companyname)
print(c1._companyname)
print(c1.__companyname)