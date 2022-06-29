sleep 30
orchestrator -c discover -i mysql-master
sleep 3
orchestrator -c submit-masters-to-kv-stores -alias mysql-master:3306
tail -f /dev/null