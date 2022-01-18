I added it to my `/etc/hosts`

I ran an nmap and noticed port 80 is open 
```
Starting Nmap 7.92 ( https://nmap.org ) at 2022-01-11 19:28 EST
Nmap scan report for horizontall.htb (10.10.11.105)
Host is up (0.041s latency).
Not shown: 998 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.6p1 Ubuntu 4ubuntu0.5 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 ee:77:41:43:d4:82:bd:3e:6e:6e:50:cd:ff:6b:0d:d5 (RSA)
|   256 3a:d5:89:d5:da:95:59:d9:df:01:68:37:ca:d5:10:b0 (ECDSA)
|_  256 4a:00:04:b4:9d:29:e7:af:37:16:1b:4f:80:2d:98:94 (ED25519)
80/tcp open  http    nginx 1.14.0 (Ubuntu)
|_http-server-header: nginx/1.14.0 (Ubuntu)
|_http-title: horizontall
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 9.80 seconds
```

I also notice one form at the bottom of the page clueing me into a possible SQL injection, but after trying it it seems like none of the buttons on the website actually work

![[Pasted image 20220111193507.png]]

I then ran a gobuster on the website to check for any hidden links

```
[cs@zsh] ~/junction/hacking$ gobuster dir -u http://horizontall.htb -w SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt
===============================================================
Gobuster v3.1.0
by OJ Reeves (@TheColonial) & Christian Mehlmauer (@firefart)
===============================================================
[+] Url:                     http://horizontall.htb
[+] Method:                  GET
[+] Threads:                 10
[+] Wordlist:                SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt
[+] Negative Status codes:   404
[+] User Agent:              gobuster/3.1.0
[+] Timeout:                 10s
===============================================================
2022/01/11 19:30:49 Starting gobuster in directory enumeration mode
===============================================================
/img                  (Status: 301) [Size: 194] [--> http://horizontall.htb/img/]
/css                  (Status: 301) [Size: 194] [--> http://horizontall.htb/css/]
/js                   (Status: 301) [Size: 194] [--> http://horizontall.htb/js/]

===============================================================
2022/01/11 19:46:23 Finished
===============================================================
```
And got poor results

After quickly running out of ideas since I suck at this, I looked up the walkthrough and someone recommended to run WFuzz on it so I had to set up my ubuntu box through multipass and download it since it didn't work on mac
