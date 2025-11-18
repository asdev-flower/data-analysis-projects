proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
for i in strings:
    if "," in i:
        print(f"'{i}' uses commas.")
    elif ";" in i:
        print(f"'{i}' uses semicolons.")
    elif " " in i:
        print(f"'{i}' uses spaces.")
    else:
        print(f"'{i}' has an unknown delimiter.")


# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.

for i in strings:
    if "," in i:
        parts = i.split(",")         # split into a list
        parts.reverse()              # reverse the list
        new_string = ",".join(parts) # join back into a string
        print(f"Original: {i}")
        print(f"Reversed: {new_string}\n") #use \n to make a line break between outputs


# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.
for i in strings:
    if ";" in i:
        parts = i.split(";")         # split into a list
        parts.sort()              # sort the list
        new_string = ";".join(parts) # join back into a string
        print(f"Original: {i}")
        print(f"Alphabetized: {new_string}\n") 



# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.
for i in strings:
    if " " in i:
        parts = i.split(" ")         # split into a list
        parts.sort(reverse=True)              # sort the list
        new_string = " ".join(parts) # join back into a string
        print(f"Original: {i}")
        print(f"Reversed: {new_string}\n") 



# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
for i in strings:
    if ", " in i:
        parts = i.split(", ") 
        parts.reverse()            
        new_string = ",".join(parts) 
        print(f"Original: {i}")
        print(f"Reversed: {new_string}\n") 