#!/usr/bin/python3
"""
Module  2-export_to_JSON

Using 'https://jsonplaceholder.typicode.com', for a given employee ID,
returns information about his/her TODO list progress,
and export data in the JSON format
"""

import json
import requests
from sys import argv

if __name__ == "__main__":
    if len(argv) == 2:
        SRC = 'https://jsonplaceholder.typicode.com/'
        id = int(argv[1])
        res_user = requests.get('{}users/{}'.format(SRC, id)).json()
        res_todos = requests.get('{}todos?userId={}'.format(SRC, id)).json()
        name = res_user.get('username')
        todos = list(res_todos)
        with open('{}.json'.format(id), 'w') as json_file:
            data = list(map(lambda x: {
                "task": x.get("title"),
                "completed": x.get("completed"),
                "username": name}, todos))
            data = {"{}".format(id): data}
            json.dump(data, json_file)
