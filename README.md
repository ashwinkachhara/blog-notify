blog-notify
===========

RSS notifications for Ubuntu (unfinished)

Uses Zenity for Ubuntu to display a dialog whenever there is a new post on a specified blog (using RSS feed). 
HTTP authentication is also supported just create a local auth.txt file with the format "uname passwd"
This script must be added to crontab to run, say every 5mins or so (whatever works for you)

All that sounds very lovely. Whats wrong?

I haven't been able to get x-windowing to work with crontab the way I want it to.
Stay tuned! I'll try to make this work soon.


Update 1.1 <by meetshah1995>

The title of the Zenity popup changes to that of the blog Post title making easier for the user to press Meh if he has not interest in the company.

Example : 

If the Blog Post title is "Ashwin Kachhara Fortune 50 Company Inteview Shortlist"
The popup title will be Ashwin Kachhara Fortune 50 Company Inteview Shortlist 