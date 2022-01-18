1. Run an Nmap

```
Starting Nmap 7.92 ( https://nmap.org ) at 2022-01-05 17:20 EST
Nmap scan report for 10.10.11.125
Host is up (0.049s latency).
Not shown: 998 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   3072 b4:de:43:38:46:57:db:4c:21:3b:69:f3:db:3c:62:88 (RSA)
|   256 aa:c9:fc:21:0f:3e:f4:ec:6b:35:70:26:22:53:ef:66 (ECDSA)
|_  256 d2:8b:e4:ec:07:61:aa:ca:f8:ec:1c:f8:8c:c1:f6:e1 (ED25519)
80/tcp open  http    Apache httpd 2.4.41 ((Ubuntu))
|_http-title: Backdoor &#8211; Real-Life
|_http-generator: WordPress 5.8.1
|_http-server-header: Apache/2.4.41 (Ubuntu)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 10.52 seconds

```

2. The DNS was unable to resolve the site `backdoor.htb`, so I went into `/etc/hosts` on my laptop to add it to a list of hosts to find under `10.10.11.125 backdoor.htb`

3. Then I noticed the wordpress site was version 5.8.1, which I ran searchsploit with the command which doesn't give any solid results before I google to look for the answers.

```
------------------------------------------------------------------- ---------------------------------
 Exploit Title                                                     |  Path
------------------------------------------------------------------- ---------------------------------
[01;31m[KWordPress[m[K Plugin DZS Videogallery < 8.60 - Multiple Vulnerabilitie | php/webapps/39553.txt
[01;31m[KWordPress[m[K Plugin iThemes Security < 7.0.3 - SQL Injection          | php/webapps/44943.txt
[01;31m[KWordPress[m[K Plugin Rest Google Maps < 7.11.18 - SQL Injection        | php/webapps/48918.sh
------------------------------------------------------------------- ---------------------------------
Shellcodes: No Results
```

4. I also notice that port 80 is open 
![[Pasted image 20220106012317.png]]
This is a website with seemingly no forms. After noting that it is a PHP site from the nmap above, I know to scan with gobsuter. Gobuster enables me to brute force multiple directories on the site
```
[cs@zsh] ~/junction/hacking$ gobuster dir -w SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt -x php -u 10.10.11.125
===============================================================
Gobuster v3.1.0
by OJ Reeves (@TheColonial) & Christian Mehlmauer (@firefart)
===============================================================
[+] Url:                     http://10.10.11.125
[+] Method:                  GET
[+] Threads:                 10
[+] Wordlist:                SecLists/Discovery/Web-Content/directory-list-2.3-medium.txt
[+] Negative Status codes:   404
[+] User Agent:              gobuster/3.1.0
[+] Extensions:              php
[+] Timeout:                 10s
===============================================================
2022/01/05 17:25:06 Starting gobuster in directory enumeration mode
===============================================================
/index.php            (Status: 301) [Size: 0] [--> http://10.10.11.125/]
/wp-content           (Status: 301) [Size: 317] [--> http://10.10.11.125/wp-content/]
/wp-login.php         (Status: 200) [Size: 5674]
/wp-includes          (Status: 301) [Size: 318] [--> http://10.10.11.125/wp-includes/]
/wp-trackback.php     (Status: 200) [Size: 135]
/wp-admin             (Status: 301) [Size: 315] [--> http://10.10.11.125/wp-admin/]
/xmlrpc.php           (Status: 405) [Size: 42]
/wp-signup.php        (Status: 302) [Size: 0] [--> http://10.10.11.125/wp-login.php?action=register]
/server-status        (Status: 403) [Size: 277]
Progress: 410212 / 441122 (92.99%)   

```

I notice `
http://10.10.11.125/wp-login.php?action=register
` as one of the addresses. This maybe shows we have access to an [[Exploits#LFI | LFI ]] which we can exploit through manipulating the browser address to request a file `http://10.10.11.125/wp-login.php?page=../../../../../../etc/passwd
` , this failed me so I checkde the dirbuster again and saw 

![[Pasted image 20220106020518.png ]]

