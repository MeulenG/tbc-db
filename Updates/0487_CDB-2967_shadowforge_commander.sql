-- Add Movement & Remove duplicate spawns for Shadowforge Commander 2744
DELETE FROM `creature` WHERE (`id` = '2744');
DELETE FROM `pool_creature_template` WHERE (`id` = '2744');
DELETE FROM `pool_template` WHERE (`entry` = '1019'); -- 2744	1019	0	Shadowforge Commander (2744)

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
('69114', '2744', '0', '1', '0', '0', '-6382.8745', '-3111.3088', '310.9184', '0.768267273902893066', '86400', '172800', '0', '2');

DELETE FROM `creature_movement_template` WHERE `entry`='2744';
INSERT INTO `creature_movement_template` (`entry`, `pathid`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
('2744', '0', '01', '-6372.1616', '-3097.3650', '310.83580', '100', '0', '0'),
('2744', '0', '02', '-6361.8994', '-3085.7556', '310.83670', '100', '0', '0'),
('2744', '0', '03', '-6348.1245', '-3068.2239', '310.83420', '100', '0', '0'),
('2744', '0', '04', '-6336.6840', '-3075.1226', '310.83334', '100', '0', '0'),
('2744', '0', '05', '-6323.1780', '-3086.4673', '310.83383', '100', '0', '0'),
('2744', '0', '06', '-6316.0550', '-3093.8215', '310.83590', '100', '0', '0'),
('2744', '0', '07', '-6330.4220', '-3111.4817', '310.83606', '100', '0', '0'),
('2744', '0', '08', '-6340.5110', '-3123.8710', '310.83542', '100', '0', '0'),
('2744', '0', '09', '-6350.4185', '-3135.8296', '310.83500', '100', '0', '0'),
('2744', '0', '10', '-6340.5110', '-3123.8710', '310.83542', '100', '0', '0'),
('2744', '0', '11', '-6330.4220', '-3111.4817', '310.83606', '100', '0', '0'),
('2744', '0', '12', '-6316.0550', '-3093.8215', '310.83590', '100', '0', '0'),
('2744', '0', '13', '-6323.1780', '-3086.4673', '310.83383', '100', '0', '0'),
('2744', '0', '14', '-6336.6840', '-3075.1226', '310.83334', '100', '0', '0'),
('2744', '0', '15', '-6348.1245', '-3068.2239', '310.83420', '100', '0', '0'),
('2744', '0', '16', '-6361.8994', '-3085.7556', '310.83670', '100', '0', '0'),
('2744', '0', '17', '-6372.1616', '-3097.3650', '310.83580', '100', '0', '0'),
('2744', '0', '18', '-6382.3237', '-3110.7766', '310.83508', '100', '0', '0');

UPDATE `creature_template` SET `Faction` = '54', `SpeedWalk` = '1', `MeleeBaseAttackTime` = '2000', `RangedBaseAttackTime` = '2000' WHERE (`Entry` = '2744');
