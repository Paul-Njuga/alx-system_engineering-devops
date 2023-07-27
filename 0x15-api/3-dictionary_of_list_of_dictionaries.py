#!/usr/bin/python3
"""Dictionary of list of dictionaries"""

if __name__ == "__main__":
    import json
    import requests

    usrs = requests.get("https://jsonplaceholder.typicode.com/users/").json()
    usrs_nm = len(usrs) + 1
    usrs_obj = {}
    usrs_list = []

    for i in range(1, usrs_nm):
        usr = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                           format(i)).json()
        tds = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}".
                           format(i)).json()

        usrnm = usr.get("username")
        usr_obj = {}
        my_list = []

        for td in tds:
            td_obj = {}
            td_obj["username"] = usrnm
            td_obj["task"] = td.get("title")
            td_obj["completed"] = td.get("completed")
            my_list.append(td_obj)
        usrs_list.append(my_list)

    for i in range(len(usrs_list)):
        usrs_obj[i + 1] = usrs_list[i]

    with open("todo_all_employees.json", "w") as json_file:
        json.dump(usrs_obj, json_file)
