#!/bin/bash

pg_dump -d postgres > db_backup_$(date '+%H_%M_%S').sql
