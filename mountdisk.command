if [ ! -d "/Volumes/RAMDisk" ]; then
diskutil erasevolume HFS+ "RAMDisk" `hdiutil attach -nomount ram://4194304`
fi

if [ ! -d "/Volumes/RAMDisk/com.apple.Safari" ]; then
	rm -rf ~/Library/Caches/com.apple.Safari	
	mkdir /Volumes/RAMDisk/com.apple.Safari
	ln -s /Volumes/RAMDisk/com.apple.Safari/ ~/Library/Caches/com.apple.Safari
fi

if [ ! -d "/Volumes/RAMDisk/Firefox" ]; then
	rm -rf ~/Library/Caches/Firefox
	mkdir /Volumes/RAMDisk/Firefox
	ln -s /Volumes/RAMDisk/Firefox/ ~/Library/Caches/Firefox
fi

if [ ! -d "/Volumes/RAMDisk/Google" ]; then
	rm -rf ~/Library/Caches/Google
	mkdir /Volumes/RAMDisk/Google
	ln -s /Volumes/RAMDisk/Google/ ~/Library/Caches/Google
fi
osascript -e 'tell application "Terminal" to quit' &