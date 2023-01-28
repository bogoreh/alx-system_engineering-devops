# Processes and signals
## Resources
* [Linux PID](http://www.linfo.org/pid.html)
* [Linux process](https://www.thegeekstuff.com/2012/03/linux-processes-environment/)
* [Linux signal](https://www.educative.io/answers/what-are-linux-signals)
* [Process management in linux](https://www.digitalocean.com/community/tutorials/process-management-in-linux)

## Tasks
### 0. What is my PID
Bash script that displays its own PID.

File: [0-what-is-my-pid](./0-what-is-my-pid)

### 1. List your processes
Bash script that displays a list of currently running processes.

File: [1-list_your_processes](./1-list_your_processes)

### 2. SHow your Bash PID
Bash script that displays lines containing the bash word, thus allowing you to easily get the PID of your Bash process.

File: [2-show_your_bash_pid](./2-show_your_bash_pid)

### 3. Show your Bash PID made easy
Bash script that displays the PID, along with the process name, of processes whose name contain the word bash.

File: [3-show_your_bash_pid_made_easy](./3-show_your_bash_pid_made_easy)

### 4. To infinity and beyond
Bash script that displays To infinity and beyond indefinitely.

File: [4-to_infinity_and_beyond](./4-to_infinity_and_beyond)

### 5. Don't stop me now!
Bash script that stops `4-to_infinity_and_beyond` process by using `kill`.

File: [5-dont_stop_me_now](./5-dont_stop_me_now)

### 6. Stop me if you can
Bash script that stops `4-to_infinity_and_beyond` process without using `kill` or `killall`.

File: [6-stop_me_if_you_can](./6-stop_me_if_you_can)

### 7. Highlander
Bash script that displays: `To infinity and beyond` indefinitely, With a `sleep 2` in between each iteration, `I am invincible!!!` when receiving a `SIGTERM` signal

Make a copy of your `6-stop_me_if_you_can script`, name it `67-stop_me_if_you_can`, that kills the `7-highlander` process instead of the `4-to_infinity_and_beyond` one.

File: [7-highlander](./7-highlander)

### 8. Beheaded process
Bash script that kills the process `7-highlander`.

File: [8-beheaded_process](./8-beheaded_process)