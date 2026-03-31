# **Open Source Audit Project**

- **Name:** Rashi Gurjar 
- **Roll Number:** 24BCE10267
- **Course:** Open Source Software (NGMC)  
- **Software Chosen:** VLC Media Player

--------

## Project Overview

This project presents a structured audit of **VLC Media Player**, a widely used open-source multimedia application.  

The report explores:
- Origin  
- Licensing model  
- Linux footprint  
- Ecosystem  
- Comparison with proprietary alternatives  

Additionally, five shell scripts are developed to demonstrate practical Linux and automation skills aligned with open-source principles.

---------

## System Requirements

- Ubuntu Linux (or WSL Ubuntu)  
- Bash shell  
- VLC Media Player  
- Basic Linux utilities (`dpkg`, `grep`, `awk`, `du`, etc.)

---------

## Setup Instructions

Open terminal and run the following commands:

```bash
git clone https://github.com/rashg24/oss-audit-24BCE10267.git
cd oss-audit-24BCE10267
sudo apt update
sudo apt install vlc
vlc --version
``` 

----------


## Scripts Included

### Script 1 — System Identity Report
Displays system information such as kernel version, user, uptime, and date.  
**Concepts used:** variables, command substitution `$()`, echo  

### Script 2 — FOSS Package Inspector
Checks whether VLC is installed and displays its version and details.  
**Concepts used:** if-else, `dpkg`, `grep`, case  

### Script 3 — Disk and Permission Auditor
Analyzes key directories for disk usage and permissions.  
**Concepts used:** for loop, `du`, `ls -ld`, `awk`  

### Script 4 — Log File Analyzer
Reads a log file, counts keyword occurrences, and shows recent matches.  
**Concepts used:** while loop, `grep`, variables  

### Script 5 — Open Source Manifesto Generator
Generates a personalized open-source philosophy statement from user input.  
**Concepts used:** `read`, string handling, file output (`>`), `date`  

---

## How to Run the Scripts

### Step 1: Give execution permissions
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```

---

### 🔹 Project Structure
```markdown
## Project Structure

```bash
oss-audit-24BCE10267/
│── README.md
│── script1.sh
│── script2.sh
│── script3.sh
│── script4.sh
│── script5.sh
```

---


## Notes

- All scripts are tested on Ubuntu (WSL environment).  
- Scripts are designed to run via terminal without GUI dependency.  
- Ensure execution permissions are granted before running scripts.  

## Conclusion

This project provided both conceptual and practical insights into open-source software. It highlights how **VLC Media Player** represents openness, collaboration, and flexibility, while also strengthening hands-on experience with Linux and shell scripting.
