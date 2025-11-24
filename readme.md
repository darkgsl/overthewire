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
echo $(base64 data.txt)

VkdobElIQmhjM04zYjNKa0lHbHpJR1IwVWpFM00yWmFTMkl3VWxKelJFWlRSM05uTWxKWGJuQk9W