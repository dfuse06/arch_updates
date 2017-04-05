#!/bin/bash
echo "We are now going to check for pacman package updates" | festival --tts
sudo pacman -Syu --noconfirm 
orphans=$(sudo pacman -Qdt)
if [ -z "$orphans" ]
then
echo "There are no orphan packages" | festival --tts
else
echo "Removing Orphans" | festival --tts
sudo pacman -Rsn $(sudo pacman -Qdtq)
fi	
sudo pacman -Rsn --noconfirm 
echo "Now checking AUR Packages" | festival --tts
yaourt -Syua --noconfirm 
echo "We are all done, Goodbye." | festival --tts
exit




