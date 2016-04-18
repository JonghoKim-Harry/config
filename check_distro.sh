if [ -e /etc/debian_version ]; then
    echo "I'm debian!"
elif [ -e /etc/redhat-release ]; then
    echo "I'm redhat!"
fi
