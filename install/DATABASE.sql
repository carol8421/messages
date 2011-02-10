CREATE TABLE `messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT '0',
  `module` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(176) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `geo_lat` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `geo_long` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `geo_accuracy` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,  
  `viewed` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_at` datetime DEFAULT '0000-00-00 00:00:00',
  `opened_at` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=0 ;

INSERT INTO `settings` VALUES(NULL, 1, 'messages', 'enabled', 'TRUE');
INSERT INTO `settings` VALUES(NULL, 1, 'messages', 'display_style', 'linear');
INSERT INTO `settings` VALUES(NULL, 1, 'messages', 'date_style', 'DIGITS');
INSERT INTO `settings` VALUES(NULL, 1, 'messages', 'notifications_allow', 'TRUE');
INSERT INTO `settings` VALUES(NULL, 1, 'messages', 'notifications_method', 'NONE');