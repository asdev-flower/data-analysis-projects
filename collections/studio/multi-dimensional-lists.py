food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.
cab1_list = [item.strip() for item in food.split(",")]
cab2_list = [item.strip() for item in equipment.split(",")]
cab3_list = [item.strip() for item in pets.split(",")]
cab4_list = [item.strip() for item in sleep_aids.split(",")]
cab1_list.sort()
cab2_list.sort()
cab3_list.sort()
cab4_list.sort()
print("Food:", cab1_list)
print("Equipment:", cab2_list)
print("Pets:", cab3_list)
print("Sleep Aids:", cab4_list)

# strings = [food, equipment, pets, sleep_aids]

# for food in strings:
#     if "," in food:
#         cabinet_1 = food.split()

# print(cabinet_1)


# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.



# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.



# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.



# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
