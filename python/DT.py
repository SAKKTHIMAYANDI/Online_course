from datetime import datetime,timedelta

"""a = datetime.now()
b = a.strftime('%d/%m/%Y %H:%M%p')
print(b)"""



'''current_date = datetime.now()

days = int(input())

for day in range(days):
    date_str = current_date.strftime('%d%b')
    print(date_str)
    current_date += timedelta(days=1)'''

date_of_birth = input("Enter your date of birth (YYYY-MM-DD): ")

dob = datetime.strptime(date_of_birth,'%Y-%m-%d')
current_date = datetime.now()
years = current_date.year - dob.year
months = current_date.month - dob.month
day = current_date.day - dob.day

print(f'{years}years-{months}months{day}days')