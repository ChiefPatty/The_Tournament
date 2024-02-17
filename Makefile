play: TheTournament.o assets/weapons/Weapon.o assets/people/user/User.o assets/armor/Armor.o assets/items/potions/Potion.o assets/ship/Map.o assets/user/opponent/Opponent.o
	g++ TheTournament.o assets/weapons/Weapon.o assets/people/user/User.o assets/armor/Armor.o assets/items/potions/Potion.o assets/ship/Map.o assets/user/opponent/Opponent.o -o TheTournament

TheTournament.o: TheTournament.cpp
	g++ -c TheTournament.cpp

assets/weapons/Weapon.o: assets/weapons/Weapon.cpp assets/weapons/Weapon.h
	g++ -c assets/weapons/Weapon.cpp -o assets/weapons/Weapon.o

assets/people/user/User.o: assets/people/user/User.cpp assets/people/user/User.h
	g++ -c assets/people/user/User.cpp

assets/armor/Armor.o: assets/armor/Armor.cpp assets/armor/Armor.h
	g++ -c assets/armor/Armor.cpp

assets/items/potions/Potion.o: assets/items/potions/Potion.cpp assets/items/potions/Potion.h
	g++ -c assets/items/potions/Potion.cpp

assets/ship/Map.o: assets/ship/Map.cpp assets/ship/Map.h
	g++ -c assets/ship/Map.cpp

assets/user/opponent/Opponent.o: assets/user/opponent/Opponent.cpp assets/user/opponent/Opponent.h
	g++ -c assets/user/opponent/Opponent.cpp

clear:
	rm *.o TheTournament