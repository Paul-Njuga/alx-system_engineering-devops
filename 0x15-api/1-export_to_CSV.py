#!/usr/bin/python3
"""Exports to CSV"""

if __name__ == "__main__":
    import csv
    import requests
    from sys import argv

    usr_Id = argv[1]
    usr_response = requests.get("https://jsonplaceholder.typicode.com/users/{}".format(usr_Id))
    tdlst_response = requests.get("https://jsonplaceholder.typicode.com/todos?userId={}".format(usr_Id))
    usr = usr_response.json()
    tdlst = tdlst_response.json()

    
    username = usr["username"]

    with open("USER_ID.csv", "w") as f:
        writer = csv.writer(f, quoting=csv.QUOTE_ALL)
        for td in tdlst:
            status = td["completed"]
            title = td["title"]
            writer.writerow([usr_Id, username, status, title])
