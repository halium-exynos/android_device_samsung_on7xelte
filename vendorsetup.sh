for rom in rr dot lineage aosp havoc lotus
do
  for variant in user userdebug eng
  do
    add_lunch_combo ${rom}_on7xelte-${variant}
  done
done
