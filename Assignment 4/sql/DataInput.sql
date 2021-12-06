INSERT INTO `Restaurant` (`restaurantName`,`street`,`city`,`postalCode`,`category`,`rating`,`area`)
VALUES
  ("Fries and Other","9513 Urna. Avenue","London","64P 1M1","Alcohol",7,5),
  ("Soul Sushi","430 Ligula Av.","London","A1J 2W7","Sushi",9,9),
  ("Blackbrick Cafe","8875 Et, Rd.","London","G8C 6V7","Cafe",5,7),
  ("Restaurant Bite","9893 Arcu Road","London","R4L 2T7","Fusion",7,4),
  ("Frozen","797 Sapien Rd.","London","I4P 7J6","IceCream",1,4),
  ("Blue Collar","248 Eleifend Street","London","55H 4Y9","Japenese",1,2),
  ("Kitchen Munch","4385 Vitae Street","London","A4G 3G9","Desserts",3,7),
  ("McDonalds","621 Eu Ave","London","51A 9M5","Burgers",4,7),
  ("Restaurant Hillstone","154 Sollicitudin Rd.","London","T8A 1V6","Gourmet",9,6),
  ("Big Pot"," 5078 Nec, Rd.","Lodnon","63G 0E4","Soup",9,7),
  ("PM Fish","5706 Tristique Street","London","Z1Y 4W4","Fusion",4,10),
  ("Maza Grill","466 Dolor Rd.","London","P1S 4K2","Mexican",6,10),
  ("River","45 Eu, Av.","London","A8V 8Z2","Coffee",5,5),
  ("Live House","5090 Sem St.","London","B3W 7V8","Fusion",5,9),
  ("Great King","6260 Mauris Rd.","London","S7G 6X8","Hala",2,10),
  ("Smoque BBQ","7170 Nibh. St.","London","Y0B 3K1","BBQ",4,5),
  ("House Nin","6688 Duis Road","London","T2G 0R0","Chicken",4,10),
  ("Grill Bask","5098 Molestie. Av.","London","R6G 2Y5","Burgers",4,2),
  ("Fork","963 Nunc Road","London","B8C 1B5","Burgers",2,6),
  ("House Rocco’s Cafe","9629 Metus. Ave","London","Y0S 9C3","Vegan",4,3);
INSERT INTO `Restaurant` (`restaurantName`,`street`,`city`,`postalCode`,`category`,`rating`,`promotion`,`area`)
VALUES
  ("Thai Palace","436 Curabitur Rd.","London","A4R 2E1","Thai",7,"FREEDELIVERY",5),
  ("Pan Quince","5955 At Rd.","London","E8B 3T8","French",2,"5%OFF",10),
  ("+ Bar","6098 Non, Av.","London","P2E 6R1","Bar",1,"BUY2GET1",7),
  ("Choice Blue","3515 Tincidunt Rd.","London","R6V 7E6","Indian",9,"BUY1GET1",6),
  ("Brewhouse BRIO","9102 Sed Ave","London","S6S 8L7","Pub",4,"BUY1GET1",8),
  ("Goldfinch","6563 Nisi. St.","London","Y5Y 8P7","SteakHouse",3,"FREEDELIVERY",6),
  ("Chophouse Heirloom","1583 Lorem, Avenue","London","Y4B 8Y1","Gluten Friendly",8,"BUY1GET1",2),
  ("A Salt","3358 Accumsan St.","London","B5Y 4Y9","Indian",5,"BUY1GET1",8),
  ("The Mission","765-1479 Libero. Ave","","A8T 2T6","Chicken",8,"10%OFF",9),
  ("Qdoba","266 Cursus Rd.","London","A0L 3T5","Mexican",10,"FREEDELIVERY",6);


SELECT * FROM restaurant; 

/*
SELECT restaurantName, street, category, rating 
FROM Restaurant
WHERE city = 'London'
ORDER BY restaurantName 
*/ 

INSERT INTO `Menu` (`itemName`,`price`,`category`,`restaurantID`)
VALUES
  ("Big Mac Meal",11.99,"Popular",8),
  ("Bacon Quarter Pounder Meal",12.99,"Popular",8),
  ("BLT Meal",11.39,"Popular",8),
  ("Chicken Nuggets",8.00,"Chicken",8),
  ("Quarter Pounder with Cheese Meal",16.00,"Meal",8),
  ("Double Big Mac Meal",18.99,"Meal",8),
  ("McDouble Meal",8.39,"Meal",8),
  ("Crispy Chicken BLT Meal",13.49,"Meal",8),
  ("McWrap Meal",12.69,"Meal",8),
  ("McNuggets Meal",10.99,"Meal",8),
  ("Filet-O-Fish Meal",10.89,"Meal",8),
  ("Junior Chicken Mean",7.39,"Meal",8),
  ("Hamburger Happy Meal",4.39,"Kid's",8),
  ("Cheeseburger Happy Meal",5.09,"Kid's",8),
  ("Chicken Wrap Happy Meal",5.09,"Kid's",8),
  ("McNuggets Happy Meal",5.29,"Kid's",8),
  ("Chicken And Bacon Wrap",9.09,"Chicken",8),
  ("Caesar Wrap",9.09,"Chicken",8),
  ("Ranch Snack Wrap",4.29,"Chicken",8),
  ("Coffee",1.79,"Drinks",8),
  ("Tea",1.69,"Drinks",8),
  ("Latte",3.19,"Drinks",8),
  ("Mocha",3.49,"Drinks",8),
  ("Espresso",1.79,"Drinks",8),
  ("Hot Chocolate",3.69,"Drinks",8),
  ("Pop",1.69,"Drinks",8),
  ("Smoothie",3.59,"Drinks",8),
  ("Milkshake",4.79,"Drinks",8),
  ("Apple Pie",1.69,"Dessert",8),
  ("Donut",1.09,"Dessert",8),
  ("Sundae",3.59,"Dessert",8),
  ("McFlurry",3.99,"Dessert",8),
  ("Fries",2.19,"Other",8),
  ("Poutine",4.39,"Other",8),
  ("Big Mac",6.79,"Burger",8),
  ("BLT",8.89,"Chicken",8),
  ("Filet O Fish",6.29,"Other",8);

/*
SELECT m.itemName, m.price, m.category
FROM Restaurant r, Menu m
WHERE r.restaurantName = 'McDonalds' AND r.restaurantID = m.restaurantID 
ORDER BY m.category, m.itemName
*/ 
INSERT INTO Driver (`userName`,`password`,`licensePlate`,`serviceArea`,`rating`,`available`,`carModel`)
VALUES
  ("D001","diablo","KNLS 786",2,6,"TRUE","Rapide"),
  ("D002","cowboys","HNNI 631",2,9,"TRUE","Avalanche"),
  ("D003","edward1","DHFT 329",2,9,"TRUE","Kizashi"),
  ("D004","andrew","MTSI 605",2,2,"TRUE","Corsair"),
  ("D005","cookie1","GTNO 165",2,4,"TRUE","Cirrus"),
  ("D006","beautiful","GVFD 517",2,5,"TRUE","Volt"),
  ("D007","hottie","PIRQ 648",2,5,"TRUE","PT"),
  ("D008","qq123456","RWQV 101",2,10,"TRUE","Royale"),
  ("D009","slipknot","OFAG 119",2,3,"TRUE","Torrent"),
  ("D010","samantha","XOCI 731",2,3,"TRUE","Elise"),
  ("D011","abc123","PICL 305",2,5,"TRUE","Esprit"),
  ("D012","alexander1","QKGI 851",2,2,"TRUE","Express"),
  ("D013","11223344","SIEF 682",2,5,"TRUE","Mobilio"),
  ("D014","sophie","IVLD 447",2,6,"TRUE","Fe"),
  ("D015","5555555555","TWGK 756",2,7,"TRUE","Cimarron"),
  ("D016","jasmine","VROG 677",2,7,"TRUE","Routan"),
  ("D017","christ","QTDB 628",2,10,"TRUE","Vanagon"),
  ("D018","ronaldo","YXIB 164",2,5,"TRUE","Delta"),
  ("D019","Password","NIQH 175",2,8,"TRUE","Sebring"),
  ("D020","happy","HLOO 687",2,6,"TRUE","Quest"),
  ("D021","12121212","LYPS 446",2,7,"TRUE","Roadmaster"),
  ("D022","edward1","JQTV 256",2,6,"TRUE","Sephia"),
  ("D023","asdfg1","LCTJ 848",2,4,"TRUE","Flex"),
  ("D024","sunshine","SCBO 721",2,5,"TRUE","Strada"),
  ("D025","chester","OIJF 692",2,8,"TRUE","Fairlaine"),
  ("D026","joseph1","UJFH 417",2,6,"TRUE","Yaris"),
  ("D027","spider","YBVG 078",2,9,"TRUE","Fiesta"),
  ("D028","password11","PVBV 288",2,4,"TRUE","Corolla"),
  ("D029","m123456","OKLQ 838",2,6,"TRUE","Quantum"),
  ("D030","winston","GWQF 821",2,9,"TRUE","Caballero");

/*
SELECT * FROM Driver; 

SELECT userName, licensePlate, carModel, rating
FROM Driver 
WHERE available = 'TRUE' AND serviceArea = '2' AND rating>(SELECT AVG (rating) FROM Driver) 
*/

INSERT INTO Customer (`userName`,`password`,`email`,`cardNo`,`phoneNo`,`fName`,`lName`,`street`,`city`,`postalCode`,`area`)
VALUES
  ("C001","jessie","ut.cursus@hotmail.ca",3682381549443756,"(238) 757-8093","Brittany","Manning","8195 Enim Ave","Minitonas","T0B 3V5",6),
  ("C002","emmanuel","malesuada.integer@yahoo.ca",2951452957024228,"(932) 883-3612","Andrew","Hooper","7382 Primis Rd.","Daly","R1V 7S1",3),
  ("C003","1v7Upjw3nT","convallis.est@google.edu",1212464412608142,"(764) 640-3578","Diana","Willis","P.O. Box 325, 2747 In Road","Saskatoon","48L 1P2",3),
  ("C004","azerty","congue.a@aol.org",4994022089806742,"(160) 531-7483","Bell","Rollins","5074 Ante Street","Regina","T5E 4T2",10),
  ("C005","vfrcbv","egestas@icloud.couk",2877481617774324,"(264) 385-5444","Tiger","Roberson","Ap #205-9144 Risus. St.","Yellowknife","E3J 8T9",7),
  ("C006","steven1","sociis.natoque.penatibus@outlook.org",1875423362355004,"(887) 320-2500","Clayton","Macdonald","811-6821 Egestas Road","Fogo","B2R 5G1",9),
  ("C007","danielle","viverra.maecenas.iaculis@icloud.org",8859203041780620,"(269) 817-1243","Rama","Ayala","9427 Interdum St.","Miramichi","S0R 1E5",4),
  ("C008","lollipop","varius.ultrices@icloud.couk",3149491036772321,"(876) 467-8175","Rafael","Morse","901-7863 Mauris St.","Weyburn","J3L 5S9",2),
  ("C009","playboy1","ut@aol.org",4705061236563614,"(334) 752-7223","Emmanuel","Glenn","P.O. Box 152, 2908 Placerat, Rd.","Fredericton","R7N 8K7",8),
  ("C010","1234567891","non.feugiat.nec@aol.net",4678802826251953,"(526) 472-5236","Abdul","Meadows","9625 Risus Road","Rocky Mountain House","B3L 3E0",8),
  ("C011","morgan1","ornare@aol.com",6062228927498531,"(746) 361-3155","Gay","Morris","P.O. Box 282, 436 Sit Rd.","Harbour Grace","S2V 6X4",7),
  ("C012","caroline","nunc.est@hotmail.com",3861255384232284,"(475) 306-8681","Zelenia","Garrett","Ap #285-7642 Ullamcorper. Av.","Montague","M0V 5G2",5),
  ("C013","pookie","rutrum.non@icloud.com",2342650731359566,"(556) 377-6017","Florence","Parker","Ap #671-4363 Elit, Rd.","Milestone","Q7H 0W3",4),
  ("C014","alejandro","a.aliquet.vel@yahoo.edu",2930984640879042,"(333) 854-4846","Miriam","Middleton","646-3423 Donec St.","Bathurst","Y3C 5X9",5),
  ("C015","canada","magna.nam@aol.org",8149721638373641,"(757) 791-6542","Delilah","Mathis","2003 Lorem Rd.","Harbour Grace","H3E 3B5",7),
  ("C016","666","urna.suscipit@yahoo.net",9935480617727406,"(774) 647-3523","Nichole","Trujillo","Ap #924-2046 Nec Ave","Cumberland County","L5R 5L1",6),
  ("C017","myspace123","maecenas.mi.felis@yahoo.net",4796613122835025,"(648) 614-6892","Rebecca","Foley","321-9236 Fames St.","Lutsel K'e","21C 6C3",5),
  ("C018","qq123456","accumsan@google.ca",4155677177392936,"(937) 262-2719","Jasmine","Lawrence","353-5589 Nullam Road","Tsiigehtchic","U6C 8Z1",4),
  ("C019","FQRG7CS493","leo.morbi@google.com",4761165155850686,"(841) 893-5573","Jamal","Talley","413-3780 Tortor, St.","Pugwash","A2Z 8K6",6),
  ("C020","silver","sed@outlook.ca",2003738459528579,"(686) 589-3435","Serena","Washington","201-1876 Posuere St.","Mansfield-et-Pontefract","G7J 7Z5",6),
  ("C021","147852","ac@yahoo.couk",7628602293839918,"(221) 528-6364","Michelle","Peck","Ap #872-3562 Aliquam, Avenue","Baddeck","I7V 2H6",9),
  ("C022","alicia","ipsum.dolor@outlook.edu",4227167609693342,"(285) 355-5251","Dustin","Blankenship","P.O. Box 879, 355 Sed Av.","Montague","37Y 8J1",3),
  ("C023","12345678910","dui@google.com",1933839366119075,"(943) 484-3755","Neil","Odom","P.O. Box 274, 8428 Enim. Street","Wood Buffalo","B8P 2J9",3),
  ("C024","phoenix","nullam.scelerisque@aol.net",3804412022959331,"(535) 536-3652","Rigel","Lowery","522-5637 Maecenas Av.","Whitehorse","A4J 4P5",3),
  ("C025","ginger","mus@protonmail.edu",6401692963093153,"(821) 557-3844","Breanna","Bond","912-9846 Ultricies Road","Fredericton","N0Y 0G6",8),
  ("C026","a","dictum.placerat@google.ca",5367268372318169,"(915) 781-9418","Michelle","Hughes","841-5301 Nam Rd.","Iqaluit","20A 9C2",5),
  ("C027","hellokitty","sed.molestie.sed@protonmail.net",2727981142917344,"(684) 365-5107","Kiayada","Foster","Ap #672-7882 Congue Rd.","Lacombe County","V4X 8A2",8),
  ("C028","qazwsxedc","et.malesuada@aol.edu",7185045430656980,"(736) 617-2951","Adam","Huber","302-7356 Enim. St.","New Glasgow","32E 3G6",3),
  ("C029","cocacola","consectetuer.euismod@icloud.edu",6054129393416730,"(789) 708-8955","Cameran","Bennett","280-9253 Nisl Street","McCallum","Y3T 9X7",7),
  ("C030","q1w2e3r4t5","id@google.org",8601556263716223,"(627) 481-2996","Driscoll","Jordan","P.O. Box 444, 6930 Duis Av.","Winnipeg","56L 9J3",9),
  ("C031","juventus","cursus.integer@hotmail.org",9275078147458536,"(824) 385-7614","Marsden","Watson","1785 Mauris Ave","Lourdes","J8V 4T1",4),
  ("C032","chivas1","mi.enim@google.ca",6906832637756937,"(689) 588-6134","Brenna","Keith","242-5366 Semper, Av.","Saguenay","H1S 2M2",2),
  ("C033","natalie","dictum@hotmail.net",2622128614463812,"(293) 684-2761","Lamar","Merritt","5291 Cras Avenue","Harbour Grace","Y7E 8S6",8),
  ("C034","florida","a.scelerisque.sed@protonmail.couk",5694829683849893,"(860) 372-7341","Owen","Wynn","7684 Turpis Road","Castor","M6G 6B9",6),
  ("C035","444444","tempor@aol.edu",3741161070630924,"(323) 687-9812","Jerome","Bond","738-3329 Donec Av.","St. John's","C8K 8T3",9),
  ("C036","internet","auctor@outlook.couk",3874489031783280,"(871) 838-2470","Cain","Montoya","840-6395 Aliquam Rd.","Wha Ti","83S 0W0",6),
  ("C037","redsox","ornare.tortor.at@protonmail.couk",1193664965089457,"(371) 461-6258","Paul","Cabrera","882-5134 Mi, Road","Pangnirtung","B9R 4A4",3),
  ("C038","1700Tara","tlaird1700@gmail.com",5559785006765232,"(519) 253-3227","Tara","Laird","5870 Est Av.","London","A8B 1G2",2),
  ("C039","cameron","risus.duis@yahoo.com",3086716239613569,"(986) 856-5586","Shay","Langley","Ap #462-6399 Integer St.","Port Moody","R0N 1L1",2),
  ("C040","black1","magna.sed@aol.net",2817663366434589,"(773) 181-0493","Kylie","Buckner","Ap #474-1359 Sagittis Ave","Lourdes","L3A 3X4",5),
  ("C041","orange","velit.dui@outlook.ca",7491634456436000,"(913) 234-2330","Walker","Nolan","Ap #800-3999 Nec Ave","Gespeg","66M 1G6",7),
  ("C042","southside1","nonummy.ultricies@google.org",4862894330353781,"(576) 478-0814","Bevis","Roth","9842 Suspendisse St.","Coldstream","Y6W 3S7",2),
  ("C043","jessica1","nec.luctus.felis@icloud.edu",7098906369207055,"(264) 718-1658","Justine","Kent","P.O. Box 931, 6326 Vitae Rd.","Kirkland","R4R 4J4",8),
  ("C044","50cent","ante.lectus@google.edu",4896178992541423,"(114) 805-4227","Hanna","Jenkins","392-377 A, St.","Assiniboia","A6Y 8C5",4),
  ("C045","yellow","malesuada@aol.ca",7868943765673025,"(547) 949-9889","Fiona","Hines","Ap #678-1032 Ultrices Street","Colwood","B1J 7X4",5),
  ("C046","smokey","fringilla.est@icloud.couk",5902277893210053,"(215) 693-1266","Raven","Buckner","P.O. Box 240, 8943 Suspendisse Road","Miramichi","85R 8P1",8),
  ("C047","a12345678","nunc.est.mollis@icloud.ca",8592271462266248,"(768) 457-1885","Brynne","Chavez","Ap #664-5981 Nam Road","Beausejour","R2M 1C8",9),
  ("C048","jessie","tincidunt.donec.vitae@google.couk",3297213621327082,"(532) 831-7682","Melyssa","Short","634-7613 Tristique Avenue","Miramichi","A1L 4S4",3),
  ("C049","passw0rd","vivamus.nibh@outlook.com",4316230887966671,"(202) 546-2397","Macey","Acevedo","5490 Elementum Ave","Chambord","A3T 1T5",5),
  ("C050","shorty1","aliquam.erat@yahoo.ca",3883965229639966,"(440) 647-5613","Patience","Stevenson","Ap #180-4941 Ornare, Av.","Brandon","H7X 1K8",3);

/*
SELECT * FROM Customer
*/

INSERT INTO Orders (`orderDate`,`orderTime`,`price`,`review`,`customer`,`restaurantID`,`driver`,`orderstatus`)
VALUES
  ("Nov 4, 2021","2:22:07",60,8,"C038",1,"D012","deliered"),
  ("Jun 10, 2021","19:22:20",44,3,"C038",14,"D029","delivered"),
  ("Oct 27, 2021","5:31:40",3,9,"C038",13,"D030","delivered"),
  ("Aug 30, 2021","21:19:25",51,5,"C038",19,"D006","delivered"),
  ("Jul 4, 2021","19:48:50",32,4,"C038",19,"D029","delivered"),
  ("Dec 10, 2021","23:01:52",32,2,"C038",8,"D020","delivered"),
  ("Feb 20, 2021","16:02:46",10,4,"C038",12,"D017","delivered"),
  ("May 29, 2021","7:46:05",59,8,"C038",2,"D027","delivered"),
  ("Aug 15, 2021","12:22:46",15,4,"C038",30,"D013","delivered"),
  ("Nov 21, 2021","0:04:28",47,10,"C038",15,"D004","delivered"),
  ("Mar 10, 2021","9:37:51",16,4,"C038",8,"D006","delivered"),
  ("Jun 22, 2021","1:53:44",26,5,"C038",16,"D005","delivered"),
  ("Dec 16, 2020","21:12:54",47,4,"C038",3,"D005","delivered"),
  ("Aug 16, 2020","5:37:45",47,7,"C038",26,"D024","delivered"),
  ("Sep 27, 2020","6:50:49",35,9,"C038",18,"D009","delivered"),
  ("Jul 11, 2020","8:10:37",35,2,"C038",25,"D023","delivered"),
  ("Dec 31, 2020","18:56:45",6,1,"C038",21,"D018","delivered"),
  ("Jan 5, 2020","16:53:36",20,3,"C038",15,"D001","delivered"),
  ("Dec 15, 2020","10:01:44",40,2,"C038",10,"D010","delivered"),
  ("Feb 28, 2020","12:05:22",56,9,"C038",2,"D030","delivered");

/*
SELECT * FROM Orders;

SELECT o.orderDate, o.orderTime, r.restaurantName, o.orderNo,  o.price, o.review 
FROM Customer c, Orders o, Restaurant r
WHERE r.restaurantID= o.restaurantID AND c.userName= o.customer AND c.email='tlaird1700@gmail.com' 
ORDER BY o.orderDate
*/ 

INSERT INTO `Membership` (`mLevel`,`autoPay`,`username`)
VALUES
  ("Bronze","Y","C042"),
  ("Bronze","Y","C004"),
  ("Bronze","N","C027"),
  ("Bronze","N","C037"),
  ("Gold","N","C014"),
  ("Gold","N","C009"),
  ("Bronze","Y","C013"),
  ("Gold","N","C040"),
  ("Bronze","N","C047"),
  ("Bronze","Y","C020"),
  ("Gold","N","C038"),
  ("Bronze","Y","C015"),
  ("Bronze","Y","C006"),
  ("Bronze","N","C021"),
  ("Bronze","N","C005"),
  ("Gold","N","C035"),
  ("Bronze","Y","C049"),
  ("Bronze","Y","C002"),
  ("Bronze","Y","C034"),
  ("Gold","Y","C036"),
  ("Gold","Y","C010"),
  ("Gold","N","C011"),
  ("Bronze","N","C003"),
  ("Bronze","N","C018"),
  ("Bronze","N","C026"),
  ("Gold","N","C019"),
  ("Gold","Y","C032"),
  ("Bronze","N","C044"),
  ("Bronze","Y","C025"),
  ("Bronze","Y","C023");
  
/*
SELECT * FROM Membership;
*/

/*
SELECT c.fName, c.lName, m.mLevel
FROM Membership m, Customer c
WHERE m.username = c.username and m.mLevel = 'Gold'
*/ 




