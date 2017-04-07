#!/bin/bash -ve

echo "hi! I'm inside the second container"
touch parent_folder/child_folder/b
echo "gijs was here" > parent_folder/child_folder/a

