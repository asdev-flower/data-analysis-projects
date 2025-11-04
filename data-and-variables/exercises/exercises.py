# 1. Declare and assign the variables here:
shuttle_name = 'Determination'
shuttle_speed_mph = 17500
distance_to_mars_km = 225000000
distance_to_moon_km = 38400
MILES_PER_KM = 0.621
# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(shuttle_name))
print(type(shuttle_speed_mph))
print(type(distance_to_mars_km))
print(type(distance_to_moon_km))
print(type(MILES_PER_KM))
# Code your solution to exercises 3 and 4 here:
distance_to_mars_mph = distance_to_mars_km * MILES_PER_KM
hours_to_mars = distance_to_mars_mph / shuttle_speed_mph
days_to_mars = hours_to_mars / 24

print(distance_to_mars_mph)
print(hours_to_mars)
print(days_to_mars)
print(shuttle_name + " will take " + str(days_to_mars) + " days to reach Mars.")
print(f"{shuttle_name} will take {days_to_mars:.2f} days to reach Mars.")

# Code your solution to exercise 5 here
distance_to_moon_mph = distance_to_moon_km * MILES_PER_KM
hours_to_moon = distance_to_moon_mph / shuttle_speed_mph
days_to_moon = hours_to_moon / 24
print(f"{shuttle_name} will take {days_to_moon:.2f} days to reach the moon.")
