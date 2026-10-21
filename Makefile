SRC_DIR=src



.PHONY: all assets clean arc arc-dark arc-light arc-darker

all: arc arc-dark arc-light arc-darker

#~ arc:
#~ 	make -C $(SRC_DIR) ../arc.edj

arc-dark:
	make -C $(SRC_DIR) ../hollandale-dark.edj

arc-light:
	make -C $(SRC_DIR) ../hollandale-light.edj

#~ arc-darker:
#~ 	make -C $(SRC_DIR) ../arc-darker.edj

#~ orig-theme:
#~ 	ln -s ../efl/data/elementary/themes orig-theme

assets:
	make -C assets all

clean:
	make -C src clean

install:
#~ 	cp arc.edj ~/.elementary/themes > /dev/null
	cp hollandale-dark.edj ~/.elementary/themes >/dev/null
	cp hollandale-light.edj ~/.elementary/themes >/dev/null
	#cp arc-darker.edj ~/.elementary/themes >/dev/null
