## File Types
#### .jpg / .jpeg
`.jpg` or `.jpeg` files always start with the hex version of `xxd` 
``` hex
FF D8 FF E0 00 10 4A 46 49 46 00 01
```

#### .zip
A file format for compressed files using a combination of the tar + gzip algorithms. However it is built for microsoft systems primarily as it stores MSDOS attributes

###### .zip Magic Bytes
`.zip` files always start with the hex version of `PK`
``` hex
50 4B 03 04
```

#### .tar
A file format that can store a multitude of files into a single file format. Stores unix file attributes as well including uid, gid, permissions, etc.

###### .tar Magic Bytes
``` hex
75 73 74 61 72 00 30 30  

75 73 74 61 72 20 20 00
```

#### .tar.gz / .gz
Gzip `.gz` file compression. When combined with [[File Types#tar|.tar]] we get the format `.tar.gz` which utilizes the format of both consolidation of multiple files into one and the compression algorithm of gzip.

###### .tar.gz / .gz Magic Bytes
``` hex
1F 8B
```

#### .elf / Unix Executable
An executable file type used for Unix operating systems

###### .elf / Unix Executable
``` hex
7F 45 4C 46
```


#### Magic Bytes
[Magic Bytes Wiki](https://en.wikipedia.org/wiki/List_of_file_signatures) 
The first few bytes of a file used to recognize what the file type is

| File                                   | Hex                                                       | Iso 8859-1                 |
| -------------------------------------- | --------------------------------------------------------- | -------------------------- |
| `.jpg`                                 | `FF D8 FF E0 00 10 4A 46 49 46 00 01`                     | ``ÿØÿà␀␐JFIF␀␁``           |
| `.bin`                                 | ``53 50 30 31``                                           | `SP01`                     |
| `.exe`                                 | `5A 4D`                                                   | `ZM`                       |
| `.mp3`                                 | `FF FB` <br> `FF F3` <br> `FF F2`                         | `ÿû` <br> `ÿó` <br> `ÿò`   |
| `.doc`, `.xls`, `.ppt`, `.msi`, `.msg` | `D0 CF 11 E0 A1 B1 1A E1`                                 | `ÐÏ␑à¡±␚á`                 |
| `.tar`                                 | `75 73 74 61 72 00 30 30`  <br> `75 73 74 61 72 20 20 00` | `ustar␀00` <br> `ustar␠␠␀` |
| `.tar.gz`, `.gz`                       | `1F 8B`                                                   | `␟‹`                       |
| `.elf`                                 | `7F 45 4C 46`                                             | `␡ELF`                           |
