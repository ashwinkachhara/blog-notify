#!/bin/bash

#Auth.txt contains space separated uname and passwd - "uname passwd"
file="auth.txt"

rsslink="http://placements.iitb.ac.in/blog/?feed=rss2"
bloglink="http://placements.iitb.ac.in/blog/"

while read -r a b; do
    myname=$a
    mypasswd=$b    
done < $file

wget --quiet --user "$myname" --password "$mypasswd" "$rsslink" -O new.html
#cp oldref.html old.html
#echo "new" > new.html

differ=false
#Logic here
cmp --silent new.html old.html || differ=true

#echo $differ
if [ $differ == true ]
then
    zenity --question --display=:0.0 --timeout 240 --text="There is something new on the blog" --ok-label="Finally! Open the Blog" --cancel-label="Meh"
    if [ $? == 0 ] ; then
	mv new.html old.html
	google-chrome $bloglink
    else
	rm new.html
    fi
fi
