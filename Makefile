output: TheTournament.o Weapon.o User.o Armor.o Potion.o Map.o Opponent.o
	g++ TheTournament.o Weapon.o User.o Armor.o Potion.o Map.o Opponent.o -o TheTournament

TheTournament.o: TheTournament.cpp
	g++ -c TheTournament.cpp

Weapon.o: Weapon.cpp Weapon.h
	g++ -c Weapon.cpp

User.o: User.cpp User.h
	g++ -c User.cpp

Armor.o: Armor.cpp Armor.h
	g++ -c Armor.cpp

Potion.o: Potion.cpp Potion.h
	g++ -c Potion.cpp

Map.o: Map.cpp Map.h
	g++ -c Map.cpp

Opponent.o: Opponent.cpp Opponent.h
	g++ -c Opponent.cpp

clear:
	rm *.o TheTournament