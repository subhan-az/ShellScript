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

## Listing Process IDs

**Question:** How do I list all process IDs (PIDs) on a Unix/Linux system?

**Answer:**  
You can use the `ps` command along with `awk` to extract the PID column from the full process listing:

```bash
ps -ef | awk '{print $2}'
````

* `ps -ef` lists all processes with detailed info.
* `awk '{print $2}'` extracts the second column (which is the PID).

---

## Fetching and Filtering Remote Logs

**Question:** How can I download a remote log file and filter it for error lines?

**Answer:**
You can use `curl` to fetch the remote file and pipe it into `grep` to filter:

```bash
curl <REMOTE_LOG_URL> | grep "ERROR"
```

* `curl <REMOTE_LOG_URL>` downloads the log file from the URL.
* `grep "ERROR"` filters and prints only lines containing the word "ERROR".
* The pipe `|` connects the output of `curl` to `grep`.

**Note:** Replace `<REMOTE_LOG_URL>` with your actual log file URL.

---

## Script: Numbers Divisible by 3 and 5 but Not 15

**Question:** How to print numbers from 1 to 100 that are divisible by 3 and 5, but not by 15?

**Answer:**
Here's a bash script that does exactly that:

```bash
#!/bin/bash

for ((i=1; i<=100; i++)); do
  if [[ $((i % 3)) -eq 0 && $((i % 5)) -eq 0 && $((i % 15)) -ne 0 ]]; then
    echo $i
  fi
done
```

**Explanation:**

* Loop through numbers 1 to 100.
* Check if a number is divisible by 3 (`i % 3 == 0`) and 5 (`i % 5 == 0`) **and** not divisible by 15 (`i % 15 != 0`).
* Print the number if conditions are met.

---

## Best Practices During Interview

* **Explain your thought process** clearly before jumping into code.
* **Ask clarifying questions** about input range or assumptions.
* Use **clear variable names** and add **comments** for readability.
* Mention why you choose specific commands like `grep`, `awk`, or pipes (`|`).
* Be ready to discuss **alternatives or optimizations**.

---

## Common Follow-up Questions

**Q1: How do you make a script executable?**

```bash
chmod +x script.sh
```

**Q2: How do you schedule this script to run periodically with `cron`?**

* Open cron jobs editor with:

```bash
crontab -e
```

* Add a line like below to run every day at midnight:

```bash
0 0 * * * /path/to/script.sh
```

**Q3: How to save script output to a file or send it via email?**

* Save output to file:

```bash
./script.sh > output.log
```

* Send output via email (using `mail` command):

```bash
./script.sh | mail -s "Script Output" user@example.com
```

---

Feel free to customize and extend these scripts for your own use!

---

*Happy scripting!*

```

Just copy and paste this directly into your README.md file. Let me know if you want me to generate it as a downloadable file!
```
