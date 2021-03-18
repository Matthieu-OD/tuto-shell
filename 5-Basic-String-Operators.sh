#!/usr/bin/zsh

STRING="this is a string"
SUBSTRING="hat"

echo ${#STRING}
expr index "$STRING" "$SUBSTRING"

# Simple data extraction example
# Code to extract the First anme from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`
CHOP1FIELD=${DATARECORD:$COMMA1}
COMMA2=`expr index "$COP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 3`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}
echo $FIRSTNAME

# Substring Replacement
STRING2="to be or not to be"
echo ${STRING2[@]/be/eat}
# Replacing all the occurences
echo ${STRING2[@]//be/eat}
# Delete all occurences of substring (replace with empty string)
echo ${STRING2[@]// not/}
# Replace occurence of substring if at the beginning/end of $STRING22
echo ${STRING2[@]/#to be/eat now} #here we use the # sign
echo ${STRING2[@]/%be/eat} # here we use the % sign
# Replace occurence of substring with shell command output
echo ${STRING2[@]/%be/be on $(date +%Y-%m-%d)}

# Exercise
BUFFETT="Life is like a snowball. The important thing is
finding wet snow and a really long hill."

ISAY=${BUFFETT[@]/snow/foot}
ISAY=${ISAY[@]/snow/}
ISAY=${ISAY[@]/finding/getting}

W_INDEX=`expr index "$ISAY" 'w'`
echo $W_INDEX
INDEX_END_ISAY=W_INDEX+2
echo $INDEX_END_ISAY
ISAY=${ISAY:0:$INDEX_END_ISAY}

echo $ISAY
