# Source code / کد منبع

**English**

LMG OS is distributed as a binary ISO image. Most of what is inside is free software (GPL, LGPL, MPL and others) and you are entitled to the source code.

1. **LMG OS own code** (Control Panel, Sidebar, Tutorial, Update tools, themes, build scripts) is released under GPL-3.0-or-later. Its source, with the scripts that build the ISO, is part of the system itself in `/usr/lib/lmg`, `/usr/share/lmg` and `/etc/skel` (these are plain scripts, readable and changeable), and the full build configuration is available from us on request (see 4).
2. **Debian packages**: every package in the image comes from Debian 13 "Trixie". Its source is published by Debian at <https://deb.debian.org/debian> (source packages), and old versions at <https://snapshot.debian.org>. On LMG OS or Debian run `apt source <package>` (enable `deb-src` lines) to download it. `dpkg -l` shows the exact package list and versions of an installed system.
3. **Written offer.** For at least **three years** after you received this image, you can ask us for the complete corresponding source of the programs in it that need it, on request, at no more than the cost of copying it. Write to **minesword.team.iran@gmail.com** with the name and version of the ISO.
4. Build configuration: the live-build configuration used to make the ISO is available from the same address.

**فارسی**

LMG OS به‌صورت تصویر ISO (باینری) منتشر می‌شود. بیشتر محتوای آن نرم‌افزار آزاد است (GPL، LGPL، MPL و…) و شما حق دسترسی به کد منبع را دارید.

۱. **کد خود LMG OS** (پنل کنترل، نوار کناری، آموزش، ابزار آپدیت، تم‌ها، اسکریپت‌های ساخت) با مجوز GPL-3.0-or-later منتشر شده است. این‌ها اسکریپت‌های ساده‌اند و داخل خود سیستم در `/usr/lib/lmg`، `/usr/share/lmg` و `/etc/skel` قابل خواندن و تغییرند. تنظیمات کامل ساخت را هم می‌توانید از ما بخواهید (بند ۴).
۲. **بسته‌های Debian**: هر بسته‌ی داخل تصویر از Debian 13 «Trixie» است. کد منبع آن‌ها را Debian در <https://deb.debian.org/debian> (بسته‌های source) و نسخه‌های قدیمی را در <https://snapshot.debian.org> منتشر می‌کند. در LMG OS یا Debian با دستور `apt source <نام-بسته>` (پس از فعال کردن خطوط `deb-src`) می‌توانید آن را بگیرید. دستور `dpkg -l` فهرست دقیق بسته‌ها و نسخه‌ها را نشان می‌دهد.
۳. **پیشنهاد کتبی.** دست‌کم **سه سال** پس از دریافت این تصویر می‌توانید کد منبع کامل متناظر برنامه‌هایی را که لازم دارند از ما بخواهید، با هزینه‌ای بیش از هزینه‌ی تهیه‌ی نسخه نیست. به **minesword.team.iran@gmail.com** بنویسید و نام و نسخه‌ی ISO را ذکر کنید.
۴. تنظیمات ساخت (live-build) که ISO با آن ساخته شده از همین آدرس قابل دریافت است.
