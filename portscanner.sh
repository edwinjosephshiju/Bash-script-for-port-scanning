#!/bin/bash

# Simple Bash Port Scanner
# Usage: ./portscanner.sh <IP> <Start Port> <End Port>

target=$1
start_port=$2
end_port=$3

# Check if all arguments are provided
if [ -z "$target" ] || [ -z "$start_port" ] || [ -z "$end_port" ]; then
    echo "Usage: $0 <IP address> <Start Port> <End Port>"
    echo "Example: $0 192.168.1.1 20 100"
    exit 1
fi

echo "Scanning $target from port $start_port to $end_port..."

# Loop through the port range
for ((port=$start_port; port<=$end_port; port++))
do
    # Attempt to connect to the port.
    # 'timeout 1' waits 1 second for a response to avoid hanging.
    # '2>/dev/null' hides errors (like connection refused) for a clean output.
    timeout 1 bash -c "echo >/dev/tcp/$target/$port" 2>/dev/null && echo "[+] Port $port is OPEN" &
done

# Wait for background processes to finish
wait
echo "Scan complete."