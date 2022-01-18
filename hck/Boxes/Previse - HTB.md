### 10.10.11.104

Always start off with an nmap
```
[cs@zsh] ~/junction/hacking/htb/previse$ nmap -sC -sV 10.10.11.104
Starting Nmap 7.92 ( https://nmap.org ) at 2022-01-12 16:23 EST
Stats: 0:00:13 elapsed; 0 hosts completed (1 up), 1 undergoing Service Scan
Service scan Timing: About 50.00% done; ETC: 16:23 (0:00:06 remaining)
Nmap scan report for 10.10.11.104
Host is up (0.037s latency).
Not shown: 998 closed tcp ports (conn-refused)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 53:ed:44:40:11:6e:8b:da:69:85:79:c0:81:f2:3a:12 (RSA)
|   256 bc:54:20:ac:17:23:bb:50:20:f4:e1:6e:62:0f:01:b5 (ECDSA)
|_  256 33:c1:89:ea:59:73:b1:78:84:38:a4:21:10:0c:91:d8 (ED25519)
80/tcp open  http    Apache httpd 2.4.29 ((Ubuntu))
| http-title: Previse Login
|_Requested resource was login.php
| http-cookie-flags:
|   /:
|     PHPSESSID:
|_      httponly flag not set
|_http-server-header: Apache/2.4.29 (Ubuntu)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 15.48 seconds
```

Noticing port 80 is open, I see it is an apache server running PHP as I can see the `login.php` page and `PHPSESSID` . Once I visit the page, I am greeted with this
![[Pasted image 20220112163130.png | 400]]

After visiting the webpage I know I should run a gobuster with the `-x PHP` flag. 

BROKEN, UNABLE TO PING WEBSITE

We then open burpsuite and test the output of using the form with default credentials, `user=admin, pass=admin` to which we notice in the repeater of burp that although we get an output of no page found we can still read the output in the repeater when we try and reach `http://10.10.11.104/` (instead of `login.php`)