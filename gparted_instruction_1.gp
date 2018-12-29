so you dont want to create a new partition table

for what I need to do possible options
0
{
[O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
            Acquiring GParted on Live CD
[O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
GParted Live CD https://gparted.org/livecd.php

    [O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
                Accounts in GParted
    [O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
    based in debian live default account is "user" with password "live". No root password, if root priviliges needed run sudo
    
    [O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
                USB setup with Windows
    [O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O][O]
    

    
    
}





1
{
    [O][O][O][O][O][O][O][O][O][O][O][O][O]
                Viewing Partition Information
    [O][O][O][O][O][O][O][O][O][O][O][O][O]
}

2
{

    [O][O][O][O][O][O][O][O][O][O][O][O][O]
                Selecting a Partition
    [O][O][O][O][O][O][O][O][O][O][O][O][O]
    
    [O][O][O][O][O][O][O][O][O][O][O][O][O]
                Selecting Unallocated Space
    [O][O][O][O][O][O][O][O][O][O][O][O][O]

}



2.5
{

Unmounted or inactive partitions enable the most resize options.
If you do not want the start of an existing partition to move, then do not change the free space preceding value.
If the operation involves a move step, then consider the following:
A move step might take a long time to complete.
If you are not prepared to wait or to fix potential operating system boot problems, then you might want to undo the operation.
To grow or move a partition, unallocated space must be available adjacent to the partition.
If you are growing a logical partition, then the unallocated space must be within the extended partition.
You can move unallocated space to be inside or outside of the extended partition by resizing the extended partition boundaries

                To improve the ability to shrink NTFS partitions, you might consider one or more of the following:

                        Defragment the file system.
                        Booting into Safe Mode with the commercial operating system that uses NTFS
                        can improve the ability to defragment the file system.

                        To enter Safe Mode press F8 while your computer is booting the operating system.
                        Check the partition for errors with the following command:
                        C:> chkdsk /f /r
                        Remember to reboot back into the commercial operating system that uses NTFS to allow the chkdsk command to execute.
                        Temporarily disable the paging file. The paging file occupies a fixed location in the partition
                        that the defragmentation process is unable to move.
                        Temporarily move large files to another partition or disk device. Large files are defined as greater than a
                        few hundred Megabytes (MB).
                        Ensure a proper shut down of the commercial operating system that uses NTFS before you resize the NTFS partition
                        Leave at least 10 percent unused space in the NTFS partition. If you shrink the partition too much,
                        then the commercial operating system might have difficulty functioning properly.
                        Reboot twice into the commercial operating system that uses NTFS after shrinking the NTFS partition.
[O][O][O][O][O][O][O][O][O][O][O][O][O]
            Resizing a Partition
[O][O][O][O][O][O][O][O][O][O][O][O][O]
}


3
{
find what partition format is your linux OS  partition and linux swap partition, so you can change things properly
        [O][O][O][O][O][O][O][O][O][O][O][O][O]
                    Formatting a Partition
        [O][O][O][O][O][O][O][O][O][O][O][O][O]
        
linux-swap can be used with GNU/Linux to increase the virtual memory of your computer.
cleared can be used to clear any existing file system signatures and ensure that the partition is recognised as empty.
unformatted can be used to just create a partition without writing a file system.
        [O][O][O][O][O][O]
                    Specifying Partition File System
        [O][O][O][O][O][O]
        
helps you remember what the partition is for
[O][O][O][O][O][O]
            Specifying Partition File System Label
[O][O][O][O][O][O]

}

4
{
        [O][O][O][O][O][O]
                    Specifying Partition Details
        [O][O][O][O][O][O]
}

[O][O][O][O][O][O]
            Specifying Partition Alignment
[O][O][O][O][O][O]
MiB alignment



[O][O][O][O][O][O]
            Specifying Partition Type
[O][O][O][O][O][O]


[O][O][O][O][O][O][O][O][O][O][O][O][O]
            Undoing Last Operation
[O][O][O][O][O][O][O][O][O][O][O][O][O]

I need write gparted to my hard drive because I need to give more size to my linux ubuntu 16.04.5 partition, however I need to move the start boundary because I am taking it from my windows partition right in front of it. I plan to take some space from my huge (188 GB,cuz i need that much ) swap  space and install gparted there.


the question here are
if I constantly resize my linux partition start
what problems will arise other than having to reinstall grub, can I lose data doing this
how many times can I do this before it becomes a problem
        to the OS
        to the disk as a whole
        to any other specfic partition on the disk

if I constantly resize my linux swap partition to make room for bootable media
what problems will arise
        to the linux OS using
        to the disk as a whole
        to any other specific partion on the disk


