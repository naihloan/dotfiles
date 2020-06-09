setxkbmap dvorak es
https://medium.com/@nasch/delete-a-line-from-linux-terminal-history-48ada24d9c1b

sudo apt-get install unace rar unrar p7zip zip unzip p7zip-full p7zip-rar sharutils uudeview mpack arj cabextract file-roller gparted bleachbit gimp ranger cowsay lolcat mocp calibre comix w3m-img unrar viewnior git-core curl build-essential openssl libssl-dev python baobab atom code surf gedit trash-cli fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
fzf

cd Public/
git clone https://github.com/naihloan/dotfiles
git clone https://github.com/naihloan/ramoneando

mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q

git config --global user.email "benjaminjuarezarlt@gmail.com"
git config --global user.name "venhamon"
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global color.ui auto
git config --global color.branch auto
git config --global color.status auto

vim .config/ranger/rc.conf

sudo apt purge light-locker

git clone https://github.com/manojVivek/medium-unlimited.git
cd medium-unlimited/
sudo apt-get install lsb_release
pandoc hardy-how-to-achieve-your-10-year-plan-in-the-next-6-months.md -o hardy-how-to-achieve-your-10-year-plan-in-the-next-6-months.pdf

cd Public/
git clone https://github.com/yisela/hubot-dinosaur-comics.git
cd hubot-dinosaur-comics/
npm i
hubot dino comics 
sudo apt-get install hubot

sudo apt install python-pip

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
discord
cd Downloads/
sudo dpkg -i discord.deb 
sudo apt-get install libc++1
sudo dpkg -i discord.deb 
discord

wget https://blog.codinghorror.com/hacker-hack-thyself/
wget https://revistasendero.com.ar/2020/04/24/que-pasa-por-nuestra-mente-durante-la-cuarentena/
wget https://elgatoylacaja.com/pensar-con-otros/capitulo-8/

