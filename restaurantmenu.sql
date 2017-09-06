-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2017 at 06:48 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantmenu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`name`, `id`, `description`, `price`, `course`, `restaurant_id`, `user_id`) VALUES
('French Fries', 1, 'with garlic and parmesan', '$2.00', 'Appetizer', 1, 0),
('Chicken Burger', 2, 'Juicy grilled chicken patty with tomato mayo and lettuce', '$5.50', 'Entree', 1, 0),
('Chocolate Cake', 3, 'fresh baked and served with ice cream', '$3.99', 'Dessert', 1, 0),
('Sirloin Burger', 4, 'Made with grade A beef', '$7.99', 'Entree', 1, 0),
('Root Beer', 5, '16oz of refreshing goodness', '$1.99', 'Beverage', 1, 0),
('Iced Tea', 6, 'with Lemon', '$.99', 'Beverage', 1, 0),
('Grilled Cheese Sandwich', 7, 'On texas toast with American Cheese', '$3.49', 'Entree', 1, 0),
('Veggie Burger', 8, 'Made with freshest of ingredients and home grown spices', '$5.99', 'Entree', 1, 0),
('Chicken Stir Fry', 9, 'with your choice of noodles vegetables and sauces', '$7.99', 'Entree', 2, 0),
('Peking Duck', 10, ' a famous duck dish from Beijing[1] that has been prepared since the imperial era. The meat is prized for its thin, crisp skin, with authentic versions of the dish serving mostly the skin and little meat, sliced in front of the diners by the cook', '$25', 'Entree', 2, 0),
('Spicy Tuna Roll', 11, 'It\'s spicy', '$1.99', 'Entree', 2, 0),
('Nepali Momo ', 12, 'Tasty goodness', '$8.99', 'Appetizer', 2, 0),
('Beef Noodle Soup', 13, 'Beefy Noodles', '$8.99', 'Entree', 2, 0),
('Ramen', 14, 'Ramen from the top shelf. Also called Top Ramen', '$2.99', 'Appetizer', 2, 0),
('Pho', 15, 'a Vietnamese noodle soup consisting of broth, linguine-shaped rice noodles called banh pho, a few herbs, and meat.', '$20.00', 'It\'s Pho-tastic', 3, 0),
('Chinese Dumplings', 16, 'a common Chinese dumpling which generally consists of minced meat and finely chopped vegetables wrapped into a piece of dough skin. The skin can be either thin and elastic or thicker.', '$29.00', 'Entree', 3, 0),
('Gyoza', 17, 'The most prominent differences between Japanese-style gyoza and Chinese-style jiaozi are the rich garlic flavor, which is less noticeable in the Chinese version, the light seasoning of Japanese gyoza with salt and soy sauce, and the fact that gyoza wrappe', '$10.00', 'Entree', 3, 0),
('Stinky Tofu', 18, 'Taiwanese dish, deep fried fermented tofu served with pickled cabbage.', '$1.00', 'Appetizer', 3, 0),
('Tres Leches Cake', 19, 'Rich, luscious sponge cake soaked in sweet milk and topped with vanilla bean whipped cream and strawberries.', '$10.00', 'Dessert', 4, 0),
('Mushroom risotto', 20, 'Portabello mushrooms in a creamy risotto', '$5.99', 'Appetizer', 4, 0),
('Honey Boba Shaved Snow', 21, 'Milk snow layered with honey boba, jasmine tea jelly, grass jelly, caramel, cream, and freshly made mochi', '$10.00', 'Entree', 4, 0),
('Cauliflower Manchurian', 22, 'Golden fried cauliflower florets in a midly spiced soya,garlic sauce cooked with fresh cilantro, celery, chilies,ginger & green onions', '$1.50', 'Appetizer', 4, 0),
('Aloo Gobi Burrito', 23, 'Vegan goodness. Burrito filled with rice, garbanzo beans, curry sauce, potatoes (aloo), fried cauliflower (gobi) and chutney. Nom Nom', '$5.33', 'Appetizer', 4, 0),
('Shellfish Tower', 24, 'A Tower made of shell fish, deep fried and layered on a single plate.', '$8.99', 'Entree', 5, 0),
('Chicken and Rice', 25, 'Rice mixed with Chicken', '$2.99', 'Appetizer', 5, 0),
('Mom\'s Spaghetti', 26, 'Spaghetti made by Mom.', 'priceless', 'Appetizer', 5, 0),
('Choc Full O\' Mint (Smitten\'s Fresh Mint Chip ice cream)', 27, 'Ice Cream full of mint', '$1.99', 'Dessert', 5, 0),
('Tonkatsu Ramen', 28, 'Noodles in a delicious pork-based broth with a soft-boiled egg', '$2.99', 'Entree', 5, 0),
('Lamb Curry', 29, 'Slow cook that thang in a pool of tomatoes, onions and alllll those tasty Indian spices. Mmmm.', '$5.00', 'Entree', 6, 0),
('Chicken Marsala', 30, 'Chicken cooked in Marsala wine sauce with mushrooms', '$3.00', 'Appetizer', 6, 0),
('Potstickers', 31, 'Delicious chicken and veggies encapsulated in fried dough.', '$3.50', 'Appetizer', 6, 0),
('Nigiri SamplerMaguro, Sake, Hamachi, Unagi, Uni, TORO!', 32, 'Wow, It\'s a mouthful', '$3.99', 'Entree', 6, 0),
('Boysenberry Sorbet', 34, 'An unsettlingly huge amount of ripe berries turned into frozen (and seedless) awesomeness', '$1.99', 'Dessert', 7, 0),
('Salmon Fillet', 35, 'Salmon fillet marinated with fresh herbs and broiled hot & fast', '$2.99', 'Appetizer', 7, 0),
('Morels on toast (seasonal)', 36, 'Wild morel mushrooms fried in butter, served on herbed toast slices', '$2.99', 'Appetizer', 7, 0),
('Tandoori Chicken', 37, 'Chicken marinated in yoghurt and seasoned with a spicy mix(chilli, tamarind among others) and slow cooked in a cylindrical clay or metal oven which gets its heat from burning charcoal.', '$3.99', 'Entree', 7, 0),
('Super Burrito Al Pastor', 38, 'Marinated Pork, Rice, Beans, Avocado, Cilantro, Salsa, Tortilla', '$5.33', 'Entree', 8, 0),
('Cachapa', 39, 'Golden brown, corn-based venezuelan pancake; usually stuffed with queso telita or queso de mano, and possibly lechon. ', '$5.99', 'Entree', 8, 0),
('Grilled Cheese', 40, 'melted cheese is good.', '$2.99', 'Appetizer', 1, 0),
('Nachos', 41, 'Tasty Nachos', '$3.99', 'Appetizer', 1, 0),
('Chocolate Milk', 43, 'made with real milk, can you believe it?', '$1.99', 'Beverage', 1, 0),
('Tater Tots', 44, 'Taters for your tots? ', '$2.99', 'Appetizer', 2, 0),
('Cotton Candy', 45, 'Super fluffy soft candy..', '$0.99', 'Dessert', 2, 0),
('Diet Dr. Pepper', 46, 'Who needs a description here?', '$1.75', 'Beverage', 2, 0),
('Egg Rolls', 47, 'Rolled by the Finest Roller.', '$2.00', 'Appetizer', 2, 0),
('Chicken Salad', 48, 'Best salad around, with the upmost savory chicken.', '$5.98', 'Appetizer', 1, 0),
('Spaghetti', 49, 'Good noodles', '$11.99', 'Entree', 6, 0),
('onion rings', 50, 'golden brown rings of onion', '$2.99', 'Appetizer', 6, 0),
('Apple PIe', 51, 'PIe of apples', '$1.99', 'Dessert', 6, 0),
('Cherry Soda', 52, 'No need for description', '$1.79', 'Beverage', 6, 0),
('pancakes', 53, 'fluffy syrupy pancakes', '$8.99', 'Appetizer', 7, 0),
('Ice Cream', 54, 'Ice Cream', '$1.00', 'Dessert', 7, 0),
('Jumbalaya', 56, 'Louisiana Style Jumbalaya.', '$15.00', 'Entree', 10, 0),
('Jalapeno Poppers', 57, 'Hot jalapeno and cream cheese poppers', '$2.99', 'Appetizer', 10, 0),
('Cowboy Candy', 58, 'Hot candy made from Jalapeno with some sweet to it', '$1.99', 'Dessert', 10, 0),
('Chicken Fried Steak', 59, 'Fresh battered sirloin steak fried and smothered with cream gravy', '$8.99', 'Entree', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `user_id`) VALUES
(1, 'Urban Burger', 0),
(2, 'Super Stir Frys', 0),
(3, 'Panda Garden', 0),
(4, 'Thyme for That Vegetarian Cuisine ', 0),
(5, 'Tony\'s Bistro ', 0),
(6, 'Andala\'s', 0),
(7, 'Auntie Ann\'s Diner ', 0),
(8, 'Cocina Y Amor ', 0),
(10, 'Brian\'s Place', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Brian Dennis', 'BigBrian', 'briandennis16@hotmail.com', '$5$rounds=535000$FbC/3nhlZRevAkYY$vV48Ys/veKZvEvRVQDu0Zf2.GKrgNAX4xCs1UiS6me/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_ibfk_2` (`restaurant_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
