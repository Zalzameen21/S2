Q)Shell script to rename all ordinary files in a directory with filename.PID of shell


code:
if [ $# -gt 1 ]
then
        echo "Syntax is<$0><location>or<$0>"
        exit 1
fi
if [ $# -ne 0 ]
then
        cd$1
fi
for i in *
do
if [ -f $i ]
then
        mv $i $i.$$
        echo "file renamed to .$$ "
        fi
done
