##### 1. Run nmap
First step on every box we run the command

```
sudo nmap -sC -sV -oN nmap/late 10.10.11.156
```

```
[cs@bash] ~ $ sudo nmap -sC -sV -oN nmap/late 10.10.11.156
Starting Nmap 7.92 ( https://nmap.org ) at 2022-05-10 01:10 EDT
Nmap scan report for 10.10.11.156
Host is up (0.037s latency).
Not shown: 998 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.6 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey:
|   2048 02:5e:29:0e:a3:af:4e:72:9d:a4:fe:0d:cb:5d:83:07 (RSA)
|   256 41:e1:fe:03:a5:c7:97:c4:d5:16:77:f3:41:0c:e9:fb (ECDSA)
|_  256 28:39:46:98:17:1e:46:1a:1e:a1:ab:3b:9a:57:70:48 (ED25519)
80/tcp open  http    nginx 1.14.0 (Ubuntu)
|_http-title: Late - Best online image tools
|_http-server-header: nginx/1.14.0 (Ubuntu)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 8.63 seconds
```

##### 2. Run gobuster
Because only port 80 (HTTP) is open, we will run a gobuster to find any hidden URLs

```
gobuster dir -u 10.10.11.156 -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt
```

#### 3. Visit contacts page
![[Pasted image 20220510012154.png]]
