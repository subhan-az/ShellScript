Here is a README.md file based on the content you shared, organized for clarity and ease of use:

markdown
Copy
Edit
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

Be honest about your daily usage. Here are basic yet widely used commands:

| Command     | Purpose                            |
|-------------|------------------------------------|
| `ls`        | List files and directories         |
| `cd`        | Change directory                   |
| `cp`        | Copy files or directories          |
| `mv`        | Move or rename files               |
| `mkdir`     | Create new directory               |
| `touch`     | Create an empty file               |
| `vim`/`nano`| Edit files                         |
| `grep`      | Filter specific text from output   |
| `find`      | Search for files                   |
| `df`        | Check disk space                   |
| `top`       | Monitor running processes          |
| `ps -ef`    | List all system processes          |

> ❗ Advanced commands like `netcat`, `traceroute`, or `route` are used only for debugging or networking issues.

---

## 📄 List All Running Processes

Use the `ps` command:

```bash
#!/bin/bash
ps -ef
🔍 Filter Only Process IDs
Use awk to extract the second column (PID):

bash
Copy
Edit
ps -ef | awk '{print $2}'
🌐 Fetch and Filter Remote Logs
Example: Print only error logs from a remote log file
bash
Copy
Edit
curl <REMOTE_LOG_URL> | grep "ERROR"
curl: Downloads the remote file.

grep: Filters for lines containing "ERROR".

|: Pipes the output of curl into grep.

Replace <REMOTE_LOG_URL> with your actual log URL.

🔢 Script: Numbers Divisible by 3 and 5 but Not 15
Problem:
Print numbers between 1–100 that are:

Divisible by 3

Divisible by 5

Not divisible by 15

Shell Script:
bash
Copy
Edit
#!/bin/bash

for ((i=1; i<=100; i++)); do
  if [[ $((i % 3)) -eq 0 && $((i % 5)) -eq 0 && $((i % 15)) -ne 0 ]]; then
    echo $i
  fi
done
💡 Best Practices During Interview
Explain your thought process before jumping into code.

Ask for range/input assumptions before writing scripts.

Use clear variable names and comments in your code.

Mention why you chose specific commands (grep, awk, pipe, etc.).

Be prepared for follow-up questions like:

How do you make scripts executable?

How do you schedule this with cron?

How to send output to a file or email?

