git pull -q 2>/dev/null

echo "<b>Current status of test clusters</b> <br/>" > README.MD
for f in cluster.*; do
  whoOwns=$(cat $f)
  echo "$f $whoOwns <br/>" >> README.MD
done

git add README.MD
git commit -m "Updated readme on GitHub"
git push
cat README.MD

