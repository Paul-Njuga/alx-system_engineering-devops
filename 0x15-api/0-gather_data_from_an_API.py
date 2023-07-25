#!/usr/bin/python3
"""Gathers data from an API"""

if __name__ == "__main__":
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
                tot_tsks = 0
                tsks_dn = 0
                for td in tdlst:
                    if td["userId"] == int(emp_Id):
                        tot_tsks += 1
                        if td["completed"]:
                            tsks_dn += 1
                print("Employee {} is done with tasks({}/{}):\
                    ".format(usr["name"], tsks_dn, tot_tsks))
        for td in tdlst:
            if td["userId"] == int(emp_Id) and td["completed"]:
                print("\t {}".format(td["title"]))
