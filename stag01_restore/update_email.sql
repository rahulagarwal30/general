UPDATE gateway_issuer_mapping SET priority=0 WHERE issuer_id=1;
UPDATE gateway_issuer_mapping SET active=0 WHERE issuer_id=1;
INSERT INTO gateway_issuer_mapping VALUES (NULL, '1', '1', '1', '1', NULL, NULL, NULL, '0.021500');

update user set email='rahul+qa@test.com' where email is not null and email  not like 'rahul.agarwal@healthkart.com';
update notify_me set email=concat(id,'@test.com') where email is not null and email not like 'rahul.agarwal@healthkart.com';
update email_recepient set email=concat(id,'@test.com') where email is not null and email not like '%@healthkart.com';
update manufacturer set email='rahul+qa@test.com' where email is not null and email  not like 'rahul.agarwal@healthkart.com';
update supplier set email_id='manish.gupta@healthkart.com';

update shipment set email_sent=1;
update payment set contact_number ='9999999999';
update address set phone ='9999999999';

CREATE TABLE `traffic_tracking` (`id` int(11) NOT NULL AUTO_INCREMENT,`src_url` varchar(500) DEFAULT NULL,`traffic_src` varchar(45) NOT NULL,`traffic_src_details` varchar(200) DEFAULT NULL,`traffic_src_paid` tinyint(4) NOT NULL DEFAULT '0',`landing_url` varchar(500) NOT NULL DEFAULT 'healthkart.com',`primary_category` varchar(80) DEFAULT NULL,`product_id` varchar(20) DEFAULT NULL,`user_id` int(11) DEFAULT NULL,`ip` varchar(45) NOT NULL DEFAULT '127.0.1.1',`session_id` varchar(45) NOT NULL,`order_id` int(11) DEFAULT NULL,`create_dt` datetime NOT NULL,`update_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,`user_agent` varchar(200) DEFAULT NULL,`first_order` int(11) DEFAULT NULL,`returning_user` int(11) DEFAULT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `user_browsing_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `traffic_tracking_id` int(11) NOT NULL,
  `page_url` varchar(500) NOT NULL DEFAULT 'healthkart.com',
  `primary_category` varchar(80) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_page_url` (`traffic_tracking_id`,`page_url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `campaign_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utm_source` varchar(120) DEFAULT NULL,
  `utm_medium` varchar(120) DEFAULT NULL,
  `utm_campaign` varchar(120) DEFAULT NULL,
  `referral_url` text,
  `target_url` varchar(450) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `params_string` varchar(120) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_dt` datetime NOT NULL,
  `update_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36741425 DEFAULT CHARSET=latin1;


update user set email='manish.gupta@healthkart.com' where login='manish.gupta@healthkart.com';
update user set email='manishgupta7145@gmail.com' where login='manishgupta7145@gmail.com';
update address set phone = '9958587188' where user_id='5615989';
INSERT INTO user_has_role VALUES ('5615989', 'ACTION_QUEUE');
INSERT INTO user_has_role VALUES ('5615989', 'CATEGORY_MANAGER_L1');
INSERT INTO user_has_role VALUES ('5615989', 'CATEGORY_MANAGER_L2');
INSERT INTO user_has_role VALUES ('5615989', 'CUSTOMER_SUPPORT_L3');
INSERT INTO user_has_role VALUES ('5615989', 'CUSTOMER_SUPPORT_L2');
INSERT INTO user_has_role VALUES ('5615989', 'FINANCE');
INSERT INTO user_has_role VALUES ('5615989', 'FINANCE_ADMIN');
INSERT INTO user_has_role VALUES ('5615989', 'FITNESSPRO_USER');
INSERT INTO user_has_role VALUES ('5615989', 'MARKETING');
INSERT INTO user_has_role VALUES ('5615989', 'MASTER_BUG_RESOLVER');
INSERT INTO user_has_role VALUES ('5615989', 'OFFLINE_PAYMENT_APPROVER');
INSERT INTO user_has_role VALUES ('5615989', 'PAYMENT_MANAGER');
INSERT INTO user_has_role VALUES ('5615989', 'PO_APPROVER');
INSERT INTO user_has_role VALUES ('5615989', 'RECONCILIATION');
INSERT INTO user_has_role VALUES ('5615989', 'REPORT_ADMIN');
INSERT INTO user_has_role VALUES ('5615989', 'REWARD_POINT_MANAGER_L1');
INSERT INTO user_has_role VALUES ('5615989', 'REWARD_POINT_MANAGER_L2');
INSERT INTO user_has_role VALUES ('5615989', 'ROCKSTAR');
INSERT INTO user_has_role VALUES ('5615989', 'SERVICE_QUEUE');
INSERT INTO user_has_role VALUES ('5615989', 'SITE_CONTENT_MANAGER');
INSERT INTO user_has_role VALUES ('5615989', 'SUPPLIER');
INSERT INTO user_has_role VALUES ('5615989', 'WH_EMPLOYEE_REVERSE_PICKUP');
INSERT INTO user_has_role VALUES ('5615989', 'WH_MANAGER_L1');

INSERT INTO user_has_role VALUES ('13285656','GOD');
INSERT INTO user_has_role VALUES ('13285656','ADMIN');
INSERT INTO user_has_role VALUES ('13285656', 'DEVELOPER');
INSERT INTO user_has_role VALUES ('13285656', 'PO_APPROVER');
INSERT INTO user_has_role VALUES ('13285656', 'WH_MANAGER');
INSERT INTO user_has_role VALUES ('13285656', 'PAYMENT_MANAGER');
INSERT INTO user_has_role VALUES ('13285656', 'CUSTOMER_SUPPORT');
INSERT INTO user_has_role VALUES ('13285656', 'CUSTOMER_SUPPORT_L3');
INSERT INTO user_has_role VALUES ('13285656', 'STORE_MANAGER');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_CDCA_UPDATE');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_CDCA_VIEW');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_L1');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_L2');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_L3');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_MPA');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_PCM_UPDATE');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_PCM_VIEW');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_SRS_RESOLVE_COURIER_CHANGE');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_SRS_RESOLVE_CREATE_AWB');
INSERT INTO user_has_role VALUES ('13285656', 'OPS_MANAGER_SRS_RESOLVE_SERVICE_TYPE');
INSERT INTO user_has_role VALUES ('13285656', 'FINANCE');
INSERT INTO user_has_role VALUES ('13285656', 'FINANCE_ADMIN');
update user set email='shankari.das@healthkart.com' where login='shankari.das@healthkart.com';

INSERT INTO user_has_role VALUES ('13493426','GOD');
INSERT INTO user_has_role VALUES ('13493426','ADMIN');
INSERT INTO user_has_role VALUES ('13493426', 'DEVELOPER');
INSERT INTO user_has_role VALUES ('13493426', 'PO_APPROVER');
INSERT INTO user_has_role VALUES ('13493426', 'WH_MANAGER');
INSERT INTO user_has_role VALUES ('13493426', 'PAYMENT_MANAGER');
INSERT INTO user_has_role VALUES ('13493426', 'CUSTOMER_SUPPORT');
INSERT INTO user_has_role VALUES ('13493426', 'CUSTOMER_SUPPORT_L3');
INSERT INTO user_has_role VALUES ('13493426', 'STORE_MANAGER');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_CDCA_UPDATE');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_CDCA_VIEW');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_L1');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_L2');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_L3');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_MPA');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_PCM_UPDATE');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_PCM_VIEW');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_SRS_RESOLVE_COURIER_CHANGE');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_SRS_RESOLVE_CREATE_AWB');
INSERT INTO user_has_role VALUES ('13493426', 'OPS_MANAGER_SRS_RESOLVE_SERVICE_TYPE');
INSERT INTO user_has_role VALUES ('13493426', 'FINANCE');
INSERT INTO user_has_role VALUES ('13493426', 'FINANCE_ADMIN');
update user set email='nitin.kukna@healthkart.com' where login='nitin.kukna@healthkart.com';

update user set email='manish.gupta+111@healthkart.com' where login='manish.gupta+111@healthkart.com';
INSERT INTO user_has_role VALUES ('5938829', 'ACTION_QUEUE');
INSERT INTO user_has_role VALUES ('5938829', 'BASIC_ROLES');
INSERT INTO user_has_role VALUES ('5938829', 'CATEGORY_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'CATEGORY_MANAGER_L1');
INSERT INTO user_has_role VALUES ('5938829', 'CATEGORY_MANAGER_L2');
INSERT INTO user_has_role VALUES ('5938829', 'CUSTOMER_SUPPORT');
INSERT INTO user_has_role VALUES ('5938829', 'CUSTOMER_SUPPORT_L3');
INSERT INTO user_has_role VALUES ('5938829', 'CUSTOMER_SUPPORT_L2');
INSERT INTO user_has_role VALUES ('5938829', 'DELIVERY_QUEUE');
INSERT INTO user_has_role VALUES ('5938829', 'DEVELOPER');
INSERT INTO user_has_role VALUES ('5938829', 'FINANCE');
INSERT INTO user_has_role VALUES ('5938829', 'FINANCE_ADMIN');
INSERT INTO user_has_role VALUES ('5938829', 'FITNESSPRO_USER');
INSERT INTO user_has_role VALUES ('5938829', 'GOD');
INSERT INTO user_has_role VALUES ('5938829', 'MARKETING');
INSERT INTO user_has_role VALUES ('5938829', 'MASTER_BUG_RESOLVER');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_CDCA_UPDATE');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_CDCA_VIEW');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_L1');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_L2');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_L3');
INSERT INTO user_has_role VALUES ('5938829', 'CUSTOMER_SUPPORT_REVERSE_PICKUP');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_MPA');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_PCM_UPDATE');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_PCM_VIEW');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_REVERSE_PICKUP');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_SRS_CHANGE_AWB');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_SRS_CHANGE_SOSTATUS');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_SRS_RESOLVE_COURIER_CHANGE');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_SRS_RESOLVE_CREATE_AWB');
INSERT INTO user_has_role VALUES ('5938829', 'OPS_MANAGER_SRS_RESOLVE_SERVICE_TYPE');
INSERT INTO user_has_role VALUES ('5938829', 'PAYMENT_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'PO_APPROVER');
INSERT INTO user_has_role VALUES ('5938829', 'RECONCILIATION');
INSERT INTO user_has_role VALUES ('5938829', 'REPORT_ADMIN');
INSERT INTO user_has_role VALUES ('5938829', 'REWARD_POINT_MANAGER_L1');
INSERT INTO user_has_role VALUES ('5938829', 'REWARD_POINT_MANAGER_L2');
INSERT INTO user_has_role VALUES ('5938829', 'ROCKSTAR');
INSERT INTO user_has_role VALUES ('5938829', 'ROLE_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'SERVICE_QUEUE');
INSERT INTO user_has_role VALUES ('5938829', 'SITE_CONTENT_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'SPLITTER');
INSERT INTO user_has_role VALUES ('5938829', 'STORE_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'SUPPLIER');
INSERT INTO user_has_role VALUES ('5938829', 'WH_EMPLOYEE_REVERSE_PICKUP');
INSERT INTO user_has_role VALUES ('5938829', 'WH_MANAGER');
INSERT INTO user_has_role VALUES ('5938829', 'WH_MANAGER_L1');
update user set password_checksum='iWlAVQtkoP17/U7CtSqw0w=='  where login='manish.gupta+111@healthkart.com';
INSERT INTO user_has_role VALUES ('5938829','ADMIN');

update payment set gateway_reference_id = '9999999999';

commit;
