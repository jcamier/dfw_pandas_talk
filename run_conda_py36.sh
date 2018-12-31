#!/bin/bash

# chmod +x file_name to make it executable
#source /Users/jacquescamier/anaconda2/bin/activate py36
python --version
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit


