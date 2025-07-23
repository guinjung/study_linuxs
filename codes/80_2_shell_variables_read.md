

read -p "read input: " read_first

echo "input values: " $1 $read_first

```
[guinjung@localhost Downloads]$ cat ./shell_read.sh
read -p "read input: " read_first

echo "input values: " $1 $read_first

[guinjung@localhost Downloads]$ ./shell_read.sh tttt1 
read input: tt222
input values:  tttt1 tt222
```