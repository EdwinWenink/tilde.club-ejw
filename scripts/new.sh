TIMESTAMP=$(date +%s)
DATE=$(date +%Y-%m-%d)
FILE=~/public_html/content/$DATE-$TIMESTAMP.md
touch $FILE
echo "@$TIMESTAMP" >> $FILE
