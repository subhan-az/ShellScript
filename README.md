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
+----------------------------------------------------------------------------------------------------+

> ❗ Advanced commands like `netcat`, `traceroute`, or `route` are used only for debugging or networking issues.

---

````markdown
# Common Shell Commands and Useful Bash Scripts

This README provides a collection of useful shell commands, simple bash scripts, and best practices for writing and explaining shell scripts — especially handy for interviews or everyday usage.

---

## Table of Contents

1. [Listing Process IDs](#listing-process-ids)  
2. [Fetching and Filtering Remote Logs](#fetching-and-filtering-remote-logs)  
3. [Script: Numbers Divisible by 3 and 5 but Not 15](#script-numbers-divisible-by-3-and-5-but-not-15)  
4. [Best Practices During Interview](#best-practices-during-interview)  
5. [Common Follow-up Questions](#common-follow-up-questions)  

---

Shell Scripting Interview Questions and Answers
1. How do you specify the interpreter for a shell script?
Answer: Use the shebang #! followed by the path to the interpreter.

#!/bin/bash
echo "Script running"
2. How can you assign a value to a variable and print it?
Answer: Assign using = and print with echo.

greeting="Hello"
echo "$greeting"
3. What technique allows command output to be used as a variable's value?
Answer: Command substitution.

time_now=$(date)
echo "Current time: $time_now
4. How do you capture input from the user?
Answer: Use the read command.

echo "Enter your age:"
read age
echo "Your age is $age"
5. What does an exit code signify in a shell script?
Answer: It indicates the success (0) or failure (non-zero) of the last executed command.

ls /nonexistent
echo $?  # Output: non-zero (failure)
6. How can you make decisions based on conditions?
Answer: Use if, elif, else, and fi.

if [ -d "/path/to/dir" ]; then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi
7. What is the role of loops in scripts?
Answer: To repeatedly execute commands.

for file in *.txt; do
  echo "File: $file"
done
8. How do you include comments in your script?
Answer: Use the # symbol.

# This is a comment
echo "Code execution"
9. How can you access script parameters?
Answer: Parameters are accessed using $1, $2, etc.

echo "First parameter: $1"
10. When should you use single quotes versus double quotes?
Answer: Use single quotes to prevent variable expansion and double quotes to allow it.

var="world"
echo 'Hello $var'  # Output: Hello $var
echo "Hello $var"  # Output: Hello world
11. How do you test for file existence?
Answer: Use -e in a conditional statement.

if [ -e "myfile.txt" ]; then
  echo "File exists"
fi
12. What is the function of the case statement?
Answer: To handle multiple conditions.

case "$1" in
  start) echo "Starting";;
  stop) echo "Stopping";;
  *) echo "Unknown option";;
esac
13. How can you process a file line by line?
Answer: Use a while loop with read.

while IFS= read -r line; do
  echo "Line: $line"
done < "file.txt"
14. What is the syntax for redirecting output to a file?
Answer: Use > for overwrite and >> for append.

echo "Hello, World!" > output.txt
15. How do you search for text within files?
Answer: Use the grep command.

grep "search_term" file.txt
16. How do you define a reusable block of code?
Answer: Use functions.

greet() {
  echo "Hello, $1"
}
greet "Alice"
17. How can you make a variable available to sub-processes?
Answer: Use the export command.

export PATH=$PATH:/new/path
18. How do you check file permissions?
Answer: Use ls -l or test flags like -r, -w, and -x.

if [ -r "file.txt" ]; then
  echo "File is readable"
fi
19. How do you stop script execution upon encountering an error?
Answer: Use exit or set -e.

set -e
cp nonexistentfile /somewhere
echo "This won't be printed"
20. What does the shift command do?
Answer: It shifts the positional parameters to the left.

echo "$1"
```shift
echo "$1"
21. How do you join two strings together?
Answer: Concatenate them directly.

greeting="Hello"
name="Alice"
full_greeting="$greeting, $name"
echo "$full_greeting"
22. How do you retrieve the directory portion of a file path?
Answer: Use the dirname command.

path="/home/user/file.txt"
echo $(dirname "$path")
23. How can you perform arithmetic operations?
Answer: Use expr or $(( )).

sum=$((3 + 5))
echo "Sum: $sum"
24. What is the function of the set command?
Answer: To change shell options and positional parameters.

set -x  # Enable debugging
25. How do you verify the existence of a directory?
Answer: Use the -d flag in a conditional statement.

if [ -d "/path/to/dir" ]; then
  echo "Directory exists"
fi
26. How can you extract specific fields from a line of text?
Answer: Use the cut command.

echo "name:age:location" | cut -d ':' -f 2
27. How do you replace text in a file?
Answer: Use the sed command.

sed -i 's/old_text/new_text/g' file.txt
28. When would you use an until loop?
Answer: To repeat commands until a condition is true.

counter=1
until [ $counter -gt 5 ]; do
  echo "Counter: $counter"
  counter=$((counter + 1))
done
29. How do you store the output of a command in a variable?
Answer: Use command substitution.

current_user=$(whoami)
echo "Current user: $current_user"
30. What does the tee command do?
Answer: Reads from standard input and writes to standard output and files.

echo "Hello, World!" | tee output.txt
31. How can you check if a string contains another string?
Answer: Use a conditional statement with * wildcard.

string="Hello, World!"
if [[ "$string" == *"World"* ]]; then
  echo "Substring found"
fi
32. What is the printf command used for?
Answer: For formatted output.

printf "Name: %s, Age: %d\n" "Alice" 30
33. How can you split a string into an array?
Answer: Use the IFS variable.

string="a,b,c"
IFS=',' read -r -a array <<< "$string"
echo "${array[0]}"
34. How do you get the filename from a path?
Answer: Use the basename command.

path="/home/user/file.txt"
echo $(basename "$path")
35. How can you check if a string is empty?
Answer: Use -z in a conditional statement.

if [ -z "$string" ]; then
  echo "String is empty"
fi
36. What does the pwd command do?
Answer: Prints the current working directory.

echo "Current directory: $(pwd)"
37. How do you trim whitespace from a string?
Answer: Use sed or parameter expansion.

string="  Hello, World!  "
trimmed=$(echo "$string" | sed 's/^ *//;s/ *$//')
echo "$trimmed"
38. What is the trap command used for?
Answer: To catch signals and execute commands when they occur.

trap "echo 'Interrupted!'; exit" INT
39. How do you compare two strings?
Answer: Use = or != inside [[ ]] or [ ].

str1="hello"
str2="world"
if [ "$str1" = "$str2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
40. How do you check if a command exists?
Answer: Use command -v or which.

if command -v git >/dev/null 2>&1; then
  echo "Git is installed"
else
  echo "Git is not installed"
fi
41. How do you find the number of arguments passed to a script?
Answer: Use $#.

echo "Number of arguments: $#"
42. How do you create a symbolic link?
Answer: Use the ln -s command.

ln -s /path/to/original /path/to/link
43. How do you read a file into a variable?
Answer: Use command substitution with cat.

file_content=$(cat file.txt)
echo "$file_content"
44. How do you perform a logical AND in a shell script?
Answer: Use &&.

if [ -f "file1" ] && [ -f "file2" ]; then
  echo "Both files exist"
fi
45. How do you perform a logical OR in a shell script?
Answer: Use ||.

if [ -f "file1" ] || [ -f "file2" ]; then
  echo "At least one file exists"
fi
46. How do you check if a variable is set?
Answer: Use -z or -n.

if [ -n "$var" ]; then
  echo "Variable is set"
fi
47. How do you replace a substring in a variable?
Answer: Use parameter expansion.

str="Hello, World!"
new_str=${str/World/```shell}
echo "$new_str"
48. How do you convert a string to lowercase?
Answer: Use tr.

str="HELLO"
lower=$(echo "$str" | tr 'A-Z' 'a-z')
echo "$lower"
49. How do you convert a string to uppercase?
Answer: Use tr.

str="hello"
upper=$(echo "$str" | tr 'a-z' 'A-Z')
echo "$upper"
50. How do you generate a random number?
Answer: Use $RANDOM.

echo "Random number: $RANDOM"
51. How do you check if a number is even or odd?
Answer: Use arithmetic expansion.

num=4
if ((num % 2 == 0)); then
  echo "Even"
else
  echo "Odd"
fi
52. How do you display the first N lines of a file?
Answer: Use the head command.

head -n 10 file.txt
53. How do you display the last N lines of a file?
Answer: Use the tail command.

tail -n 10 file.txt
54. How do you count the number of lines in a file?
Answer: Use wc -l.

wc -l < file.txt
55. How do you count the number of words in a file?
Answer: Use wc -w.

wc -w < file.txt
56. How do you find files containing specific text?
Answer: Use grep -rl.

grep -rl "search_text" /path/to/dir
57. How do you list all environment variables?
Answer: Use the printenv command.

printenv
58. How do you change the current working directory?
Answer: Use the cd command.

cd /path/to/dir
59. How do you print a sequence of numbers?
Answer: Use the seq command.

seq 1 10
60. How do you pause the execution of a script for a specific time?
Answer: Use the sleep command.

sleep 5
61. How do you find the type of a file?
Answer: Use the file command.

file filename
62. How do you remove duplicate lines from a file?
Answer: Use the sort and uniq commands.

sort file.txt | uniq
63. How do you sort lines in a file?
Answer: Use the sort command.

sort file.txt
64. How do you merge multiple files into one?
Answer: Use the cat command.

cat file1.txt file2.txt > merged.txt
65. How do you display the disk usage of a directory?
Answer: Use the du command.

du -```sh /path/to/dir
66. How do you check available disk space?
Answer: Use the df command.

df -h
67. How do you display running processes?
Answer: Use the ps command.

ps aux
68. How do you kill a process by its name?
Answer: Use the pkill command.

pkill process_name
69. How do you find the process ID of a running process?
Answer: Use the pidof command.

pidof process_name
70. How do you check the status of a service?
Answer: Use the systemctl command.

systemctl status service_name
71. How do you start a service?
Answer: Use the systemctl start command.

systemctl start service_name
72. How do you stop a service?
Answer: Use the systemctl stop command.

systemctl stop service_name
73. How do you enable a service to start on boot?
Answer: Use the systemctl enable command.

systemctl enable service_name
74. How do you disable a service from starting on boot?
Answer: Use the systemctl disable command.

systemctl disable service_name
75. How do you display the system's hostname?
Answer: Use the hostname command.

hostname
76. How do you change the system's hostname?
Answer: Use the hostnamectl command.

hostnamectl set-hostname new_hostname
77. How do you display the current date and time?
Answer: Use the date command.

date
78. How do you set the system date and time?
Answer: Use the date command with appropriate options.

date MMDDhhmm[[CC]YY][.ss]
79. How do you add a user to the system?
Answer: Use the useradd command.

useradd username
80. How do you delete a user from the system?
Answer: Use the userdel command.

userdel username
81. How do you add a group to the system?
Answer: Use the groupadd command.

groupadd groupname
82. How do you delete a group from the system?
Answer: Use the groupdel command.

groupdel groupname
83. How do you add a user to a group?
Answer: Use the usermod -aG command.

usermod -aG groupname username
84. How do you display the groups a user belongs to?
Answer: Use the groups command.

groups username
85. How do you change the ownership of a file?
Answer: Use the chown command.

chown user:group file.txt
86. How do you change the permissions of a file?
Answer: Use the chmod command.

chmod 755 file.txt
87. How do you recursively change the ownership of a directory?
Answer: Use the chown -R command.

chown -R user:group /path/to/dir
88. How do you recursively change the permissions of a directory?
Answer: Use the chmod -R command.

chmod -R 755 /path/to/dir
89. How do you create an archive of a directory?
Answer: Use the tar command.

tar -cvf archive.tar /path/to/dir
90. How do you extract an archive?
Answer: Use the tar command.

tar -xvf archive.tar
91. How do you compress a file using gzip?
Answer: Use the gzip command.

gzip file.txt
92. How do you decompress a gzip file?
Answer: Use the gunzip command.

gunzip file.txt.gz
93. How do you create a compressed archive?
Answer: Use the tar command with compression options.

tar -czvf archive.tar.gz /path/to/dir
94. How do you extract a compressed archive?
Answer: Use the tar command with decompression options.

tar -xzvf archive.tar.gz
95. How do you find the difference between two files?
Answer: Use the diff command.

diff file1.txt file2.txt
96. How do you display the first few lines of a file?
Answer: Use the head command.

head -n 5 file.txt
97. How do you display the last few lines of a file?
Answer: Use the tail command.

tail -n 5 file.txt
98. How do you find the location of an executable?
Answer: Use the which command.

which bash
99. How do you check the version of a command?
Answer: Use the --version option.

bash --version
100. How do you display a calendar for a specific month and year?
Answer: Use the cal command.
