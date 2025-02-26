# Info On Custom Scripts 
Author: [github.com/leerobertdyer](https://github.com/leerobertdyer)

Collaborators: [
    <!-- A man can dream -->
]

**WIP** this repo is a work in progress collection. 

For example there is a todo script that has no way of marking things as done, and a couple of the scripts may not be fully functional. Happy to have help feel free to open a pr and add your name to collab list.

### Here a few of the most useful scripts:

- `cds` will change to this scripts directory and list out all scripts (*note - this uses the `scripts` file to get current directory.*) 

- `chmodx` will run `chmod +x "${SCRIPT_DIR}"/*` in the current directory, and I've used it whenever adding a new executable script. I would recommend running this as a shortcut to allow all scripts to run, but if you are more security minded you can just `chmod +x whateverScriptName` individually.

- `myscripts` will list out the top line description for each file in this repo if you want a quick overview of what they do.

- `task` - opens a prompt for a quick accomplishment to save into a temporary file. `task !` will open that temp file in vim so if you want to edit it you can. *note* I have these temp files saved as hidden files on the desktop, all caps like .TASKS 

- `daily` - will take all the tasks in the .TASKS file and add them to a single file using the current date. savomg them to a folder where you can easily go back and see what you accomplished.

- `q` - this opens a prompt to save a question. `q !` edits .QUESTIONS temp file, and entering "?" into the prompt will list all questions in the temp file.

- `answer` will open cat the .QUESTIONS file and prepend numbers before each question so you can pick one and answer it, which adds the question and answer to an .ANSWERS file. `answer !` will open that file in vim.`