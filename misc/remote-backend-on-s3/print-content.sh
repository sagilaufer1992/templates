echo "current folder"
pwd

echo "current folder content"
ls -la

if [ -d '.terraform' ]; then
  echo "terraform folder content"
  ls -la .terraform;
fi
