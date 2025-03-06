Here is the reformatted `README.md` for your repository:

# 🚀 AutoSortX: Automated File Organizer  

AutoSortX is a simple yet powerful script that automatically organizes files in a directory based on their type. Perfect for keeping your **Downloads**, **Desktop**, or **Project Folders** clutter-free!  

---

## 📌 Features  
✔️ **Automatically sorts files** into folders (Images, Documents, Videos, etc.)  
✔️ **Configurable file extensions & directories**  
✔️ **Backup option** to prevent accidental deletion  
✔️ **Runs automatically** via a scheduled cron job  
✔️ **Lightweight & efficient** – uses minimal system resources  

---

## 📂 Project Structure  

```
📁 AutoSortX/
├── 📄 autosortx.sh       # Main script to organize files
├── 📄 config.env         # Configuration file for folder paths & rules
├── 📄 setup.sh           # Installs dependencies & sets up cron job
├── 📄 README.md          # Project documentation
├── 📄 .gitignore         # Excludes unnecessary files
├── 📂 logs/              # Stores sorting logs
├── 📂 backup/            # Keeps copies of original files before sorting
```

---

## 🛠️ Installation & Setup  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/Kirankumarvel/AutoSortX.git
cd AutoSortX
```

### 2️⃣ Configure Sorting Rules
Edit the `config.env` file to define file categories & folders:
```bash
SOURCE_DIR="$HOME/Downloads"
IMAGE_DIR="$HOME/Documents/Sorted/Images"
DOCUMENT_DIR="$HOME/Documents/Sorted/Documents"
VIDEO_DIR="$HOME/Documents/Sorted/Videos"
BACKUP_DIR="$HOME/Documents/Sorted/Backup"
```

### 3️⃣ Make Scripts Executable
```bash
chmod +x autosortx.sh setup.sh
```

### 4️⃣ Run the Setup Script
```bash
./setup.sh
```

---

## 🚀 Usage

To manually sort files:
```bash
./autosortx.sh
```

### 📅 Automate with Cron Jobs
Run the script every hour:
```bash
crontab -e
```
Add this line:
```bash
0 * * * * /path/to/AutoSortX/autosortx.sh >> /var/log/autosortx.log 2>&1
```

---

## 📜 Future Enhancements
🔹 Add GUI support for easier configuration  
🔹 Integrate with cloud storage (Google Drive, Dropbox, etc.)  
🔹 Implement AI-powered file categorization  

---

## 📃 License
MIT License © 2025
