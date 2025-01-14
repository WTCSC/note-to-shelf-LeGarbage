#!/bin/bash

# Adds a note to the notes file
AddNote()
{
    # Checks if the user actually provided a note to add
    if [[ -z $1 ]]; then
        echo "Blank note"
        exit 1
    # If the user provided a note, add it to the file along with a timestamp and notify the user that it worked
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> "$filename"
        echo "Note added successfully"
    fi
}

# Prints the contents of the notes file
ListNotes()
{
    # Chechs if the notes file is empty
    if (( $(wc -l < $filename) > 0 )); then
        # Prints the non-empty file
        cat "$filename"
    # The notes file is empty and the user is notified
    else
        echo "You don't have any notes"
    fi

}

# Searches the notes file
SearchNote()
{
    # Checks if the notes file is empty
    if (( $(wc -l < $filename) > 0 )); then
        #Search the non-empty notes file for the provided phrase
        grep "$1" "$filename"
        # Checks for an exit code of 1 from grep (no matches found)
        if [ "$?" -eq "1" ]; then
            echo "No matches found"
        fi
    # The notes file is empty and the user is notified
    else
        echo "You don't have any notes"
    fi
}

# Store the file name in a variable for better readability and mantainability
filename="notes.txt"

# Checks if the file exists, then creates it if it doesn't
if [ ! -f "$filename" ]; then
    touch "$filename"
fi

# Checks for what the user wants to do, then runs the corresponding function
if [[ $1 == "add" ]]; then
    AddNote "$2"
elif [[ $1 == "list" ]]; then
    ListNotes
elif [[ $1 == "search" ]]; then
    SearchNote "$2"
# If the user doesn't provide one of the above options, exit with an error
else
    echo "Invalid Command"
    exit 1
fi