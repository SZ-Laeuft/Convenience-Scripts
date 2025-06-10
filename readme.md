The start-server script can be used to remove the current docker containers, remove the current images of those containers, pull the newest images of these containers and start them again. If you can use the docker pull and docker compose up -d command, you wont need this script.

The db-backup.sh script is designed to be used in a cron job at the event. This script will run the pg_dump command every 5 or so minutes. This command creates a .sql file on an extern drive. These backups can be used when the server craches during the event.

The start-client script updates checkpoint core, then starts the checkpoint client, waits 5 seconds and then starts checkpoint core. 
