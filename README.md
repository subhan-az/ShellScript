# 🐚 Shell Scripting Interview Preparation

This guide covers commonly used shell commands and sample shell scripting interview questions with solutions. Ideal for beginners and professionals preparing for Linux or DevOps interviews.

---

## 📘 Table of Contents

- [Commonly Used Shell Commands](#commonly-used-shell-commands)
- [List All Running Processes](#list-all-running-processes)
- [Filter Only Process IDs](#filter-only-process-ids)
- [Fetch and Filter Remote Logs](#fetch-and-filter-remote-logs)
- [Script: Numbers Divisible by 3 and 5 but Not 15](#script-numbers-divisible-by-3-and-5-but-not-15)
- [Best Practices During Interview](#best-practices-during-interview)

---

## ✅ Commonly Used Shell Commands

| Command/Concept        | Purpose / Description                                                     |
| ---------------------- | ------------------------------------------------------------------------- |
| `awk`                  | Powerful text processing and pattern scanning tool                        |
| `sed`                  | Stream editor for transforming text (search/replace, insertion, deletion) |
| `xargs`                | Build and execute command lines from standard input                       |
| `cut`                  | Extract sections from each line of input (e.g., specific columns)         |
| `sort`                 | Sort lines of text                                                        |
| `uniq`                 | Filter out repeated lines (often combined with `sort`)                    |
| `tee`                  | Read from stdin and write to stdout and files simultaneously              |
| `find`                 | Search for files and directories based on conditions                      |
| `grep -r`              | Recursive search through files for matching patterns                      |
| `trap`                 | Catch signals (e.g., SIGINT) to perform cleanup or other actions          |
| `getopts`              | Parse command-line options and arguments in scripts                       |
| `printf`               | Formatted output (more powerful than `echo`)                              |
| `test` / `[ ]`         | Conditional expressions                                                   |
| `expr`                 | Evaluate expressions (arithmetic, string operations)                      |
| `diff`                 | Compare files line by line                                                |
| `curl` / `wget`        | Download files or interact with web APIs                                  |
| `jq`                   | Parse and manipulate JSON data (if installed)                             |
| `rsync`                | Efficient file synchronization and transfer                               |
| `cron`                 | Schedule periodic execution of scripts                                    |
| `ssh`                  | Run commands on remote machines                                           |
| `xclip` / `pbcopy`     | Copy output to clipboard (Linux / macOS)                                  |
| `basename` / `dirname` | Extract filename or directory path components                             |
| `mktemp`               | Create temporary files or directories safely                              |
| `read`                 | Read user input in scripts                                                |
| `while` / `for` loops  | Looping constructs                                                        |
| `case`                 | Multi-branch conditional statements                                       |
| `>&`, `2>&1`           | Redirect stdout and stderr                                                |
| `exec`                 | Replace shell with a command or redirect file descriptors                 |
| `set -e`               | Exit script immediately on error                                          |
| `set -u`               | Treat unset variables as errors                                           |
| `set -x`               | Debug: print commands and their arguments as they execute                 |
| `basename`             | Strip directory and suffix from file name                                 |
| `date`                 | Format or display date/time                                               |
| `sleep`                | Pause execution for a specified time                                      |
| `tee`                  | Split output to file and screen                                           |
| `logger`               | Write messages to syslog                                                  |
| `getent`               | Query system databases (passwd, hosts, services)                          |

# Shell Scripting Interview Questions and Answers

## 1. How do you specify the interpreter for a shell script?
****Answer:**** Use the shebang `#!` followed by the path to the interpreter.
```sh
#!/bin/bash
echo "Script running"
```

## 2. How can you assign a value to a variable and print it?
****Answer:**** Assign using = and print with echo.
```sh

greeting="Hello"
echo "$greeting"
```

## 3. What technique allows command output to be used as a variable's value?
****Answer:**** Command substitution.

```sh

time_now=$(date)
echo "Current time: $time_now
```

## 4. How do you capture input from the user?
****Answer:**** Use the read command.

```sh

echo "Enter your age:"
read age
echo "Your age is $age"
```

## 5. What does an exit code signify in a shell script?
****Answer:**** It indicates the success (0) or failure (non-zero) of the last executed command.

```sh

ls /nonexistent
echo $?  # Output: non-zero (failure)
```

## 6. How can you make decisions based on conditions?
****Answer:**** Use if, elif, else, and fi.

```sh

if [ -d "/path/to/dir" ]; then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi
```

## 7. What is the role of loops in scripts?
****Answer:**** To repeatedly execute commands.

```sh

for file in *.txt; do
  echo "File: $file"
done
```

## 8. How do you include comments in your script?
****Answer:**** Use the # symbol.

```sh

# This is a comment
echo "Code execution"
```

## 9. How can you access script parameters?
**Answer:** Parameters are accessed using $1, $2, etc.

```sh

echo "First parameter: $1"
```

## 10. When should you use single quotes versus double quotes?
**Answer:** Use single quotes to prevent variable expansion and double quotes to allow it.

```sh

var="world"
echo 'Hello $var'  # Output: Hello $var
echo "Hello $var"  # Output: Hello world
```

## 11. How do you test for file existence?
**Answer:** Use -e in a conditional statement.

```sh

if [ -e "myfile.txt" ]; then
  echo "File exists"
fi
```

## 12. What is the function of the case statement?
**Answer:** To handle multiple conditions.

```sh

case "$1" in
  start) echo "Starting";;
  stop) echo "Stopping";;
  *) echo "Unknown option";;
esac
```

## 13. How can you process a file line by line?
**Answer:** Use a while loop with read.

```sh

while IFS= read -r line; do
  echo "Line: $line"
done < "file.txt"
```

## 14. What is the syntax for redirecting output to a file?
**Answer:** Use > for overwrite and >> for append.

```sh

echo "Hello, World!" > output.txt
```

## 15. How do you search for text within files?
**Answer:** Use the grep command.

```sh

grep "search_term" file.txt
```

## 16. How do you define a reusable block of code?
**Answer:** Use functions.

```sh

greet() {
  echo "Hello, $1"
}
greet "Alice"
```

## 17. How can you make a variable available to sub-processes?
**Answer:** Use the export command.

```sh

export PATH=$PATH:/new/path
```

## 18. How do you check file permissions?
**Answer:** Use ls -l or test flags like -r, -w, and -x.

```sh

if [ -r "file.txt" ]; then
  echo "File is readable"
fi
```

## 19. How do you stop script execution upon encountering an error?
**Answer:** Use exit or set -e.

```sh

set -e
cp nonexistentfile /somewhere
echo "This won't be printed"
```

## 20. What does the shift command do?
**Answer:** It shifts the positional parameters to the left.

```sh

echo "$1"
```shift
echo "$1"
```

## 21. How do you join two strings together?
**Answer:** Concatenate them directly.

```sh

greeting="Hello"
name="Alice"
full_greeting="$greeting, $name"
echo "$full_greeting"
```

## 22. How do you retrieve the directory portion of a file path?
**Answer:** Use the dirname command.

```sh

path="/home/user/file.txt"
echo $(dirname "$path")
```

## 23. How can you perform arithmetic operations?
**Answer:** Use expr or $(( )).

```sh

sum=$((3 + 5))
echo "Sum: $sum"
```

## 24. What is the function of the set command?
**Answer:** To change shell options and positional parameters.

```sh

set -x  # Enable debugging
```

## 25. How do you verify the existence of a directory?
**Answer:** Use the -d flag in a conditional statement.

```sh

if [ -d "/path/to/dir" ]; then
  echo "Directory exists"
fi
```

## 26. How can you extract specific fields from a line of text?
**Answer:** Use the cut command.

```sh

echo "name:age:location" | cut -d ':' -f 2
```

## 27. How do you replace text in a file?
**Answer:** Use the sed command.

```sh

sed -i 's/old_text/new_text/g' file.txt
```

## 28. When would you use an until loop?
**Answer:** To repeat commands until a condition is true.

```sh

counter=1
until [ $counter -gt 5 ]; do
  echo "Counter: $counter"
  counter=$((counter + 1))
done
```

## 29. How do you store the output of a command in a variable?
**Answer:** Use command substitution.

```sh

current_user=$(whoami)
echo "Current user: $current_user"
```

## 30. What does the tee command do?
**Answer:** Reads from standard input and writes to standard output and files.

```sh

echo "Hello, World!" | tee output.txt
```

## 31. How can you check if a string contains another string?
**Answer:** Use a conditional statement with * wildcard.

```sh

string="Hello, World!"
if [[ "$string" == *"World"* ]]; then
  echo "Substring found"
fi
```

## 32. What is the printf command used for?
**Answer:** For formatted output.

```sh

printf "Name: %s, Age: %d\n" "Alice" 30
```

## 33. How can you split a string into an array?
**Answer:** Use the IFS variable.

```sh

string="a,b,c"
IFS=',' read -r -a array <<< "$string"
echo "${array[0]}"
```

## 34. How do you get the filename from a path?
**Answer:** Use the basename command.

```sh

path="/home/user/file.txt"
echo $(basename "$path")
```

## 35. How can you check if a string is empty?
**Answer:** Use -z in a conditional statement.

```sh

if [ -z "$string" ]; then
  echo "String is empty"
fi
```

## 36. What does the pwd command do?
**Answer:** Prints the current working directory.

```sh

echo "Current directory: $(pwd)"
```

## 37. How do you trim whitespace from a string?
**Answer:** Use sed or parameter expansion.

```sh

string="  Hello, World!  "
trimmed=$(echo "$string" | sed 's/^ *//;s/ *$//')
echo "$trimmed"
```

## 38. What is the trap command used for?
**Answer:** To catch signals and execute commands when they occur.

```sh

trap "echo 'Interrupted!'; exit" INT
```

## 39. How do you compare two strings?
**Answer:** Use = or != inside [[ ]] or [ ].

```sh

str1="hello"
str2="world"
if [ "$str1" = "$str2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
```

## 40. How do you check if a command exists?
**Answer:** Use command -v or which.

```sh

if command -v git >/dev/null 2>&1; then
  echo "Git is installed"
else
  echo "Git is not installed"
fi
```

## 41. How do you find the number of arguments passed to a script?
**Answer:** Use $#.

```sh

echo "Number of arguments: $#"
```

## 42. How do you create a symbolic link?
**Answer:** Use the ln -s command.

```sh

ln -s /path/to/original /path/to/link
```

## 43. How do you read a file into a variable?
**Answer:** Use command substitution with cat.

```sh

file_content=$(cat file.txt)
echo "$file_content"
```

## 44. How do you perform a logical AND in a shell script?
**Answer:** Use &&.

```sh

if [ -f "file1" ] && [ -f "file2" ]; then
  echo "Both files exist"
fi
```

## 45. How do you perform a logical OR in a shell script?
**Answer:** Use ||.

```sh

if [ -f "file1" ] || [ -f "file2" ]; then
  echo "At least one file exists"
fi
```

## 46. How do you check if a variable is set?
**Answer:** Use -z or -n.

```sh

if [ -n "$var" ]; then
  echo "Variable is set"
fi
```

## 47. How do you replace a substring in a variable?
**Answer:** Use parameter expansion.

```sh

str="Hello, World!"
new_str=${str/World/```shell}
echo "$new_str"
```

## 48. How do you convert a string to lowercase?
**Answer:** Use tr.

```sh

str="HELLO"
lower=$(echo "$str" | tr 'A-Z' 'a-z')
echo "$lower"
```

## 49. How do you convert a string to uppercase?
**Answer:** Use tr.

```sh

str="hello"
upper=$(echo "$str" | tr 'a-z' 'A-Z')
echo "$upper"
```

## 50. How do you generate a random number?
**Answer:** Use $RANDOM.

```sh

echo "Random number: $RANDOM"
```

## 51. How do you check if a number is even or odd?
**Answer:** Use arithmetic expansion.

```sh

num=4
if ((num % 2 == 0)); then
  echo "Even"
else
  echo "Odd"
fi
```

## 52. How do you display the first N lines of a file?
**Answer:** Use the head command.

```sh

head -n 10 file.txt
```

## 53. How do you display the last N lines of a file?
**Answer:** Use the tail command.

```sh

tail -n 10 file.txt
```

## 54. How do you count the number of lines in a file?
**Answer:** Use wc -l.

```sh

wc -l < file.txt
```

## 55. How do you count the number of words in a file?
**Answer:** Use wc -w.

```sh

wc -w < file.txt
```

## 56. How do you find files containing specific text?
**Answer:** Use grep -rl.

```sh

grep -rl "search_text" /path/to/dir
```

## 57. How do you list all environment variables?
**Answer:** Use the printenv command.

```sh

printenv
```

## 58. How do you change the current working directory?
**Answer:** Use the cd command.

```sh

cd /path/to/dir
```

## 59. How do you print a sequence of numbers?
**Answer:** Use the seq command.

```sh

seq 1 10
```

## 60. How do you pause the execution of a script for a specific time?
**Answer:** Use the sleep command.

```sh

sleep 5
```

## 61. How do you find the type of a file?
**Answer:** Use the file command.

```sh

file filename
```

## 62. How do you remove duplicate lines from a file?
**Answer:** Use the sort and uniq commands.

```sh

sort file.txt | uniq
```

## 63. How do you sort lines in a file?
**Answer:** Use the sort command.

```sh

sort file.txt
```

## 64. How do you merge multiple files into one?
**Answer:** Use the cat command.

```sh

cat file1.txt file2.txt > merged.txt
```

## 65. How do you display the disk usage of a directory?
**Answer:** Use the du command.

```sh

du -```sh /path/to/dir
```

## 66. How do you check available disk space?
**Answer:** Use the df command.

```sh

df -h
```

## 67. How do you display running processes?
**Answer:** Use the ps command.

```sh

ps aux
```

## 68. How do you kill a process by its name?
**Answer:** Use the pkill command.

```sh

pkill process_name
```

## 69. How do you find the process ID of a running process?
**Answer:** Use the pidof command.

```sh

pidof process_name
```

## 70. How do you check the status of a service?
**Answer:** Use the systemctl command.

```sh

systemctl status service_name
```

## 71. How do you start a service?
**Answer:** Use the systemctl start command.

```sh

systemctl start service_name
```

## 72. How do you stop a service?
**Answer:** Use the systemctl stop command.

```sh

systemctl stop service_name
```

## 73. How do you enable a service to start on boot?
**Answer:** Use the systemctl enable command.

```sh

systemctl enable service_name
```

## 74. How do you disable a service from starting on boot?
**Answer:** Use the systemctl disable command.

```sh

systemctl disable service_name
```

## 75. How do you display the system's hostname?
**Answer:** Use the hostname command.

```sh

hostname
```

## 76. How do you change the system's hostname?
**Answer:** Use the hostnamectl command.

```sh

hostnamectl set-hostname new_hostname
```

## 77. How do you display the current date and time?
**Answer:** Use the date command.

```sh

date
```

## 78. How do you set the system date and time?
**Answer:** Use the date command with appropriate options.

```sh

date MMDDhhmm[[CC]YY][.ss]
```

## 79. How do you add a user to the system?
**Answer:** Use the useradd command.

```sh

useradd username
```

## 80. How do you delete a user from the system?
**Answer:** Use the userdel command.

```sh

userdel username
```

## 81. How do you add a group to the system?
**Answer:** Use the groupadd command.

```sh

groupadd groupname
```

## 82. How do you delete a group from the system?
**Answer:** Use the groupdel command.

```sh

groupdel groupname
```

## 83. How do you add a user to a group?
**Answer:** Use the usermod -aG command.

```sh

usermod -aG groupname username
```

## 84. How do you display the groups a user belongs to?
**Answer:** Use the groups command.

```sh

groups username
```

## 85. How do you change the ownership of a file?
**Answer:** Use the chown command.

```sh

chown user:group file.txt
```

## 86. How do you change the permissions of a file?
**Answer:** Use the chmod command.

```sh

chmod 755 file.txt
```

## 87. How do you recursively change the ownership of a directory?
**Answer:** Use the chown -R command.

```sh

chown -R user:group /path/to/dir
```

## 88. How do you recursively change the permissions of a directory?
**Answer:** Use the chmod -R command.

```sh

chmod -R 755 /path/to/dir
```

## 89. How do you create an archive of a directory?
**Answer:** Use the tar command.

```sh

tar -cvf archive.tar /path/to/dir
```

## 90. How do you extract an archive?
**Answer:** Use the tar command.

```sh

tar -xvf archive.tar
```

## 91. How do you compress a file using gzip?
**Answer:** Use the gzip command.

```sh

gzip file.txt
```

## 92. How do you decompress a gzip file?
**Answer:** Use the gunzip command.

```sh

gunzip file.txt.gz
```

## 93. How do you create a compressed archive?
**Answer:** Use the tar command with compression options.

```sh

tar -czvf archive.tar.gz /path/to/dir
```

## 94. How do you extract a compressed archive?
**Answer:** Use the tar command with decompression options.

```sh

tar -xzvf archive.tar.gz
```

## 95. How do you find the difference between two files?
**Answer:** Use the diff command.

```sh

diff file1.txt file2.txt
```

## 96. How do you display the first few lines of a file?
**Answer:** Use the head command.

```sh

head -n 5 file.txt
```

## 97. How do you display the last few lines of a file?
**Answer:** Use the tail command.

```sh

tail -n 5 file.txt
```

## 98. How do you find the location of an executable?
**Answer:** Use the which command.

```sh

which bash
```

## 99. How do you check the version of a command?
**Answer:** Use the --version option.

```sh

bash --version
```

## 100. How do you display a calendar for a specific month and year?
**Answer:** Use the cal command.

```sh

cal 12 2023
```

# Shell interview Q&A

The purpose of this documentation is to document common interview questions and answers about Linux shell script.

## Q&A

* [Q1: What is Shell?](#Q1)
* [Q2: What is a Shell Script? Can you name some of its advantages?](#Q2)
* [Q3: What are the different types of variables used in Shell Script?](#Q3)
* [Q4: How do you create a shortcut in Linux?](#Q4)
* [Q5: What are the various stages of a Linux process it passes through?](#Q5)
* [Q6: How to pass an argument to a script?](#Q6)
* [Q7: How to calculate the number of passed arguments?](#Q7)
* [Q8: How to get script name inside a script?](#Q8)
* [Q9: How to check if the previous command was run successfully?](#Q9)
* [Q10: How to get the last line from a file using just the terminal?](#Q10)
* [Q11: When debugging a Bash script, what command would you use to stop the execution of the program until the Enter key is pressed?](#Q11)
* [Q12: How to get the first line from a file using just the terminal?](#Q12)
* [Q13: How to get the first line from a file using just the terminal?](#Q13)
* [Q14: How to redirect both standard output and standard error to the same location?](#Q14)
* [Q15: What is difference between ‘ and ” quotes?](#Q15)
* [Q16: What is the difference between $* and $@?](#Q16)
* [Q17: Write down the Syntax for all the loops in Shell Scripting.](#Q17)
* [Q18: When should shell programming/scripting not be used?](#Q18)
* [Q19: What are the default permissions of a file when it is created?](#Q19)
* [Q20: Determine the output of the following command:](#Q20)
* [Q21: Determine the output of the following command:](#Q21)
* [Q22: Determine the output of the following command:](#Q22)
* [Q23: How booleans are used in a shell script?](#Q23)
* [Q24: How to get part of string variable with echo command only?](#Q24)
* [Q25: How to print all the arguments provided to the script?](#Q25)
* [Q26: How to print PID of the current shell?](#Q26)
* [Q27: How to print all array elements and their respective indexes?](#Q27)
* [Q28: How to print the first array element?](#Q28)
* [Q29: How many fields are present in a crontab file and what does each field specify?](#Q29)
* [Q30: How to debug the problems encountered in the shell script/program?](#Q30)
* [Q31: How to declare a readlone variable?](#Q31)
* [Q32: What are the different commands available to check the disk usage?](#Q32)  
* [Q33: What is the commands to check a directory space usage?](#Q33)  
* [Q34: How to open a read-only file in the Shell?](#Q34)  
* [Q35: Write a shell script to get current date, time, user name, file name and working directory?](#Q35)  
* [Q36: How to find all the files modified in less than 7 days?](#Q36)  
* [Q37: Print a given number, in reverse order using a Shell script such that the input is provided using command Line Argument only.](#Q37)  
* [Q38: How to calculate a real number calculation in shell script?](#Q38)  
* [Q39: How to get the value of pi till a 20 decimal places?](#Q39)  
* [Q40: Write a script to print the first 10 elements of Fibonacci series.](#Q40)  
* [Q41: What is the difference between $$ and $!?](#Q41)  
* [Q42: What are zombie processes?](#Q42)   
* [Q43: Print the 10th line without using tail and head command.](#Q43)  
* [Q44: How will you find the total disk space used by a specific user?](#Q44)  
* [Q45: Find all the files modified in less than 2 days and print the record count of each.](#Q45)  
* [Q46: How to send a mail with a compressed file as an attachment?](#Q46)  


---

### Q1.
**What is Shell?**
### *Answer:* 
**The Shell is a Command Line Interpreter. It translates commands entered by the user and converts them into a language that is understood by the Kernel. The shell interprets a command typed in at the terminal, and calls the program that you want.**

---

### Q2.
**What is a Shell Script? Can you name some of its advantages?**
### *Answer:*
**A shell script is a command-containing text-file that contains commands in order of their execution. Typical operations performed by shell scripts include printing text, file manipulation, and program execution.**

   **Following are the two main advantages of shell scripting:**
+  **It facilitates developing your own custom OS with relevant features which best suit your needs.**
+  **It facilitates designing software applications according to their respective platforms.**

---

### Q3.
**What are the different types of variables used in Shell Script?**
### *Answer:*
**A shell script has two types of variables :**

  +  **System-defined variables are created/defined by the Operating System(Linux) itself. These variables are generally defined in Capital Letters and can be viewed by “set” command.**
  +  **User-defined variables are created or defined by system users and the values of variables can be viewed by using the command “echo”.**

---

### Q4.
**How do you create a shortcut in Linux?**
### *Answer:*
**This can be done with the help of links present in Linux OS.**

  +  **Hard Link: Hard links are linked to the inode of the file and have to be on the same file system as of the file. Deleting the original file does not affect the hard link.**
  +  **Soft Link: Soft links are linked to the file name and can reside on a different file system as well. Deleting the original file makes the soft link inactive.**

---

### Q5.
**What are the various stages of a Linux process it passes through?**
### *Answer:*
**A Linux process generally passes through four stages:**

  +  **Waiting: The Linux process waits for the resource.**
  +  **Running: The Linux process is currently being executed.**
  +  **Stopped: The Linux process is stopped after successful execution.**
  +  **Zombie: The process has stopped but is still active in the process table.**

---

### Q6.
**How to pass an argument to a script?**
### *Answer:*
```Bash
# cat test.sh
#!/usr/bin/env bash
echo ${1}

# bash test.sh p1
p1
```

### Q7.
**How to calculate the number of passed arguments?**
### *Answer:*
```Bash
# cat test.sh
#!/usr/bin/env bash
echo "Number of Parameters passed:$#"

# ./test.sh p1 p2 p3 p4
Number of Parameters passed:4
```
---

### Q8.
**How to get script name inside a script?**
### *Answer:*
```Bash
# cat test.sh
#!/usr/bin/env bash
echo "Script Name:$0"

# ./test.sh
Script Name:./test.sh
```
---

### Q9.
**How to get script name inside a script?**
### *Answer:*
```Bash
# cat test.sh
#!/usr/bin/env bash
var=$?
if var=0 ;then
    echo "Script was Run successfully!"
else
    echo "Script was Run failed!"
fi

# ./test.sh
Script was Run successfully!
```
---

### Q10.
**How to get the last line from a file using just the terminal?**
### *Answer:*
```Bash
# tail -1 /var/log/messages
Oct 18 03:42:46 ke-ol7vm1 nm-dispatcher: req:1 'dhcp4-change' [eth0]: start running ordered scripts...
```
---

### Q11.
**When debugging a Bash script, what command would you use to stop the execution of the program until the Enter key is pressed?**
### *Answer:*
```
read
```
---

### Q12.
**How to get the first line from a file using just the terminal?**
### *Answer:*
```Bash
# head -1 /var/log/boot.log-20190716
[  OK  ] Started Show Plymouth Boot Screen.
```
---

### Q13.
**How to get the 3rd element/column from each line from a file?**
### *Answer:*
```Bash
# cat test.sh
#!/usr/bin/env bash
cat > test.txt <<EOF
col11 col12 col13 col14 col15
col21 col22 col23 col24 col25
col31 col32 col33 col34 col35
EOF

awk '{print $3}' ${1}

# ./test.sh test.txt
col13
col23
col33
```
---

### Q14.
**How to redirect both standard output and standard error to the same location?**
### *Answer:*
The two methods to redirect standard output and standard error to the same location are the following;
```Bash
    2>&1(# ls /usr/share/doc > out.txt 2>&1 )
    &>(# ls /usr/share/doc &> out.txt )
```
---

### Q15.
**What differentiate between ‘ and ” quotes?**
### *Answer:*
  +  **Single Quotes: Used in case evaluation of variables to values is undesired.**
  +  **Double Quotes: Used in case evaluation of variables to values is required.**
---

### Q16.
**What is the difference between $* and $@?**
### *Answer:*
$@ treats each quoted arguments as separate arguments but $* will consider the entire set of positional parameters as a single string

---

### Q17.
**Write down the Syntax for all the loops in Shell Scripting.**
### *Answer:*
For Loop:
```Bash
for var in word1 word2 ... wordN
do
   Statement(s) to be executed for every word.
done
```
While Loop:
```Bash
while command
do
   Statement(s) to be executed if command is true
done
```
Until Loop:
```Bash
until command
do
   Statement(s) to be executed until command is true
done
```
---

### Q18.
**When should shell programming/scripting not be used?**
### *Answer:*
It is not advisable to use Shell scripting in the following cases;

  +  **When the task is very much complex, e.g. writing the entire payroll processing system.**
  +  **Where there is a high degree of productivity required.**
  +  **When it needs or involves different software tools.**
---

### Q19.
**What are the default permissions of a file when it is created?**
### *Answer:*
On Linux and other Unix-like operating systems, new files are created with a default set of permissions. The umask or user mask command is used to determine the default permissions for newly created files. It is a 4-digit Octal number which is set and expressed using symbolic values. The default permission of a file when it is created is **664** i.e. **rw-rw-r-**. The table for file permissions is given below;

|  0    |   0   |  No permissions       |
| :--- | :--- | :--- |
| 1     | 1      | execute      |
| 2     | 2     | write     |
| 3     | 1+2     | execute + write     |
| 4     | 4     | read     |
| 5     | 1+4    | execute + read     |
| 6     | 2+4     | write + read      |
| 7     | 1+2+4     | execute + write + read     |

---

### Q20.
**Determine the output of the following command:
$ name=Bob && echo 'My name is ${name}'**
### *Answer:*
```Bash
$ name=Bob && echo 'My name is ${name}'
My name is ${name}
```
---

### Q21.
**Determine the output of the following command:
$ [ -z "" ] && echo true || echo false**
### *Answer:*
```Bash
$ [ -z "" ] && echo true || echo false
true
```
---

### Q22.
**Determine the output of the following command:
$ echo ${new:-variable}**
### *Answer:*
```Bash
$ echo ${new:-variable}
variable
```
---

### Q23.
**How booleans are used in a shell script?**
### *Answer:*
In bash, true is 0 and false is any value but 0. There exist two commands, true and false that deliver true or false, respectively:
```Bash
$ true; echo $?
0

$ false; echo $?
1
```
```Bash
#!/usr/bin/env bash
#bool.sh
bool=true
if ($bool);then
    echo true
fi
bool=false
if !($bool);then
    echo false
fi

$ ./bool.sh
true
false

```
---

### Q24.
**How to get part of string variable with echo command only?**
### *Answer:*
To extract substrings in a shell script is to use a Bash variable with the substring syntax, just likes python slice.
```Bash
#!/usr/bin/env bash
#echo ${var:x:y}
#x - start position
#y - length

var="My name is Bob, and I work at Oracle."
#From left extract string
echo ${var:11:3} # will display Bob
echo ${var::2} # will display My
echo ${var:19} # will display I work at Oracle.

#From right extract string 
echo ${var:0-7:6} # will display Oracle
echo ${var:0-7} # will display Oracle.
```
---

### Q25.
**How to print all the arguments provided to the script?**
### *Answer:*
```Bash
#!/usr/bin/env bash
for i;do echo $i ;done

# ./test.sh a b c d e f
a
b
c
d
e
f
```
---

### Q26.
**How to print PID of the current shell?**
### *Answer:*
```Bash
#!/usr/bin/env bash
for PID in $$; do
    echo ${PID}
done

# ./test.sh
3950
```
---

### Q27.
**How to print all array elements and their respective indexes?**
### *Answer:*
```Bash
#!/usr/bin/env bash
array=("This" "is" "a" "test")
echo "Array elements:${array[@]}"
echo "Array element index:${!array[@]}"

# ./test.sh
Array elements:This is a test
Array element index:0 1 2 3
```
---

### Q28.
**How to print the first array element?**
### *Answer:*
```Bash
#!/usr/bin/env bash    
array=("This" "is" "Shell" "Scripting" )    
echo "First element:${array[0]}"    
echo "All elements:${array[@]}"

$ ./test.sh
First element:This
All elements:This is Shell Scripting
```
---

### Q29.
**How many fields are present in a crontab file and what does each field specify?**
### *Answer:*
The crontab file has six fields.
The first five fields contain information on when to execute the command and they are as follows;

  +  minute(0-59)
  +  hour(0-23)
  +  day(1-31)
  +  month(1-12)
  +  day of the week(0-6, Sunday = 0).
  
The sixth field contains the command to be executed.

---

### Q30.
**How to debug the problems encountered in the shell script/program?**
### *Answer:*
Given below are some common methods used to debug the problems in the script.

  +  Debug statements can be inserted in the shell script to output/display the information which helps to identify the problem.
  +  Using set -x we can enable debugging in the script.
---

### Q31.
**How to declare a readlone variable?**
### *Answer:*
```Bash
#!/usr/bin/env bash    
declare -r var1=1
echo "var1 = $var1"   # var1 = 1
(( var1++ ))          # x.sh: line 4: var1: readonly variable
```
---

### Q32.
**How to declare a readlone variable?**
### *Answer:*
There are three different commands available to check the disk usage.
  +  **df: It is used to check the free disk space.**
  +  **du: It is used to check the directory wise disk usage.**
  +  **dfspace: It is used to check the free disk space in terms of MB.**
 ---

### Q33.
**What is the commands to check a directory space usage?**
### *Answer:*
```Bash
[ke@ke-linux ~]$ du -s ~ -m
1501    /home/ke
```
---

### Q34.
**How to open a read-only file in the Shell?**
### *Answer:*
A read-only file can be opened using the below command:
```diff
#vi –R <File Name> 
```
---

### Q35.
**Write a shell script to get current date, time, user name, file name and working directory.**
### *Answer:*
```Bash
#!/usr/bin/env bash
echo "Hello, $LOGNAME"
echo "Today's date is `date`"
echo "Username is `who i am`"
echo "Current file name is $0"
echo "Current directory is `pwd`"

$ ./test.sh
Hello, ke
Today's date is 2019年 10月 26日 星期六 19:46:46 CST
Username is ke       pts/0        2019-10-26 19:41 (10.0.2.2)
Current file name is ./test.sh
Current directory is /home/ke
```
---

### Q36.
**How to find all the files modified in less than 7 days?**
### *Answer:*
```Bash
$ find . -type f -mtime -7 -exec ls -l {} \;
```
---

### Q37.
**Print a given number, in reverse order using a Shell script such that the input is provided using command Line Argument only.**
### *Answer:*
```Bash
#!/usr/bin/env bash
Usage(){
    echo "Usage: $0 number"
    echo " Reverse of the given number will be printed"
    echo " For eg. $0 0123, 3210 will be printed"
    exit 1
}

[ $# -ne 1  ] && Usage

n=$1
rev=0
sd=0

while [ $n -gt 0  ]
do
    sd=$(( n % 10 ))
    rev=$(( rev * 10 + sd ))
    n=$(( n / 10 ))
done
echo "Reverse results:$rev"

[ke@ke-linux ~]$ ./test.sh 12345
Reverse results:54321

[ke@ke-linux ~]$ ./test.sh 123456789
Reverse results:987654321
```
---

### Q38.
**How to calculate a real number calculation in shell script?**
### *Answer:*
```Bash
$  echo "1.6+2.5" | bc
4.1

$  echo "1.6*2.5" | bc
4.0

$ echo "scale=3;3/2" | bc
1.500

$  echo "scale=2;1.6^2" | bc
2.56

$  echo "scale=2;sqrt(2.56)" | bc
1.60
```
---

### Q39.
**How to get the value of pi till a 20 decimal places?**
### *Answer:*
```Bash
$ echo -n "π=";echo "scale=20; 4*a(1)" | bc -l
π=3.14159265358979323844
```
---

### Q40.
**Write a script to print the first 10 elements of Fibonacci series.**
### *Answer:*
```Bash
#!/usr/bin/env bash
for i in {1..10}; do
    if [[ ${i} -eq 1 || ${i} -eq 2 ]]; then
	a=1
	b=1
	echo 1
    else
	c=$b
        b=$((a + b))
	a=$c
	echo $b
    fi
done

$ ./test.sh 
1
1
2
3
5
8
13
21
34
55

```
---

### Q41.
**What is the difference between $$ and $!?**
### *Answer:*
$$ gives the process id of the currently executing process whereas $! Shows the process id of the process that recently went into the background.

--- 

### Q42.
**What are zombie processes?**
### *Answer:*
These are the processes which have died but whose exit status is still not picked by the parent process. These processes even if not functional still have its process id entry in the process table. 

---

### Q43.
**Print the 10th line without using tail and head command.**
### *Answer:*
```Bash
#!/usr/bin/env bash
sed –n '10p' file1
```
---

### Q44.
**How will you find the total disk space used by a specific user?**
### *Answer:*
```Bash
#!/usr/bin/env bash
du -s /home/<user home path>
```
---

### Q45.
**Find all the files modified in less than 2 days and print the record count of each.**
### *Answer:*
```Bash
$ find . –mtime -2 –exec wc –l {} \; 
```
---

### Q46.
**How to send a mail with a compressed file as an attachment?**
### *Answer:*
```Bash
$ zip file1.zip file1 | mailx –s "subject" <Recipients email id>

Email content

EOF 
```
---
