#!/bin/bash

 initialize_system() {

   if [ ! -d "active_logs" ]; then 
      echo "Creating active_logs directory..."
      mkdir active_logs
   else 
      
      echo "active_logs already exists. Skipping" 
   
   fi

   if [ ! -d "archived_logs" ]; then 
      echo "Creating archived_logs directory..." 
      mkdir archived_logs 
   else
      echo "archived _logs already exists. Skipping" 
   
   fi

   if [ ! -d "reports" ]; then
      echo "Creating reports directory..."
      mkdir reports 
   else 
      echo "reports already exists. Skipping"

   fi

  
  echo "System initialized" 

}
 
#Secures the active_logs directory by giving full access to the owner and displays the permissions

secure_data() {

	chmod 700 active_logs

	ls -ld active_logs
} 

initialize_system
secure_data

echo "System Environment Secured"
date
