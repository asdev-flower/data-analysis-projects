"""
IF you get stuck in a syntax error, try exit() in the terminal
print(type(5))
print(type(5.0))
print(type("5"))

budget = "1000"

budget = int(budget)
print(budget * 2)

#print("Data" + "Science")
print(5+5)


year = 2025
month = 10
#print("Date:" + year + "-" + month)
#print("Date:" + str(year) + "-" + str(month))
print("Date:", year, "-", month)

revenue = 12000
expenses = 8000
profit = revenue - expenses
print(revenue)
print(f"Banana Stand Profit: ${profit}")

revenue = 13500
print(f"Banana Stand Profit: ${revenue - expenses}")



a = 2
b = 3
result = a ** b + (10-4) / 2
print("Result:", int(result)) 


sales = 48000
costs = 31500
profit = sales - costs
profit_margin = (profit / sales) * 100
print(f"Profit margin: {profit_margin}%")

print('dog' == 'cat')
print(3 < 4)
print(3 > 10)
print('dog' != 'cat')

print('pie' in 'ripieness')


num = 24

print(num > 0 or num < 10)
print(7 > num or num == 3)
print(num*5 > 100 or 'dog' == 'cat')

print(4 < 3 or 2 < 3)

print(input('Please enter a whole number:'))

entry = int(input('Enter a whole number: '))
if entry%2 == 0:
    print("EVEN!")

if entry > 0:
    print("POSITIVE")


word = input('Please enter a word that is longer than 4 characters: ')

if len(word) == 4:
   print("We need you to think of a word that is longer than 4 characters.")
else:
   if len(word) < 4:
      print("You can think of a longer word than that!")
   else:
      print("Excellent word!")

      
character = '!'
lowercase = 'abcdefghijklmnopqrstuvwxyz'
uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
digits = '0123456789'

if character in lowercase:
   print(character, 'is a lowercase letter.')
elif character in uppercase:
   print(character, 'is an UPPERCASE letter.')
elif character in digits:
   print(character, 'is a number.')
else:
   print('&**%#!', character, 'is a punctuation mark or a space.')

rating = 4.5
if rating >= 4.8:
    print("Excellent Performer")
elif rating >=4.0:
    print('Your Mom\'s Message Says "Great Job Sport!"')
else:
    print("Needs Improvement")

print('Your Mom\'s Text Says “Great Job!”')



for char in 'Your Mom\'s Text Says “Great Job!"':
    print(char)

    """

def add_numbers_together(num):
   total = 0
   while num < 100:
      total += num 
      num +=1
   
   return total

print("Hello, World!")