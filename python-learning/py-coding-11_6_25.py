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

