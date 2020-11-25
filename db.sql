SELECT `name`, `birthday` FROM `kunder` WHERE `name`="Ursula";
INSERT INTO `kunder` (`name`, `birthday`, `address`) VALUES ('Kurt', '20-05-1957', 'Esplanaden 15');
UPDATE `kunder` SET `name`='Leif' WHERE `name`='Kurt';
DELETE FROM `kunder` WHERE `name`='Leif';
