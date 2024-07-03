# Send to My Mac - Windows Explorer Context Menu Option

## Overview

This repository contains the necessary script and instructions to add a "Send to my Mac" option to the Windows Explorer context menu, allowing you to quickly copy files to a network folder on your Mac.

## Files

- `SendToMac.bat`: The batch script that handles the file copying.
- `README.md`: This tutorial document.
- `LICENSE`: License information for this repository.
- `.gitignore`: Gitignore file to exclude unnecessary files.

## Steps to Add the Context Menu Option

### 1. Create a Batch File

Save the provided `SendToMac.bat` script to a suitable location, such as `C:\Scripts\SendToMac.bat`.

### 2. Add the Context Menu Option

1. **Open Registry Editor**: Press `Win + R`, type `regedit`, and press `Enter`.
2. **Navigate to `HKEY_CLASSES_ROOT\*\shell`**.
3. **Create a New Key**: Right-click `shell`, select `New` > `Key`, and name it `SendToMac`.
4. **Set the Icon**: Right-click `SendToMac`, select `New` > `String Value`, name it `Icon`, and set the value to `C:\Windows\System32\shell32.dll,-44`.
5. **Create the Command Key**: Right-click `SendToMac`, select `New` > `Key`, and name it `command`.
6. **Set the Command**: Select `command`, double-click the default value, and set it to `C:\Scripts\SendToMac.bat "%1"`.

### 3. Test the Setup

Right-click a file in Windows Explorer and select "Send to my Mac" to copy it to the `\\saturn.local\dropoff` folder on your Mac.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
