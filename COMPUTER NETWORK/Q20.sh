Q)Shell script to print specified range of lines from given files

Code:
if [ $# -le 2 ]
then
echo "syntax is <$0> <start_line> <end_line> <files>"
exit 1
fi
# Get range
n1=$1
n2=$2
shift
shift
# Calculate number of lines to extract
n3=$(expr $n2 - $n1 + 1)
# Process each file
while [ $# -ne 0 ]
do
echo -e "\nlines from $n1 to $n2 from $1\n"
head -n $n2 "$1" | tail -n $n3
shift
done
exit 0
