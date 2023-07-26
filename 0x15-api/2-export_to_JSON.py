#!/usr/bin/python3
"""Exports to JSON"""

if __name__ == "__main__":
    import json
    import requests
    from sys import argv

    usr_Id = argv[1]
    usr = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                       format(usr_Id)).json()
    tds = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}".
                       format(usr_Id)).json()
    usrnm = usr.get("username")
    usr_obj = {}
    my_list = []

    for td in tds:
        td_obj = {}
        td_obj["task"] = td.get("title")
        td_obj["completed"] = td.get("completed")
        td_obj["username"] = usrnm
        my_list.append(td_obj)
    usr_obj[usr_Id] = my_list

    with open(usr_Id + ".json", "w") as json_file:
        json.dump(usr_obj, json_file)
