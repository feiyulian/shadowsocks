netstat -ant | grep ":1" | grep ESTABLISHED | awk '{print $4,$5}' | sort | uniq -c | while read line
do
  var_arr=($(echo ${line}|tr ':' ' '|tr -s ' '))
   echo "serverIP:"${var_arr[1]}" serverPort:"${var_arr[2]}" clientIP:"${var_arr[3]}" clientPort:"${var_arr[4]}
done
