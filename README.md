# better-ls
A visually appealing ls command replacement script written in Bash, providing a colorful and informative file listing.

*prequisite* : [Nerd Fonts](https://www.nerdfonts.com)
installed.
<br>
<br>

![Screenshot from 2023-07-05 00-46-05](https://github.com/Priyanshu-1012/better-ls/assets/39450902/5c7ad7be-47e2-4062-8406-eb80c6294192)

## How to run
1. Open the Terminal and type
   ```shell
   
   curl -o ~/btrls.sh https://raw.githubusercontent.com/Priyanshu-1012/better-ls/master/btrls.sh
   ```
3. Type ```chmod +x ~/btrls.sh``` on terminal to grant permission.
4. Run this command to make an alias for the command and to use it from any location.
   ```shell
   
   echo 'bl(){' >> ~/.bash_aliases && echo '    bash ~/btrls.sh "$@"' >> ~/.bash_aliases && echo '}' >> ~/.bash_aliases
   ``` 
6. Restart your terminal and now you can run better-ls by simply typing ```bl``` command in your terminal


## Flags
#### -c flag: sets the number of columns for list formatting. For e.g., ```bl -c2``` formats the list into 2 columns. The default value is 3 columns when no flag is specified. <br>
#### -a flag: shows hidden files too. <br>
e.g. ```bl -c5 -a``` will show all files and folder(hidden too) in 5 columns


...work in progress
