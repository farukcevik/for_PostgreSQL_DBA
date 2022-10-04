/usr/pgsql-11/bin/psql -p5432 -f /var/lib/pgsql/scripts/kill_idle_sessions.sql


/*
SELECT pg_terminate_backend(pid)     
FROM pg_stat_activity    
 WHERE usename in ( 'user1'   ,'user2')   
 AND pid <> pg_backend_pid()   
 AND state = 'idle'      
 AND state_change < current_timestamp - INTERVAL '10' MINUTE;
*/
