[Tabby](https://app.hackthebox.com/machines/Tabby)
10.10.10.194

### nmap
```
Starting Nmap 7.80 ( https://nmap.org ) at 2020-06-22 15:38 EDT
Nmap scan report for 10.10.10.194
Host is up (0.011s latency).

PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4 (Ubuntu Linux; protocol 2.0)
80/tcp   open  http    Apache httpd 2.4.41 ((Ubuntu))
|_http-server-header: Apache/2.4.41 (Ubuntu)
|_http-title: Mega Hosting
8080/tcp open  http    Apache Tomcat
|_http-open-proxy: Proxy might be redirecting requests
|_http-title: Apache Tomcat
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 7.30 seconds
```

I am unable to access `megahosting.htb`, therefore I add it to my `/etc/hosts` file

```
10.10.10.194 megahosting.htb
```

I notice the news tab URL takes us to `http://megahosting.htb/news.php?file=statement`, which seems susceptible to an LFI attack