# API advanced
## Background Context

Questions involving APIs are common for interviews. Sometimes they’re as simple as ‘write a Python script that queries a given endpoint’, sometimes they require you to use recursive functions and format/sort the results.

A great API to use for some practice is the Reddit API. There’s a lot of endpoints available, many that don’t require any form of authentication, and there’s tons of information to be parsed out and presented. Getting comfortable with API calls now can save you some face during technical interviews and even outside of the job market, you might find personal use cases to make your life a little bit easier.

## Resources
* [Reddit API Documentation](https://www.reddit.com/dev/api/)
* [Query String](https://en.wikipedia.org/wiki/Query_string)

## Tasks
### 0. How many subs?

A function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit. If an invalid subreddit is given, the function should return 0.

Hint: No authentication is necessary for most features of the Reddit API. If you’re getting errors related to Too Many Requests, ensure you’re setting a custom User-Agent.

File: [0-subs.py](./0-subs.py)

### 1. Top Ten
A function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.

File: [1-top_ten.py](./1-top_ten.py)

### 2. Recurse it!
A ***recursive function*** that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None.

Hint: The Reddit API uses pagination for separating pages of responses.

File: [2-recurse.py](./2-recurse.py)

### 3. Count it!
A ***recursive function*** that queries the Reddit API, parses the title of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces. Javascript should count as javascript, but java should not).

File: [100-count.py](./100-count.py)

