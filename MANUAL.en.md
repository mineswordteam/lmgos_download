# LMG OS — User Manual (English)

**LMG OS (Logic Mind Grid)** 1.0 · by **Minesword Team** · Debian 13 + XFCE · contact: minesword.team.iran@gmail.com

## 1. What you need
- A 64-bit computer (Intel/AMD), **2 GB RAM or more**, **15 GB free disk** to install.
- A USB stick of 4 GB or more (it will be erased).

## 2. Get the ISO and check it
1. Download the ISO (or the `.part00`, `.part01` files if the release is split) and `LMG-OS-amd64.iso.sha256` from the **Releases** page.
2. If the ISO is split, join the parts:
   - Linux / macOS: `cat LMG-OS-amd64.iso.part* > LMG-OS-amd64.iso`
   - Windows (Command Prompt): `copy /b LMG-OS-amd64.iso.part00+LMG-OS-amd64.iso.part01 LMG-OS-amd64.iso`
3. Check the file: `sha256sum -c LMG-OS-amd64.iso.sha256` (Linux) — it must say `OK`.

## 3. Write it to a USB stick
Use **Rufus** (choose **DD Image mode** when asked), **balenaEtcher**, or on Linux `dd`. This erases the stick.

## 4. Try it (live) or install it
1. Plug the stick in, restart the computer and open the boot menu (often **F12**, **F10**, **Esc** or **F2**). Choose the USB stick.
2. In the LMG OS menu choose **LMG OS Live**. If the screen stays black, restart and choose **LMG OS Live (safe graphics)**.
3. The live system signs in by itself. If a password is asked: user `live`, password `live`.
4. To install, start **Install LMG OS** on the desktop and follow the installer: language, location, keyboard, disk, your name and **your password**. The installed system always asks for the password at start. You can choose to encrypt the disk.
5. Restart, remove the stick.

> Installing can erase data. Back up first. Choosing the wrong disk loses its files.

## 5. The desktop
- **Taskbar** (bottom): the **LMG logo** opens the Start menu with search; pinned apps (Firefox, Files, Settings, Terminal); open apps show only their logo with a neon border; clock, language, sound, network and battery on the right.
- **Sidebar**: move the mouse to the **right edge**. It shows quick apps (Browser, Files, Terminal, Control Panel, Editor), live CPU and RAM graphs and **Sign out / Restart / Shut down**. Press the pin to keep it open (Dock mode makes windows leave room).
- **Language**: the taskbar language button switches English / Persian keyboard.
- **Tutorial**: Start menu → *LMG OS Tutorial* (10 short steps).

## 6. LMG OS Control Panel
Open it from the desktop icon, the taskbar gear or the sidebar.
| Page | What it does |
|---|---|
| **Welcome** | Short introduction, start the tutorial. |
| **Update** | Checks and downloads updates. When you choose, the computer restarts, installs before the desktop starts, then starts again. **Restore previous version** puts back what the last update changed (not your personal files). |
| **RAM** | Memory use, running apps, startup items. |
| **Hardware** | Detailed information: CPU, memory, mainboard, graphics, storage, network, sensors. |
| **Test** | Checks that the system is healthy. |
| **Disk** | Clean up space and test disk speed. |
| **Settings** | See section 7. |
| **Gaming** | **Gaming Mode** closes extra apps and raises CPU/graphics performance; fully reversible. |

### Updates
Updates need the internet. Save your work first. **Do not turn the computer off** while it installs. If an update fails, LMG OS puts the previous version back by itself.

## 7. Settings
- **Light mode**: turns off effects and animations (good for old computers).
- **Sound**: system sounds on/off.
- **USB scanner** (**off by default**): when on, a USB drive is checked **before** you can use it, simple file-system errors are repaired, and devices that pretend to be a keyboard/network adapter are blocked. A warning is shown for dangerous findings; you decide. It only runs when a USB device is plugged in.
- **Restart quickly if a trusted USB device behaves dangerously**: safety option for the scanner.
- **Wallpaper**, **Interface language** (restart the app to apply).
- **Sidebar**: keep pinned, dock mode.
- **Fast boot** (experimental, installed system only): shut down is saved to disk so the next start is faster. Test it once; if the computer does not start properly, turn it off.
- **Sign in → Log in automatically** (**off by default**, installed system only): starts straight to your desktop without asking for the password. Anyone who turns the computer on can use your files; not recommended on laptops or shared computers. Takes effect at the next start.
- **Keyboard layouts**.

## 8. Programs
- **Linux programs**: install with the package tools or **Flatpak**.
- **Windows programs**: double-click a `.exe` / `.msi` file (runs through **Wine**). For more control use **Bottles** (Settings → Install Bottles). Not every Windows program works.
- **Phones and USB drives** appear in Files automatically.

## 9. Common problems
| Problem | What to do |
|---|---|
| Black screen when booting the USB | Choose **LMG OS Live (safe graphics)**. |
| USB stick not in the boot menu | Re-write it in **DD mode**; try another USB port; on some computers turn off Secure Boot. |
| No Wi-Fi | Many Wi-Fi chips are supported. Try a cable once, then run Update. |
| A Windows program does not start | Try Bottles; check the program supports Wine. |
| Forgot the password | Boot the live USB and reset it from there (advanced), or reinstall. |

## 10. Help
Contact **minesword.team.iran@gmail.com** and send: your computer model, what you did, and a photo of the error. LMG OS is beta software.

LMG OS is not official Debian, not affiliated with Microsoft or Mozilla. See `NOTICE.md`, `LICENSE`, `DISCLAIMER.md`, `PRIVACY.md`, `SOURCE.md`.
