#!/usr/bin/python3
"""1-top_ten module"""
import requests


def top_ten(subreddit):
    """Prints titles of the first 10 hot posts listed for given subreddit"""
    r = requests.get("https://reddit.com/r/{}.json?sort=hot&limit=10".
                     format(subreddit), headers={"User-agent": "custom"})

    if (r.status_code == 200):
        for i in r.json().get("data").get("children"):
            print(i.get("data").get("title"))
    else:
        print("None")
