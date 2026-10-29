# Notices — LMG OS

**LMG OS** is a Linux distribution by **Minesword Team**, built on **Debian GNU/Linux 13 "Trixie"** with the **XFCE** desktop.
Copyright (C) 2026 Minesword Team.

## Our code
The LMG-specific code in this repository (Control Panel, Sidebar, Tutorial, Update/rollback tools, welcome/goodbye screens,
themes, icons, build scripts) is licensed under the **GNU General Public License v3.0 or later** (see `LICENSE`).
Artwork (logo, wallpaper, icons) is © Minesword Team and shared under **CC BY-SA 4.0** unless a file says otherwise.

## Third-party software
An LMG OS image contains thousands of packages from Debian. Each keeps its own license; the license text of every
package is in `/usr/share/doc/<package>/copyright` inside the system. Notable components:

| Component | License |
|---|---|
| Linux kernel | GPL-2.0 |
| XFCE, Thunar, Calamares, LightDM, picom, Plymouth | GPL / LGPL / MIT (see each package) |
| Wine | LGPL-2.1+ |
| Mozilla Firefox ESR | MPL-2.0 (Firefox name and logo are Mozilla trademarks, used unmodified) |
| Noto and Vazirmatn fonts | SIL OFL-1.1 |
| Exo 2 font (update screen) | SIL OFL-1.1 |

### Non-free firmware
To work on common hardware, the live image includes **non-free firmware** (e.g. AMD, Intel, NVIDIA, Broadcom, MediaTek, Realtek,
Atheros, Qualcomm blobs from Debian's `non-free-firmware` section). These are redistributable binaries under their vendors'
licenses and are **not** free software. See `/usr/share/doc/firmware-*/copyright`.

## Source code
- LMG-specific source: this repository.
- Source of Debian packages: https://deb.debian.org/debian (`deb-src`) — use `apt source <package>` on LMG OS or Debian.
- See `SOURCE.md` for how to get the complete corresponding source of everything in the image.

## Trademarks
- "LMG OS", "Logic Mind Grid" and the hexagon logo belong to Minesword Team.
- "Debian" is a registered trademark of Software in the Public Interest, Inc. LMG OS is **not** official Debian and is not endorsed by Debian.
- "Windows" and the Windows logo are trademarks of Microsoft Corporation. LMG OS is **not** affiliated with Microsoft.
  The four-pane badge on Windows-program icons is our own generic artwork. LMG OS runs Windows programs through **Wine**
  and does **not** include Windows or any Microsoft software.
- "Firefox" is a trademark of the Mozilla Foundation.

## No warranty
LMG OS is provided "AS IS", without warranty of any kind (see sections 15–16 of the GPL). Back up your data before installing
or updating. "Restore previous version" only restores programs changed by the last update, not your personal files.
