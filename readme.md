https://overthewire.org/wargame
#### Stage0
 ssh -v -p 2220 bandit0@bandit.labs.overthewire.org
ls 
cat readme
pwd ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

#### Stage1
Диекртория с именем <->, это перенапрявление 
 ssh -v -p 2220 bandit1@bandit.labs.overthewire.org
ls -> <->
cat ./-

263JGJPfgU6LtdEvgfWU1XP5yac29mFx
#### Stage2
ssh -v -p 2220 bandit2@bandit.labs.overthewire.org
Диекртория с пробелами в имени (используем кавычки) "" или '')
ls -> <--spaces in this filename-->
cat "./--spaces in this filename--"
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
#### Stage2
ssh -v -p 2220 bandit3@bandit.labs.overthewire.org
inhere directory
ls
ls -la ~/inhere/
cd inhere
cat ./...Hiding-From-You
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
#### Stage4
ssh -v -p 2220 bandit4@bandit.labs.overthewire.org
ls -la
cd inhere/
cat ./-file07
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
#### Stage5
ssh -v -p 2220 bandit5@bandit.labs.overthewire.org
Логический размер vs Физический размер
find  -type f -size 1033c
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
#### Stage6
ssh -v -p 2220 bandit6@bandit.labs.overthewire.org
find inhere -user username
find inhere -group groupname

find / -type f -size 33c -user bandit7 -group bandit6 2>/dev/null
cat /var/lib/dpkg/info/bandit7.password
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
#### Stage7
ssh -v -p 2220 bandit7@bandit.labs.overthewire.org
 grep -A 1 -F millionth data.txt
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
#### Stage8
ssh -v -p 2220 bandit8@bandit.labs.overthewire.org
cat data.txt | sort | uniq -c | sort
cat data.txt | sort | uniq -c | sort | tail -1
cat data.txt | sort | uniq -c | sort | head -1
cat data.txt | sort | uniq -c | sort | awk '$1 == 1 {print $0}'

      1 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
#### Stage9
ssh -v -p 2220 bandit9@bandit.labs.overthewire.org
strings data.txt | grep "==*"
 strings data.txt | grep "=\+"   (один или бболее раз)

FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
  
#### Stage10
ssh -v -p 2220 bandit10@bandit.labs.overthewire.org
base64 --decode data.txt

The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr

#### Stage11
ssh -v -p 2220 bandit11@bandit.labs.overthewire.org

all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions
шифра ROT13 (Rotate by 13 positions)
tr 'A-Za-z' 'N-ZA-Mn-za-m' выполняет ROT13 преобразование с помощью утилиты tr (translate).
The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4

#### Stage12
ssh -v -p 2220 bandit12@bandit.labs.overthewire.org
mktemp -d

temp_dir=$(mktemp -d)
echo $temp_dir

xxd data.txt | head -5
xxd - просмотр hex-представления
JPEG:     FF D8 FF E0
PNG:      89 50 4E 47
GIF:      47 49 46 38
PDF:      25 50 44 46
ZIP:      50 4B 03 04
GZIP:     1F 8B 08

есть hexdump, есть binary, ascii. и т.д.
преобразовываем hex to bim
xxd -r data.txt > compressed_file
file compressed_file
переименуем compressed_file в compressed_file.gz и gunzip
и т.д. целая цкпочка

The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn

#### Stage13
ssh -v -p 2220 bandit13@bandit.labs.overthewire.org
copy private key
 scp -P 2220 bandit13@bandit.labs.overthewire.org:~/sshkey.private .

 #### Stage14
ssh -v -p 2220 -i $temp_dir/sshkey.private bandit14@bandit.labs.overthewire.org
узнаем пароль текущего левела
cat /etc/bandit_pass/bandit14
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS


telnet localhost 30000

8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
 #### Stage15
 ssh -v -p 2220 bandit15@bandit.labs.overthewire.org
 
 Команда ncat --ssl localhost 30001 устанавливает SSL/TLS соединение с сервером на том же компьютере на порту 30001.

 ncat --ssl localhost 30001
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
Correct!
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

nmap
socat
nc
просканировать сеть
nmap -sn 192.168.1.0/24


 #### Stage16 
 ssh -v -p 2220 bandit15@bandit.labs.overthewire.org

 ss -tulpn | grep -E "\b31[0-9]{3}\b"
 ncat --ssl localhost 31790
private.key

 #### Stage17
ssh -v -i $(pwd)/private.key -p 2220  bandit17@bandit.labs.overthewire.org
diff passwords.new passwords.old

42c42
< pGozC8kOHLkBMOaL0ICPvLV1IjQ5F1VA
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO

 #### Stage18
  ssh -v -p 2220 bandit18@bandit.labs.overthewire.org


modified .bashrc to log you out when you log in with SSH.
  ssh -v -p 2220 bandit18@bandit.labs.overthewire.org env -i bash --norc
  cat readme
  cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
  #### Stage19
  ssh -v -p 2220 bandit19@bandit.labs.overthewire.org

./bandit20-do cat /etc/bandit_pass/bandit20
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
#### Stage20
  ssh -v -p 2220 bandit20@bandit.labs.overthewire.org