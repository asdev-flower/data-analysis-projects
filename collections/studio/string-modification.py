my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
my_string = "LaunchCode"
first_three = my_string[:3]
remainder_string = my_string[3:]
new_string = remainder_string+first_three
print(new_string)


# Use a template literal to print the original and modified string in a descriptive phrase.
print(f"The original string was '{my_string}' and your new string is '{new_string}'")


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
num_letters = int(input("Enter the number of letters that will be shifted to the end of the word: "))
#num_letters = int(num_letters_string)
my_string = "LaunchCode"
first_three = my_string[:num_letters]
remainder_string = my_string[num_letters:]
new_string = remainder_string+first_three
print(new_string)

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
# num_letters = int(input("Enter the number of letters that will be shifted to the end of the word: "))
## num_letters = int(num_letters_string)
# my_string = "LaunchCode"
# first_three = my_string[:num_letters]
# remainder_string = my_string[num_letters:]
# new_string = remainder_string+first_three
# if num_letters is > 10
#     print("That's too many letters!")


num_letters_string = input("Enter the number of letters that will be shifted to the end of the word: ")
num_letters = int(num_letters_string)   
if num_letters < 10:
    my_string = "LaunchCode"
    first_three = my_string[:num_letters]
    remainder_string = my_string[num_letters:]
    new_string = remainder_string + first_three
    print (f"The original string was '{my_string}', and the new string is '{new_string}'")
if num_letters >= 10:
    my_string = "LaunchCode"
    first_three = my_string[:3]
    remainder_string = my_string[3:]
    new_string = remainder_string + first_three
    print (f"The original string was '{my_string}', and the new string is '{new_string}' because you can't count!")
