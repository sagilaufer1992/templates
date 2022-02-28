echo "current folder"
pwd

echo "current folder content"
ls

if [ -d '.terraform' ]; then
  echo "terraform folder content"
  ls .terraform;
fi
