#!/usr/bin/python3
"""Exports to CSV"""

if __name__ == "__main__":
    import csv
    import requests
    from sys import argv

    usrs_response = requests.get("https://jsonplaceholder.typicode.com/users")
    tdlst_response = requests.get("https://jsonplaceholder.typicode.com/todos")
    usrs = usrs_response.json()
    tdlst = tdlst_response.json()
    emp_Id = argv[1]

    if emp_Id.isdigit():
        for usr in usrs:
            if usr["id"] == int(emp_Id):
                emp_name = usr["name"]

        with open("USER_ID.csv", "w") as f:
            writer = csv.writer(f, quoting=csv.QUOTE_ALL)
            for td in tdlst:
                if td["userId"] == int(emp_Id):
                    status = td["completed"]
                    title = td["title"]
                    writer.writerow([emp_Id, emp_name, status, title])
