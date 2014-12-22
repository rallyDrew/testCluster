git pull

echo "Current status of test clusters" > README.MD
for f in cluster.*; do
  whoOwns=$(cat $f)
  echo $f $whoOwns >> README.MD
done

cat README.MD

