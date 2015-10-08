# name of directory within /images on the webserver where 
# images are stored, and where the html files are stored here
htmldir=about
# the user name whose password should be entered in .pgpass of the
# user's account on the server e.g. in /home/desmond/.pgpass if I use 
#this script as the user "desmond" .pgpass looks like: 
# *:*:*:postgres:jabberw0cky
# supervisor also must set /etc/postgresql/9.1/main/pg_hba.conf 
# local all all to md5 from default "peer" (on server only)
dbuser=desmond
# the name of the postgres database where Drupal stores its stuff
dbname=capuana
# the drupal root directory you want to update
webroot=/var/www/capuana
os=`uname`
remotesite=ecdosis.net
# these are the files in the same directory as this script (update.sh)
# you can add new ones in quotes here. Pay attention to the order. nids MUST be provided (see below).
files=("home.md" "sources.md")
# these are the Drupal node ids ("nids") for the files (same order)
# you can get them from drupal by going to that page and noting down 
# the nid number immediately after "node" in the url bar
# the nids must be in the same order as the file list and the two 
# lists have to be the same length
nids=(2 3)

