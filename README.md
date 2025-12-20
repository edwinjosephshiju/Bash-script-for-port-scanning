# 🛡️ Simple Bash Port Scanner

A lightweight, dependency-free network port scanner written entirely in Bash. This tool utilizes the native `/dev/tcp` feature in Linux to scan for open ports on a target system without requiring external tools like Nmap.

## 📂 File Structure

```text
Bash script for port scanning/
├── portscanner.sh    # The main executable script
└── README.md         # Project documentation
```

---

## 🚀 Features
No Dependencies: Runs on standard Bash (no need to install Nmap or Python).

* Lightweight: Minimal resource usage.
* Fast: Uses background processes (&) to scan multiple ports simultaneously.
* Clean Output: Hides connection errors and only reports open ports.

---

## 📋 Prerequisites
A Linux or macOS system.

Bash shell (version 4.0 or higher recommended).

---

## 📥 Installation
### Clone the repository:

```bash

git clone [https://github.com/edwinjosephshiju/Bash-script-for-port-scanning.git](https://github.com/edwinjosephshiju/Bash-script-for-port-scanning.git)

```

### Navigate to the directory:

```bash

cd Bash script for port scanning

```

### Make the script executable:

```bash

chmod +x portscanner.sh

```

---

## 💻 Usage
Run the script with the target IP address, start port, and end port.

### Syntax:

```bash

./portscanner.sh <TARGET_IP> <START_PORT> <END_PORT>
Example: Scan your local router from port 20 to port 100:

```

---

## Example Script

```bash

./portscanner.sh 192.168.1.1 20 100

```

---

### Output:

```text

Scanning 192.168.1.1 from port 20 to 100...
[+] Port 22 is OPEN
[+] Port 80 is OPEN
Scan complete.

```

---

## ⚠️ Disclaimer
### Please read carefully before using this tool.
#### This script is provided for educational purposes and authorized security testing only.

* Do not use this tool to scan networks, servers, or devices that you do not own or do not have explicit, written permission to test.
* Port scanning without permission may be considered a cyber-attack and is illegal in many jurisdictions.
* The author of this repository is not responsible for any damage, legal consequences, or misuse of this tool.

### By using this script, you agree that you are solely responsible for your actions.
