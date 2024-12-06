src/HelloWorld: dist/HelloWorld.o
	ld -o dist/HelloWorld dist/HelloWorld.o
dist/HelloWorld.o: ./src/HelloWorld.s
	mkdir -p dist
	as -o dist/HelloWorld.o ./src/HelloWorld.s
