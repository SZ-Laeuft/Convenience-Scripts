# Server Components
### start-server
The start-server script can be used to remove the current api docker container, remove the current api image of this container, pull the newest api image and start the container again. If you can use the docker pull and docker compose up -d command, you wont need this script.

### db-backup.sh
The db-backup.sh script is designed to be used in a cron job at the event. This script will run the pg_dump command every 5 or so minutes. This command creates a .sql file on an extern drive. These backups can be used when the server craches during the event.

### reboot-checkpoints
Script used to automatically reboot all checkpoints (00-03) and therefore update them.

# Client Components
### start-client
The start-client script updates checkpoint core, then starts the checkpoint client, waits 5 seconds and then starts checkpoint core.

# Note:
All scripts without .sh extensions are meant to be placed in `/bin/<filename>`. Files might need a `sudo chmod +x <filename>` to be executed.
