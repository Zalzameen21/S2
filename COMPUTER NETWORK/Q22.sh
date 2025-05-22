Q)Shell script to count the occurrence of words in a file in a set of files


Code:

if [ $# -eq 0 ]
then
echo "Syntax: $0 <word> <file1> <file2> ..."
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in `cat $1`
do
if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "no.of occurance of words = $count"
