systemctl start orchestrator.service
sleep 100
orchestrator -c discover -i mysql-master:3306
sleep 30
orchestrator -c submit-masters-to-kv-stores -alias mysql-master:3306
tail -f /dev/null