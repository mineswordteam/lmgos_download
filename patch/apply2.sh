#!/bin/sh
# LMG OS 1.1 patch: brings an installed LMG OS 1.0 / early 1.1 up to the current 1.1 (about 3 MB download).
# Usage:  curl -fsSL https://raw.githubusercontent.com/mineswordteam/lmgos_download/main/patch/apply.sh | sudo sh
set -e
ROOT="${LMG_ROOT:-}"                       # only for testing
BASE="${LMG_PATCH_BASE:-https://raw.githubusercontent.com/mineswordteam/lmgos_download/main/patch}"
[ "$(id -u)" = 0 ] || { echo "Run with sudo."; exit 1; }
[ -d /run/live/medium ] && [ -z "$ROOT" ] && { echo "This is a live session; install LMG OS first (or boot the new ISO)."; exit 1; }
T=$(mktemp -d); trap 'rm -rf "$T"' EXIT
echo "Downloading the patch..."
curl -fsSL "$BASE/lmg-1.1-patch2.tar.gz" -o "$T/p.tgz"
curl -fsSL "$BASE/lmg-1.1-patch2.sha256" -o "$T/p.sha"
( cd "$T" && echo "$(cut -d' ' -f1 p.sha)  p.tgz" | sha256sum -c - ) || { echo "The download is damaged. Try again."; exit 1; }
# stop a stuck update check first (it holds the package lock)
if [ -z "$ROOT" ]; then
  systemctl stop lmg-update-check.timer 2>/dev/null || true
  timeout 20 systemctl stop lmg-update-check.service 2>/dev/null || true
  pkill -f 'lmg-helper update-auto' 2>/dev/null || true
  pkill -x apt-get 2>/dev/null || true
fi
# wait for other package jobs instead of failing on the lock
for i in $(seq 1 60); do
  fuser /var/lib/dpkg/lock-frontend /var/lib/apt/lists/lock >/dev/null 2>&1 || break
  [ "$i" = 1 ] && echo "Another package job is running, waiting..."; sleep 3
done
# back up what will be replaced
mkdir -p "$ROOT/var/lib/lmg"
B="$ROOT/var/lib/lmg/patch-backup-$(date +%Y%m%d-%H%M%S).tar.gz"
tar -tzf "$T/p.tgz" | sed 's#^\./##' | grep -v '/$' | grep -v '^$' > "$T/list"
( cd "${ROOT:-/}" && while read -r f; do [ -e "$f" ] && echo "$f"; done < "$T/list" ) | tar -czf "$B" -C "${ROOT:-/}" -T - 2>/dev/null || true
echo "Backup of the old files: $B"
# packages the new features need (only if missing)
if [ -z "$ROOT" ]; then
  need=""
  for p in flatpak gir1.2-webkit2-4.1; do dpkg -s "$p" >/dev/null 2>&1 || need="$need $p"; done
  if [ -n "$need" ]; then
    echo "Installing:$need"
    DEBIAN_FRONTEND=noninteractive apt-get -o DPkg::Lock::Timeout=120 update -qq || true
    DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::Lock::Timeout=120 install $need
  fi
fi
tar -xzf "$T/p.tgz" -C "${ROOT:-/}" --no-same-owner
# version strings
for f in "$ROOT/etc/os-release" "$ROOT/usr/lib/os-release"; do
  [ -f "$f" ] && sed -i 's/^PRETTY_NAME=.*/PRETTY_NAME="LMG OS 1.1 (Logic Mind Grid)"/; s/^VERSION_ID=.*/VERSION_ID="1.1"/; s/^VERSION=.*/VERSION="1.1"/' "$f"
done
[ -n "$ROOT" ] || {
  echo "LMG OS 1.1 (Logic Mind Grid) - Minesword Team" > /etc/lmg-release
  printf 'LMG OS 1.1 \\n \\l\n\n' > /etc/issue; echo "LMG OS 1.1" > /etc/issue.net
  systemctl daemon-reload 2>/dev/null || true
  systemctl start lmg-update-check.timer 2>/dev/null || true
  gtk-update-icon-cache -f /usr/share/icons/LMG-Neon >/dev/null 2>&1 || true
  update-desktop-database /usr/share/applications >/dev/null 2>&1 || true
  rm -f /home/*/.config/lmg/migrated-0007 2>/dev/null || true
}
echo "Done. Sign out and in (or restart) to finish. To undo: sudo tar -xzf $B -C /"
