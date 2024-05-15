# +r\!jdate appends date to the top 
printf "📕 Now/tomorrow/yesterday (n/t/y)"

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
else
    echo "invalid input"
    exit 1
fi
