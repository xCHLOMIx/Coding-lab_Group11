#!/bin/bash

#Secures the active_logs directory by giving full access to the owner and displays the permissions
secure_data() {
	chmod 700 active_logs
	ls -ld active_logs
} 
