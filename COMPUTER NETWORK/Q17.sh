Q)Shell script to display a file from last line to first line



Code:
if [ $# -ne 1 ]
then
        echo "Syntax is <$0><filename>"
        exit 1
fi
if [ -d $1 ]
then
        echo " $1 is a dictionary"
        exit 2
fi
cp $1 file
l=`cat file | wc -l`
revfname="$1.rev"
rm $revfname 2>/dev/null
while [ $l -ge 1 ]
do
        tail -n 1 file >> $revfname
        l=`expr $l - 1`
        head -n $l file > temp
        mv temp file
done


