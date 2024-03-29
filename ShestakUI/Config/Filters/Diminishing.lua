local T, C, L = unpack(select(2, ...))
if C.unitframe.enable ~= true or C.unitframe.show_arena ~= true or C.unitframe.plugins_diminishing ~= true then return end

----------------------------------------------------------------------------------------
--	The best way to add or delete spell is to go at www.wowhead.com, search for a spell.
--	Example: Fear -> http://www.wowhead.com/spell=5782
--	Take the number ID at the end of the URL, and add it to the list
----------------------------------------------------------------------------------------
T.DiminishingSpells = function()
	return {
		-- Disorients
		[6770] = {"disorient"},		-- Sap
		[1776] = {"disorient"},		-- Gouge
		[51514] = {"disorient"},	-- Hex
		[9484] = {"disorient"},		-- Shackle Undead
		[118] = {"disorient"},		-- Polymorph
		[28272] = {"disorient"},	-- Polymorph (Pig)
		[28271] = {"disorient"},	-- Polymorph (Turtle)
		[61305] = {"disorient"},	-- Polymorph (Black cat)
		[61025] = {"disorient"},	-- Polymorph (Serpent)
		[61721] = {"disorient"},	-- Polymorph (Rabbit)
		[61780] = {"disorient"},	-- Polymorph (Turkey)
		[3355] = {"disorient"},		-- Freezing Trap
		[19386] = {"disorient"},	-- Wyvern Sting
		[20066] = {"disorient"},	-- Repentance
		[90337] = {"disorient"},	-- Bad Manner (Monkey)
		[2637] = {"disorient"},		-- Hibernate
		[82691] = {"disorient"},	-- Ring of Frost

		-- Silences
		[50479] = {"silence"},		-- Nether Shock (Nether ray)
		[1330] = {"silence"},		-- Garrote
		[25046] = {"silence"},		-- Arcane Torrent (Energy version)
		[28730] = {"silence"},		-- Arcane Torrent (Mana version)
		[50613] = {"silence"},		-- Arcane Torrent (Runic power version)
		[69179] = {"silence"},		-- Arcane Torrent (Rage version)
		[80483] = {"silence"},		-- Arcane Torrent (Focus version)
		[15487] = {"silence"},		-- Silence
		[34490] = {"silence"},		-- Silencing Shot
		[55021] = {"silence"},		-- Improved Counterspell
		[24259] = {"silence"},		-- Spell Lock (Felhunter)
		[47476] = {"silence"},		-- Strangulate
		[18498] = {"silence"},		-- Gag Order (Warrior glyph)
		[81261] = {"silence"},		-- Solar Beam
		[31935] = {"silence"},		-- Avenger's Shield

		-- Disarms
		[91644] = {"disarm"},		-- Snatch (Bird of Prey)
		[51722] = {"disarm"},		-- Dismantle
		[676] = {"disarm"},			-- Disarm
		[64058] = {"disarm"},		-- Psychic Horror (Disarm effect)
		[50541] = {"disarm"},		-- Clench (Scorpid)

		-- Fears
		[2094] = {"fear"},			-- Blind
		[5782] = {"fear"},			-- Fear (Warlock)
		[6358] = {"fear"},			-- Seduction (Succubus)
		[5484] = {"fear"},			-- Howl of Terror
		[8122] = {"fear"},			-- Psychic Scream
		[1513] = {"fear"},			-- Scare Beast
		[10326] = {"fear"},			-- Turn Evil
		[5246] = {"fear"},			-- Intimidating Shout (Main target)
		[20511] = {"fear"},			-- Intimidating Shout (Secondary targets)

		-- Control Stuns
		[89766] = {"ctrlstun"},		-- Axe Toss (Felguard)
		[50519] = {"ctrlstun"},		-- Sonic Blast (Bat)
		[46968] = {"ctrlstun"},		-- Shockwave
		[115001] = {"ctrlstun"},	-- Remorseless Winter
		[853] = {"ctrlstun"},		-- Hammer of Justice
		[5211] = {"ctrlstun"},		-- Bash
		[19577] = {"ctrlstun"},		-- Intimidation
		[22570] = {"ctrlstun"},		-- Maim
		[408] = {"ctrlstun"},		-- Kidney Shot
		[20549] = {"ctrlstun"},		-- War Stomp
		[44572] = {"ctrlstun"},		-- Deep Freeze
		[30283] = {"ctrlstun"},		-- Shadowfury
		[119072] = {"ctrlstun"},	-- Holy Wrath
		[22703] = {"ctrlstun"},		-- Inferno Effect
		[47481] = {"ctrlstun"},		-- Gnaw (Ghoul)
		[56626] = {"ctrlstun"},		-- Sting (Wasp)
		[107570] = {"ctrlstun"},	-- Storm Bolt
		[1833] = {"ctrlstun"},		-- Cheap Shot
		[9005] = {"ctrlstun"},		-- Pounce
		[88625] = {"ctrlstun"},		-- Holy Word: Chastise

		-- Random Stuns
		--MOP[64343] = {"rndstun"},		-- Impact

		-- Roots
		[33395] = {"ctrlroot"},		-- Freeze (Water Elemental)
		[50245] = {"ctrlroot"},		-- Pin (Crab)
		[122] = {"ctrlroot"},		-- Frost Nova
		[339] = {"ctrlroot"},		-- Entangling Roots
		[19975] = {"ctrlroot"},		-- Nature's Grasp
		[64695] = {"ctrlroot"},		-- Earthgrab
		[4167] = {"ctrlroot"},		-- Web (Spider)
		[54706] = {"ctrlroot"},		-- Venom Web Spray (Silithid)
		[90327] = {"ctrlroot"},		-- Lock Jaw (Dog)

		-- Random Roots
		--MOP[23694] = {"rndroot"},		-- Improved Hamstring

		-- Horror
		[6789] = {"horror"},		-- Mortal Coil
		[64044] = {"horror"},		-- Psychic Horror

		-- Misc
		[19503] = {"scatter"},		-- Scatter Shot
		[31661] = {"dragon"},		-- Dragon's Breath
		[33786] = {"cyclone"},		-- Cyclone
		[605] = {"mind"},			-- Dominate Mind
		[19185] = {"entrapment"},	-- Entrapment
	}
end

T.DiminishingIcons = function()
	return {
		["ctrlstun"] = select(3, GetSpellInfo(44572)),
		["cyclone"] = select(3, GetSpellInfo(33786)),
		["disarm"] = select(3, GetSpellInfo(676)),
		["disorient"] = select(3, GetSpellInfo(118)),
		["entrapment"] = select(3, GetSpellInfo(19185)),
		["fear"] = select(3, GetSpellInfo(8122)),
		["horror"] = select(3, GetSpellInfo(64044)),
		["mind"] = select(3, GetSpellInfo(605)),
		["rndroot"] = select(3, GetSpellInfo(12489)),
		["rndstun"] = select(3, GetSpellInfo(64343)),
		["ctrlroot"] = select(3, GetSpellInfo(122)),
		["scatter"] = select(3, GetSpellInfo(19503)),
		["dragon"] = select(3, GetSpellInfo(31661)),
		["silence"] = select(3, GetSpellInfo(55021)),
	}
end