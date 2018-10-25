file=$(<packages.txt)
clear
path=$(pwd)

echo "######
#     #  ####   ####  #####
#     # #    # #        #
######  #    #  ####    #
#       #    #      #   #
#       #    # #    #   #
#        ####   ####    #

###
 #  #    #  ####  #####   ##   #      #        ##   ##### #  ####  #    #
 #  ##   # #        #    #  #  #      #       #  #    #   # #    # ##   #
 #  # #  #  ####    #   #    # #      #      #    #   #   # #    # # #  #
 #  #  # #      #   #   ###### #      #      ######   #   # #    # #  # #
 #  #   ## #    #   #   #    # #      #      #    #   #   # #    # #   ##
### #    #  ####    #   #    # ###### ###### #    #   #   #  ####  #    #
"
echo "Installing yay(yet another yogurt)"

echo -ne '#####                     (33%)\r'
sleep 1
cd $HOME
mkdir .tmpinstallation
cd .tmpinstallation
if ! type git > /dev/null; then # caraiiiiii
   echo "ERROR:git not found!Exiting!"
    rm -rf .tmpinstallation
    exit
fi
#git clone https://aur.archlinux.org/yay.git  > /dev/null 2>&1
echo -ne '#############             (66%)\r'
sleep 1
#cd yay
#makepkg -si
echo -ne '#######################   (100%)\r'
cd $HOME
rm -rf .tmpinstallation
cd $path
echo -ne 'Installing packages             \r'
echo -ne '\n'
yay -S $file command > /dev/null 2>&1
sleep 5
clear
echo "######
#     #  ####   ####  #####
#     # #    # #        #
######  #    #  ####    #
#       #    #      #   #
#       #    # #    #   #
#        ####   ####    #

###
 #  #    #  ####  #####   ##   #      #        ##   ##### #  ####  #    #
 #  ##   # #        #    #  #  #      #       #  #    #   # #    # ##   #
 #  # #  #  ####    #   #    # #      #      #    #   #   # #    # # #  #
 #  #  # #      #   #   ###### #      #      ######   #   # #    # #  # #
 #  #   ## #    #   #   #    # #      #      #    #   #   # #    # #   ##
### #    #  ####    #   #    # ###### ###### #    #   #   #  ####  #    #
"
if $1=="--nodotfiles"; then
  echo "Installation is done.Exiting!"
  sleep 5
  exit
fi
