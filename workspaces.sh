#!/bin/bash



echo " ~~ dWorkspace, the holy script for arranging code directories ~~ "
echo "The primary concept is to create a simple and quick way to move to other computers without  wasting time"
echo "creating your favorite development folder struture. Often translated as a STANDARD for code organization"
echo "created by @bmalbusca (https://github.com/bmalbusca) and based on feedback from multiple developers"


declare -i START_DATE=$(date --date="1 years ago" +'%Y')
declare -i END_DATE=$(date +'%Y')

# I would like to read multiple options
read -p "External projects: " EXTERNAL_PROJECTS
read -p "Languages/frameworks: " TECH

SUB_LAB=$TECH
SUB_DOCUMENTS=publish

##################
# The Target
##################
# SUB_PROJECTS={$START_DATE,$END_DATE}
# SUB_INTERNAL={notes,projects/$SUB_PROJECTS,lab/$SUB_LAB}

# mkdir -p workspaces/{internal/$SUB_INTERNAL,documents/$SUB_DOCUMENTS}
###################

mkdir -p    Workspaces/{internal/{notes,projects,lab/{foo,$SUB_LAB}},$EXTERNAL_PROJECTS,documents/$SUB_DOCUMENTS}
mkdir -p    Workspaces/internal/projects/{late-{2019..2022},current}

echo "The result:"
tree workspaces
