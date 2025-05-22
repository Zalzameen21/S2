Q)Shell script to delete all lines if a file containing word linux


Code:

if [ $# -ne 2 ]
then
        echo " syntax is<$0><string><filename>"
        exit 1
fi
term=`tty`
exec<$2
while read line
do
        echo $line | grep $1>/dev/null
        echo $line | grep -w $1>/dev/null
        if [ $? -ne 0 ]
        then
                echo $line >>temp
        fi
done
exec<$term
mv temp $2


