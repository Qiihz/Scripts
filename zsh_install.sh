apt install zsh curl git

#安装 oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#安装 zsh 命令行补全建议
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
​
#安装 zsh 语法高亮显示
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
​
#修改配置文件 ~/.zshrc，设置插件
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
​
#注意： 相关的 omz 配置必须在 source $ZSH/oh-my-zsh.sh 前添加。