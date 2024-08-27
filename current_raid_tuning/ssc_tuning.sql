-- hydross the unstable
UPDATE `creature_template` SET `HealthModifier`=4.2*6       WHERE `entry`=22035; -- Pure Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier`=4.2*6       WHERE `entry`=22036; -- Tained Spawn of Hydross
UPDATE `creature_template` SET `HealthModifier`=315*2.75    WHERE `entry`=21216; -- Hydross the Unstable
-- the lurker below
UPDATE `creature_template` SET `HealthModifier`=3.5*4       WHERE `entry`=21865; -- Coilfang Ambusher - Lurker submerge add
UPDATE `creature_template` SET `HealthModifier`=7*4         WHERE `entry`=21873; -- Coilfang Guardian -- Lurker submerge add
UPDATE `creature_template` SET `HealthModifier`=350*2.75    WHERE `entry`=21217; -- The Lurker Below
-- leotheras the blind
UPDATE `creature_template` SET `HealthModifier`=14*2        WHERE `entry`=21806; -- Greyheart Spellbinder (intro add Leotheras)
UPDATE `creature_template` SET `HealthModifier`=1.04125*1.2 WHERE `entry`=21857; -- Inner Demon
UPDATE `creature_template` SET `HealthModifier`=350*2.75    WHERE `entry`=21875; -- Shadow of Leotheras
UPDATE `creature_template` SET `HealthModifier`=350*2.75    WHERE `entry`=21215; -- Leotheras the Blind
-- fathomlord karathress
UPDATE `creature_template` SET `HealthModifier`=105*2.5     WHERE `entry`=21965; -- Tidalvess
UPDATE `creature_template` SET `HealthModifier`=0.0049      WHERE `entry`=22486; -- Greater Earthbind Totem
UPDATE `creature_template` SET `HealthModifier`=0.0245      WHERE `entry`=22487; -- Greater Poison Cleansing Totem
UPDATE `creature_template` SET `HealthModifier`=105*2.5     WHERE `entry`=21966; -- Sharkkis
UPDATE `creature_template` SET `HealthModifier`=17.5*3      WHERE `entry`=22119; -- Fathom Lurker
UPDATE `creature_template` SET `HealthModifier`=17.5*3      WHERE `entry`=22120; -- Fathom Sporebat
UPDATE `creature_template` SET `HealthModifier`=105*2.5     WHERE `entry`=21964; -- Caribdis
UPDATE `creature_template` SET `HealthModifier`=210*2.75    WHERE `entry`=21214; -- Fathomlord Karathress
-- morogrim tidewalker
UPDATE `creature_template` SET `HealthModifier`=9.8*2       WHERE `entry`=21913; -- Water Globule
UPDATE `creature_template` SET `HealthModifier`=1.75*2      WHERE `entry`=21920; -- Tidewalker Lurker (morogrim murloc spawn)
UPDATE `creature_template` SET `HealthModifier`=525*2.25    WHERE `entry`=21213; -- Morogrim Tidewalker
-- lady vashj
UPDATE `creature_template` SET `HealthModifier`=0.7*2.25    WHERE `entry`=21958; -- Enchanted Elemental
UPDATE `creature_template` SET `HealthModifier`=0.7*2.25    WHERE `entry`=22009; -- Tainted Elemental
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=22055; -- Coilfang Elite
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=22056; -- Coilfang Strider
UPDATE `creature_template` SET `HealthModifier`=0.7*2       WHERE `entry`=22140; -- Toxic Sporebat
UPDATE `creature_template` SET `HealthModifier`=560*3       WHERE `entry`=21212; -- Lady Vashj
-- trash
UPDATE `creature_template` SET `HealthModifier`=52.5*2.5    WHERE `entry`=21251; -- Underbog Colossus
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21339; -- Coilfang Hate-Screamer
UPDATE `creature_template` SET `HealthModifier`=1.4*2.5     WHERE `entry`=21263; -- Greyheart Technician
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21301; -- Coilfang Shatterer
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21231; -- Greyheart Shield-Bearer
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21229; -- Greyheart Tidecaller
UPDATE `creature_template` SET `HealthModifier`=1.05*2.5    WHERE `entry`=21260; -- Purified Water Elemental
UPDATE `creature_template` SET `HealthModifier`=24.5*2.5    WHERE `entry`=21221; -- Coilfang Beast-Tamer
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21230; -- Greyheart Nether-Mage
UPDATE `creature_template` SET `HealthModifier`=1.05*2.5    WHERE `entry`=21253; -- Tainted Water Elemental
UPDATE `creature_template` SET `HealthModifier`=7*2.5       WHERE `entry`=21873; -- Coilfang Guardian
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21220; -- Coilfang Priestess
UPDATE `creature_template` SET `HealthModifier`=10.5*2.5    WHERE `entry`=21863; -- Serpentshrine Lurker
UPDATE `creature_template` SET `HealthModifier`=10.5*2.5    WHERE `entry`=21246; -- Serpentshrine Sporebat
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21232; -- Greyheart Skulker
UPDATE `creature_template` SET `HealthModifier`=24.5*2.5    WHERE `entry`=21218; -- Vashj'ir Honor Guard
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21228; -- Tidewalker Hydromancer
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21227; -- Tidewalker Harpooner
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21224; -- Tidewalker Depth-Seer
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21226; -- Tidewalker Shaman
UPDATE `creature_template` SET `HealthModifier`=17.5*2.5    WHERE `entry`=21225; -- Tidewalker Warrior

DELETE FROM `zone_difficulty_info` WHERE `MapID`=548;
INSERT INTO `zone_difficulty_info` (`MapID`, `PhaseMask`, `HealingNerfValue`, `AbsorbNerfValue`, `MeleeDmgBuffValue`, `SpellDmgBuffValue`, `Enabled`, `Comment`) VALUES
(548, 0, 0.75, 0.75, 1.30, 1.30, 1, 'Serpentshrine Cavern');

DELETE FROM `zone_difficulty_spelloverrides` WHERE `SpellID` = 37675;
INSERT INTO `zone_difficulty_spelloverrides` (`SpellID`, `MapId`, `NerfValue`, `Enabled`, `Comment`) VALUES
(37641, 0, 1, 1, 'Serpentshrine Cavern - Leotheras - Whirlwind (dot)');
