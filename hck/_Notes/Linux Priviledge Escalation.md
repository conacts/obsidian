## System Information
##### OS Info
Gain some OS knowledge with these scripts
```
whoami
(cat /proc/version || uname -a ) 2>/dev/null
lsb_release -a 2>/dev/null
```

##### PATH
If you **have write permissions on any folder inside the** **`PATH`** variable you may be able to hijacking some libraries or binaries:
```
echo $PATH
```

##### Env info
Interesting information, passwords or API keys in the environment variables?

```
(env || set) 2>/dev/null
```