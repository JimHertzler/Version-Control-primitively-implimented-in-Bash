# Version-Control-primitively-implimented-in-Bash
This is a "Bash Script" that has save me much trouble, down through the years.
When run in your working-directory, it archives all the files in your working-directory.
The script creates a sub-directory named "Git", then copies any new files to that sub-directory.
The name of a new copy is the old-file-name with "0_" prepended.
If Git/0_\* already exists, and it is different from the old file, then the old file is copied to Git/1_\*.
     That is unless Git/1_\* exists, then the old file is copied to Git/2_\*, and so on.
