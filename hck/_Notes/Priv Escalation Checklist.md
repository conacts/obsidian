## Linux
Once you have a shell, you can then attempt to escalate your priviledges to become root
##### System Information
- [ ] Get OS Information
- [ ] Check the PATH, any writeable folder?
- [ ] Check env variables, any sensitive detail
- [ ] Search for kernel exploits using scripts (DirtyCow?)
- [ ] Check for a vulnerable sudo version
- [ ] Dmesg signiture verification failed error?
- [ ] More system enum (date, system stats, cpu info, printers)
- [ ] Enumerate more defenses
##### Drives
- [ ] **List mounted** drives
- [ ] **Any unmounted drive?**
- [ ] **Any creds in fstab?**
##### Software
- [ ] Check for useful **installed software**
- [ ] Check for **vulnerable software**
##### Processes
- [ ] Is any known software running?
- [ ] Is any software with **more privildeges** running than it should have?
- [ ] Search for **exploits for running processes** (specially if running of versions)
- [ ] **Monitor processes** and check if any interesting process is running frequently
- [ ] **Monitor processes** and check if any interesting process is running frequently
- [ ] Can you **read** some interesting **process memory** (where passwords could be saved)?
##### Scheduled\/Cron Jobs
 - [ ] Is the **PATH** being modified by some cron and you can write in it?
 - [ ] Any **wildcard** in a cron job?
 - [ ] Some modifiable script is being executed or is inside modifiable folder?
 - [ ] Have you detected that some script could be being executed very frequently? (every 1, 2 or 5 minutes)?
##### Timers
##### Services
##### Sockets
##### D-Bus
##### Network
##### Users
##### Check for extended priviledges
##### Sudo & Suid 
##### Capabilities
##### ACLs
##### Open Shell Sessions
##### SSH
##### Interesting Files
##### Writeable Files
##### Tricks etc.

 - [ ] Get OS Information
## Windows
## MacOS