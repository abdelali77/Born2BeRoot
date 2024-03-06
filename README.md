# What is virtualization

#### Virtualization is the process of simulating hardware and software , such as a computers or operating systems. It's running a multiple virtual computers in one physical computer.

## Hypervisor

Hypervisor is the software that create and runs the vitualization , it's allowed one machine to run multiple machines in a virtual way , it's allocate and sharing the resources such as storage space and RAM and cpu between the actual physical machine and the virtual machine

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
