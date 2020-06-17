
#!/data/data/com.termux/files/usr/bin/bash

echo Installing Driver...
mkdir -p /termon/
cp -f pack/driver/* /termon/
echo OK
echo Installing Utils...
mkdir -p /data/data/com.termux/files/usr/bin/
cp -f ./pack/utils/* /data/data/com.termux/files/usr/bin/
echo OK
echo Creating Symlink...
ln  '$PREFIX/bin/iwmulticall' '$PREFIX/bin/iwpriv'
ln  '$PREFIX/bin/iwmulticall' '$PREFIX/bin/iwconfig'
echo OK
echo Fixing Permissions...
chmod +x termon/*
chmod +x $PREFIX/bin/*
echo OK
echo Temporary Files Cleaning...
rm -rf pack
rm -f $0
echo OK
echo Installation Completed! To start WiFi monitor mode just type \"wmod monitor\".
 


