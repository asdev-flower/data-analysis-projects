food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.
cabinet_food = sorted(food.split(","))
cabinet_equipment = sorted(equipment.split(","))
cabinet_pets = sorted(pets.split(","))
cabinet_sleep = sorted(sleep_aids.split(","))

print(cabinet_equipment)


# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.
cargo_hold = [
    cabinet_food,
    cabinet_equipment,
    cabinet_pets,
    cabinet_sleep
]
print("Cargo Hold:", cargo_hold)

# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.

cabinet_choice = int(input("Select a cabinet (0–3): "))

# d) Use bracket notation and format to display the contents of the selected cabinet. If the user entered an invalid number, print an error message.
if 0 <= cabinet_choice <= 3:
    print(f"Cabinet {cabinet_choice} contains: {cargo_hold[cabinet_choice]}")
else:
    print("ERROR: That cabinet does not exist.")


# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item. Use the in method to check if the cabinet contains the selected item, then print “Cabinet ____ DOES/DOES NOT contain ____.”
item_choice = input("Enter an item to search for: ")

if 0 <= cabinet_choice <= 3:
    if item_choice in cargo_hold[cabinet_choice]:
        print(f"Cabinet {cabinet_choice} DOES contain '{item_choice}'.")
    else:
        print(f"Cabinet {cabinet_choice} DOES NOT contain '{item_choice}'.")
