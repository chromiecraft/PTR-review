-- friendly alliance
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17919; -- Alliance Footman
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17921; -- Alliance Rifleman
UPDATE `creature_template` SET `HealthModifier`=1.5*12 WHERE `entry`=17920; -- Alliance Knight
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17928; -- Alliance Priest
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17922; -- Alliance Sorceress
UPDATE `creature_template` SET `HealthModifier`=1.5*1 WHERE `entry`=17931; -- Alliance Peasant
UPDATE `creature_template` SET `HealthModifier`=1*75 WHERE `entry`=17772; -- Lady Jaina
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17943; -- Night Elf Archer
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=18485; -- Night Elf Ancient of War
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=18486; -- Night Elf Ancient of Lore
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=3794; -- Druid of the Talon
UPDATE `creature_template` SET `HealthModifier`=1.5*300 WHERE `entry`=17948; -- Tyrande Whisperwind
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17944; -- Dryad
UPDATE `creature_template` SET `HealthModifier`=1.5*2 WHERE `entry`=18487; -- Night Elf Ancient Protector
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=3795; -- Druid of the Claw
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17945; -- Night Elf Huntress

-- horde friendly
UPDATE `creature_template` SET `HealthModifier`=1.5*8 WHERE `entry`=17932; -- Horde Grunt
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17937; -- Horde Peon
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17936; -- Horde Shaman
UPDATE `creature_template` SET `HealthModifier`=1*75 WHERE `entry`=17852; -- Thrall
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17934; -- Horde Headhunter
UPDATE `creature_template` SET `HealthModifier`=1.5*6 WHERE `entry`=17935; -- Horde Witch Doctor
UPDATE `creature_template` SET `HealthModifier`=1.5*12 WHERE `entry`=17933; -- Tauren Warrior

-- misc
UPDATE `creature_template` SET `HealthModifier`=1*2.5 WHERE `entry`=18502; -- Night Elf Wisp
UPDATE `creature_template` SET `HealthModifier`=1*1 WHERE `entry`=23381; -- Tydormu
UPDATE `creature_template` SET `HealthModifier`=1*1 WHERE `entry`=23437; -- Indormi

-- trash waves
UPDATE `creature_template` SET `HealthModifier`=3.5*14 WHERE `entry`=17895; -- Ghoul
UPDATE `creature_template` SET `HealthModifier`=3.5*17.5 WHERE `entry`=17898; -- Abomination
UPDATE `creature_template` SET `HealthModifier`=3.5*15.4 WHERE `entry`=17899; -- Shadowy Necromancer
UPDATE `creature_template` SET `HealthModifier`=3.5*17.5 WHERE `entry`=17897; -- Crypt Fiend
UPDATE `creature_template` SET `HealthModifier`=3.5*10.5 WHERE `entry`=17905; -- Banshee
UPDATE `creature_template` SET `HealthModifier`=3*12.6 WHERE `entry`=17906; -- Gargoyle
UPDATE `creature_template` SET `HealthModifier`=4.5*31.5 WHERE `entry`=17907; -- Frost Wyrm
UPDATE `creature_template` SET `HealthModifier`=4*12.6 WHERE `entry`=17908; -- Giant Infernal
UPDATE `creature_template` SET `HealthModifier`=3.5*10.5 WHERE `entry`=17916; -- Fel Stalker
UPDATE `creature_template` SET `HealthModifier`=4*3.5 WHERE `entry`=17902; -- Skeleton Invader
UPDATE `creature_template` SET `HealthModifier`=4*3.5 WHERE `entry`=17903; -- Skeleton Mage

-- rage winterchill
UPDATE `creature_template` SET `HealthModifier`=3.4*490 WHERE `entry`=17767; -- Rage Winterchill

-- anetheron
UPDATE `creature_template` SET `HealthModifier`=4*490 WHERE `entry`=17808; -- Anetheron
UPDATE `creature_template` SET `HealthModifier`=3*21 WHERE `entry`=17818; -- Towering Infernal

-- kaz'rogal
UPDATE `creature_template` SET `HealthModifier`=2.7*490 WHERE `entry`=17888; -- Kaz'rogal

-- azgalor
UPDATE `creature_template` SET `HealthModifier`=3.3*490 WHERE `entry`=17842; -- Azgalor
UPDATE `creature_template` SET `HealthModifier`=3*24.5 WHERE `entry`=17864; -- Lesser Doomguard

-- archimonde
UPDATE `creature_template` SET `HealthModifier`=4*525 WHERE `entry`=17968; -- Archimonde


-- Overall buffs
DELETE FROM `zone_difficulty_info` WHERE `MapID`= 534;
INSERT INTO `zone_difficulty_info` (`MapID`, `PhaseMask`, `HealingNerfValue`, `AbsorbNerfValue`, `MeleeDmgBuffValue`, `SpellDmgBuffValue`, `Enabled`, `Comment`) VALUES
(534, 0, 0.75, 0.75, 1.48, 1.35, 1, 'The Battle For Mount Hyjal');

-- here we can override specific spells to make sure we have no 1 shot mechanics
DELETE FROM `zone_difficulty_spelloverrides` WHERE `SpellId` IN (31249, 31250, 31304, 31341, 31944,  31608);
INSERT INTO `zone_difficulty_spelloverrides` (`SpellID`, `MapId`, `NerfValue`, `Enabled`, `Comment`) VALUES
(31249, 0, 1, 1, 'The Battle For Mount Hyjal - Rage Winterchill - Icebolt'),
(31250, 0, 1, 1, 'The Battle For Mount Hyjal - Rage Winterchill - Frost Nova'),
(31304, 0, 1, 1, 'The Battle For Mount Hyjal - Azgalor infernal - Immolation'),
(31341, 0, 1, 1, 'The Battle For Mount Hyjal - Azgalor - Rain of Fire (effect)'),
(31944, 0, 1, 1, 'The Battle For Mount Hyjal - Archimonde - Doomfire'),
(31608, 0, 1, 1, 'The Battle For Mount Hyjal - Abomination - Disease Cloud (tick debuff)');
