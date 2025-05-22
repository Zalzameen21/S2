Q)Shell script to copy a set of files given as pairs at command prompt


Code:

r=`expr $# % 2`
if [ $r -ne 0 ]
then
echo "filenames are not in pairs"
exit 1
fi
while [ $# -ne 0 ]
do
cp "$1" "$2"
echo "Copied '$1' to '$2'"
shift
shift
done
exit 0
