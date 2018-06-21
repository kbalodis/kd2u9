kd2u9: kd2u9.o kd2u9_main.o
	arm-linux-gnueabi-gcc -o kd2u9 kd2u9.o kd2u9_main.o

kd2u9_main.o: kd2u9_main.c
	arm-linux-gnueabi-gcc -g -mcpu=xscale -O0 -Wall -o kd2u9_main.o -c kd2u9_main.c

kd2u9.o: kd2u9.s
	arm-linux-gnueabi-as -g -mcpu=xscale -alh=kd2u9.lis -L -o kd2u9.o kd2u9.s

clean:
	rm kd2u9 *.o *.lis
