# Instructions to modify /etc/fstab:

1. Open /etc/fstab in vim (or any text editor):
   sudo vim /etc/fstab

2. Press 'i' to enter insert mode.

3. Add the following line at the end of the file:
   /swapfile swap swap defaults 0 0

4. Press 'Esc' to exit insert mode.

5. Type ':wq' to save and exit vim.

This will make the swap file persistent across reboots.
