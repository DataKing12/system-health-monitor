DISK_USAGE=$(df -h / | awk 'NR==2 {print $6}' | sed 's/%//')

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%! Current usage: ${DISK_USAGE}%"
else
    echo "Disk usage is normal: ${DISK_USAGE}%"
fi
