mkdir -p dist
as -o dist/hello-world.o ./src/hello-world.s
ld -o dist/hello-world dist/hello-world.o
./dist/hello-world