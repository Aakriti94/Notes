# Regular Expressions

Website: https://regexone.com/lesson/introduction_abcs

### Chapter 1a: Letters a,b,c..
String: `abc, abcde, abcdefg` <br>
`[a-g]` - Will match all strings having alphabets a,b,c,d,e,f,g <br>
`abc` - will also match the above mentioned string.

### Chapter 1b: Digits 1,2,3..
| Pattern | Description |
| -------- | ----------- |
|`\d`| 	Any Digit. Can be used in place of any digit from 0 to 9.The preceding slash distinguishes it from the simple d character and indicates that it is a metacharacter.
|`\D`| Any Non-digit character

### Chapter 2: Period
| Pattern | Description |
| -------- | ----------- |
| `.` | can match any single character (letter, digit, whitespace, everything) <br>
|`\.` | specifically match a period <br>
|`...\.` | It will match any string with 3 characters that end with a `.` <br>
|`\.` | Will match any string with any number of characters in starting with a `.` ending  
||

### Chapter 3: Matching specific characters
| Pattern | Description |
| -------- | ----------- |
|`[abc]`| only match a single a, b, or c

### Chapter 4: Excluding specific characters
| Pattern | Description |
| -------- | ----------- |
|`[^abc]`| will match any single character except for the letters a, b, or c

### Chapter 5: Character ranges
| Pattern | Description |
| -------- | ----------- |
|`[0-6]`| only match any single digit character from zero to six, and nothing else
|`[^n-p]`| only match any single character except for letters n to p.
|`\w`| It is a metacharacter and equivalent to the character range `[A-Za-z0-9_]`. Any Alphanumeric character
|`\W`| Any Non-alphanumeric character
|`[a-z]`	| Characters a to z
|`[0-9]`	| Numbers 0 to 9

### Chapter 6: Catching some zzz's - Repetitions
| Pattern | Description |
| -------- | ----------- |
|`\d\d\d`|  Match exactly three digits |
|`a{3}`| match the a character exactly three times
|`a{1,3}`| match the a character no more than 3 times, but no less than once
|`w{3}`| three w's
|`[wxy]{5}`| five characters, each of which can be a w, x, or y
|`.{2,6}`| between two and six of any character
|`{m}`|	m Repetitions
|`{m,n}`|	m to n Repetitions

### Chapter 7: Mr. Kleene, Mr. Kleene

### Chapter 8:
### Chapter 9:
### Chapter 10:
### Chapter 11:
### Chapter 12:
### Chapter 13:
### Chapter 14:

https://www3.ntu.edu.sg/home/ehchua/programming/howto/Regexe.html
https://www.hackerrank.com/domains/regex
https://regexlearn.com/
https://alf.nu/RegexGolf?world=regex&level=r00
https://regexcrossword.com/
https://www.regextester.com/
