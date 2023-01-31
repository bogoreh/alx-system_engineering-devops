# Regular expression
A regular expression, commonly called a “regexp”, is a sequence of characters that define a search pattern.  It is mainly for use in pattern matching with strings, or string matching (i.e. it operates like a “find and replace” command). While it is a very powerful tool, it is also very dangerous because of its complexity.

![regex](https://intranet.alxswe.com/images/contents/sysadmin/concepts/29/regex_now_2_problems.jpg)

One thing you have to be careful with is that different languages use different regexp engines. That means that a regexp in Python, for example, will be interpreted differently in Javascript:

Regular expressions are everywhere and software engineers, no matter their positions, will have to use them during their careers. System administrators and DevOps are the ones using them the most because they are very handy for log parsing.

## Resources
* [Regular expressions - basics](https://www.slideshare.net/neha_jain/introducing-regular-expressions)
* [Regular expressions - advanced](https://www.slideshare.net/neha_jain/advanced-regular-expressions-80296518)
* [Regular is your best friend](https://rubular.com/)
* [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)
* [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)

## Tasks
### 0. Simply matching School
![task0](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/ec65557f0da1fbfbff6659413885e4d4822f5b1d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230131%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230131T172753Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9fd18d609094c79cdbfecf36d88554a4420f837abeb65a32ad0a17bd1b877e43)
Requiremets:
* The regular expression must match School
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

File: [0-simply_match_school.rb](./0-simply_match_school.rb)

***

### 1. Repetition Token #0
![task1](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/e7db3c377d46453588fc84f3a975661d142fee91.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230131%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230131T172753Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7c3d1e23e4e7a68f1720721849256b93d7fd1edf20b36ce2394100ae71b17571)
Requirements:
* Find the regular expression that will match the above cases
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

File: [1-repetition_token_0.rb](./1-repetition_token_0.rb)

***

### 2. Repetition Token #1
![task2](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/c59ff11db195d5cf17d1790a5141ae2f234786d2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230131%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230131T172753Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e6f3407f932c846a11a34a9b4a8ef9ab1391c6aca712094480b4b73a8ba52d71)
Requirements:
* Find the regular expression that will match the above cases
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

File: [2-repetition_token_1.rb](./2-repetition_token_1.rb)

***

### 3. Repetition Token #2
![task3](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/3b6bf4aeca6a0c2de584e7f5d68d11eef57ce205.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230131%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230131T172753Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=5cf20fe4e0c18736dad29d49323b9bd10dbe549fba8cb8ad7c02e34a308179d1)
Requirements:
* Find the regular expression that will match the above cases
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

File: [3-repetition_token_2.rb](./3-repetition_token_2.rb)

***

### 4. Repetition Token #3
![task4](https://s3.amazonaws.com/alx-intranet.hbtn.io/uploads/medias/2020/9/f8dbcb9cf5ae569a8645027dc46e81cb372ce28e.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOUSBVO6H7D%2F20230131%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230131T172753Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=f73506d7b4c9a6e3470f6bda8135c1904672feb176666e55581afb0c1e4f8da7)
Requirements:
* Find the regular expression that will match the above cases
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method
* Your regex should not contain square brackets

File: [4-repetition_token_3.rb](./4-repetition_token_3.rb)

***

### 5. Not quite HBTN yet
Requirements:
* The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between
* Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

File: [5-beginning_and_end.rb](./5-beginning_and_end.rb)

***

### 6. Call me maybe
This task is brought to you by a professional advisor [Neha Jain](https://twitter.com/_nehajain), Senior Software Engineer at LinkedIn.

Requirement:
* The regular expression must match a 10 digit phone number

File: [6-phone_number.rb](./6-phone_number.rb)

***

### 7. OMG WHY ARE YOU SHOUTING?
![task7](https://intranet.alxswe.com/images/contents/sysadmin/projects/78/shouting.jpg)
Requirement:
* The regular expression must be only matching: capital letters

File: [7-OMG_WHY_ARE_YOU_SHOUTING.rb](./7-OMG_WHY_ARE_YOU_SHOUTING.rb)

***

### 8. Textme

This exercise was prepared for you by Guillaume Plessis, VP of Infrastructure at TextMe. It is something he uses daily. You can thank Guillaume for his project on [Twitter](https://twitter.com/gui).

For this task, you’ll be taking over Guillaume’s responsibilities: one afternoon, a TextMe VoIP Engineer comes to you and explains she wants to run some statistics on the TextMe app text messages transactions.

Requirements:
* Your script should output: `[SENDER],[RECEIVER],[FLAGS]`
+ The sender phone number or name (including country code if present)
+ The receiver phone number or name (including country code if present)
+ The flags that were used

You can find a [log file here](text_messages.log).

File: [100-textme.rb](./100-textme.rb)