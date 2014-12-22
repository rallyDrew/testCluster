git pull

echo "<b>Current status of test clusters</b> <br/>" > README.MD
for f in cluster.*; do
  whoOwns=$(cat $f)
  echo "$f $whoOwns <br/>" >> README.MD
done

cat README.MD

