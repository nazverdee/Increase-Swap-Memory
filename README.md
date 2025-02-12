# Increase-Swap-Memory

### Check the Current Swap File Size: 

`ls -lh`

### Check Free Memory and Swap Space

`free -h`

### Create the Swap File of size 2GB

`sudo fallocate -l 2G /swapfile`

If you can't see the swap file, try running the command with sudo:

`sudo ls -lh /swapfile`

### Set the correct permissions on the swap file so that only the user who created it can read and write to it:

`sudo chmod 600 /swapfile`

### Verify if the permissions have been applied correctly, run:

`ls -lh`

or use sudo if you can’t see the changes:

`sudo ls -lh /swapfile`

### Convert the file into swap space using the following command:

`sudo mkswap /swapfile`

### Make the Swap File Persistent: To ensure the swap file is used after a reboot, add it to the system configuration file /etc/fstab. Open the file with an editor (e.g., vim):

`sudo vim /etc/fstab`

    Press i to enter insert mode.

    Add the following line at the end of the file:

    `/swapfile swap swap defaults 0 0`

    Press Esc to exit insert mode.

    Type :wq to save and exit the editor.

### Notify the System of the New Swap File: To enable the swap file immediately, run:

`sudo swapon /swapfile`

### Verify the Swap Space: Finally, run the following command again to check the updated swap space:

`free -h`
