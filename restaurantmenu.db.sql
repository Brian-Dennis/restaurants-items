CREATE TABLE IF NOT EXISTS `users` (
	`id`	TEXT,
	`name`	TEXT,
	`username`	TEXT,
	`email`	TEXT,
	`password`	TEXT
);
INSERT INTO `users` (id,name,username,email,password) VALUES (NULL,'Brian Dennis','BigBrian','someone@somewhere.com','123456');
CREATE TABLE IF NOT EXISTS `restaurant` (
	`id`	INTEGER NOT NULL,
	`name`	VARCHAR ( 250 ) NOT NULL,
	PRIMARY KEY(`id`)
);
INSERT INTO `restaurant` (id,name) VALUES (1,'Urban Burger'),
 (2,'Super Stir Fry'),
 (3,'Panda Garden'),
 (4,'Thyme for That Vegetarian Cuisine '),
 (5,'Tony''s Bistro '),
 (6,'Andala''s'),
 (7,'Auntie Ann''s Diner '),
 (8,'Cocina Y Amor ');
CREATE TABLE IF NOT EXISTS `menu_item` (
	`name`	VARCHAR ( 80 ) NOT NULL,
	`id`	INTEGER NOT NULL,
	`description`	VARCHAR ( 250 ),
	`price`	VARCHAR ( 8 ),
	`course`	VARCHAR ( 250 ),
	`restaurant_id`	INTEGER,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`restaurant_id`) REFERENCES `restaurant`(`id`)
);
INSERT INTO `menu_item` (name,id,description,price,course,restaurant_id) VALUES ('French Fries',1,'with garlic and parmesan','$2.00','Appetizer',1),
 ('Chicken Burger',2,'Juicy grilled chicken patty with tomato mayo and lettuce','$5.50','Entree',1),
 ('Chocolate Cake',3,'fresh baked and served with ice cream','$3.99','Dessert',1),
 ('Sirloin Burger',4,'Made with grade A beef','$7.99','Entree',1),
 ('Root Beer',5,'16oz of refreshing goodness','$1.99','Beverage',1),
 ('Iced Tea',6,'with Lemon','$.99','Beverage',1),
 ('Grilled Cheese Sandwich',7,'On texas toast with American Cheese','$3.49','Entree',1),
 ('Veggie Burger',8,'Made with freshest of ingredients and home grown spices','$5.99','Entree',1),
 ('Chicken Stir Fry',9,'with your choice of noodles vegetables and sauces','$7.99','Entree',2),
 ('Peking Duck',10,' a famous duck dish from Beijing[1] that has been prepared since the imperial era. The meat is prized for its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook','$25','Entree',2),
 ('Spicy Tuna Roll',11,'','','',2),
 ('Nepali Momo ',12,'','','',2),
 ('Beef Noodle Soup',13,'','','',2),
 ('Ramen',14,'','','',2),
 ('Pho',15,'a Vietnamese noodle soup consisting of broth, linguine-shaped rice noodles called banh pho, a few herbs, and meat.','','',3),
 ('Chinese Dumplings',16,'a common Chinese dumpling which generally consists of minced meat and finely chopped vegetables wrapped into a piece of dough skin. The skin can be either thin and elastic or thicker.','','',3),
 ('Gyoza',17,'The most prominent differences between Japanese-style gyoza and Chinese-style jiaozi are the rich garlic flavor, which is less noticeable in the Chinese version, the light seasoning of Japanese gyoza with salt and soy sauce, and the fact that gyoza wrappers are much thinner','','',3),
 ('Stinky Tofu',18,'Taiwanese dish, deep fried fermented tofu served with pickled cabbage.','','',3),
 ('Tres Leches Cake',19,'Rich, luscious sponge cake soaked in sweet milk and topped with vanilla bean whipped cream and strawberries.','','',4),
 ('Mushroom risotto',20,'Portabello mushrooms in a creamy risotto','','',4),
 ('Honey Boba Shaved Snow',21,'Milk snow layered with honey boba, jasmine tea jelly, grass jelly, caramel, cream, and freshly made mochi','','',4),
 ('Cauliflower Manchurian',22,'Golden fried cauliflower florets in a midly spiced soya,garlic sauce cooked with fresh cilantro, celery, chilies,ginger & green onions','','',4),
 ('Aloo Gobi Burrito',23,'Vegan goodness. Burrito filled with rice, garbanzo beans, curry sauce, potatoes (aloo), fried cauliflower (gobi) and chutney. Nom Nom','','',4),
 ('Shellfish Tower',24,'','','',5),
 ('Chicken and Rice',25,'','','',5),
 ('Mom''s Spaghetti',26,'','','',5),
 ('Choc Full O'' Mint (Smitten''s Fresh Mint Chip ice cream)',27,'','','',5),
 ('Tonkatsu Ramen',28,'Noodles in a delicious pork-based broth with a soft-boiled egg','','',5),
 ('Lamb Curry',29,'Slow cook that thang in a pool of tomatoes, onions and alllll those tasty Indian spices. Mmmm.','','',6),
 ('Chicken Marsala',30,'Chicken cooked in Marsala wine sauce with mushrooms','','',6),
 ('Potstickers',31,'Delicious chicken and veggies encapsulated in fried dough.','','',6),
 ('Nigiri SamplerMaguro, Sake, Hamachi, Unagi, Uni, TORO!',32,'','','',6),
 ('Chicken Fried Steak',33,'Fresh battered sirloin steak fried and smothered with cream gravy','$8.99','Entree',7),
 ('Boysenberry Sorbet',34,'An unsettlingly huge amount of ripe berries turned into frozen (and seedless) awesomeness','','',7),
 ('Broiled salmon',35,'Salmon fillet marinated with fresh herbs and broiled hot & fast','','',7),
 ('Morels on toast (seasonal)',36,'Wild morel mushrooms fried in butter, served on herbed toast slices','','',7),
 ('Tandoori Chicken',37,'Chicken marinated in yoghurt and seasoned with a spicy mix(chilli, tamarind among others) and slow cooked in a cylindrical clay or metal oven which gets its heat from burning charcoal.','','',7),
 ('Super Burrito Al Pastor',38,'Marinated Pork, Rice, Beans, Avocado, Cilantro, Salsa, Tortilla','','',8),
 ('Cachapa',39,'Golden brown, corn-based venezuelan pancake; usually stuffed with queso telita or queso de mano, and possibly lechon. ','','',8),
 ('Mozzarella Sticks',41,'Melty Melty cheese best sticks in town.','$3.50','Appetizer',1),
 ('Bread',42,'Homemade bread, made daily super fresh made with only the finest ingrediants.','$2.99','Appetizer',1),
 ('Chocolate Milk',43,'made with real milk, can you believe it?','$1.99','Beverage',1),
 ('Tater Tots',44,'Taters for your tots? ','$2.99','Appetizer',2),
 ('Cotton Candy',45,'Super fluffy soft candy..','$0.99','Dessert',2),
 ('Diet Dr. Pepper',46,'Who needs a description here?','$1.75','Beverage',2),
 ('Egg Rolls',47,'Rolled by the Finest Roller.','$2.00','Appetizer',2),
 ('Chicken Salad',48,'Best salad around, with the upmost savory chicken.','$5.98','Appetizer',1),
 ('Spaghetti',49,'Good noodles','$11.99','Entree',6),
 ('onion rings',50,'golden brown rings of onion','$2.99','Appetizer',6),
 ('Apple PIe',51,'PIe of apples','$1.99','Dessert',6),
 ('Cherry Soda',52,'No need for description','$1.79','Beverage',6),
 ('pancakes',53,'fluffy syrupy pancakes','$8.99','Appetizer',7),
 ('Ice Cream',54,'Ice Cream','$1.00','Dessert',7);
COMMIT;
