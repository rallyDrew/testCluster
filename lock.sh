git pull

WHO=$(whoami)
TCLOCKFILE=cluster.$1

if [ ! -f $TCLOCKFILE ]; then
  echo "$1 is not a valid Test Cluster!"
  exit 1
fi

LOCKEDBY=$(cat $TCLOCKFILE)

if [ -a $LOCKEDBY ]; then
  echo "All Yours!"
  echo $WHO > $TCLOCKFILE
else
  echo "$1 is already locked by $LOCKEDBY"
  exit 1
fi

./status.sh

git add .
git commit -m "$WHO locked $1"
git push --quiet
