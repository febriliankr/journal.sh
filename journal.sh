printf "📕 Now/tomorrow/yesterday/idea/todo (n/t/y/i/d)"
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
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/pages/Fleeting\ Notes\ .\ Startup.md
elif [ "$DAY" = "d" ]; then
  nvim ~/Library/Mobile\ Documents/iCloud\~com\~logseq\~logseq/Documents/notes/pages/Todo.md
else
    echo "invalid input"
    exit 1
fi
