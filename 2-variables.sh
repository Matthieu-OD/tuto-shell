#!/usr/bin/zsh

PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello        world!'

echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"
echo $greeting" noe with spaces: $greeting"

FILELIST=`ls`
FileWithtimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

echo ${FILELIST}
echo ${FileWithtimeStamp}

BIRTHDATE="1 Jan 2000"
Presents=10
BIRTHDAY=`date -d "$BIRTHDATE" +%A`


echo $BIRTHDATE
echo $Presents
echo $BIRTHDAY
