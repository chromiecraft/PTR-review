-- Al'ar
UPDATE `creature_template` SET `HealthModifier`=1.5*280 WHERE `entry`=19514; -- Al'ar
UPDATE `creature_template` SET `HealthModifier`=5.4*7 WHERE `entry`=19551; -- Ember of Al'ar

-- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier`=2*350 WHERE `entry`=18805; -- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier`=3.4*10.5 WHERE `entry`=18806; -- Solarium Agent
UPDATE `creature_template` SET `HealthModifier`=3.4*2.8 WHERE `entry`=18925; -- Solarium Priest

-- Void Reaver
UPDATE `creature_template` SET `HealthModifier`=1.83*525 WHERE `entry`=19516; -- Void Reaver

-- Kael'thas
UPDATE `creature_template` SET `HealthModifier`=3.4*420 WHERE `entry`=19622; -- Kael'thas Sunstrider
UPDATE `creature_template` SET `HealthModifier`=3.4*25.2 WHERE `entry`=20064; -- Thaladred the Darkener
UPDATE `creature_template` SET `HealthModifier`=3.4*25.2 WHERE `entry`=20063; -- Master Engineer Telonicus
UPDATE `creature_template` SET `HealthModifier`=3.4*25.2 WHERE `entry`=20062; -- Grand Astromancer Capernian
UPDATE `creature_template` SET `HealthModifier`=3.4*25.2 WHERE `entry`=20060; -- Lord Sanguinar
UPDATE `creature_template` SET `HealthModifier`=3*17.5 WHERE `entry`=21362; -- Phoenix
UPDATE `creature_template` SET `HealthModifier`=3.4*7 WHERE `entry`=21364; -- Phoenix Egg
UPDATE `creature_template` SET `HealthModifier`=2*18.9 WHERE `entry`=21268; -- Netherstrand Longbow
UPDATE `creature_template` SET `HealthModifier`=2*22.05 WHERE `entry`=21269; -- Devastation
UPDATE `creature_template` SET `HealthModifier`=2*25.2 WHERE `entry`=21270; -- Cosmic Infuser
UPDATE `creature_template` SET `HealthModifier`=2*18.9 WHERE `entry`=21271; -- Infinity Blades
UPDATE `creature_template` SET `HealthModifier`=2*25.2 WHERE `entry`=21272; -- Warp Slicer
UPDATE `creature_template` SET `HealthModifier`=2*28.35 WHERE `entry`=21273; -- Phaseshift Bulwark
UPDATE `creature_template` SET `HealthModifier`=2*15.75 WHERE `entry`=21274; -- Staff of Disintegration

-- Trash
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20035; -- Bloodwarder Marshal
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20036; -- Bloodwarder Squire
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20034; -- Star Scryer
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20032; -- Bloodwarder Vindicator
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20031; -- Bloodwarder Legionnaire
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20033; -- Astromancer
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20037; -- Tempest Falconer
UPDATE `creature_template` SET `HealthModifier`=1.7*7 WHERE `entry`=20038; -- Phoenix-Hawk Hatchling
UPDATE `creature_template` SET `HealthModifier`=1.7*52.5 WHERE `entry`=20039; -- Phoenix-Hawk
UPDATE `creature_template` SET `HealthModifier`=1.7*52.5 WHERE `entry`=20040; -- Crystalcore Devastator
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20041; -- Crystalcore Sentinel
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20050; -- Crimson Hand Inquisitor
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20048; -- Crimson Hand Centurion
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20049; -- Crimson Hand Blood Knight
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20047; -- Crimson Hand Battle Mage
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20042; -- Tempest-Smith
UPDATE `creature_template` SET `HealthModifier`=1.7*17.5 WHERE `entry`=20052; -- Crystalcore Mechanic
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20046; -- Astromancer Lord
UPDATE `creature_template` SET `HealthModifier`=1.7*2.8 WHERE `entry`=20044; -- Novice Astromancer
UPDATE `creature_template` SET `HealthModifier`=1.7*2.8 WHERE `entry`=20043; -- Apprentice Star Scryer
UPDATE `creature_template` SET `HealthModifier`=1.7*28 WHERE `entry`=20045; -- Nether Scryer

-- Overall buffs
DELETE FROM `zone_difficulty_info` WHERE `MapID`= 550;
INSERT INTO `zone_difficulty_info` (`MapID`, `PhaseMask`, `HealingNerfValue`, `AbsorbNerfValue`, `MeleeDmgBuffValue`, `SpellDmgBuffValue`, `Enabled`, `Comment`) VALUES
(550, 0, 0.75, 0.75, 1.20, 1.20, 1, 'Tempest Keep');

-- here we can override specific spells to make sure we have no 1 shot mechanics
DELETE FROM `zone_difficulty_spelloverrides` WHERE `SpellId` IN (37036, 36132, 37120, 33031, 34121, 35181);
INSERT INTO `zone_difficulty_spelloverrides` (`SpellID`, `MapId`, `NerfValue`, `Enabled`, `Comment`) VALUES
(37036, 0, 0.20, 1, 'Tempest Keep - Master Engineer Telonicus Bomb Damage Nerf'),
(36132, 0, 1, 1, 'Tempest Keep - Bloodwarder Marshal \'Whirlwind\''),
(37120, 0, 1, 1, 'Tempest Keep - Tempest-Smith \'Fragmentation Bomb\''),
(33031, 0, 1.15, 1, 'Tempest Keep - Solarian \'Arcane Missiles\''),
(34121, 0, 1, 1, 'Tempest Keep - Al\'ar Flame Buffet'),
(35181, 0, 2, 1, 'Tempest Keep - Al\'ar Dive Bomb spread damage');
