# Sort To Files (stf-script)

A simple **Bash script** that organizes all files in the current directory into subfolders named after their file extensions  
(e.g., `.pdf` files go into a **PDF** folder, `.txt` files go into a **TXT** folder, etc.).  
Files with no extension are moved into a folder named **other**.

---

## Features
- Scans all files in the directory where it's run.  
- Creates new directories based on file extensions (e.g., `PDF`, `JPG`, `SH`).  
- Groups all files without an extension into an **other** directory.  
- Safely skips directories and itself during the organization process.  
- Handles filenames with spaces.  

---

## How to Use

### 1. Clone the repository (or download the script)
```bash
git clone https://github.com/Shinkrbs/stf-script.git
```

### 2. Navigate into the directory
```bash
cd stf-script
```
Alternatively, just place the `sort_to_files.sh` script into any directory you want to organize.

### 3. Make the script executable 

(This only needs to be done once.)

```bash
chmod +x sort_to_files.sh
```
### Run the script
```bash
./sort_to_files.sh
```

The script will immediately begin organizing all other files in that directory.

### Warning
This script **permanently** moves your files.

It is highly recommended to make a backup of your directory or test this on a copy of your files first to ensure it works as you expect.