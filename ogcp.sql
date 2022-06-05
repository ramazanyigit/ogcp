-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 11 Ara 2013, 23:55:58
-- Sunucu sürümü: 5.5.34
-- PHP Sürümü: 5.5.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `ogcp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_announcements`
--

CREATE TABLE IF NOT EXISTS `ogcp_announcements` (
  `AnnouncementID` int(11) NOT NULL AUTO_INCREMENT,
  `AnnouncementTT` varchar(64) NOT NULL,
  `AnnouncementCont` text NOT NULL,
  `AnnouncementUserID` int(11) NOT NULL,
  `AnnouncementCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AnnouncementID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ogcp_announcements`
--

INSERT INTO `ogcp_announcements` (`AnnouncementID`, `AnnouncementTT`, `AnnouncementCont`, `AnnouncementUserID`, `AnnouncementCreate`) VALUES
(1, 'test', 'test', 1, '2013-12-03 06:06:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_files`
--

CREATE TABLE IF NOT EXISTS `ogcp_files` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(64) NOT NULL,
  `FilePath` varchar(128) NOT NULL,
  PRIMARY KEY (`FileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `ogcp_files`
--

INSERT INTO `ogcp_files` (`FileID`, `FileName`, `FilePath`) VALUES
(2, 'Amx Mod X Ayarlari', '/addons/amxmodx/configs/amxx.cfg'),
(3, 'Admin Düzenle', '/addons/amxmodx/configs/users.ini'),
(4, 'Küfür Engelleme', '/addons/amxmodx/configs/reklamengel/kufur.ini'),
(5, 'Komut Yasaklama', '/addons/amxmodx/configs/KomutEngelleme/Musteri.ini'),
(6, 'Harita S?ralamas?', '/mapcycle.txt'),
(7, 'Harita Oylamas?', '/addons/amxmodx/configs/maps.ini');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_machines`
--

CREATE TABLE IF NOT EXISTS `ogcp_machines` (
  `MachID` int(11) NOT NULL AUTO_INCREMENT,
  `MachIP` varchar(32) NOT NULL,
  `MachPort` int(11) NOT NULL,
  `MachUser` varchar(32) NOT NULL,
  `MachPass` varchar(32) NOT NULL,
  PRIMARY KEY (`MachID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `ogcp_machines`
--

INSERT INTO `ogcp_machines` (`MachID`, `MachIP`, `MachPort`, `MachUser`, `MachPass`) VALUES
(2, '31.210.115.2', 22, 'root', '624315zz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_packets`
--

CREATE TABLE IF NOT EXISTS `ogcp_packets` (
  `PacketID` int(11) NOT NULL AUTO_INCREMENT,
  `PacketName` varchar(32) NOT NULL,
  `PacketStart` text NOT NULL,
  `PacketStop` text NOT NULL,
  PRIMARY KEY (`PacketID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ogcp_packets`
--

INSERT INTO `ogcp_packets` (`PacketID`, `PacketName`, `PacketStart`, `PacketStop`) VALUES
(1, 'Public', 'screen -A -m -d -S Screen ./hlds_run -game cstrike -nomaster -console -noipx -nojoy -debug -zone 4096 -heapsize 65536 +ip Ip +port Port +maxplayers Maxslot +map Map +exec server.cfg', 'screen -dr Screen -X quit');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_plugins`
--

CREATE TABLE IF NOT EXISTS `ogcp_plugins` (
  `PluginID` int(11) NOT NULL AUTO_INCREMENT,
  `PluginName` varchar(64) NOT NULL,
  `PluginDesc` varchar(32) NOT NULL,
  `PluginFileName` varchar(64) NOT NULL,
  `PluginShow` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PluginID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ogcp_plugins`
--

INSERT INTO `ogcp_plugins` (`PluginID`, `PluginName`, `PluginDesc`, `PluginFileName`, `PluginShow`) VALUES
(1, 'Test', 'test', 'test.amxx', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_servers`
--

CREATE TABLE IF NOT EXISTS `ogcp_servers` (
  `ServerID` int(11) NOT NULL AUTO_INCREMENT,
  `ServerMachID` int(11) NOT NULL,
  `ServerIP` varchar(32) NOT NULL,
  `ServerPort` int(11) NOT NULL,
  `ServerMaxPlayers` int(11) NOT NULL,
  `ServerMap` varchar(64) NOT NULL,
  `ServerPath` varchar(128) NOT NULL,
  `ServerPacket` int(11) NOT NULL,
  PRIMARY KEY (`ServerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Tablo döküm verisi `ogcp_servers`
--

INSERT INTO `ogcp_servers` (`ServerID`, `ServerMachID`, `ServerIP`, `ServerPort`, `ServerMaxPlayers`, `ServerMap`, `ServerPath`, `ServerPacket`) VALUES
(2, 2, '31.210.115.2', 27015, 32, 'de_dust2', '/home/cs2', 1),
(3, 2, '31.210.115.3', 27015, 32, 'de_dust2', '/home/cs3', 1),
(4, 2, '31.210.115.4', 27015, 32, 'de_dust2', '/home/cs4', 1),
(5, 2, '31.210.115.5', 27015, 32, 'de_dust2', '/home/cs5', 1),
(6, 2, '31.210.115.6', 27015, 32, 'deathrun_temple', '/home/cs6', 1),
(7, 2, '31.210.115.7', 27015, 32, 'deathrun_temple', '/home/cs7', 1),
(8, 2, '31.210.115.8', 27015, 32, 'deathrun_temple', '/home/cs8', 1),
(9, 2, '31.210.115.9', 27015, 32, 'deathrun_temple', '/home/cs9', 1),
(10, 2, '31.210.115.10', 27015, 32, 'zm_heal_dust2', '/home/cs10', 1),
(11, 2, '31.210.115.11', 27015, 32, 'de_dust2', '/home/cs11', 1),
(12, 2, '31.210.115.12', 27015, 32, 'de_dust2', '/home/cs12', 1),
(13, 2, '31.210.115.13', 27015, 32, 'bb_dust2', '/home/cs13', 1),
(14, 2, '31.210.115.14', 27015, 32, 'deathrun_temple', '/home/cs14', 1),
(15, 2, '31.210.115.15', 27015, 32, 'de_dust2', '/home/cs15', 1),
(16, 2, '31.210.115.16', 27015, 32, 'deathrun_temple', '/home/cs16', 1),
(17, 2, '31.210.115.17', 27015, 32, 'deathrun_temple', '/home/cs17', 1),
(18, 2, '31.210.115.18', 27015, 32, 'deathrun_temple', '/home/cs18', 1),
(19, 2, '31.210.115.19', 27015, 32, 'deathrun_temple', '/home/cs19', 1),
(20, 2, '31.210.115.20', 27015, 32, 'deathrun_temple', '/home/cs20', 1),
(21, 2, '31.210.115.21', 27015, 32, 'deathrun_temple', '/home/cs21', 1),
(22, 2, '31.210.115.22', 27015, 32, 'deathrun_temple', '/home/cs22', 1),
(23, 2, '31.210.115.23', 27015, 32, 'deathrun_temple', '/home/cs23', 1),
(24, 2, '31.210.115.24', 27015, 32, 'deathrun_temple', '/home/cs24', 1),
(25, 2, '31.210.115.25', 27015, 32, 'zm_heal_dust2', '/home/cs25', 1),
(26, 2, '31.210.115.26', 27015, 32, 'deathrun_temple', '/home/cs26', 1),
(27, 2, '31.210.115.27', 27015, 32, 'deathrun_temple', '/home/cs27', 1),
(28, 2, '31.210.115.28', 27015, 32, 'deathrun_temple', '/home/cs28', 1),
(29, 2, '31.210.115.29', 27015, 32, 'deathrun_temple', '/home/cs29', 1),
(30, 2, '31.210.115.30', 27015, 32, 'deathrun_temple', '/home/cs30', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_ticketmessages`
--

CREATE TABLE IF NOT EXISTS `ogcp_ticketmessages` (
  `MessageID` int(11) NOT NULL AUTO_INCREMENT,
  `MessageContent` text NOT NULL,
  `MessageUserID` int(11) NOT NULL,
  `MessageTicketID` int(11) NOT NULL,
  `MessageCreateT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ogcp_ticketmessages`
--

INSERT INTO `ogcp_ticketmessages` (`MessageID`, `MessageContent`, `MessageUserID`, `MessageTicketID`, `MessageCreateT`) VALUES
(1, 'Plugin Yüklenmmiyor Yard?mc? Olurmusunuz ? ', 9, 1, '2013-12-09 19:05:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_tickets`
--

CREATE TABLE IF NOT EXISTS `ogcp_tickets` (
  `TicketID` int(11) NOT NULL AUTO_INCREMENT,
  `TicketUserID` int(11) NOT NULL,
  `TicketTitle` varchar(64) NOT NULL,
  `TicketServerID` int(11) NOT NULL,
  `TicketMessageID` int(11) NOT NULL,
  `TicketStatus` int(11) NOT NULL DEFAULT '0',
  `TicketPriority` int(11) NOT NULL,
  `TicketCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TicketID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ogcp_tickets`
--

INSERT INTO `ogcp_tickets` (`TicketID`, `TicketUserID`, `TicketTitle`, `TicketServerID`, `TicketMessageID`, `TicketStatus`, `TicketPriority`, `TicketCreateTime`) VALUES
(1, 9, 'Plugin Yüklenmiyor.', 11, 0, 0, 1, '2013-12-09 19:05:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_users`
--

CREATE TABLE IF NOT EXISTS `ogcp_users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(128) CHARACTER SET latin5 NOT NULL,
  `UserPassword` varchar(64) CHARACTER SET latin5 NOT NULL,
  `UserEmail2` varchar(128) CHARACTER SET latin5 NOT NULL,
  `UserComment` text CHARACTER SET latin5 NOT NULL,
  `UserName` varchar(64) CHARACTER SET latin5 NOT NULL,
  `UserCity` varchar(16) CHARACTER SET latin5 NOT NULL,
  `UserAddress` text CHARACTER SET latin5 NOT NULL,
  `UserTelephone` varchar(24) CHARACTER SET latin5 NOT NULL,
  `UserGroup` int(11) NOT NULL DEFAULT '0',
  `UserLastLogin` int(11) NOT NULL DEFAULT '0',
  `UserLastLogin2` int(11) NOT NULL DEFAULT '0',
  `ShowMachine` int(11) NOT NULL DEFAULT '0',
  `ShowServers` int(11) NOT NULL DEFAULT '0',
  `ShowUsers` int(11) NOT NULL DEFAULT '0',
  `ShowAnnouncements` int(11) NOT NULL DEFAULT '0',
  `ShowTickets` int(11) NOT NULL DEFAULT '0',
  `ShowPlugins` int(11) NOT NULL DEFAULT '0',
  `ShowFiles` int(11) NOT NULL DEFAULT '0',
  `UserCreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Tablo döküm verisi `ogcp_users`
--

INSERT INTO `ogcp_users` (`UserID`, `UserEmail`, `UserPassword`, `UserEmail2`, `UserComment`, `UserName`, `UserCity`, `UserAddress`, `UserTelephone`, `UserGroup`, `UserLastLogin`, `UserLastLogin2`, `ShowMachine`, `ShowServers`, `ShowUsers`, `ShowAnnouncements`, `ShowTickets`, `ShowPlugins`, `ShowFiles`, `UserCreateTime`) VALUES
(0, 'Sistem', 'Sistem', 'Sistem', 'Sistem', 'Sistem', 'Sistem', 'Sistem', 'Sistem', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2013-12-03 17:50:25'),
(1, 'Admin', '1162ee6255300741da33ac07447c9f18', 'Admin', '', 'Admin', 'Admin', 'Admin', 'Admin', 3, 1386724355, 1386703613, 1, 1, 1, 1, 1, 1, 1, '0000-00-00 00:00:00'),
(2, 'test', '7e29c63e3811ff923be7eadedafd0505', 'teste', 'test', 'test', 'teste', 'test', 'test', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00'),
(4, 'revenge357', 'ffe1b895bbc69fffc6f992e65797051c', 'Selim@Revengeclan.com', '-', 'Selim VURANLAR', 'Bursa', '-', '0537 522 30 00', 1, 1386787916, 1386787757, 0, 0, 0, 0, 0, 0, 0, '2013-12-05 17:18:44'),
(5, 'osmanulker', '8316b0d63978c2367c632c41c3acf83b', 'osmanulker34@gmail.com', '', 'Osman Ulker', 'istanbul', '-', '0534 069 16 79', 1, 1386788400, 1386684052, 0, 0, 0, 0, 0, 0, 0, '2013-12-05 17:42:46'),
(6, 'Berkant.ADM', 'f2858490fde5154a9630fb08f2c26d93', 'qReat.Yoneticiler@hotmail.com', '-', 'ADIM BERKANT', 'İstanbul', '-', '-', 1, 1386795925, 1386757787, 0, 0, 0, 0, 0, 0, 0, '2013-12-05 20:14:32'),
(7, 'zrwp', 'a5192293ea6168fe1c66caa7a34f5587', 'anilemreozdemir@gmail.com', '-', 'Anıl Emre ÖZDEMİR', 'Istanbul', '-', '0537 713 16 33', 1, 1386795606, 1386794324, 0, 0, 0, 0, 0, 0, 0, '2013-12-05 21:32:05'),
(8, 'leaks3434', '69d6d2412fc1f5d3e456c4d89ea9c537', 'emrahaydin@hotmail.com', '-', 'YALANCI EMRAH', '-', '-', '-', 1, 1386769375, 1386695343, 0, 0, 0, 0, 0, 0, 0, '2013-12-07 22:24:22'),
(9, 'Lkalke28', '1b3112cb313eb7a29b09f9de22778be2', '-', '-', 'Samet Kurtuluş', '-', '-', '-', 1, 1386791207, 1386749915, 0, 0, 0, 0, 0, 0, 0, '2013-12-08 00:23:12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogcp_userservers`
--

CREATE TABLE IF NOT EXISTS `ogcp_userservers` (
  `UserServerID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ServerID` int(11) NOT NULL,
  `UserServerStatus` int(11) NOT NULL DEFAULT '0',
  `ServerFTPCon` int(11) NOT NULL DEFAULT '0',
  `ServerPluginCon` int(11) NOT NULL DEFAULT '0',
  `UserServerPrice` int(11) NOT NULL,
  `UserServerPriceTime` int(11) NOT NULL,
  `UserServerBank` int(11) NOT NULL,
  PRIMARY KEY (`UserServerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Tablo döküm verisi `ogcp_userservers`
--

INSERT INTO `ogcp_userservers` (`UserServerID`, `UserID`, `ServerID`, `UserServerStatus`, `ServerFTPCon`, `ServerPluginCon`, `UserServerPrice`, `UserServerPriceTime`, `UserServerBank`) VALUES
(1, 4, 14, 1, 1, 1, 0, 1388596850, 1),
(2, 4, 15, 1, 1, 1, 0, 1388596861, 1),
(3, 5, 13, 1, 1, 1, 0, 1420134199, 1),
(4, 6, 9, 1, 1, 1, 40, 1388952968, 4),
(5, 7, 2, 1, 1, 1, 0, 1420147971, 1),
(6, 7, 11, 1, 1, 1, 0, 1420147980, 1),
(7, 7, 12, 1, 1, 1, 1, 1420147989, 1),
(8, 6, 6, 1, 1, 1, 40, 1389111723, 1),
(9, 7, 10, 1, 1, 1, 0, 1420141694, 1),
(10, 8, 7, 1, 1, 1, 40, 1420064707, 0),
(11, 9, 25, 1, 1, 1, 0, 1420071827, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
