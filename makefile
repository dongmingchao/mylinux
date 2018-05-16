all:
	cd boot && \
	nasm -o mbr.bin loader.S
	dd if=boot/mbr.bin of=hd60M.img bs=512 count=1 conv=notrunc

run:
	bochs -f bochsrc.disk
