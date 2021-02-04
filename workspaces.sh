#!/bin/bash



echo " ~~ dWorkspace, the holy script for arranging code directories ~~ "
echo "The primary concept is to create a simple and quick way to move to other computers without  wasting time"
echo "creating your favorite development folder struture. Often translated as a STANDARD for code organization"
echo "created by @bmalbusca (https://github.com/bmalbusca/dworkspace) and based on feedback from multiple developers"
echo "
NOTE: use comma (,) to add multiple targets.
"

declare -i START_DATE=$(date --date="1 years ago" +'%Y')
declare -i END_DATE=$(date --date="2 years ago" +'%Y')

IFS=',' read -r -p "External projects: " -a EXTERNAL_PROJECTS
IFS=',' read -r -p "Languages/frameworks: " -a SUB_LAB

SUB_DOCUMENTS=publish

mkdir -p    workspaces/{internal/{projects,lab/foo},documents/{$SUB_DOCUMENTS,notes}}
mkdir -p    workspaces/internal/projects/{late-{$START_DATE,$END_DATE},current}

for proj in "${EXTERNAL_PROJECTS[@]}"
do
    mkdir -p "workspaces/$proj"
done


for slab in "${SUB_LAB[@]}"
do
    mkdir -p "workspaces/internal/lab/$slab"
done



echo "The result:"
tree workspaces
