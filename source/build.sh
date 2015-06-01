rm *.a
rm *.x
rm *.o
./compile.make
./library.make
./link.make
cp *.x ../bin

