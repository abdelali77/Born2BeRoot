# What is virtualization

#### Virtualization is the process of simulating hardware and software , such as a computers or operating systems. It's running a multiple virtual computers in one physical computer.

## Hypervisor

Hypervisor is the software that create and runs the vitualization , it's allowed one machine to run multiple machines in a virtual way , it's allocate and sharing the resources such as storage space and RAM and cpu between the actual physical machine and the virtual machine

_**The purpose of virtual machines**_
* Running multiple operating systems
* Software development and testing
* Learning and experimentation
* Server consolidation
* Disaster recovery and backup
* Security
* Scalability

## types of Hypervisors
* *type 1 (`bare-metal`)* : installed on bare matal hardware means that there is no existing operating system or any other software .
* *type 2 (`hosted hypervisor`)* : is installed and runs on top of an existing operating system , so the operating system sits between the hardware resources and the hypervisor

<p align="center">
<img src="https://www.xantaro.net/wp-content/uploads/2019/01/Xantaro_Hypervisors.png" width="500px" height="500px" />
</p>

## `Debian`
Debian stands as a freely available, community-powered Linux distribution renowned for its extensive assortment of software packages. It serves as a steadfast and dependable platform suitable for diverse applications, encompassing both server environments and desktop usage.

### APT
APT (advanced packaging tool) : is a package management system for installing, updating, removing software packages in debian-based linux distribution.

### Aptitude
Aptitude : is a front-end of the package management system it's provides more features of `apt`

### `The Difference`
* APT: Simpler , lower-level tool best for basic package management. Offers only command-line interface.
* Aptitude: More powerful, higher-level tool with advanced features like dependency resolution and simulation. Offers both CLI and text-based user interface for easier navigation.

## LVM
LVM (Logical Volume Management) : it's a devive mapper framework in the linux kernel that provides a more flexible and powerful way to manage storage space compared to traditional partitionig schemes.
* **Physical Volumes (PV)** : These are the physical storage devices that make up the LVM pool, such as hard disk drives or solid-state drives.
* **Volume Groups (VG)** : is a logical grouping of one or more PVs. It acts as a pool of storage from which logical volumes are carved out.
* **Logical Volumes (LV)** : These are the virtual partitions created from the storage space within a VG. They appear and function like traditional partitions but offer greater flexibility.

<p align="center">
<img src="https://access.redhat.com/webassets/avalon/d/Red_Hat_Enterprise_Linux-9-Configuring_and_managing_logical_volumes-en-US/images/31bd96635c4120abe3e771a423f61cd6/basic-lvm-volume-components.png" width="600px" height="500px" />
</p>

## SUDO 💪🏻
Sudo : or (super user do) is a program in Unix-like operating systems that allows users to run commands with the privileges of another user, typically the superuser (also known as `root`), root is the super account in Linux it is a user account for administrative purposes, and typically has the highest access rights on the system.

/ Logging as root is generally discouraged for everyday tasks as it grant unrestricted access to the system. Sudo provide a more secure approach by allowing specific commands to run with elevated privileges while maintaining a record of who ran them (through logs).

## UFW
**Firewall** : is a network security system that acts as a guardian between your computer or network and the outside world, typically the internet. It monitors incoming and outgoing traffic and decides whether to allow or block it based on a set of rules.

So `ufw` (Uncomplicated Firewall) it's a user-friendly program specifically designed to manage firewall rules.

## SSH
SSH, or (Secure Shell) is a protocol that allows for secure remote access to another computer. It functions using a combination of encryption and authentication to create a safe tunnel between two devices.
#### How SSH works
1. **Connection initiation**: The SSH client on your local machine initiates a connection to the SSH server on the remote machine.
2. **Server Verification**: The SSH server sends its public key to the client. This key acts like a digital fingerprint that identifies the server. The client checks its local records to verify the server's authenticity.
3. **Client Authentication**: There are two main SSH authentication methods:
* Password Authentication: The client prompts you for your username and password. These are encrypted using the server's public key and sent to the server. The server decrypts them using its private key and checks them against its user database.

* Public Key Authentication: You have a key pair consisting of a public key on the client and a private key on your local machine. The client sends the public key to the server. The server checks if the key is authorized for access and grants access if it is.
4. **Secure Communication Channel**: Once authenticated, a secure communication channel is established. Data exchanged between the client and server is encrypted using a session key generated during this stage. This ensures that even if someone intercepts the data, they wouldn't be able to decipher it.
5. **Remote Shell Access**: An encrypted shell session in created on the remote machine. You can then use your local terminal to excute commands on the remote server as if you were sitting directly in front of it.

<p align="center">
<img src="https://assets-global.website-files.com/5ff66329429d880392f6cba2/61c1b963247368113bbeef17_Secure%20Shell%20work.png" width="600px" height="500px" />
</p>
