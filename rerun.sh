ps aux | grep -i $1 | awk {'print $2'} | xargs kill -9 2>/dev/null || :
SPRING_PROFILES_ACTIVE=default  java -jar $2  > $1.out &
