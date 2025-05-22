Q)Shell script to display the content of a directory file in windows style


Code:
echo -e "\n\n Directory of `pwd` \n"
for f in *
do
#dpart=`ls -l $f | cut -d ' ' -f6,7`
fdatetime=`date -r $f "+%d-%m-%y %H:%M:%S"`
if [ -d $f ]
then
echo -e "$f \t\t<DIR>\t\t $fdatetime"
else
f_size=`cat $f | wc -c`
echo -e "$f \t\t $f_size \t $fdatetime"
fi
done
