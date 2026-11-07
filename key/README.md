# Signing key / کلید امضا

Minesword Team <minesword.team.iran@gmail.com>

Fingerprint:

    FFE9 91F5 955C E658 B5C1  7581 0B7F 7581 8CF2 0F75

Verify (Linux / macOS / Termux):

    gpg --import LMG-OS-public.asc
    gpg --verify LMG-OS-1.1-amd64.iso.sha256.asc LMG-OS-1.1-amd64.iso.sha256
    sha256sum -c LMG-OS-1.1-amd64.iso.sha256

The signature covers the .sha256 file, which contains the hash of the ISO.
امضا روی فایل .sha256 است و آن فایل hash مربوط به ISO را دارد.
