#!/bin/bash

#L1s
arr=( 'Aardvark' 'Alpaca' 'Armadillo' 'Baboon' 'Baiji' 'BigBrownBat' 'BlackFlyingFox' 'Bonobo' 'Bushbaby' 'CapeElephantShrew' 'CapeGoldenMole' 'Cat' 'Chimp' 'Chinchilla' 'ChineseHamster' 'ChineseTreeShrew' 'CommonShrew' 'Cow' 'CrabeatingMacaque' 'DeerMouse' 'Dog' 'Dolphin' 'Elephant' 'Ferret' 'Gibbon' 'Goat' 'GoldenHamster' 'Gorilla' 'GreaterHorseshoeBat' 'GreenMonkey' 'GuineaPig' 'Hedgehog' 'Horse' 'Human' 'KangarooRat' 'KillerWhale' 'LesserEgyptianJerboa' 'Manatee' 'Marmoset' 'Megabat' 'Microbat' 'MinkeWhale' 'Mouse' 'MouseLemur' 'NakedMolerat' 'Opossum' 'SumatranOrangutan' 'Pig' 'PrairieVole' 'Rabbit' 'Rat' 'Rhesus' 'RockHyrax' 'Sheep' 'SiberianTiger' 'Sloth' 'Squirrel' 'SquirrelMonkey' 'TasDevil' 'Tenrec' 'TibetanAntelope' 'TreeShrew' 'Wallaby' 'Walrus' 'WeddellSeal' 'WhiteRhino' 'Yak' 'Tarsier' 'WaterBuffalo' 'MouseearedBat' 'GreaterFalseVampireBat' 'ParnellsMustachedBat' 'BrandtsBat' )

for j in "${arr[@]}"
do
	echo $j
	./make_consensus.sh "$j"
done
