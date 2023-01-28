# Loops, conditions and parsing
## Resources
* [Loops sample](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_01.html)
* [Variable assignment and arithmetic](https://tldp.org/LDP/abs/html/ops.html)
* [Comparison operators](https://tldp.org/LDP/abs/html/comparison-ops.html)
* [File test operators](https://tldp.org/LDP/abs/html/fto.html)
* [Make your scripts portable](https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html)
## Tasks
### 0. Create a SSH RSA key pair
Read for this task:
* [Linux and Mac OS users](https://askubuntu.com/questions/61557/how-do-i-set-up-ssh-authentication-keys)
* [Windows users](https://docs.rackspace.com/support/how-to/generating-rsa-keys-with-ssh-puttygen/)

man: `ssh-keygen`

File: [0-RSA_public_key.pub](./0-RSA_public_key.pub)

### 1. For Best School loop
Bash script that displays `Best School` 10 times using the for loop.

File: [1-for_best_school](./1-for_best_school)

### 2. While Best School loop
Bash script that displays `Best School` 10 times using the while loop.

File: [2-while_best_school](./2-while_best_school)

### 3. Until Best School loop
Bash script that displays `Best School` 10 times using the until loop.

File: [3-until_best_school](./3-until_best_school)

### 4. If 9, say Hi!
 Bash script that displays `Best School` 10 times, but for the 9th iteration, displays `Best School` and then `Hi` on a new line.

File: [4-if_9_say_hi](./4-if_9_say_hi)

### 5. 4 bad luck, 8 is your chance
Bash script that loops from 1 to 10 and: displays `bad luck` for the 4th loop iteration, displays `good luck` for the 8th loop iteration, displays `Best School` for the other iterations.

FIle: [5-4_bad_luck_8_is_your_chance](./5-4_bad_luck_8_is_your_chance)

### 6. Superstitious numbers
Bash script that displays numbers from 1 to 20 and: displays `4` and then `bad luck from China` for the 4th loop iteration, displays `9` and then `bad luck from Japan` for the 9th loop iteration, displays `17` and then `bad luck from Italy` for the 17th loop iteration

File: [6-superstitious_numbers](./6-superstitious_numbers)

### 7. Clock
Bash script that displays the time for 12 hours and 59 minutes: display hours from 0 to 12, display minutes from 1 to 59

File: [7-clock](./7-clock)

### 8. For ls
Bash script that displays: The content of the current directory, In a list format.

File: [8-for_ls](./8-for_ls)

### 9. To file, or not to file
Bash script that gives you information about the school file.

File: [9-to_file_or_not_to_file](./9-to_file_or_not_to_file)

### 10.FizzBuzz
Bash script that displays numbers from 1 to 100. Displays `FizzBuzz` when the number is a multiple of 3 and 5, Displays `Fizz` when the number is multiple of 3, Displays `Buzz` when the number is a multiple of 5, Otherwise, displays the number in a list format

File: [10-fizzbuzz](./10-fizzbuzz)

### 11. Read and cut
Bash script that displays the content of the file /etc/passwd.

File: [100-read_and_cut](./100-read_and_cut)

### 12. Tell the story of passwd

Read:
* [IFS(internal field separator)](https://tldp.org/LDP/abs/html/internalvariables.html)
* [Understanding /etc/passwd](https://www.cyberciti.biz/faq/understanding-etcpasswd-file-format/)

Bash script that displays the content of the file /etc/passwd, using the while loop + IFS.

Format: `The user USERNAME is part of the GROUP_ID gang, lives in HOME_DIRECTORY and rides COMMAND/SHELL. USER ID's place is protected by the passcode PASSWORD, more info about the user here: USER ID INFO`

File: [101-tell_the_story_of_passwd](./101-tell_the_story_of_passwd)

### 13. Let's parse Apache logs

[Apache](https://en.wikipedia.org/wiki/Apache_HTTP_Server) is among the most popular web servers in the world, serving 50% of all active websites, no doubt that you will have to interact with it within your career.

As a Full-Stack Software Engineer, you have to master the art of parsing log files. Today we will do a simple parsing of [Apache log access files](./apache-access.log).

Today the Customer Support department reported that a user reported that the site is being “buggy”. Not being a detailed description, you want to have a look at the Apache logs and gather data about the traffic.

Write a Bash script that displays the visitor IP along with the [HTTP status code](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) from the Apache log file.

File: [102-lets_parse_apache_logs](./102-lets_parse_apache_logs)

### 14. Dig the data
Now that you’ve parsed the Apache log file, let’s sort the data so you can get a better idea of what is going on.

Using what you did in the previous exercise, write a Bash script that groups visitors by IP and HTTP status code, and displays this data.

File: [103-dig_the-data](./103-dig_the-data)

## More Info
### Shellcheck
Shellcheck is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. `Shellcheck` is your friend! Here is how to [install it](https://github.com/koalaman/shellcheck#installing).