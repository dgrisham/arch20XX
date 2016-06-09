# tachikoma

grub command:

`grub-install --root-directory=/media/grub2
--efi-directory=/media/grub2/boot/efi --target=x86_64-efi --bootloader-id=arch
--recheck`

```
$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0   477G  0 disk
├─sda1   8:1    0   512M  0 part /media/grub2/boot/efi
├─sda2   8:2    0   250M  0 part /media/grub2
├─sda3   8:3    0 121.3G  0 part /
├─sda4   8:4    0   122G  0 part
├─sda5   8:5    0  32.6G  0 part [SWAP]
└─sda6   8:6    0 200.3G  0 part
sdb      8:16   0 931.5G  0 disk
└─sdb1   8:17   0 931.5G  0 part /home
```

```
$ sudo parted /dev/sda
GNU Parted 3.2
Using /dev/sda
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted) p
Model: ATA SanDisk SD8SN8U5 (scsi)
Disk /dev/sda: 512GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End    Size    File system     Name  Flags
 1      1049kB  538MB  537MB   fat32                 boot, esp
 2      538MB   800MB  262MB   ext2
 3      800MB   131GB  130GB   ext4
 4      131GB   262GB  131GB   ext4
 5      262GB   297GB  35.0GB  linux-swap(v1)
 6      297GB   512GB  215GB                         msftdata
```

add to the end of `/media/grub2/boot/grub/grub.cfg`:

```grub.cfg
$ sudo parted /dev/sda
GNU Parted 3.2
Using /dev/sda
Welcome to GNU Parted! Type 'help' to view a list of commands.
(parted) p
Model: ATA SanDisk SD8SN8U5 (scsi)
Disk /dev/sda: 512GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags:

Number  Start   End    Size    File system     Name  Flags
 1      1049kB  538MB  537MB   fat32                 boot, esp
 2      538MB   800MB  262MB   ext2
 3      800MB   131GB  130GB   ext4
 4      131GB   262GB  131GB   ext4
 5      262GB   297GB  35.0GB  linux-swap(v1)
 6      297GB   512GB  215GB                         msftdata
```

