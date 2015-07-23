#!/bin/bash
# create local yum resource by iso
# install vim man wget lrzsz
# create ~/.vimrc
iso_dir="/mnt/iso"
yum_repo_dir="/etc/yum.repos.d"

# mount cdrom
if [ -d $iso_dir ]; then
  echo "$ISO_DIR exists."
else
  mkdir /mnt/iso
fi

if grep $iso_dir /etc/fstab -q; then
  echo "$iso_dir exsits in /etc/fstab"
  grep $iso_dir /etc/fstab
  # exit 1
else
  echo "/dev/cdrom              $iso_dir                iso9660 defaults,ro     0 0" >> /etc/fstab
fi

mount -a &> /dev/null

if [ $? -eq 0 ]; then
  echo "mount cdrom successfully!!"
else
  echo "mount cdrom failed!!"
fi

# backup *.repo files
if [ -d $yum_repo_dir/backup/ ]; then
  echo "$yum_repo_dir/backup/ exists."
else
  mkdir $yum_repo_dir/backup/
  mv $yum_repo_dir/* $yum_repo_dir/backup/ &> /dev/null
fi

# creat local.repo
cat << EOF > $yum_repo_dir/local.repo
[local-yum]
name="local yum src"
baseurl=file://$iso_dir
enabled=1
gpgcheck=0
EOF

# yum controls
echo "clean yum repo..."
yum clean all &> /dev/null
echo "make cache yum repo..."
yum makecache &> /dev/null
if [ $? -eq 1 ]; then
  echo "yum makecache failed!!!"
  exit 1
else
  echo "yum make cache successfully!!"
fi

# install software
yum -y install vim man wget lrzsz &> /dev/null


###
# create jiangk's .vimrc
cat << EOF > /root/.vimrc
set nu
set ruler
set smartindent
syntax on
set hlsearch
set backspace=2
set autoindent
set showmode
set tabstop=2
set shiftwidth=2
set expandtab
EOF

###
# set some alias in .bashrc
root_bashrc_dir="/root/.bashrc"
cat << EOF >> $root_bashrc_dir
alias grep='grep --color=auto'
alias l='ll'
EOF

source $root_bashrc_dir
