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

## More Info
### Shellcheck
Shellcheck is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. `Shellcheck` is your friend! Here is how to [install it](https://github.com/koalaman/shellcheck#installing).