git pull > gitlog.txt

WHO=$(whoami)
TCLOCKFILE=cluster.$1

if [ ! -f $TCLOCKFILE ]; then
  echo "$1 is not a valid Test Cluster!"
  exit 1
fi

LOCKEDBY=$(cat $TCLOCKFILE)

if [ -a $LOCKEDBY ]; then
  echo "$1 was not locked."
  exit 0
else
  echo "" > $TCLOCKFILE
  echo "$1 is now unlocked"
fi

./status.sh

git add .
git commit -m "$WHO unlocked $1"
git push --quiet
