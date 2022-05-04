# Bash

## `for` loop

```
for VARIABLE in 1 2 3 4 5 .. N
do
	command1
	command2
	commandN
done
```

```
for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done
```

```
for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done
```

## `if-else`

```
if TEST-COMMAND
then
  STATEMENTS
fi
```

## Command Line Arguments in Shell Script
|  Special Variable      |  Variable Details |
| ----------- | ----------- |
|   $0    |   The name of script itself     |
|  $1 to $n	  |   $1 is the first arguments, $2 is second argument till $n n’th arguments. From 10’th argument, you must need to inclose them in braces like ${10}, ${11} and so on      |
|   $*     |  Values of all the arguments. All agruments are double quoted      |
|  $#   |   Total number of arguments passed to script      |
|    $@    |    Values of all the arguments    |
|  $?   |    	Exit status id of last command     |
| $!      |    Process id of last command    |

#### Ways to write command-line shell arguments
```
echo "$1"
echo ${1}
```


## One line commands

##### Set a variable to the output of a command

```
Variable=`command1 | command2`
echo $Variable
```

##### Running and executing multiple `ssh` command
```
ssh user1@server1 command1
ssh user1@server1 'command2'

# pipe #
ssh user1@server1 'command1 | command2'

# multiple commands (must enclose in quotes #
ssh admin@box1 "command1; command2; command3"

# make a file with all commands
cat > commands.txt
date
uptime
df -H

# Next execute commands remotely using ssh command from local file called commands.txt:
ssh server_name < commands.txt
ssh user@server_name < commands.txt
```

#### Save echo value in variable
```
echo hello   
x=$(echo hello)  
echo "$x",world!  
```
