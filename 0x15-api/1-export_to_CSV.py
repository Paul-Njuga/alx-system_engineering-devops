#!/usr/bin/python3
"""Exports to CSV"""

if __name__ == "__main__":
    import csv
    import requests
    from sys import argv

    usr_Id = argv[1]
    usr = requests.get("https://jsonplaceholder.typicode.com/users/{}".
                       format(usr_Id)).json()
    tds = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}".
                       format(usr_Id)).json()
    username = usr.get("username")

    with open(usr_Id + ".csv", "w") as f:
        writer = csv.writer(f, quoting=csv.QUOTE_ALL)
        for td in tds:
            status = td.get("completed")
            title = td.get("title")
            writer.writerow([usr_Id, username, status, title])
