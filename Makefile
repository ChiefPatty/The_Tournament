play: TheTournament.o assets/weapons/Weapon.o User.o Armor.o Potion.o Map.o Opponent.o
	g++ TheTournament.o assets/weapons/Weapon.o User.o Armor.o Potion.o Map.o Opponent.o -o TheTournament

TheTournament.o: TheTournament.cpp
	g++ -c TheTournament.cpp

assets/weapons/Weapon.o: assets/weapons/Weapon.cpp assets/weapons/Weapon.h
	g++ -c assets/weapons/Weapon.cpp -o assets/weapons/Weapon.o

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