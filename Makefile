CC = gcc
CFLAGS = -Wall -Werror -g
BINS = testGameView testHunterView testDracView
#BINS = testGameView

all : $(BINS)

testGameView : testGameView.o GameView.o Map.o Places.o Queue.o
testGameView.o : testGameView.c Globals.h Game.h 

testHunterView : testHunterView.o HunterView.o Map.o Places.o Queue.o GameView.o
testHunterView.o : testHunterView.c Map.c Places.h

testDracView : testDracView.o DracView.o Map.o Places.o Queue.o GameView.o
testDracView.o : testDracView.c Map.c Places.h

Queue.o : Queue.c Queue.h
Places.o : Places.c Places.h
Map.o : Map.c Map.h Places.h
GameView.o : GameView.c GameView.h
HunterView.o : HunterView.c HunterView.h
DracView.o : DracView.c DracView.h

clean :
	rm -f $(BINS) *.o core

