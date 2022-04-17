C = g++
DIR = ./Source/
CFLAGS = -Wall -g -std=c++17 -Iinclude

test.bin: sjf.o fcfs.o sharedUtils.o batchScheduler.o
	$(C) $(CFLAGS) -o test.bin sjf.o fcfs.o sharedUtils.o batchScheduler.o

sjf.o: $(DIR)sjf.cpp
	$(C) $(CFLAGS) -c $(DIR)sjf.cpp

fcfs.o: $(DIR)fcfs.cpp
	$(C) $(CFLAGS) -c $(DIR)fcfs.cpp

sharedUtils.o: $(DIR)sharedUtils.cpp
	$(C) $(CFLAGS) -c $(DIR)sharedUtils.cpp

batchScheduler.o: $(DIR)batchScheduler.cpp
	$(C) $(CFLAGS) -c $(DIR)batchScheduler.cpp

clean:	
	rm test.bin sjf.o fcfs.o sharedUtils.o batchScheduler.o