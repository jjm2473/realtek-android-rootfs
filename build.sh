VERSION=-7.1.1

echo './proc
./cache
./config
./sbin
./oem
./storage
./system
./sys
./mnt
./dev
./acct
./data' | xargs -n1 sh -c 'mkdir -p android/$0; chmod 755 android/$0'

chmod 750 android/sbin
chmod 771 android/data
chmod 770 android/cache

tar -czf android${VERSION}.tar.gz android

