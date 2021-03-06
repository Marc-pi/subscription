CREATE TABLE `{people}` (
  `id`         INT(10) UNSIGNED    NOT NULL AUTO_INCREMENT,
  `campaign`   INT(10) UNSIGNED    NOT NULL DEFAULT '0',
  `uid`        INT(10) UNSIGNED    NOT NULL DEFAULT '0',
  `status`     TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_join`  INT(10) UNSIGNED    NOT NULL DEFAULT '0',
  `time_update`  INT(10) UNSIGNED  NOT NULL DEFAULT '0',
  `first_name` VARCHAR(255)        NOT NULL DEFAULT '',
  `last_name`  VARCHAR(255)        NOT NULL DEFAULT '',
  `email`      VARCHAR(64)                  DEFAULT NULL,
  `mobile`     VARCHAR(16)                  DEFAULT NULL,
  `newsletter` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `campaign` (`campaign`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `time_join` (`time_join`),
  KEY `list_campaign` (`status`, `campaign`),
  KEY `list_uid` (`status`, `uid`),
  KEY `list_newsletter` (`status`, `newsletter`),
  KEY `list_order` (`time_join`, `id`)
);

CREATE TABLE `{campaign}` (
  `id`                INT(10) UNSIGNED              NOT NULL AUTO_INCREMENT,
  `title`             VARCHAR(255)                  NOT NULL DEFAULT '',
  `slug`              VARCHAR(255)                  NOT NULL DEFAULT '',
  `text_description`  TEXT,
  `text_subscription` TEXT,
  `text_email`        TEXT,
  `text_sms`          TEXT,
  `seo_title`         VARCHAR(255)                  NOT NULL DEFAULT '',
  `seo_keywords`      VARCHAR(255)                  NOT NULL DEFAULT '',
  `seo_description`   VARCHAR(255)                  NOT NULL DEFAULT '',
  `status`            TINYINT(1) UNSIGNED           NOT NULL DEFAULT '0',
  `time_create`       INT(10) UNSIGNED              NOT NULL DEFAULT '0',
  `time_start`        INT(10) UNSIGNED              NOT NULL DEFAULT '0',
  `time_end`          INT(10) UNSIGNED              NOT NULL DEFAULT '0',
  `hits`              INT(10) UNSIGNED              NOT NULL DEFAULT '0',
  `join`              INT(10) UNSIGNED              NOT NULL DEFAULT '0',
  `image`             VARCHAR(255)                  NOT NULL DEFAULT '',
  `path`              VARCHAR(16)                   NOT NULL DEFAULT '',
  `subscription_type` ENUM ('email', 'sms', 'both') NOT NULL DEFAULT 'email',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `time_create` (`time_create`),
  KEY `status` (`status`)
);
