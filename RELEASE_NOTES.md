# LMG OS 1.1 — Release notes / یادداشت انتشار

**Minesword Team · November 5, 2026 / ۱۴ آبان ۱۴۰۵**

## English
LMG OS 1.1 is a big update to 1.0: a fully Persian system option, a graphical Package Manager, in-place upgrades that keep your files, a new first-run Welcome and many fixes.

**What is new**
- **Persian for the whole system:** pick Persian from the taskbar language button and the desktop, menus and apps switch language, keyboard layouts (US + Persian, Alt+Shift) and Persian Firefox are set up, and Persian text no longer mixes up with English words in the middle of a sentence
- **Upgrade without losing your data:** the installer finds an older LMG OS and offers an upgrade that keeps your files, settings and programs; upgrades can also be downloaded and applied from the Control Panel with an animated upgrade screen
- **Package Manager (graphical):** search, install and remove programs; the packages that make up LMG OS are locked and can never be removed by mistake
- **New first-run Welcome:** after a fresh install or an upgrade it greets you in 24 languages, then walks you through language, rules, customization, safety and a guided tutorial
- **Android-style desktop folders:** drop an app on another app to make a folder; folders open in the middle of the screen with an animation and a neon-blue edge. Two folders come ready: **LMG Apps** and **Minesword Apps**
- **Customization:** wallpaper gallery with 9 wallpapers, a "Fancy animations" switch, a neon frame around the taskbar, the sidebar can be switched off, Settings is its own app
- **LMG Connector:** link an Android phone to the computer
- **More Gaming Mode**, a new Control Panel logo, a Task Manager icon, Bluetooth enabled out of the box
- **Update screen:** the restore-previous-version animation now starts correctly and Alt+F4 can no longer close it halfway
- All LMG apps are in the Start menu favorites and on the desktop; the calculator has a proper name

**Upgrading from 1.0:** boot this ISO, choose **Upgrade** in the installer when it finds LMG OS 1.0 (or **Install** for a clean install). Back up your data first.

**Files in this release:** `LMG-OS-1.1-amd64.iso` and its `.sha256`. Check it with `sha256sum -c LMG-OS-1.1-amd64.iso.sha256`. Write it to a USB drive with Rufus (DD mode), balenaEtcher or `dd`.

**Known limitations**
- Still a beta: please report bugs to minesword.team.iran@gmail.com with your computer model and a photo of the error.
- Not every menu is translated: parts of XFCE that have no Persian translation stay in English. A Persian (Jalali) calendar is not included yet.
- The first-run tutorial and the LMG apps are in English and Persian; the greeting is in 24 languages.
- Bluetooth, fast boot and Windows programs through Wine depend on your hardware and may not work everywhere.

## فارسی
LMG OS 1.1 یک به‌روزرسانی بزرگ نسبت به 1.0 است: امکان فارسی‌شدن کل سیستم، مدیر بسته‌ی گرافیکی، ارتقا بدون از دست رفتن فایل‌ها، صفحه‌ی خوش‌آمد جدید و اصلاح‌های زیاد.

**تازه‌ها**
- **فارسی برای کل سیستم:** از دکمه‌ی زبان در نوار وظیفه فارسی را انتخاب کنید؛ دسکتاپ، منوها و برنامه‌ها فارسی می‌شوند، چیدمان کیبورد (انگلیسی + فارسی با Alt+Shift) و Firefox فارسی تنظیم می‌شود و متن فارسی دیگر با کلمه‌های انگلیسی وسط جمله قاطی نمی‌شود
- **ارتقا بدون از دست دادن داده:** نصب‌کننده LMG OS قدیمی را پیدا می‌کند و ارتقایی پیشنهاد می‌دهد که فایل‌ها، تنظیمات و برنامه‌هایتان را نگه می‌دارد؛ ارتقا را از پنل کنترل هم می‌شود دانلود و اجرا کرد، با صفحه‌ی انیمیشن ارتقا
- **مدیر بسته (گرافیکی):** جست‌وجو، نصب و حذف برنامه؛ بسته‌های اصلی LMG OS قفل هستند و به‌اشتباه حذف نمی‌شوند
- **صفحه‌ی خوش‌آمد جدید:** بعد از نصب تازه یا ارتقا با ۲۴ زبان به شما خوش‌آمد می‌گوید و بعد زبان، قوانین، شخصی‌سازی، امنیت و آموزش گام‌به‌گام را نشان می‌دهد
- **پوشه‌های دسکتاپ به سبک اندروید:** یک برنامه را روی برنامه‌ی دیگر بیندازید تا پوشه ساخته شود؛ پوشه با انیمیشن در وسط صفحه و با لبه‌ی آبی نئونی باز می‌شود. دو پوشه آماده است: **LMG Apps** و **Minesword Apps**
- **شخصی‌سازی:** گالری ۹ والپیپر، کلید «انیمیشن‌های فانتزی»، قاب نئونی دور نوار وظیفه، امکان خاموش کردن نوار کناری، تنظیمات به‌صورت برنامه‌ی جدا
- **LMG Connector:** اتصال گوشی اندروید به کامپیوتر
- حالت گیمینگ کامل‌تر، لوگوی جدید پنل کنترل، آیکن مدیر وظایف، بلوتوث فعال از ابتدا
- **صفحه‌ی آپدیت:** انیمیشن برگرداندن نسخه‌ی قبلی درست شروع می‌شود و Alt+F4 دیگر آن را نیمه‌کاره نمی‌بندد
- همه‌ی برنامه‌های LMG در علاقه‌مندی‌های منوی شروع و روی دسکتاپ هستند؛ ماشین‌حساب نام درست دارد

**ارتقا از 1.0:** این ISO را بوت کنید و وقتی نصب‌کننده LMG OS 1.0 را پیدا کرد **Upgrade** را بزنید (یا برای نصب تمیز **Install**). قبلش از اطلاعاتتان پشتیبان بگیرید.

**فایل‌های این انتشار:** `LMG-OS-1.1-amd64.iso` و فایل `.sha256` آن. با `sha256sum -c LMG-OS-1.1-amd64.iso.sha256` بررسی کنید. با Rufus (حالت DD)، balenaEtcher یا `dd` روی فلش بنویسید.

**محدودیت‌های شناخته‌شده**
- هنوز بتا است: لطفاً اشکال‌ها را با مدل کامپیوتر و عکس خطا به minesword.team.iran@gmail.com بفرستید.
- همه‌ی منوها ترجمه نشده‌اند: بخش‌هایی از XFCE که ترجمه‌ی فارسی ندارند انگلیسی می‌مانند. تقویم شمسی هنوز نیست.
- آموزش اولیه و برنامه‌های LMG انگلیسی و فارسی هستند؛ خوش‌آمدگویی به ۲۴ زبان است.
- بلوتوث، Fast boot و برنامه‌های ویندوز با Wine به سخت‌افزار شما بستگی دارند و ممکن است همه‌جا کار نکنند.

---

# LMG OS 1.0 — Release notes / یادداشت انتشار

**Minesword Team · October 30, 2026 / ۸ آبان ۱۴۰۵**

## English
LMG OS 1.0 is the first public release: a new Linux based on Debian 13 + XFCE with a black and neon-blue look.

**What is new**
- Neon theme, boot splash, Welcome and Shutting-down screens, taskbar, slide-in sidebar, smooth window animations
- LMG OS Control Panel and an interactive Tutorial
- Update system: downloads first, installs before the desktop starts, **restore previous version**
- Gaming Mode and Light mode; system sounds
- USB scanner (optional, off by default) with drive check and repair
- Auto-login switch in Settings (off by default); the installed system asks for the password at start
- Windows programs through Wine / Bottles
- Installer without password strength rules (you choose your own password)

**Files in this release:** the ISO (possibly in parts), its `.sha256`, `MANUAL.en.md`, `MANUAL.fa.md`.

**Known limitations**
- Beta: please report bugs to minesword.team.iran@gmail.com with your computer model and a photo of the error.
- Control Panel and Tutorial are in English and Persian only.
- Fast boot is experimental. Not every Windows program works with Wine.
- The USB scanner cannot find every malicious device or file.

## فارسی
LMG OS 1.0 اولین انتشار عمومی است: یک لینوکس جدید بر پایه‌ی Debian 13 و XFCE با ظاهر مشکی و آبی نئونی.

**تازه‌ها**
- تم نئونی، صفحه‌ی بوت، صفحه‌های خوش‌آمد و خاموشی، نوار وظیفه، نوار کناری کشویی، انیمیشن نرم پنجره‌ها
- پنل کنترل LMG OS و آموزش تعاملی
- سیستم آپدیت: اول دانلود، نصب پیش از بالا آمدن دسکتاپ، **برگرداندن نسخه‌ی قبلی**
- حالت گیمینگ و حالت Light؛ صداهای سیستم
- اسکنر USB (اختیاری، پیش‌فرض خاموش) با بررسی و تعمیر فلش
- کلید ورود خودکار در تنظیمات (پیش‌فرض خاموش)؛ سیستم نصب‌شده هنگام روشن شدن رمز می‌پرسد
- برنامه‌های ویندوز با Wine / Bottles
- نصب‌کننده بدون محدودیت سختی رمز (رمز را خودتان انتخاب می‌کنید)

**فایل‌های این انتشار:** ISO (شاید در چند بخش)، فایل `.sha256`، `MANUAL.en.md` و `MANUAL.fa.md`.

**محدودیت‌های شناخته‌شده**
- بتا: لطفاً اشکال‌ها را با مدل کامپیوتر و عکس خطا به minesword.team.iran@gmail.com بفرستید.
- پنل کنترل و آموزش فقط انگلیسی و فارسی هستند.
- Fast boot آزمایشی است. همه‌ی برنامه‌های ویندوز با Wine کار نمی‌کنند.
- اسکنر USB نمی‌تواند هر دستگاه یا فایل مخربی را پیدا کند.
