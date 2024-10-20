
#!/bin/nash
#
#it will create a  folders
<<task
$1 is argument 1 which is folder name
$2 is start rang 
$3 is ned range
task

for ((num = $2; num<=$3; num++))
do 
     mkdir "$1$num"
done
