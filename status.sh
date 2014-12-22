git pull

echo "Current status of test clusters <br/>" > README.MD
for f in cluster.*; do
  whoOwns=$(cat $f)
  echo "$f $whoOwns <br/>" >> README.MD
done

cat README.MD

