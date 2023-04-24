#!/usr/bin/python3
"""
Module 3-dictionary_of_list_of_dictionaries

Returns information about users TODO lists, and exports data in JSON format
"""

import json
import requests

if __name__ == "__main__":
    SRC = 'https://jsonplaceholder.typicode.com/'
    res_users = requests.get('{}users'.format(SRC)).json()
    res_todos = requests.get('{}todos'.format(SRC)).json()
    all_data = {}
    for user in res_users:
        id = user.get('id')
        user_name = user.get('username')
        todos = list(filter(lambda x: x.get('userId') == id, res_todos))
        data = list(map(
            lambda x: {
                'username': user_name,
                'task': x.get('title'),
                'completed': x.get('completed')
            }, todos
        ))
        all_data['{}'.format(id)] = data
    with open('todo_all_employees.json', 'w') as file:
        json.dump(all_data, file)
