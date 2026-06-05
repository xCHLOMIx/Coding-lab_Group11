#!/bin/bash

function process_vitals(){
	grep -h "CRITICAL" active_logs/heart_rate_log.log active_logs/temperature_log.log | awk -F'|' '{print $1, $2, $3}' > reports/critical_alerts.txt
}

function water_audit(){
	average=$(awk '{if ($4 == "ICU_WATER_RESERVE") sum+=$6} END {print sum/(NR-1)}' active_logs/water_usage_log.log)
	printf "The total average water consumption in Kenyatta National Hospital (KNH) is $average Litres/min\n"
}

process_vitals
water_audit
