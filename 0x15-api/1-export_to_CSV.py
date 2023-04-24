#!/usr/bin/python3
"""
Module  1-export_to_CSV

Using 'https://jsonplaceholder.typicode.com', for a given employee ID,
returns information about his/her TODO list progress,
and export data in the CSV format
"""

import requests
from sys import argv

if __name__ == "__main__":
    if len(argv) == 2:
        SRC = 'https://jsonplaceholder.typicode.com/'
        id = int(argv[1])
        res_user = requests.get('{}users/{}'.format(SRC, id)).json()
        res_todos = requests.get('{}todos?userId={}'.format(SRC, id)).json()
        name = res_user.get('name')
        todos = list(res_todos)
        with open('{}.csv'.format(id), 'w') as file:
            for todo in todos:
                file.write('"{}","{}","{}","{}"\n'.format(
                    id,
                    name,
                    todo.get('completed'),
                    todo.get('title')))
