echo "Open journal file for now/tomorrow/yesterday/idea (n/t/y/i)"
read DAY
if [ "$DAY" = "t" ]; then
  tomorrow=`date -v+1d +%Y_%m_%d`
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/journals/$tomorrow.md
elif [ "$DAY" = "n" ]; then
  now=`date +%Y_%m_%d`
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/journals/$now.md
elif [ "$DAY" = "y" ]; then
  yesterday=`date -v-1d +%Y_%m_%d`
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/journals/$yesterday.md
elif [ "$DAY" = "i" ]; then
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/journals/$yesterday.md
else
    echo "invalid input"
    exit 1
fi
