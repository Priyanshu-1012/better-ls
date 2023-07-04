#!/bin/bash

# Define icons for different file types
declare -A icons=(
  ["folder"]="\033[1;34m "
  [".awk"]=" "
  [".bash"]=" "
  [".bash_profile"]=" "
  [".bash_history"]=" "
  [".bashrc"]=" "
  [".bmp"]=" "
  [".bz"]=" "
  [".bz2"]=" "
  [".c"]=" "
  [".class"]=" "
  [".conf"]=" "
  [".cfg"]=" "
  [".cp"]=" "
  [".cpp"]=" "
  [".css"]=" "
  [".csv"]=" "
  [".dart"]=" "
  [".db"]=""
  [".deb"]=" "
  [".doc"]=" "
  [".docx"]=" "
  [".ejs"]=" "
  [".eot"]=" "
  [".epub"]=" "
  [".erb"]=" "
  [".ex"]=" "
  [".exs"]=" "
  [".fish"]=" "
  [".fs"]=" "
  [".fsi"]=" "
  [".fsx"]=" "
  [".gif"]=" "
  [".git"]=" "
  [".gitattributes"]=" "
  [".gitconfig"]=" "
  [".gitignore"]=" "
  [".gitmodules"]=" "
  [".go"]=" "
  [".gz"]=" "
  [".gvimrc"]=" "
  [".hex"]=" "
  [".h"]=" "
  [".hpp"]=" "
  [".hs"]=" "
  [".htm"]=" "
  [".html"]=" "
  [".ini"]=" "
  [".ipynb"]=" "
  [".jad"]=" "
  [".java"]=" "
  [".jar"]=" "
  [".jpeg"]=" "
  [".jpg"]=" "
  [".js"]=" "
  [".json"]=" "
  [".kt"]="󰜪 "
  [".kts"]="󰜪 "
  [".latex"]=" "
  ["LICENSE"]=" "
  [".log"]=" "
  [".lua"]=" "
  [".lz"]=" "
  [".lrz"]=" "
  [".md"]=" "
  [".mp3"]=" "
  [".mp4"]=" "
  [".otf"]=" "
  [".pdf"]=" "
  [".patch"]=" "
  [".perl"]=" "
  [".php"]=" "
  [".pl"]=" "
  [".png"]=" "
  [".ppt"]=" "
  [".pptx"]=" "
  [".py"]=" "
  [".python_history"]=" "
  [".r"]=" "
  [".r"]=" "
  [".ru"]=" "
  [".rar"]=" "
  [".rdata"]=" "
  [".rds"]=" "
  [".rlib"]=" "
  [".rmd"]=" "
  [".rmd"]=" "
  [".sass"]=" "
  [".scss"]=" "
  [".scala"]=" "
  [".sh"]=" "
  [".sql"]=" "
  [".sv"]="󰘚 "
  [".svg"]=" "
  [".swift"]=" "
  [".tar"]=" "
  [".taz"]=" "
  [".tbz"]=" "
  [".tbz2"]=" "
  [".tgz"]=" "
  [".tex"]=" "
  [".tcl"]="󰛓 "
  [".toml"]=" "
  [".ts"]=" "
  [".ttf"]=" "
  [".txt"]=" "
  [".tz"]=" "
  [".tzo"]=" "
  [".txz"]=" "
  [".v"]="󰘚 "
  [".vim"]=" "
  [".viminfo"]=" "
  [".vimrc"]=" "
  [".xul"]=" "
  [".woff"]=" "
  [".woff2"]=" "
  [".xml"]=" "
  [".xhtml"]=" "
  [".xls"]=" "
  [".xlsx"]=" "
  [".xz"]=" "
  [".yml"]=" "
  [".yaml"]=" "
  [".zip"]=" "
  [".zsh"]=" "
  [".zshrc"]=" "
  [".zst"]=" "
)

# Define icons and colors for specific directory names
declare -A directory_icons=(
  ["Pictures"]="\033[1;34m󰉏 "
  ["Downloads"]="\033[1;34m󰉍 "
  [".git"]="\033[1;31m "
  [".ssh"]="\033[1;34m󰢬 "
  ["Music"]="\033[1;34m󱍙 "
  ["Desktop"]="\033[1;34m "
  [".vscode"]="\033[0;35m󰨞 \033[1m"
  [".config"]="\033[1;34m "
  ["bin"]="\033[1;34m "
  ["github"]="\033[1;37m "
  ["Github"]="\033[1;37m "
  ["GitHub"]="\033[1;37m "
  ["Videos"]="\033[1;34m󰃽 "
)

# Default icon for files with unknown extensions
default_icon="\033[0;37m \033[0m"



columns=3
padding=35
# Parse command-line options
while getopts "c:" opt; do
  case $opt in
    c)
      columns=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
  if ((columns==4)); then
    padding=25
  elif 
  ((columns==2)); then
    padding=40
    elif
    ((columns==5)); then
    padding=22
    else
padding=$((35 / 3 * columns))
fi
done
# Function to format output in 3 columns
format_columns() {
  local count=0

  for item in "${items[@]}"; do
    local name="${item%%|*}"
    local type="${item#*|}"
    local icon="${icons[$type]}"

    if [[ -z $icon ]]; then
      icon="$default_icon"
    fi

    local color="\033[0m"  # Default color

    # Define color based on file type
    case "$type" in
      folder) 
        color="\033[1;34m"  # Default folder color
        # Check if a specific icon and color are defined for the directory name
        if [[ -v directory_icons[$name] ]]; then
          icon="${directory_icons[$name]}"
          color="\033[1;33m"  # Custom folder color
        fi
        ;;
      .txt) color="\033[0;33m";;
      .sh) color="\033[0;32m";;
      .jpg) color="\033[0;35m";;
      .vim) color="\033[0;36m";;
      .viminfo) color="\033[0;36m";;
      .vimrc) color="\033[0;36m";;
      .gitconfig)color="\033[0;31m";;
      .v)color="\033[0;35m";;
      .sv)color="\033[0;35m";;
      .gz)color="\033[1;31m";;
        .tar)color="\033[1;31m";;
        .zip)color="\033[1;31m";;
        .rar)color="\033[1;31m";;
        .7z)color="\033[1;31m";;
        .xz)color="\033[1;31m";;
        .zst)color="\033[1;31m";;
        .bz)color="\033[1;31m";;
        .bz2)color="\033[1;31m";;
        .tbz)color="\033[1;31m";;
        .tbz2)color="\033[1;31m";;
        .taz)color="\033[1;31m";;
        .tgz)color="\033[1;31m";;
        .lz)color="\033[1;31m";;
        .lrz)color="\033[1;31m";;

    esac

    # Add padding and display file/folder name with icon
    printf "%b%-*s" "$color$icon" "$padding" "$name"

    ((count++))
    if ((count % columns == 0)); then
      printf "\n"
    fi
  done

  # Add a newline if there are remaining items
  if ((count % columns != 0)); then
    printf "\n"
  fi
}

# Get list of files and folders in the current directory
directories=()
files=()
dotfolders=()
dotfiles=()

while IFS= read -r -d $'\0' item; do
  # Check if item is a directory or file
  if [[ -d "$item" ]]; then
    name="${item##*/}"
    if [[ $name == .* ]]; then
      dotfolders+=("${item:2}|folder")  # Remove leading '/'
    else
      directories+=("${item:2}|folder")  # Remove leading '/'
    fi
  else
    name="${item##*/}"
    extension="${name##*.}"
    if [[ $name == .* ]]; then
      dotfiles+=("${item:2}|.$extension")  # Remove leading '/'
    else
      files+=("${item:2}|.$extension")  # Remove leading '/'
    fi
  fi
done < <(find . -maxdepth 1 ! -path . -print0 | LC_ALL=C sort -z)

# Concatenate directories, files, dotfolders, and dotfiles arrays
items=("${directories[@]}" "${dotfolders[@]}" "${files[@]}" "${dotfiles[@]}")

# Format and display the items in columns
format_columns
