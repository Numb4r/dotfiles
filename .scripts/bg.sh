arr=(~/.Backgrounds/*)
while [[ true ]]; do
  for (( i = $(($RANDOM % 24)); i < 25; i++ )); do
    echo ${arr[i]}
    feh --bg-scale ${arr[i]}
    sleep 500
    #statements
  done
  #let "i++"
done
