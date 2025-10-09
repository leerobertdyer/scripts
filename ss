# ss = Screen Shots - a tool for quick organization and cleanup of screenshots folders

# Step 1 rm all files that begin with "Screen"
cd ~/Desktop/screenshots

# If param1 = '.' open ss folder
if [ "$1" = "." ]; then
	echo "opening ~/Desktop/screenshots"
	open .
	exit 0
fi

# Check if there are any files matching the pattern
# redirects stdout to /dev/null and stderr to the same (2>&1) basically suppresses the standard output and error output
if ls Screen* 1> /dev/null 2>&1; then 
    x=0
    for file in Screenshot*; do
        x=$((x+1))
    done
    echo "${x} files to be removed. Is that ok? (y/n)"
    read answer
    if [ "$answer" == "y" ]; then
        rm Screen*
    elif [ "$answer" == "n" ]; then
        echo "Abandoning script..."
        exit
    fi
else
    echo "No files to remove."
fi
# Step 2 create folders for all different modified dates for remaining files
# Step 3 move all respective files into these folders
# Step 4 Allow paramater value ! followed by "new name of screenshot" to allow rewriting name of most recent screenshot
