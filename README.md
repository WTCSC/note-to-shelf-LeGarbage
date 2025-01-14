[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/x_3ULh4W)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=17710152)
# Note to Shelf

<!--

Create a shell script that functions as a command-line note-taking tool. This tool should help you quickly capture and organize thoughts, reminders, and tasks directly from the terminal.

## Requirements

- The script must support the following commands:
    - Add a new note: `note add "Your note text here"`
    - List all notes: `note list`
    - Search notes: `note search "keyword"`
- Implementation requirements:
    - Store notes in a text file with proper date/time stamps
    - Include error handling for all commands
    - Implement input validation
    - Add proper logging for debugging

## Testing Criteria

Your script will be tested against the following scenarios:

- Adding notes with special characters
- Proper file operations (read/write)
- Correct date/time formatting
- Search functionality accuracy
- Proper exit codes for success/failure

## Example Usage

```bash
#!/bin/bash

# Add a note
$ ./note.sh add "Schedule dentist appointment"
Note added successfully

# List all notes
$ ./note.sh list
2025-01-06 12:04:06 - Schedule dentist appointment
2025-01-06 12:05:04 - Buy groceries

# Search notes
$ ./note.sh search "dentist"
2025-01-06 12:04:06 - Schedule dentist appointment
```

## Tips and Tricks

You might find the following resources helpful for completing this assignment:

- https://www.redhat.com/en/blog/arguments-options-bash-scripts
- https://linuxhint.com/bash_append_line_to_file/
- https://linuxconfig.org/how-to-find-a-string-or-text-in-a-file-on-linux
- https://www.geeksforgeeks.org/create-timestamp-variable-in-bash-script/

-->

Introducing the best command line, note-taking app. This is an absolute fact and you should not look for anything better.

# Features

*Note to Shelf* contains an absolute massive amount of features, and all three of them are as follows:

- add: You can add notes to your note list by running `note add "note text"`. *Note to Shelf* will provide output notifying you of the success of this operation.
- list: List all of the notes you have ever taken, just by running `note list`. *Note to Shelf* even includes timestamps of when you took the notes, sorted in order of oldest to newest.
- search: In the case that your notes list grows too big for you to search it yourself, *Note to Shelf* can do it for you. After running `note search "keyword"`, you will see a list of all your notes containing the keyword.

# How to Use

Download the `note.sh` file. Then, while in the directory containing the file, run `chmod +x`. Now, whenever you want to use *Note to Shelf*, just run `./note.sh add/list/search "note text/keyword"` from within the directory.