#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    
    # Show version, license, summary
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement for philosophy note
case $PACKAGE in
    vlc) 
        echo "VLC: a free and open-source media player that supports almost all formats"
        ;;
    firefox) 
        echo "Firefox: promotes an open and privacy-focused web"
        ;;
    git) 
        echo "Git: empowers developers with distributed version control"
        ;;
    python3) 
        echo "Python: a community-driven programming language"
        ;;
    *) 
        echo "Unknown package"
        ;;
esac
