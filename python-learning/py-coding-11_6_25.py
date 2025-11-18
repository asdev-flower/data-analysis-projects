employees = {
    "E102" : {
        "name": "Alex Chen",
        "role": "Data Analyst",
        "salary": 82000,
        "department":"research"
    },
    "E103" : {
        "name": "Jordan Smith",
        "role": "Engineer",
        "salary": 88000,
        "department":"infrastructrue"
    }
}

print(employees["E102"]["salary"])

employees["E102"]["salary"] = 100000
print(employees["E102"])

employee = ("ID-104", "Alex Chen", "Data Analyst")
print(employee[1])
#employee[1] = "Alex Young"
#^this wouldnt run!

employee_as_list = list(employee)
employee_as_list[1] = "Alex Young"
employee = tuple(employee_as_list)
print(employee)