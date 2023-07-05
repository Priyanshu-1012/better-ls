# better-ls
A visually appealing ls command replacement script written in Bash, providing a colorful and informative file listing.

*prequisite* : [Nerd Fonts](www.nerdfonts.com)
installed.
<br>
<br>

![Screenshot from 2023-07-05 00-46-05](https://github.com/Priyanshu-1012/better-ls/assets/39450902/5c7ad7be-47e2-4062-8406-eb80c6294192)

## How to run
1. Download the bash script and open the Terminal
2. Add the following lines in your ~/.bashrc file (to open it type ```vim ~/.bashrc``` or any text editor of your choice)
```bash

bl() {
bash path/to/btrls.sh/file "$@"
}

```
3. Save and Quit and reopen the Terminal
4. Now you can run better-ls by simply typing ```bl``` command in your terminal

## Flags
#### -c flag: sets the number of columns for list formatting. For e.g., ```bl -c 2``` formats the list into 2 columns. The default value is 3 columns when no flag is specified.

...work in progress
