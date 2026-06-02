#!/bin/bash

# Create timestamp
timestamp=$(date +"%Y%m%d_%H%M")

# Create Archive Directory
mkdir -p archived_logs

# Move and rename existing logs
mv active_logs/heart_rate_log.log archived_logs/heart_rate_${timestamp}.log

mv active_logs/temperature_log.log archived_logs/temperature_${timestamp}.log

mv active_logs/water_usage_log.log archived_logs/water_usage_${timestamp}.log

# Recreate empty log files for the simulator
touch active_logs/heart_rate_log.log

touch active_logs/temperature_log.log

touch active_logs/water_usage_log.log

echo "Logs archived successfully at $timestamp"

