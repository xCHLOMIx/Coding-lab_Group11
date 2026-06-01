# Kenyatta National Hospital (KNH) Digital Infrastructure Project

## Project Overview
This project simulates a hospital monitoring system for Heart Rate, Temperature, and Water Usage sensors.  
It uses Python for data generation and Bash scripts for setup, analysis, and archiving of logs.

---

## Group Roles

### Script 1: hospital_admin.sh (Permissions & Setup)
- David
- Becky
- Nina

### Script 2: hospital_analysis.sh (Data Analysis)
- Cynthia
- Chlomi

### Script 3: hospital_archive.sh (Log Archiving)
- Sandra
- Juanne

---

## Project Structure

- hospital_system.py → Data generation engine
- hospital_admin.sh → System setup and permissions
- hospital_analysis.sh → Data analysis and reporting
- hospital_archive.sh → Log archiving
- .gitignore → Excludes logs and temporary files

---

## Instructions

### Start the system
```bash
python3 hospital_system.py start
```

---

### Stop the system
```bash
python3 hospital_system.py stop
```

---

### Run Admin Script
```bash
bash hospital_admin.sh
```

---

### Run Analysis Script
```bash
bash hospital_analysis.sh
```

---

### Run Archive Script
```bash
bash hospital_archive.sh
```

---

## Important Notes
- Always start `hospital_system.py` before running analysis or archive scripts.
- Never commit:
  - active_logs/
  - archived_logs/
  - reports/
