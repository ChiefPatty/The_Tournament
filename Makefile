play: TheTournament.o assets/weapons/Weapon.o assets/people/user/User.o assets/armor/Armor.o assets/items/potions/Potion.o assets/ship/Map.o assets/people/opponent/Opponent.o
	g++ TheTournament.o assets/weapons/Weapon.o assets/people/user/User.o assets/armor/Armor.o assets/items/potions/Potion.o assets/ship/Map.o assets/people/opponent/Opponent.o -o TheTournament

TheTournament.o: TheTournament.cpp
	g++ -c TheTournament.cpp


Weapon.o: assets/weapons/Weapon.cpp assets/weapons/Weapon.h
	-p assets/weapons
	g++ -c assets/weapons/Weapon.cpp -o assets/weapons/Weapon.o

assets/people/user/User.o: assets/people/user/User.cpp assets/people/user/User.h
	-p assets/people/user
	g++ -c assets/people/user/User.cpp -o assets/people/user/User.o

assets/armor/Armor.o: assets/armor/Armor.cpp assets/armor/Armor.h
	-p assets/armor
	g++ -c assets/armor/Armor.cpp -o assets/armor/Armor.o

assets/items/potions/Potion.o: assets/items/potions/Potion.cpp assets/items/potions/Potion.h
	-p assets/items/potions
	g++ -c assets/items/potions/Potion.cpp -o assets/items/potions/Potion.o

assets/ship/Map.o: assets/ship/Map.cpp assets/ship/Map.h
	-p assets/ship
	g++ -c assets/ship/Map.cpp -o assets/ship/Map.o

assets/people/opponent/Opponent.o: assets/people/opponent/Opponent.cpp assets/people/opponent/Opponent.h
	-p assets/people/opponent
	g++ -c assets/people/opponent/Opponent.cpp -o assets/people/opponent/Opponent.o

clear:
	rm -f assets/*/*.o TheTournament
	rm -f assets/*/*/*.o TheTournament
	rm -f *.o TheTournament