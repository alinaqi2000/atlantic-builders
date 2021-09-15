DROP TABLE IF EXISTS tbl_backup;

CREATE TABLE `tbl_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_filename` varchar(100) NOT NULL,
  `backup_data` longtext NOT NULL,
  `backup_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;




DROP TABLE IF EXISTS tbl_categories;

CREATE TABLE `tbl_categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `cat_status` int(1) NOT NULL,
  `cat_order` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_categories VALUES("6","Hand Wash","hand-wash","1","1"),
("7","Hand Wax","hand-wax","1","2"),
("8","Auto Wash","auto-wash","1","3"),
("9","Tripple","tripple","1","4"),
("10","Auto Details","auto-details","1","5");



DROP TABLE IF EXISTS tbl_countvisit;

CREATE TABLE `tbl_countvisit` (
  `visit_count_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_count_ip` varchar(15) NOT NULL,
  `visit_count_date` varchar(20) NOT NULL,
  PRIMARY KEY (`visit_count_id`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_countvisit VALUES("271","39.52.120.9","2021-Jul-13"),
("272","39.52.120.9","2021-Jul-13"),
("273","39.52.120.9","2021-Jul-14"),
("274","39.52.120.9","2021-Jul-14"),
("275","39.52.120.9","2021-Jul-14"),
("276","39.52.120.9","2021-Jul-14"),
("277","39.52.120.9","2021-Jul-14"),
("278","39.52.120.9","2021-Jul-14"),
("279","39.52.120.9","2021-Jul-14"),
("280","39.52.120.9","2021-Jul-14"),
("281","39.52.120.9","2021-Jul-14"),
("282","39.52.120.9","2021-Jul-14"),
("283","39.52.120.9","2021-Jul-14"),
("284","39.52.4.214","2021-Jul-14"),
("285","39.52.4.214","2021-Jul-14"),
("286","39.52.4.214","2021-Jul-14"),
("287","39.52.4.214","2021-Jul-14"),
("288","39.52.4.214","2021-Jul-14"),
("289","39.52.4.214","2021-Jul-14"),
("290","39.52.4.214","2021-Jul-14"),
("291","39.52.4.214","2021-Jul-14"),
("292","39.52.4.214","2021-Jul-14"),
("293","210.56.14.66","2021-Jul-14"),
("294","210.56.14.66","2021-Jul-14"),
("295","39.52.4.214","2021-Jul-14"),
("296","210.56.14.66","2021-Jul-14"),
("297","39.52.4.214","2021-Jul-14"),
("298","210.56.14.66","2021-Jul-14"),
("299","210.56.14.66","2021-Jul-14"),
("300","76.251.33.221","2021-Jul-14"),
("301","39.52.4.214","2021-Jul-14"),
("302","39.52.4.214","2021-Jul-14"),
("303","39.52.4.214","2021-Jul-14"),
("304","39.52.4.214","2021-Jul-14"),
("305","39.52.4.214","2021-Jul-14"),
("306","39.52.4.214","2021-Jul-14"),
("307","39.52.4.214","2021-Jul-14"),
("308","39.52.4.214","2021-Jul-14"),
("309","39.52.4.214","2021-Jul-14"),
("310","39.52.4.214","2021-Jul-14"),
("311","39.52.4.214","2021-Jul-14"),
("312","39.52.4.214","2021-Jul-14"),
("313","39.52.4.214","2021-Jul-14"),
("314","39.52.4.214","2021-Jul-14"),
("315","39.52.4.214","2021-Jul-14"),
("316","39.52.4.214","2021-Jul-14"),
("317","39.52.4.214","2021-Jul-14"),
("318","39.52.4.214","2021-Jul-14"),
("319","39.52.4.214","2021-Jul-14");



DROP TABLE IF EXISTS tbl_emails;

CREATE TABLE `tbl_emails` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_from` varchar(100) NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `email_type` varchar(100) NOT NULL,
  `email_subject` varchar(100) NOT NULL,
  `email_body` mediumtext NOT NULL,
  `email_status` int(1) NOT NULL,
  `email_order` int(11) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_emails VALUES("1","info@fusionmaxcarwash.com","info@fusionmaxcarwash.com","contact","Auto-reply From Fusion Max","<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>","1","0"),
("2","info@fusionmaxcarwash.com","info@fusionmaxcarwash.com","newsletter","Subscription!","<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>","1","0"),
("3","info@fusionmaxcarwash.com","info@fusionmaxcarwash.com","booking","Response","<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>","1","0");



DROP TABLE IF EXISTS tbl_faq;

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_ques` varchar(255) NOT NULL,
  `faq_ans` mediumtext NOT NULL,
  `faq_position` int(1) NOT NULL,
  `faq_status` int(1) NOT NULL,
  `faq_order` int(11) NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_faq VALUES("1","This is a Testing Question?","Yes This is Working good.","0","1","1"),
("2","This is a Testing Question?","This is a Testing Answer...","0","1","2"),
("3","This is a Testing Question?","This is a Testing Answer...","0","1","3"),
("4","This is a Testing Question?","This is a Testing Answer...","1","1","4"),
("5","This is a Testing Question?","This is a Testing Answer...","1","1","5"),
("6","This is a Testing Question?","This is a Testing Answer...","1","1","6");



DROP TABLE IF EXISTS tbl_gallery_photos;

CREATE TABLE `tbl_gallery_photos` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_image` varchar(255) NOT NULL,
  `p_status` int(1) NOT NULL,
  `p_order` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_gallery_photos VALUES("1","image_16233930505582.jpg","1","1"),
("2","image_16233930509063.jpg","1","2"),
("3","image_16233930502563.jpg","1","3"),
("4","image_16234008658684.jpg","1","4");



DROP TABLE IF EXISTS tbl_gallery_videos;

CREATE TABLE `tbl_gallery_videos` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_image` varchar(255) NOT NULL,
  `v_video` varchar(255) NOT NULL,
  `v_status` int(1) NOT NULL,
  `v_order` int(11) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_gallery_videos VALUES("1","image_16234811022231.jpg","ULEQb_l-N08","1","0"),
("2","image_16234811176224.jpg","buBvqw6G3WU","1","1"),
("3","image_16234811325757.jpg","buBvqw6G3WU","1","2"),
("4","image_16234835975938.jpg","buBvqw6G3WU","1","3");



DROP TABLE IF EXISTS tbl_listings;

CREATE TABLE `tbl_listings` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_option_text` text DEFAULT NULL,
  `list_type` varchar(50) NOT NULL,
  `list_title` varchar(255) DEFAULT NULL,
  `list_slug` varchar(255) DEFAULT NULL,
  `list_gender` varchar(11) NOT NULL,
  `list_desc` varchar(1000) DEFAULT NULL,
  `list_detail` longtext DEFAULT NULL,
  `list_link` varchar(100) NOT NULL,
  `list_thumb` varchar(50) DEFAULT NULL,
  `list_image` varchar(50) DEFAULT NULL,
  `list_banner` varchar(50) DEFAULT NULL,
  `list_price` float NOT NULL,
  `list_label` int(11) NOT NULL DEFAULT 0,
  `list_order` int(11) DEFAULT NULL,
  `list_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

INSERT INTO tbl_listings VALUES("19","","events","Bimply dummy text of the printing and typesetting industry","bimply-dummy-text-of-the-printing-and-typesetting-industry","","NewYork Tower, Melbourne","<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>","","06 September, 2019","image_15630433616150.jpg","","0","1","1","1"),
("20","","events","Bimply dummy text of the printing","bimply-dummy-text-of-the-printing","","","<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>","","22 December, 2019","image_15630433939524.jpg","","0","1","2","1"),
("21","","courses","Physiology","physiology","","Rmply dummy text printing setting industry itâ€™s free demo.","","http://localhost/np1/hospital","","image_15630470856516.jpg","","0","1","1","1"),
("22","","courses","Biochemistry","biochemistry","","Rmply dummy text printing setting industry itâ€™s free demo.","","http://localhost/np1/medical-education","","image_15630471442505.jpg","","0","1","2","1"),
("23","","courses","Forensic Medicine","forensic-medicine","","Rmply dummy text printing setting industry itâ€™s free demo.","","http://localhost/np1/medical-education","","image_15630471741750.jpg","","0","1","3","1"),
("24","","courses","Ophthalmology","ophthalmology","","Rmply dummy text printing setting industry itâ€™s free demo.","","http://localhost/np1/medical-education","","image_15630472301165.jpg","","0","1","4","1"),
("25","","courses","Paediatrics","paediatrics","","Rmply dummy text printing setting industry itâ€™s free demo.","","localhost/np1/college-of-dentistry","","image_15630472737512.jpg","","0","1","5","1"),
("26","","courses","Pathology","pathology","","Rmply dummy text printing setting industry itâ€™s free demo.","","http://localhost/np1/vision-mission-values","","image_15630473428601.jpg","","0","1","6","1"),
("27","","testimonials","Jason Smith","","","Analyst","There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.","","","image_15784396945883.jpg","","4","0","1","1"),
("28","","testimonials","Mona Kruew","","","Social Activist","There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.","","","image_15784397029659.jpg","","3","0","2","1"),
("29","","testimonials","Henery Ford","","","Journalist","There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.","","","image_15784397102891.jpg","","2","0","3","1"),
("30","","services","Education Visa","education-visa","","It is a long established fact that and reader will by the readable based of content page banned.","<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\n<div class=\"service-details-contant\">\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\n</div>\n</div>\n</div>\n<h3 class=\"service-details-heading\">Our Benefits</h3>\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>","","","image_15638866429463.jpg","image_15638890982055.jpg","0","1","1","1"),
("31","","services","Business Visa","business-visa","","It is a long established fact that and reader will by the readable based of content page banned.","<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\n<div class=\"service-details-contant\">\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\n</div>\n</div>\n</div>\n<h3 class=\"service-details-heading\">Our Benefits</h3>\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>","","","image_15638869396774.jpg","image_15638891352659.jpg","0","1","2","1"),
("32","","services","Travel Visa","travel-visa","","It is a long established fact that and reader will by the readable based of content page banned.","<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\n<div class=\"service-details-contant\">\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\n</div>\n</div>\n</div>\n<h3 class=\"service-details-heading\">Our Benefits</h3>\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>","","","image_15638869769510.jpg","image_15638891456197.jpg","0","1","3","1"),
("33","","services","Family Visa","family-visa","","It is a long established fact that and reader will by the readable based of content page banned.","<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\n<div class=\"service-details-contant\">\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-1\">&nbsp;</div>\n<div class=\"col-lg-11\">\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\n</div>\n</div>\n</div>\n<h3 class=\"service-details-heading\">Our Benefits</h3>\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>","","","image_15638870116398.jpg","image_15638891557918.jpg","0","0","4","1"),
("35","","boxes"," United States","united-states","","It is a long established fact that a reader will by the readable content page.","","about","","image_15639920731737.png","","0","0","1","1"),
("36","","boxes","Australia","australia","","It is a long established fact that a reader will by the readable content page.","","","","image_15639920918901.png","","0","0","2","1"),
("37","","boxes","United Kingdom","united-kingdom","","It is a long established fact that a reader will by the readable content page.","","","","image_15639921195143.png","","0","0","3","1"),
("38","","boxes"," Singapore","singapore","","It is a long established fact that a reader will by the readable content page.","","","","image_15639921503128.png","","0","0","4","1"),
("39","","faqs","How soon should I apply for my appointment?","how-soon-should-i-apply-for-my-appointment-","","Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.  \nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet it uses a dictionary of over latin words, combined with a handful of model sentence structures.\n                         ","","","","","","0","0","2","1"),
("40","","faqs","How long does my passport have to be valid in order to apply for a U. S. visa?","how-long-does-my-passport-have-to-be-valid-in-order-to-apply-for-a-u-s-visa-","","Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.  ","","","","","","0","0","1","1"),
("41","","programs","Visit","","","https://www.lipsum.com","","","","","","0","0","1","1"),
("42","","programs","Study","","","https://www.lipsum.com","","","","","","0","0","2","1"),
("43","","programs","Work","","","https://www.lipsum.com","","","","","","0","0","3","1"),
("44","","programs","Immigration","","","https://www.lipsum.com","","","","","","0","0","4","1"),
("45","","programs","Business","","","https://www.lipsum.com","","","","","","0","0","5","1"),
("46","","programs","Citizenship","","","https://www.lipsum.com","","","","","","0","0","6","1"),
("47","","programs","Other Services","","","https://www.lipsum.com","","","","","","0","0","7","1"),
("48","","partners","https://www.lipsum.com","","","Immigrating to ENWT","","","","image_15784405263260.png","","0","0","1","1"),
("49","","partners","https://www.lipsum.com","","","Immigrate to B C","","","","image_15784405358226.png","","0","0","2","1"),
("50","","partners","https://www.lipsum.com","","","Immigrating to Manitoba","","","","image_15784405399449.png","","0","0","3","1"),
("51","","partners","https://www.lipsum.com","","","Immigrating to NB","","","","image_15784405437134.png","","0","0","4","1"),
("52","","partners","https://www.lipsum.com","","","Immigrating to NL","","","","image_15784405496612.png","","0","0","5","1"),
("53","","partners","https://www.lipsum.com","","","Immigrating to Manitoba","","","","image_15784405541540.png","","0","0","6","1"),
("55","","offers","2 Piece burger & 1 cold drink","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051015001974.jpg","","18.89","1","1","1"),
("56","","offers","3 Plets rice & 1 cold drink","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051015529384.jpg","","42","1","2","1"),
("57","","offers","4 Glass Orange Juice","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051015707342.jpg","","22.09","1","3","1"),
("58","","offers","4 Piece Pizza & Cold drink","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051015853917.jpg","","18","1","4","1"),
("59","","offers","Type food Name here","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051032708942.jpg","","0","0","5","1"),
("60","","offers","Type food Name here","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051033702581.jpg","","58.8","0","6","1"),
("61","","offers","Type food Name here","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051033843603.jpg","","58.8","0","7","1"),
("62","","offers","Type food Name here","","","Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.","","","","image_16051033962421.jpg","","58.8","0","8","1"),
("64","","categories","SHOE","shoe","","","","","","","","0","0","1","1"),
("65","","categories","PIZZA","pizza","","","","","","","","0","0","2","1"),
("67","","categories","LUNCH","lunch","","","","","","","","0","0","3","1"),
("68","","categories","DRINKS","drinks","","","","","","","","0","0","4","1"),
("69","","categories","SOUP","soup","","","","","","","","0","0","5","1"),
("70","","categories","DINNER","dinner","","","","","","","","0","0","6","1"),
("74","a:3:{i:0;s:2:\"65\";i:1;s:2:\"67\";i:2;s:2:\"68\";}","menus","Honey green tea","honey-green-tea","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","1","1"),
("75","a:2:{i:0;s:2:\"64\";i:1;s:2:\"69\";}","menus","Ambra plum juice","ambra-plum-juice","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","2","1"),
("76","a:1:{i:0;s:2:\"64\";}","menus","Mango","mango","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","3","1"),
("77","a:2:{i:0;s:2:\"64\";i:1;s:2:\"70\";}","menus","Milk tea","milk-tea","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","4","1"),
("78","a:2:{i:0;s:2:\"67\";i:1;s:2:\"68\";}","menus","Soya bean","soya-bean","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","5","1"),
("79","a:1:{i:0;s:2:\"68\";}","menus","Keat la plum juice","keat-la-plum-juice","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","6","1"),
("80","a:2:{i:0;s:2:\"64\";i:1;s:2:\"68\";}","menus","Herbal tea","herbal-tea","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","7","1"),
("81","a:2:{i:0;s:2:\"64\";i:1;s:2:\"70\";}","menus","ice lemon tea","ice-lemon-tea","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse ","","","","","","8","0","8","1"),
("82","a:2:{i:0;s:2:\"68\";i:1;s:2:\"69\";}","menus","Ambra plum juice","ambra-plum-juice","","Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .","","","","","","8","0","9","1"),
("92","","videos","","","","https://youtu.be/JWRx28ZI7D8","","","","","","0","0","1","1"),
("93","","videos","","","","https://youtu.be/u7Ta4O2sPro","","","","","","0","0","2","1"),
("94","","videos","","","","https://youtu.be/ULrYr7IyvcI","","","","","","0","0","3","1"),
("95","","videos","","","","https://youtu.be/pyHdHYtbC7w","","","","","","0","0","4","1"),
("96","","videos","","","","https://youtu.be/1qHtTrezkWs","","","","","","0","0","5","1"),
("97","","videos","","","","https://youtu.be/HtoQXaHHmXI","","","","","","0","0","6","1"),
("100","","nav_menus","Dinner Menu","dinner-menu","","","<p style=\"text-align: center;\"><img src=\"/UserFiles/dinner.png\" style=\"width:100%\" alt=\"\" /></p>","","","","","0","0","1","1"),
("101","","nav_menus","Dessert Menu","dessert-menu","","","<p style=\"text-align: center;\"><img src=\"/UserFiles/Dessert-0.jpg\" style=\"width:100%;\" alt=\"\" /></p>","","","","","0","0","3","1"),
("102","","nav_menus","Happy Hour","happy-hour","","","<p style=\"text-align: center;\">&nbsp;<img src=\"/UserFiles/Happy Hour.png\" style=\"width:100%;\" alt=\"\" /></p>","","","","","0","0","4","1"),
("103","","nav_menus","Wine List & Sips","wine-list-sips","","","<p style=\"text-align: center;\"><img src=\"/UserFiles/WINE LIST-0.png\" style=\"width:100%;\" alt=\"\" /></p>","","","","","0","0","5","1"),
("104","","nav_menus","Kids Menu","kids-menu","","","<p style=\"text-align: center;\">&nbsp;<img src=\"/UserFiles/KIDS-MENU.png\" style=\"width:50%;\" alt=\"\" /></p>","","","","","0","0","2","1"),
("108","","deals","","","","","<ul class=\"set_menu\">\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\n    <li class=\"total\">Total:<span>$24.00</span></li>\n</ul>","","","image_16051169691185.jpg","","0","0","1","1"),
("109","","deals","","","","","<ul class=\"set_menu\">\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\n    <li class=\"total\">Total:<span>$24.00</span></li>\n</ul>","","","image_16051170165332.jpg","","0","0","2","1"),
("110","","deals","","","","","<ul class=\"set_menu\">\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\n    <li class=\"total\">Total:<span>$24.00</span></li>\n</ul>","","","image_16051170282647.jpg","","0","0","3","1"),
("111","","photos","","","","","","","","image_16215205755168.png","","0","0","1","1"),
("112","","photos","","","","","","","","image_16052206178186.jpg","","0","0","2","1"),
("113","","photos","","","","","","","","image_16052206269956.jpg","","0","0","3","1"),
("114","","photos","","","","","","","","image_16052206341564.jpg","","0","0","4","1"),
("115","","photos","","","","","","","","image_16052206433732.jpg","","0","0","5","1"),
("116","","photos","","","","","","","","image_16052206542786.jpg","","0","0","6","1"),
("117","","photos","","","","","","","","image_16052206623019.jpg","","0","0","7","1"),
("118","","photos","","","","","","","","image_16052206699331.jpg","","0","0","8","1"),
("119","","photos","","","","","","","","image_16052206788588.jpg","","0","0","9","1");



DROP TABLE IF EXISTS tbl_module;

CREATE TABLE `tbl_module` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_title` varchar(100) NOT NULL,
  `mod_status` int(1) NOT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_module VALUES("1","Gallery","1"),
("2","Services","1"),
("3","Projects","1"),
("4","News","1"),
("5","Pricing-list","1"),
("6","FAQ","1");



DROP TABLE IF EXISTS tbl_news;

CREATE TABLE `tbl_news` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `news_category` varchar(255) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_slug` varchar(255) DEFAULT NULL,
  `news_validity` varchar(250) DEFAULT NULL,
  `news_desc` longtext DEFAULT NULL,
  `news_detail` varchar(2000) DEFAULT NULL,
  `news_link` varchar(255) NOT NULL,
  `news_label` int(10) DEFAULT NULL,
  `news_status` int(10) DEFAULT NULL,
  `news_order` int(11) DEFAULT NULL,
  `news_image` varchar(50) DEFAULT NULL,
  `news_thumb` varchar(50) DEFAULT NULL,
  `news_date` varchar(50) DEFAULT NULL,
  `news_publish` varchar(50) DEFAULT NULL,
  `news_modify` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO tbl_news VALUES("17","","Smash Podcast Epiod With Paul Boag","smash-podcast-epiod-with-paul-boag","","<div class=\"entry-content\">\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                <div class=\"block-box\">\n                                    <h4>Improve Your Car</h4>\n                                    <div class=\"box-list\">\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                </ul>\n                                            </div>\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                </ul>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class=\"block-box\">\n                                    <h4>Daily Car Wash</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <div class=\"row\">\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div>\n<div class=\"block-box\">\n                                    <h4>Multipole Wash Location</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div></div>","<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>","","","1","1","image_16258114296023.jpg","image_16258126981820.jpg","2019-12-19","","2021-07-08 21:38:18"),
("18","","Smash Podcast Epiod With Paul Boag","smash-podcast-epiod-with-paul-boag","","<div class=\"entry-content\">\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                <div class=\"block-box\">\n                                    <h4>Improve Your Car</h4>\n                                    <div class=\"box-list\">\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                </ul>\n                                            </div>\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                </ul>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class=\"block-box\">\n                                    <h4>Daily Car Wash</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <div class=\"row\">\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div>\n<div class=\"block-box\">\n                                    <h4>Multipole Wash Location</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div></div>","<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>","","","1","2","image_16258127396739.jpg","image_16258127399925.jpg","2019-12-19","","2021-07-08 21:38:59"),
("19","","Smash Podcast Epiod With Paul Boag","smash-podcast-epiod-with-paul-boag","","<div class=\"entry-content\">\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                <div class=\"block-box\">\n                                    <h4>Improve Your Car</h4>\n                                    <div class=\"box-list\">\n                                        <div class=\"row\">\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Soft - free rinse dolore magna.</li>\n                                                </ul>\n                                            </div>\n                                            <div class=\"col-lg-6\">\n                                                <ul class=\"list\">\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>wash et dolore magna aliqua.</li>\n                                                    <li>Hand Wash magna aliqua.</li>\n                                                </ul>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class=\"block-box\">\n                                    <h4>Daily Car Wash</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <div class=\"row\">\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                        <div class=\"col-lg-6\">\n                                            <div class=\"block-img\">\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div>\n<div class=\"block-box\">\n                                    <h4>Multipole Wash Location</h4>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\n                                </div></div>","<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>","","","1","3","image_16258126461651.jpg","image_16258126465747.jpg","","","2021-07-08 21:37:26");



DROP TABLE IF EXISTS tbl_news_categories;

CREATE TABLE `tbl_news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `News Foreign Key` (`news_id`),
  KEY `News Category Foreign Key` (`cat_id`),
  CONSTRAINT `News Category Foreign Key` FOREIGN KEY (`cat_id`) REFERENCES `tbl_newscategories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `News Foreign Key` FOREIGN KEY (`news_id`) REFERENCES `tbl_news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO tbl_news_categories VALUES("6","19","5"),
("7","19","6"),
("8","19","7"),
("9","17","1"),
("10","17","2"),
("11","17","7"),
("12","18","3"),
("13","18","4");



DROP TABLE IF EXISTS tbl_newscategories;

CREATE TABLE `tbl_newscategories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `cat_status` int(1) NOT NULL,
  `cat_order` int(11) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO tbl_newscategories VALUES("1","Wash","wash","1","1"),
("2","Hand Wash","hand-wash","1","2"),
("3","Business","business","1","3"),
("4","Booking","booking","1","4"),
("5","Branding","branding","1","5"),
("6","New Device","new-device","1","6"),
("7","Trend","trend","1","7"),
("8","Latest","latest","1","8");



DROP TABLE IF EXISTS tbl_pages;

CREATE TABLE `tbl_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(255) NOT NULL DEFAULT 'general',
  `page_menu` int(11) NOT NULL DEFAULT 0,
  `page_parent` int(11) NOT NULL DEFAULT 0,
  `page_name` varchar(255) NOT NULL,
  `page_meta_title` varchar(100) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_detail` longtext DEFAULT NULL,
  `page_link` varchar(100) NOT NULL,
  `page_label` int(11) NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `page_thumb` varchar(255) DEFAULT NULL,
  `page_embed_video` text DEFAULT NULL,
  `page_meta_desc` text DEFAULT NULL,
  `page_meta_keywords` text DEFAULT NULL,
  `page_footer` int(11) NOT NULL DEFAULT 0,
  `page_status` int(1) NOT NULL DEFAULT 1,
  `page_modify_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `page_date` datetime NOT NULL,
  `page_order` int(11) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO tbl_pages VALUES("1","general","0","0","page-not-found","404 Error","404 Error","<div class=\"container\">\n<div class=\"row text-center\">\n<div class=\"col-lg-8 col-md-8 col-8 mx-auto\">\n<div class=\"error-page-wrap\">\n<h3>404</h3>\n<h4>Sorry! Page Not Found</h4>\n<p>Page you are looking for counld not be found</p>\n<a href=\"./\" class=\"btn-style btn-filled btn-filled-2\">< Back to home</a></div>\n</div>\n</div>\n</div>","page-not-found","1","image_16226151836183.png","","","","","0","1","2021-06-01 23:26:23","2018-05-25 04:43:52","0"),
("2","general","0","0","terms-conditions","Terms  &  Conditions","Terms & Conditions","<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p>\n<p>Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p>\n<p>Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p>","terms-conditions","0","image_16226385064881.jpg","","","","","0","1","2021-06-02 05:55:06","2019-06-24 02:14:27","1"),
("3","general","0","0","privacy-policy","Privacy Policy","Privacy Policy","<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Fira Sans&quot;, sans-serif; font-weight: 700; line-height: 1.3; color: rgb(17, 17, 17); font-size: 2rem;\"><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p></h2>","privacy-policy","0","image_16226379661669.jpg","","","","","0","1","2021-06-11 02:30:26","2019-06-24 04:22:44","2"),
("10","general","0","0","faq","About Us","FAQ\'s","<h2 style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\">About Agency</h2><p style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p><p style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 25px 0px 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p>","","0","image_16236486801303.jpg","","","","","0","1","2021-06-13 22:31:20","2021-05-28 04:24:01","7"),
("11","general","0","0","service","Latest services","Our Best Service","<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\n					<br>incididunt ut labore et dolore magna aliqua.</p>","","0","image_16258933962805.jpg","","","","","0","1","2021-07-09 12:27:53","2021-05-29 09:07:58","5"),
("13","general","0","0","contact","Contact Now","Contact Us","<p><div class=\"form-block\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><form action=\"http://localhost/zairone.com/contact#\" method=\"post\" data-url=\"http://localhost/zairone.com/send-contact-message\" data-type=\"contact\" class=\"contact-form contact\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline;\"><div class=\"fieldsets row\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px -15px; outline: 0px; vertical-align: baseline; display: flex; flex-wrap: wrap;\"></div></form></div></p><div class=\"common-heading text-l\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; text-align: left; position: relative; z-index: 10; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><h2 class=\"mt0 mb0\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\">Have Question? Write a Message</h2><p class=\"mb60 mt20\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 20px 0px 60px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px;\">We will catch you as early as we receive the message</p></div>","","0","image_16256637924144.jpg","","","","","1","1","2021-07-09 12:27:28","2021-05-29 09:12:17","6"),
("14","general","0","0","about","About Us","Want To Know About Us","<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Owning an&nbsp;<em>Fusion Max Carwash&nbsp;</em>has potential to be one of the most rewarding experiences of your professional life.&nbsp; The information below represents general guidelines and does not constitute an official offer; however, it is representative of the experiences of current&nbsp;&nbsp;<em>Fusion Max </em>franchisees.&nbsp; For more information or to request a franchise package.</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Concept</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgbrgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel automatic wash</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">3-5 detail bays, offering five packages:<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Show Room New</li><li style=\"margin-bottom: 9px; list-style: disc;\">Express Hand Wax</li><li style=\"margin-bottom: 9px; list-style: disc;\">Interior Super Clean</li><li style=\"margin-bottom: 9px; list-style: disc;\">Carpet Shampoo</li><li style=\"margin-bottom: 9px; list-style: disc;\">Seat Shampoo/Conditioning</li></ul></li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">12-16 Self-Vacuum bays per site (free to customers)</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Franchise Investment</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Complete project cost: $3,500,000 to $4,500,000</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Equity required: $200,000 to $800,000</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Brand</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85)); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Upscale Express Car Wash &amp; Detail</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Fine Finishes in Lobby for Customer Appeal</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel Design</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Arched Roofs &amp; Shade Canopies</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Why Fusion Max?</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Pre-identified sites throughout the US for franchise opportunity</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Franchisor Start-Up and On-Going Support<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Site selection and development assistance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Full training and operations manual</li><li style=\"margin-bottom: 9px; list-style: disc;\">On-going inspection and maintenance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Management training</li><li style=\"margin-bottom: 9px; list-style: disc;\">Marketing support</li><li style=\"margin-bottom: 9px; list-style: disc;\">Total business overview assistance</li></ul></li></ul>","","0","image_16258358795477.jpg","","","","","0","1","2021-07-12 06:29:37","2021-05-29 09:19:59","3"),
("15","general","0","0","gallery","Gallery","We Like To Share ...","","","0","image_16259047164109.jpg","","","","","0","1","2021-07-09 11:15:52","2021-06-09 03:11:26","4"),
("18","general","0","0","pricing-list","Our Packages","Pick The Best Plan For You","<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\n					<br>incididunt ut labore et dolore magna aliqua.</p>","","0","image_16259225959059.jpg","","","","","0","1","2021-07-09 16:09:55","2021-06-10 05:56:05","8"),
("19","general","0","0","franchising","Franchising","Franchising","<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Owning an&nbsp;<em>Fusion Max Carwash</em><em>&nbsp;</em>has potential to be one of the most rewarding experiences of your professional life.&nbsp; The information below represents general guidelines and does not constitute an official offer; however, it is representative of the experiences of current&nbsp;&nbsp;<em>Fusion Max </em>franchisees.&nbsp; For more information or to request a franchise package.</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Concept</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgbrgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel automatic wash</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">3-5 detail bays, offering five packages:<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Show Room New</li><li style=\"margin-bottom: 9px; list-style: disc;\">Express Hand Wax</li><li style=\"margin-bottom: 9px; list-style: disc;\">Interior Super Clean</li><li style=\"margin-bottom: 9px; list-style: disc;\">Carpet Shampoo</li><li style=\"margin-bottom: 9px; list-style: disc;\">Seat Shampoo/Conditioning</li></ul></li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">12-16 Self-Vacuum bays per site (free to customers)</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Franchise Investment</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Complete project cost: $3,500,000 to $4,500,000</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Equity required: $200,000 to $800,000</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Brand</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Upscale Express Car Wash &amp; Detail</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Fine Finishes in Lobby for Customer Appeal</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel Design</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Arched Roofs &amp; Shade Canopies</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Why Fusion Max?</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Pre-identified sites throughout the US for franchise opportunity</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Franchisor Start-Up and On-Going Support<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Site selection and development assistance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Full training and operations manual</li><li style=\"margin-bottom: 9px; list-style: disc;\">On-going inspection and maintenance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Management training</li><li style=\"margin-bottom: 9px; list-style: disc;\">Marketing support</li><li style=\"margin-bottom: 9px; list-style: disc;\">Total business overview assistance</li></ul></li></ul>","","0","image_16259234381858.jpg","","","","","1","1","2021-07-12 06:30:42","2021-07-10 04:23:58","9"),
("20","general","0","0","wash-club","Wash Club","Unlimited Wash Club","<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>","","0","image_16259265403998.jpg","","","","","1","1","2021-07-09 18:31:59","2021-07-10 05:15:40","10"),
("21","general","0","0","choose-us","Why Choose Us","Why Choose Us","<h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">What Do Car Wash Consumers Want Most?</h1><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Low Prices, Fast Wash, Convenience, and A Clean Dry Shiny Car</span></em><br></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">iShine Express delivers all the above and more with just a quick 3-minute ride from the automated pay station to the end of the wash tunnel. Since you stay in the vehicle, no one will disturb your private space. Our wash packages start as low as $6 (prices vary by location) including always FREE VACUUMS. Our Unlimited Wash Clubs provide even more value for you frequent washers.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Unlike most Express Car Washes, we also offer affordable Express Detailing services. No reservations needed and no waiting hours to get your car back. Each package is completed in 30 minutes or less while you wait in our comfortable lobby with big screen TV and free WiFi. All wash and detail services come with our 100% satisfaction guarantee.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Fusion Max\'s Modern Technology</span></em><br></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">One of the first things you recognize when you drive on to our facility is that this is not your father\'s old car wash. The site design, finishes, and tunnel equipment are all top of the line. Our tunnels are very bright with many windows and skylights. Every aspect of our wash was carefully thought out to give you the best modern car wash experience possible.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Equipment technology in the automated car wash industry has improved dramatically over the last few years and we have chosen the best. The processes and materials used with the computer-controlled equipment are safer than ever and virtually assure a consistently clean dry shiny car every time. The biggest change may be the material used to remove stubborn dirt. We use a lightweight soft foam that helps to buff and shine while it gently washes your car with no marks or dull finish.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Wheels &amp; Tires</span></em></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Everybody likes good looking wheels and tires. Fusion Max Express tunnels use computerized brushes with high pressure sprayers and specialized wheel brightener&amp; tire cleaning solutions. This process is very effective at removing the dirt and road grime while it brightens aluminum and chrome wheels. Also, if you select the \"Tire Shine\" option at the pay station, it will be neatly applied to the tires just before you exit the tunnel.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Our Secret Sauce</span></em></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">The secret to a car cleaning is the water. Most people think all water is the same, but this is far from true. Good water is the one ingredient that makes everything work. Since good water quality is not guaranteed, our water is specially treated to soften and highly filter so it will work much better with our soaps and give your car a spot free rinse. After cleaning is done the water is recycled.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">Always Clean, Dry &amp; Shiny Cars</span></em></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">A clean car will not stay that way if not dried properly. The Fusion Max Express drying process begins with a spot free rinse and a drying solution. The spot free rinse is a special process that greatly filters the final rinse water to eliminate spots if any water drops are left on the surface. The drying solution is like that used in your dishwasher. It treats the vehicle surface area which provides for faster runoff under the dryers. The dryers are a powerful array of blower fans that blast off any remaining rinse water as the car exits the tunnel.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><em style=\"font-size: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">The Fusion Max Green Initiative</span></em></div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Because environmental consciousness isvery important to Fusion Max, we have integrated many key features into our car wash building and processes. We are one of the only car washes companies in the United States that qualify for unlimited Federal SBA lending based on our high-level green initiatives.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Here is a list of some our specific green initiatives implemented at all locations:</p><p><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"></span></p><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Our tunnels are outfitted with a water reclaim systems. Water reclaim has two major benefits to the business. First, our water reclamation rate is approximately 80% which equates to savings of about 70% on both water usage and sewer charges.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Rainwater from the building is captured and funneled into the water reclaim system. With a normal amount of rainfall, consumption of new domestic water is reduced to only 5%-10%</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Solar panels are installed on all sites to produce nearly 15% of the energy usage for the entire site</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Recaptured water not used in our facility to service cars is diverted and used in our irrigation system</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">LED fixtures are used in most of the high energy consuming areas (Lot lights, exterior lighting, signage, etc.).</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Skylights and glass/glazing are used extensively to promote natural light usage versus solely relying on electrical</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">lighting in the tunnels. This cuts down on the electrical needs of the facility while enhancing the customer\'s experience.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Majority of building components are made from post-consumer recycled material. All steel on site is made from a minimum of 80% recycled material. This includes the structural steel, re-bar, studs, shade structures and conveyor equipment within the tunnels.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">All site vacuums are timed to ensure that they are not accidently left running</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">All facility lot lights are required to be on timers</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Biodegradable and Photodegradable soaps are used through-out the car wash and detailing process at all locations</li></ul>","","0","image_16259275795252.jpg","","","","","1","1","2021-07-12 06:33:39","2021-07-10 05:32:59","11");



DROP TABLE IF EXISTS tbl_partners;

CREATE TABLE `tbl_partners` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(100) NOT NULL,
  `part_type` varchar(255) NOT NULL,
  `part_desc` mediumtext NOT NULL,
  `part_image` varchar(255) NOT NULL,
  `part_sign` varchar(255) NOT NULL,
  `part_logo` varchar(100) NOT NULL,
  `part_status` int(1) NOT NULL,
  `part_order` int(11) NOT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_partners VALUES("1","Ann Clarck","MAJORITY OWNER","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231426817144.jpg","image_16231426817512.png","image_16231446523246.png","1","0"),
("2","Joseph Austen","TECHNICAL LEAD","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231430646313.jpg","image_16231430645223.png","image_16231446703690.png","1","1"),
("3","Tim Cuck","MAJORITY OWNER","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231431195158.jpg","image_16231431199546.png","image_16231446868847.png","1","2"),
("4","Ann Clarck","TECHNICAL LEAD","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231431639483.jpg","image_16231431631605.png","image_16231447026216.png","1","3"),
("5","Ann Clarck","MAJORITY OWNER","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231443744844.jpg","image_16231443742084.png","image_16231447173815.png","1","4"),
("6","Tim Cuck","TECHNICAL LEAD","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.","image_16231445049090.jpg","image_16231445048911.png","image_16231447325417.png","1","5");



DROP TABLE IF EXISTS tbl_portfolio;

CREATE TABLE `tbl_portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_title` varchar(100) NOT NULL,
  `portfolio_detail` mediumtext NOT NULL,
  `portfolio_image` varchar(100) NOT NULL,
  `portfolio_client_name` varchar(100) NOT NULL,
  `portfolio_features` varchar(255) NOT NULL,
  `portfolio_project_date` date NOT NULL,
  `portfolio_order` int(11) NOT NULL,
  `portfolio_status` int(1) NOT NULL,
  `portfolio_project_status` int(1) NOT NULL,
  PRIMARY KEY (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_portfolio VALUES("8","","","image_16259073979074.jpg","","","0000-00-00","1","1","0"),
("9","","","image_16259074137334.jpg","","","0000-00-00","2","1","0"),
("10","","","image_16259074314185.jpg","","","0000-00-00","3","1","0"),
("11","","","image_16259074656550.jpg","","","0000-00-00","4","1","0"),
("12","","","image_16259074803691.jpg","","","0000-00-00","5","1","0"),
("13","","","image_16259074934053.jpg","","","0000-00-00","6","1","0");



DROP TABLE IF EXISTS tbl_portfolio_categories;

CREATE TABLE `tbl_portfolio_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Portfolio Foreign Key` (`portfolio_id`),
  KEY `Category Foreign Key` (`cat_id`),
  CONSTRAINT `Category Foreign Key` FOREIGN KEY (`cat_id`) REFERENCES `tbl_categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Portfolio Foreign Key` FOREIGN KEY (`portfolio_id`) REFERENCES `tbl_portfolio` (`portfolio_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_portfolio_categories VALUES("84","8","6"),
("85","9","7"),
("86","10","8"),
("87","11","8"),
("88","12","9"),
("89","13","10");



DROP TABLE IF EXISTS tbl_pricing;

CREATE TABLE `tbl_pricing` (
  `pri_id` int(11) NOT NULL AUTO_INCREMENT,
  `pri_title` varchar(100) NOT NULL,
  `pri_price` int(100) NOT NULL,
  `pri_features` mediumtext NOT NULL,
  `pri_status` int(1) NOT NULL,
  `pri_order` int(11) NOT NULL,
  PRIMARY KEY (`pri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_pricing VALUES("1","PLATINUM","34","<div class=\"pricing-body\">\n                                <ul class=\"list\">\n                                    <li class=\"check\">Gold Wash Plus</li>\n                                    <li class=\"check\">Wheels &amp; Tires</li>\n                                    <li class=\"check\">Clear Coat Protection</li>\n                                    <li class=\"check\">Bug PREP</li>\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\n                                    <li class=\"uncheck\">Fusion Bath</li>\n                                </ul>\n                            </div>","1","1"),
("2","GOLD","24","<div class=\"pricing-body\">\n                                <ul class=\"list\">\n                                    <li class=\"check\">Silver Wash Plus</li>\n                                    <li class=\"check\">Wheels &amp; Tires</li>\n                                    <li class=\"check\">Clear Coat Protection</li>\n                                    <li class=\"check\">Bug PREP</li>\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\n                                    <li class=\"uncheck\">Fusion Bath</li>\n                                </ul>\n                            </div>","1","2"),
("3","SILVER","29","<div class=\"pricing-body\">\n                                <ul class=\"list\">\n                                    <li class=\"check\">Bronze Wash Plus</li>\n                                    <li class=\"check\">Max Cuba Wax</li>\n                                    <li class=\"check\">Fusion Bath</li>\n                                    <li class=\"check\">Total Body</li>                                    \n                                    <li class=\"uncheck\">Triple Foam</li>\n                                    <li class=\"uncheck\">Under Carriage Wash</li>\n                                </ul>\n                            </div>","1","3"),
("4","BRONZE","19","<div class=\"pricing-body\">\n                                <ul class=\"list\">\n                                    <li class=\"uncheck\">Bronze Wash Plus</li>\n                                    <li class=\"uncheck\">Wheels &amp; Tires</li>\n                                    <li class=\"check\">PRC Soak</li>\n                                    <li class=\"check\">Spot Free Rinse</li>\n                                    <li class=\"check\">Triple Foam</li>\n                                    <li class=\"check\">Under Carriage Wash</li>\n                                </ul>\n                            </div>","1","4");



DROP TABLE IF EXISTS tbl_service_technologies;

CREATE TABLE `tbl_service_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `tec_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `RELATION WITH SERVICES` (`service_id`),
  KEY `RELATION WITH SERVICE TECHNOLOGIES` (`tec_id`),
  CONSTRAINT `RELATION WITH SERVICE TECHNOLOGIES` FOREIGN KEY (`tec_id`) REFERENCES `tbl_technologies` (`tec_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RELATION WITH SERVICES` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_service_technologies VALUES("108","20","6"),
("109","21","7"),
("110","22","8"),
("111","23","10"),
("113","24","9"),
("114","25","10");



DROP TABLE IF EXISTS tbl_services;

CREATE TABLE `tbl_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_image` varchar(100) NOT NULL,
  `service_thumb` varchar(100) NOT NULL,
  `service_icon` varchar(100) NOT NULL,
  `service_title` varchar(100) NOT NULL,
  `service_slug` varchar(255) DEFAULT NULL,
  `service_price` varchar(100) NOT NULL,
  `service_short_desc` varchar(255) NOT NULL,
  `service_detail_desc` longtext NOT NULL,
  `service_order` int(11) NOT NULL,
  `service_status` int(1) NOT NULL,
  `service_featured` int(1) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_services VALUES("20","image_16257314062104.jpg","","flaticon-car-service","EXPRESS EXTARIOR","express-extarior","25.85","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>We offer multiple services at a great value</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                        <li>We are very open and easy to reach company</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>You can pay online for your appointment</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                        <li>Pay for your wash electronically and securely</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                    </ul>\n                                </div>\n                            </div>","1","1","1"),
("21","image_16257315446913.jpg","","flaticon-car-service-1","CLOTH WASH","cloth-wash","63.30","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>We offer multiple services at a great value</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                        <li>We are very open and easy to reach company</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>You can pay online for your appointment</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                        <li>Pay for your wash electronically and securely</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                    </ul>\n                                </div>\n                            </div>","2","1","1"),
("22","image_16257316255410.jpg","","flaticon-mechanic","FREE SERVICE","free-service","63.30","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>We offer multiple services at a great value</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                        <li>We are very open and easy to reach company</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>You can pay online for your appointment</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                        <li>Pay for your wash electronically and securely</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                    </ul>\n                                </div>\n                            </div>","3","1","1"),
("23","image_16257316721972.jpg","","flaticon-car-wash-1","EXPRESS EXTARIOR","express-extarior","80.29","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>We offer multiple services at a great value</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                        <li>We are very open and easy to reach company</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>You can pay online for your appointment</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                        <li>Pay for your wash electronically and securely</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                    </ul>\n                                </div>\n                            </div>","4","1","1"),
("24","image_16257317349300.jpg","","flaticon-vehicle","CLOTH WASH","cloth-wash","22.60","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>We offer multiple services at a great value</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                        <li>We are very open and easy to reach company</li>\n                                        <li>Multiple car wash locations throughout Portland</li>\n                                    </ul>\n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <ul class=\"check_list mb-25\">\n                                        <li>You can pay online for your appointment</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                        <li>Pay for your wash electronically and securely</li>\n                                        <li>Book an appointment online under 3 minutes</li>\n                                    </ul>\n                                </div>\n                            </div>","5","1","1"),
("25","image_16257349369079.jpg","","flaticon-polisher","FREE SERVICE","free-service","49.50","consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.","<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\n                            <div class=\"row\">","6","1","1");



DROP TABLE IF EXISTS tbl_siteadmin;

CREATE TABLE `tbl_siteadmin` (
  `site_id` int(11) NOT NULL AUTO_INCREMENT,
  `site_login` varchar(20) NOT NULL,
  `site_pswd` varchar(32) NOT NULL,
  `site_info_data` longtext DEFAULT NULL,
  `site_contact_data` longtext DEFAULT NULL,
  `site_email_data` longtext NOT NULL,
  `site_smtp_data` longtext NOT NULL,
  `site_meta_data` longtext DEFAULT NULL,
  `site_script_data` longtext NOT NULL,
  `site_social_data` longtext DEFAULT NULL,
  `site_og_data` longtext DEFAULT NULL,
  `site_email_details` longtext NOT NULL,
  `site_captcha` longtext NOT NULL,
  `site_theme` varchar(20) NOT NULL,
  PRIMARY KEY (`site_id`),
  UNIQUE KEY `login` (`site_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO tbl_siteadmin VALUES("1","admin","7565v3q454040333","a:6:{s:9:\"site_name\";s:10:\"Fusion Max\";s:11:\"site_domain\";s:20:\"fusionmaxcarwash.com\";s:12:\"site_version\";s:3:\"2.1\";s:9:\"site_logo\";s:24:\"image_16258894338726.png\";s:11:\"login_image\";s:24:\"image_16259346313914.jpg\";s:8:\"timezone\";s:19:\"America/Los_Angeles\";}","a:7:{s:10:\"site_email\";s:25:\"info@fusionmaxcarwash.com\";s:8:\"site_fax\";s:25:\"info@fusionmaxcarwash.com\";s:10:\"site_phone\";s:14:\"+(01) 234 5678\";s:11:\"site_phone2\";s:14:\"+(01) 234 5678\";s:12:\"site_address\";s:39:\"3501 Summerhill Rd, Texarkana, TX 75501\";s:12:\"site_website\";s:20:\"fusionmaxcarwash.com\";s:8:\"site_map\";s:312:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.946544938382!2d-94.06796128520016!3d33.450699180773945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86346a0621f5298f%3A0x1bdc246d8b8a08cd!2s3501%20Summerhill%20Rd%2C%20Texarkana%2C%20TX%2075501%2C%20USA!5e0!3m2!1sen!2s!4v1626100657218!5m2!1sen!2s\";}","a:6:{s:18:\"site_contact_email\";s:21:\"info@multipurpose.com\";s:23:\"site_contact_email_from\";s:21:\"info@multipurpose.com\";s:21:\"site_contact_auto_sub\";s:29:\"Thank you for considering us.\";s:23:\"site_contact_auto_reply\";s:51:\"This is a response message from Multipurpose CMS...\";s:18:\"site_email_details\";s:75:\"<p><u><strong> Thank you for considering us.</strong></u></p>\n<p><br></p>\";s:16:\"site_contact_map\";s:0:\"\";}","a:6:{s:11:\"site_driver\";s:4:\"mail\";s:14:\"site_mail_host\";s:13:\"fusionmax.com\";s:14:\"site_mail_port\";s:2:\"21\";s:18:\"site_mail_username\";s:13:\"fusionmax.com\";s:18:\"site_mail_password\";s:5:\"admin\";s:20:\"site_mail_incription\";s:13:\"fusionmax.com\";}","a:5:{s:15:\"site_meta_title\";s:18:\"Fusion Max Carwash\";s:21:\"site_meta_description\";s:18:\"Fusion Max Carwash\";s:18:\"site_meta_keywords\";s:18:\"Fusion Max Carwash\";s:19:\"site_meta_copyright\";s:18:\"Fusion Max Carwash\";s:16:\"site_meta_author\";s:18:\"Fusion Max Carwash\";}","a:2:{s:21:\"site_meta_script_head\";s:531:\"<div data-paperform-id=\"fusionmaxcarwashwebsite\"></div><script>(function() {var script = document.createElement(\'script\'); script.src = \"https://paperform.co/__embed.min.js\"; document.body.appendChild(script); })()</script>\n\n\nPop-Out Link to your Facebook Page:\n(Use this for your own Facebook page)\n\n<div data-paperform-id=\"fusionmaxcarwashfacebook\"></div><script>(function() {var script = document.createElement(\'script\'); script.src = \"https://paperform.co/__embed.min.js\"; document.body.appendChild(script); })()</script>\";s:21:\"site_meta_script_body\";s:0:\"\";}","a:5:{s:13:\"site_facebook\";s:25:\"https://www.facebook.com/\";s:12:\"site_twitter\";s:24:\"https://www.twitter.com/\";s:10:\"site_skype\";s:22:\"https://www.skype.com/\";s:14:\"site_instagram\";s:26:\"https://www.instagram.com/\";s:14:\"site_pinterest\";s:26:\"https://www.pinterest.com/\";}","a:6:{s:13:\"site_og_title\";s:25:\"Prime Cargo International\";s:12:\"site_og_type\";s:7:\"website\";s:13:\"site_og_image\";s:73:\"http://localhost/paperbirdpackaging/uploads/logo/Image_15474478326709.png\";s:18:\"site_og_image_type\";s:10:\"image/jpeg\";s:14:\"site_og_locale\";s:5:\"en_US\";s:19:\"site_og_description\";s:25:\"Prime Cargo International\";}","","a:3:{s:14:\"captcha_status\";s:1:\"1\";s:9:\"admin_key\";s:40:\"6Lf_nWwUAAAAAN_QKbYWwwf0r6DDWct52DoYzETF\";s:10:\"public_key\";s:40:\"6Lf_nWwUAAAAAOWsOO1Uc71lQo8aWGt1p93MlWym\";}","de3e16");



DROP TABLE IF EXISTS tbl_slider;

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(255) DEFAULT NULL,
  `slider_desc` varchar(1000) DEFAULT NULL,
  `slider_btn1_text` varchar(100) DEFAULT NULL,
  `slider_btn1_link` varchar(500) DEFAULT NULL,
  `slider_btn2_text` varchar(100) DEFAULT NULL,
  `slider_btn2_link` varchar(500) DEFAULT NULL,
  `slider_thumb` varchar(50) DEFAULT NULL,
  `slider_image` varchar(50) DEFAULT NULL,
  `slider_order` int(11) DEFAULT NULL,
  `slider_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO tbl_slider VALUES("4","We will help to improve your business","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.","Contact us","https://www.facebook.com","","","thumb_16230722359148.jpg","image_16230722359148.jpg","1","1"),
("5","We will help to improve your business","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.","Contact us","https://www.facebook.com","","","thumb_16230723158490.jpg","image_16230723158490.jpg","2","1"),
("6","We will help to improve your business","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.","Contact us","https://www.facebook.com","","","thumb_16230727649139.jpg","image_16230727649139.jpg","3","1");



DROP TABLE IF EXISTS tbl_subscribers;

CREATE TABLE `tbl_subscribers` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(255) DEFAULT NULL,
  `sub_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sub_status` int(1) NOT NULL,
  `sub_order` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_subscribers VALUES("1","DelsieEOrtiz@armyspy.com","2020-11-10 17:46:49","1","0"),
("2","DeborahMWilliams@armyspy.com","2020-11-10 17:46:59","1","1"),
("3","ebbieSCalder@teleworm.us","2020-11-10 17:47:09","1","2"),
("6","a@a.com","2021-06-01 19:15:37","1","0");



DROP TABLE IF EXISTS tbl_team;

CREATE TABLE `tbl_team` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `team_portfolio` varchar(100) NOT NULL,
  `team_email` varchar(255) NOT NULL,
  `team_phone` varchar(15) NOT NULL,
  `team_fb` varchar(100) NOT NULL,
  `team_twt` varchar(100) NOT NULL,
  `team_linkedin` varchar(100) NOT NULL,
  `team_desc` mediumtext NOT NULL,
  `team_order` int(11) NOT NULL,
  `team_status` int(11) NOT NULL,
  `team_image` varchar(50) NOT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO tbl_team VALUES("1","Jack Semper","Majority Owner","multipurpose@info.com","+9233112233444","https://www.facebook.com","https://www.twitter.com","https://www.linkedin.com","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","1","1","image_16231601414226.jpg"),
("2","Ann Smith","Finance Lead","multipurpose@info.com","+9233112233444","http://www.facebook.com","http://www.twitter.com","http://www.linkedin.com","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua","2","1","image_16231602011411.jpg"),
("3","Philip Wilson","Networking Lead","multipurpose@info.com","+9233112233444","http://www.facebook.com","http://www.twitter.com","http://www.linkedin.com","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","3","1","image_16231602539330.jpg"),
("4","Dr M Ashfaq Hussain","MD (USA), FAAP (USA)","multipurpose@info.com","+9233112233444","http://www.facebook.com","http://www.twitter.com","http://www.linkedin.com","Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.","4","1","image_16232333205492.jpg");



DROP TABLE IF EXISTS tbl_technologies;

CREATE TABLE `tbl_technologies` (
  `tec_id` int(11) NOT NULL AUTO_INCREMENT,
  `tec_title` varchar(100) NOT NULL,
  `tec_status` int(1) NOT NULL,
  `tec_order` int(11) NOT NULL,
  PRIMARY KEY (`tec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_technologies VALUES("6","Hand Wash","1","1"),
("7","Hand Wax","1","2"),
("8","Auto Wash","1","3"),
("9","Tripple","1","4"),
("10","Auto Details","1","5");



DROP TABLE IF EXISTS tbl_testimonials;

CREATE TABLE `tbl_testimonials` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_title` varchar(100) NOT NULL,
  `test_slug` varchar(100) NOT NULL,
  `test_image` varchar(100) NOT NULL,
  `test_desc` varchar(255) NOT NULL,
  `test_portfolio` varchar(255) NOT NULL,
  `test_status` int(1) NOT NULL,
  `test_order` int(11) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_testimonials VALUES("6","Moana Smile","moana-smile","image_16231451737568.jpg","“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’","Consultant","1","1"),
("7","Mary Kay","mary-kay","image_16221959928879.jpg","“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’","Design Lead","0","2"),
("8","Mary Kay","mary-kay","image_16231453331567.jpg","“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’","Networking Lead","1","3");



DROP TABLE IF EXISTS tbl_texts;

CREATE TABLE `tbl_texts` (
  `txt_id` int(11) NOT NULL AUTO_INCREMENT,
  `txt_type` varchar(50) NOT NULL,
  `txt_data` longtext DEFAULT NULL,
  PRIMARY KEY (`txt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO tbl_texts VALUES("1","header","a:5:{s:4:\"text\";s:27:\"Monday-Saturday 9 AM - 6 PM\";s:6:\"title1\";s:20:\" The Best Indastrial\";s:5:\"desc1\";s:17:\"Solution Provider\";s:6:\"title2\";s:17:\"Solution Provider\";s:5:\"desc2\";s:13:\"ISO 9001-2020\";}"),
("2","footer","a:4:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:18:\"Fusion Max Carwash\";s:4:\"desc\";s:148:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\";s:14:\"text_copyright\";s:59:\" Â© Copyright 2021 FUSION MAX CARWASH, All Rights reserved.\";}"),
("3","about","a:7:{s:5:\"title\";s:13:\"ABOUT COMPANY\";s:6:\"detail\";s:1768:\"<h2>We Discover 45 Years  About Car Wash</h2>\n                            \n                            <p>Sed perspiciatis unde ste natus error voluptatem accusantium architecto doloremque udantium totam rem aperiam eaque ipsa quae inventore veritatis et quasi architecto beatae dicta sunt explicabo aperiam eaque</p>\n                            <div class=\"row\">\n                                <div class=\"col-lg-6\">\n                                    <div class=\"box mb-15\">\n                                        <div class=\"icon\">\n                                            <i class=\"flaticon-cogs\"></i>\n                                        </div>\n                                        <div class=\"info\">\n                                            <h5>Company Experience</h5>\n                                        </div> \n                                    </div>                                  \n                                </div>\n                                <div class=\"col-lg-6\">\n                                    <div class=\"box mb-15\">\n                                        <div class=\"icon\">\n                                            <i class=\"flaticon-light-bulb\"></i>\n                                        </div>\n                                        <div class=\"info\">\n                                            <h5>Quick Support & Help</h5>\n                                        </div>\n                                    </div>                               \n                                </div>\n                            </div>\n                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\";s:6:\"image1\";s:24:\"image_16257250598008.jpg\";s:6:\"image2\";s:24:\"image_16257250598913.jpg\";s:6:\"image3\";s:24:\"image_16257250599822.jpg\";s:4:\"text\";s:8:\"ABOUT Us\";s:4:\"link\";s:5:\"about\";}"),
("4","offers","a:4:{s:9:\"sec_title\";s:11:\"COMBO OFFER\";s:8:\"sec_desc\";s:63:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit\";s:10:\"sec_banner\";s:24:\"image_16051026155403.jpg\";s:8:\"sec_logo\";s:24:\"image_16051026153216.png\";}"),
("5","special_food","a:4:{s:9:\"sec_title\";s:19:\"ITHAKA SPECIAL FOOD\";s:8:\"sec_desc\";s:64:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\";s:10:\"sec_banner\";s:0:\"\";s:8:\"sec_logo\";s:24:\"image_16051038149859.png\";}"),
("6","menus","a:4:{s:9:\"sec_title\";s:14:\"OUR DAILY MENU\";s:8:\"sec_desc\";s:64:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\";s:10:\"sec_banner\";s:24:\"image_16051211994039.jpg\";s:8:\"sec_logo\";s:24:\"image_16051127092665.png\";}"),
("8","deals","a:4:{s:9:\"sec_title\";s:14:\"DAILY SET MENU\";s:8:\"sec_desc\";s:66:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\n\";s:10:\"sec_banner\";s:24:\"image_16051164822838.png\";s:8:\"sec_logo\";s:24:\"image_16051164822595.png\";}"),
("10","testimonials","a:3:{s:5:\"title\";s:11:\"Testomonial\";s:9:\"sec_title\";s:15:\"Our Testomonial\";s:5:\"image\";s:24:\"image_16257492482455.jpg\";}"),
("11","contact","a:7:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:26:\"We are Available Worldwide\";s:6:\"detail\";s:345:\"<p><span style=\"color: rgb(153, 153, 153); font-family: \"Fira Sans\", sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>\";s:5:\"image\";s:24:\"image_16231336107821.png\";s:8:\"duration\";s:21:\"Mon-Sat 09:00 - 19:00\";s:4:\"text\";s:10:\"Contact Us\";s:4:\"link\";s:24:\"https://www.facebook.com\";}"),
("12","business","a:28:{s:5:\"title\";s:17:\"Our Business Plan\";s:9:\"secondary\";s:19:\"Business Model View\";s:6:\"detail\";s:474:\"<p><span style=\"color: rgb(106, 106, 142); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</span><br></p>\";s:14:\"business_image\";s:24:\"image_16220311988171.jpg\";s:6:\"title1\";s:17:\"Social Networking\";s:6:\"image1\";s:24:\"image_16221313647374.png\";s:6:\"title2\";s:17:\"Digital Marketing\";s:6:\"image2\";s:24:\"image_16221313646287.png\";s:6:\"title3\";s:21:\"Ecommerce Development\";s:6:\"image3\";s:24:\"image_16221313646022.png\";s:6:\"title4\";s:13:\"Video Service\";s:6:\"image4\";s:24:\"image_16221313649376.png\";s:6:\"title5\";s:15:\"Banking Service\";s:6:\"image5\";s:24:\"image_16221313644504.png\";s:6:\"title6\";s:18:\"Enterprise Service\";s:6:\"image6\";s:24:\"image_16221313641359.png\";s:6:\"title7\";s:17:\"Education Service\";s:6:\"image7\";s:24:\"image_16221313647288.png\";s:6:\"title8\";s:16:\"Tour and Travels\";s:6:\"image8\";s:24:\"image_16221313641973.png\";s:6:\"title9\";s:14:\"Health Service\";s:6:\"image9\";s:24:\"image_16221313645753.png\";s:7:\"title10\";s:14:\"Event & Ticket\";s:7:\"image10\";s:24:\"image_16221313646179.png\";s:7:\"title11\";s:18:\"Restaurant Service\";s:7:\"image11\";s:24:\"image_16221313645846.png\";s:7:\"title12\";s:19:\"Business Consultant\";s:7:\"image12\";s:24:\"image_16221313641950.png\";}"),
("13","stats","a:12:{s:6:\"title1\";s:15:\"Years Experienc\";s:6:\"count1\";s:2:\"25\";s:6:\"image1\";s:24:\"image_16221949899580.svg\";s:6:\"title2\";s:14:\"Total Car Wash\";s:6:\"count2\";s:3:\"15k\";s:6:\"image2\";s:24:\"image_16221949898874.svg\";s:6:\"title3\";s:14:\"Expert Workers\";s:6:\"count3\";s:2:\"43\";s:6:\"image3\";s:24:\"image_16221949892338.svg\";s:6:\"title4\";s:14:\"Trusted Client\";s:6:\"count4\";s:3:\"10k\";s:6:\"image4\";s:24:\"image_16221949897830.svg\";}"),
("14","hero","a:8:{s:5:\"title\";s:20:\"Keeping Your Car New\";s:9:\"sec_title\";s:27:\"Wash Your Car & Make It New\";s:5:\"text1\";s:8:\"SERVICES\";s:5:\"link1\";s:7:\"service\";s:5:\"text2\";s:10:\"CONTACT US\";s:5:\"link2\";s:7:\"contact\";s:4:\"desc\";s:122:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.\";s:5:\"image\";s:24:\"image_16257219786470.jpg\";}"),
("15","newsletter","a:4:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:16:\"Join Newsletters\";s:6:\"detail\";s:175:\"<p><span style=\"color: rgb(109, 109, 109); font-family: Rubik, sans-serif; font-size: 16px;\">Bed perspiciatis unde omnis iste natus error voluptatem accusantium</span><br></p>\";s:5:\"image\";s:24:\"image_16231501437608.png\";}"),
("16","portfolio","a:4:{s:5:\"title\";s:12:\"Lattest Work\";s:9:\"sec_title\";s:18:\"Our Latest Project\";s:4:\"text\";s:9:\"View More\";s:4:\"link\";s:7:\"gallery\";}"),
("17","service","a:4:{s:5:\"title\";s:16:\"Our Best Service\";s:9:\"sec_title\";s:7:\"Service\";s:4:\"text\";s:7:\"SEE ALL\";s:4:\"link\";s:7:\"service\";}"),
("18","client","a:7:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:23:\"Gain a Success With Us!\";s:6:\"detail\";s:530:\"<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Fira Sans\", sans-serif; line-height: 54.6px; color: rgb(255, 255, 255); font-size: 42px; position: relative; text-align: center;\"><span style=\"font-weight: 600;\">Doing the right thing</span></h2><h4 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Fira Sans\", sans-serif; font-weight: 600; line-height: 48px; color: rgb(255, 255, 255); font-size: 30px; position: relative; text-align: center;\">At the Right Time.</h4>\";s:5:\"image\";s:24:\"image_16231400177693.jpg\";s:10:\"live_image\";s:185:\"videoURL:\'https://www.youtube.com/watch?v=buBvqw6G3WU\', containment:\'#video-area\', showControls:false, autoPlay:true, zoom:0, loop:true, mute:true, startAt:55, opacity:1, quality:\'low\',\";s:4:\"text\";s:15:\"Become a Client\";s:4:\"link\";s:24:\"https://www.facebook.com\";}"),
("19","mission","a:12:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:50:\"Our Mission is to Turn Your Ideas Into Businesses.\";s:9:\"sec_title\";s:11:\"Our mission\";s:6:\"detail\";s:338:\"<span style=\"color: rgb(153, 153, 153); font-family: \"Fira Sans\", sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>\";s:6:\"title1\";s:15:\"Market Research\";s:6:\"count1\";s:2:\"10\";s:6:\"title2\";s:14:\"Sales Services\";s:6:\"count2\";s:1:\"5\";s:6:\"title3\";s:17:\"Online Reputation\";s:6:\"count3\";s:2:\"50\";s:6:\"title4\";s:20:\"Strategic Consulting\";s:6:\"count4\";s:2:\"75\";}"),
("20","team","a:3:{s:5:\"title\";s:28:\"We Are Team Of Professionals\";s:9:\"sec_title\";s:13:\"Meet Our Team\";s:6:\"detail\";s:586:\"<p><span style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\"><span style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\">incididunt ut labore et dolore magna aliqua.</span><br></p>\";}"),
("21","feature","a:12:{s:6:\"title1\";s:19:\"Contactless Washing\";s:5:\"icon1\";s:17:\"flaticon-mechanic\";s:5:\"desc1\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title2\";s:16:\"Safety Materials\";s:5:\"icon2\";s:20:\"flaticon-car-service\";s:5:\"desc2\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title3\";s:17:\"Mordern Equipment\";s:5:\"icon3\";s:17:\"flaticon-car-wash\";s:5:\"desc3\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title4\";s:18:\"Extensive Cleaning\";s:5:\"icon4\";s:17:\"flaticon-car-wash\";s:5:\"desc4\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";}"),
("22","news","a:4:{s:5:\"title\";s:15:\"Our Recent News\";s:9:\"sec_title\";s:15:\"Our Latest Blog\";s:4:\"text\";s:9:\"Read More\";s:4:\"link\";s:4:\"blog\";}"),
("23","washclub","a:12:{s:6:\"title1\";s:26:\"ULTIMATE ISHINE UNLIMITED:\";s:5:\"desc1\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. Itâ€™s the ultimate express car wash experience.\";s:6:\"image1\";s:24:\"image_16260907854145.jpg\";s:6:\"title2\";s:26:\"PROTECT & SHINE UNLIMITED:\";s:5:\"desc2\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. Itâ€™s the ultimate express car wash experience.\";s:6:\"image2\";s:24:\"image_16260907856203.jpg\";s:6:\"title3\";s:20:\"SUPERSUDS UNLIMITED:\";s:5:\"desc3\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. Itâ€™s the ultimate express car wash experience.\";s:6:\"image3\";s:24:\"image_16260907851434.jpg\";s:6:\"title4\";s:22:\"CLEAN TOUCH UNLIMITED:\";s:5:\"desc4\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. Itâ€™s the ultimate express car wash experience.\";s:6:\"image4\";s:24:\"image_16260907855360.jpg\";}");



DROP TABLE IF EXISTS tbl_visitadmins;

CREATE TABLE `tbl_visitadmins` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_admin_id` int(11) NOT NULL,
  `visit_ip_address` varchar(15) NOT NULL,
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`visit_id`),
  KEY `Foreign Key To Site Admin` (`visit_admin_id`),
  CONSTRAINT `Foreign Key To Site Admin` FOREIGN KEY (`visit_admin_id`) REFERENCES `tbl_siteadmin` (`site_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_visitadmins VALUES("17","1","39.52.8.57","2021-07-12 07:36:33"),
("18","1","39.52.26.31","2021-07-12 20:39:11"),
("19","1","39.52.26.31","2021-07-12 20:39:35"),
("20","1","210.56.14.66","2021-07-12 22:47:10"),
("21","1","39.52.2.201","2021-07-13 00:07:45"),
("22","1","39.52.2.201","2021-07-13 04:54:27"),
("23","1","39.52.28.184","2021-07-13 09:47:41"),
("24","1","39.52.120.9","2021-07-13 23:16:07"),
("25","1","39.52.4.214","2021-07-14 03:47:56"),
("26","1","76.251.33.221","2021-07-14 04:03:37"),
("27","1","39.52.4.214","2021-07-14 04:08:53"),
("28","1","39.52.4.214","2021-07-14 05:10:59");



