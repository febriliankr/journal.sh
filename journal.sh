# +r\!jdate appends date to the top 
printf "📕 Now/tomorrow/yesterday/idea/todo (n/t/y/i/d)"
read DAY
if [ "$DAY" = "t" ]; then
  tomorrow=`date -v+1d +%Y_%m_%d`
  nvim ~/Documents/notes/journals/$tomorrow.md
elif [ "$DAY" = "n" ]; then
  now=`date +%Y_%m_%d`
  nvim ~/Documents/notes/journals/$now.md
elif [ "$DAY" = "y" ]; then
  yesterday=`date -v-1d +%Y_%m_%d`
  nvim ~/Documents/notes/journals/$yesterday.md
elif [ "$DAY" = "i" ]; then
  nvim ~/Documents/notes/pages/Fleeting\ Notes\ .\ Startup.md +r\!jdate
elif [ "$DAY" = "d" ]; then
  nvim ~/Documents/notes/pages/Todo.md
elif [ "$DAY" = "r" ]; then
  nvim ~/Documents/notes/pages/Risetku.md +r\!jdate
else
    echo "invalid input"
    exit 1
fi
