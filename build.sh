VERSION=

echo './proc
./sbin
./oem
./system
./sys
./dev
./data' | xargs -n1 sh -c 'mkdir -p android/$0; chmod 755 android/$0'

chmod 750 android/sbin
chmod 771 android/data
chmod 770 android/cache

tar -czf android${VERSION}.tar.gz android

