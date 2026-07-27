export PULSE_SERVER=127.0.0.1
pulseaudio --start --disable-shm=1 --exit-idle-time=-1
clear
echo -e "\e[1;37m--------------------"
echo -e "\e[1;37mDo you want to run Windows 3.1 Live CD now? Enter the corresponding number and press enter to start."
echo -e "\e[1;37m--------------------"
echo -e "\e[1;37m1. Run now"
echo -e "\e[1;37m2. Edit"
echo -e "\e[1;37m3. Remove"
echo -e "\e[1;37m4. See instructions"
echo -e "\e[1;37mOther. Exit"
echo -e "\e[1;37m--------------------"
read -n 1 vmoption

case "$vmoption" in
    '1')
        cd
        clear
        echo -e "\e[1;37m[i] VM is running..."
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mVNC Server address:"
        echo -e "\e[1;37mlocalhost:2"
        echo -e "\e[1;37mOr"
        echo -e "\e[1;37mlocalhost:5902"
        echo -e "\e[1;37m-"
        sleep 3
        cd ~/VM/
        ./start31livecd.sh
        sleep 5
        clear
        cd
        ./start31livecd.sh
        ;;
    '2')
        cd ~/VM
        nano start"$setname"vm.sh
        clear
        cd
        ./start31livecd.sh
        ;;
    '3')
        clear
        echo -e "\e[1;37m[!] Removing VM..."
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mThis VM will be deleted after 10 seconds. To cancel, press Ctrl + C."
        echo -e "\e[1;37m-"
        sleep 10
        cd
        clear
        echo -e "\e[1;37mDone!"
        echo -e "\e[1;37m--"
        echo -e "\e[1;37mIf you want to uninstall Debian 11, run the following command:"
        echo -e "\e[1;37m-> exit <-"
        echo -e "\e[1;37mAnd run this command:"
        ;;
    '4')
        clear
        echo -e "\e[1;37mSee instructions:"
        echo -e "\e[1;37m--"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m[1] Control:"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mYou need to connect via VNC Server to port 5902 or 2."
        echo -e "\e[1;37m"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m[2] Data directory:"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mThe virtual machine directory is located at ~/VM/"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m[4] Qemu Monitor:"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mPress Ctrl + Alt + 2 in VNC Viewer to switch to it."
        echo -e "\e[1;37m"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37m"
        echo -e "\e[1;37m[5] Remove:"
        echo -e "\e[1;37m-"
        echo -e "\e[1;37mIt will only remove files related to this virtual machine and will not remove any packages related to Termux."
        echo -e "\e[1;37m"
        echo -e "\e[1;37m--"
        echo -e "\e[1;37mPress any key to exit."
        read -n 1
        clear
        ./start31livecd.sh
        ;;
    *)
        clear
        echo -e "\e[1;37mExiting..."
        ;;
esac
clear