git pull

for f in cluster.*; do
  whoOwns=$(cat $f)
  echo $f $whoOwns
done
