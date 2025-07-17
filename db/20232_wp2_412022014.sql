-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 06:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoegallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_news` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_news`, `judul`, `isi`, `penulis`, `tanggal`, `gambar`) VALUES
(1, 'Still without a home, Yorktown art gallery prepares to close', 'YORKTOWN — The Yorktown Arts Foundation will permanently close the doors of its gallery and home base on June 13.\r\n\r\nThe foundation has operated On the Hill Gallery in the Burcher Cottage on Yorktown’s Main Street since 2014. In a news release, foundation officials said that the organization does not yet have a new headquarters lined up, but that it will continue to host some of its popular programs at alternate locations.\r\n\r\nSince its founding in 1975, the foundation has worked to foster an appreciation for art through educational programs and outreach and supported artists by providing a gallery for them to sell their work.\r\n\r\nBurcher Cottage, which dates to the late 1800s, is owned by the National Park Service. Officials from Colonial National Historical Park, which includes the battlefield and much of the historic village, permitted the foundation to operate On the Hill Gallery under a concession contract. That agreement expired in June 2023 but was extended by a year because of the pandemic.\r\n\r\nPark spokesman Darren Pickett said in an email that Burcher Cottage was one of several rental properties within Yorktown that have in recent years been converted to lease agreements, “bringing consistency to the way that all of the park’s historic buildings are managed and alignment with National Park Service (NPS) policies and guidelines.”\r\n\r\nThe new arrangement will generate significantly more revenue for the park service.\r\n\r\nAccording to Pickett, the park service is accepting proposals from parties interested in leasing Burcher Cottage. “The park does not have a specific tenant type in mind,” he said. “The (request for proposals) process will help to determine suitability.”\r\n\r\nFoundation officials learned in March that the concession contract would expire without an opportunity for them to negotiate an extension. President Kathleen Wahl said that the foundation had invested roughly $35,000 in building maintenance and repairs.\r\n\r\nThe announcement of the expiring concession contract prompted an outpouring of support. “We were awed and humbled by the support from the community, York County, and elected officials,” Wahl said in the news release.', 'BEN SWENSON', '2024-05-31', 'othg_external02.jpg'),
(2, 'Love Coffee, Serendipity Salon and Gallery to celebrate landmarks at upcoming events', 'On Saturday, June 1, Love Coffee will host what it\'s termed a \"grand (re)opening event\" at its 15 E. Business Loop 70 E location to mark a collaboration that\'s as Columbia as they come.\r\n\r\nThe coffeeshop will begin serving Buck\'s Ice Cream; known for its Tiger Stripe flavor, the cool local mainstay is made by students at the University of Missouri\'s College of Agriculture, Food and Natural Resources.\r\n\r\nIn addition to creating quality food and beverages, Love Coffee exists to \"establish exceptionalwork experience for individuals with disabilities,\" as it notes in a news release.\r\n\r\nSaturday\'s event will include a bounce house, face painting and other family-friendly activities. The celebration takes place from 11 a.m. to 3 p.m.\r\n\r\nThursday, June 6, Serendipity Salon and Gallery will celebrate three years at its Walnut Street location — and a widening of its mission.\r\n\r\nAt a ribbon-cutting event, the venue will observe the anniversary and mark the opening of its Serendipity Wellness Studios, \"a dedicated space for wellness-related small businesses,\" according to a news release.\r\n\r\nOwned and operated by Elizabeth Jordheim, Serendipity is a full-service salon, exhibits and retails the work of area artists, and opens its doors as an event space. Serendipity has hosted gatherings for local cultural mainstays such as the Unbound Book Festival.', 'Aarik Danielsen', '2024-05-31', '91ad11e74bd4267bb2ab21a416122559.jpg'),
(3, 'Driehaus Museum Reopens Landmark Murphy Memorial and Announces Free Visit Days in June', 'Today, the Driehaus Museum, at Wabash and Erie, is proud to announce that its John B. Murphy Memorial Auditorium has received City of Chicago landmark designation. The Driehaus Museum is now comprised of two landmarked buildings – the 1926 Murphy Auditorium and the 1883 Nickerson Mansion. Following the Museum’s restoration of the historic building, it will officially reopen the Murphy Auditorium as part of its campus on June 21.\r\n\r\nThe restoration of the historic Murphy Auditorium began in summer 2023 and included restoring the main auditorium on the ground floor to its original grandeur, enhancing it with modern lighting, and creating a leveled, unified, and accessible seating area to make it a world-class venue for music, events, and programs that support the Museum’s mission and allow it to open its doors wider to the community. The project also renewed former office space above the auditorium to create a dynamic new Learning Center with art and maker studios, new offices, seminar rooms, and an 800-square foot outdoor terrace on the top floor. Summer programs on the campus will be kicked off with a weekend of free admissionincluding access to the exhibition Chicago Collects: Jewelry in Perspective from Friday at 11AM, June 21 to Sunday, June 23, also ushering in the Museum’s expanded hours and added amenities \r\n\r\nAccording to Driehaus Executive Director Lisa Key, “It is thrilling for us to complete this important renovation creating a new Museum campus, offering visitors not only an incredible museum of art, architecture, and design, but now a newly rejuvenated auditorium that will add a vital and dynamic public space to the cultural campus in Chicago that will continue toincrease the historical profile of this great city of architecture.” Key added, “It was museum founder, Richard H. Driehaus, who had the vision to combine these historic buildings into one museum campus. We are so happy this vision has come to fruition and now this expansion allows us to extend our work outward in the larger community.”\r\n\r\n“It was a huge relief to learn about the Driehaus Museum expanding its campus into the adjacent Murphy Memorial. There are not many options for finding an appropriate re-use that would respect the historic character of such a monumentally scaled historic building while at same time providing a positive impact on the surrounding neighborhood,” said Tim Samuelson, the Cultural Historian Emeritus of the City of Chicago. “The Driehaus Museum has been a thoughtful community partner and valuable neighborhood asset for the past twenty years, and its expansion into the Murphy makes something great even greater!”\r\n\r\nTo become a more accessible and visible part of the community and Chicago’s cultural landscape, starting June 26, the Driehaus Museum will offer expanded hours and free admission on Wednesday evenings from 5 to 7pm. The restoration project also refreshed the Museum’s amenities including a larger coat check and renovated bathrooms. Guests to the Museum will now enter through the Murphy’s Tiffany-designed doors at 50 East Erie, and the Museum’s address will officially change to 50 East Erie.\r\n\r\nAntunovich and Associates and Bulley & Andrews, both of whom were involved in the extensive renovation of the Nickerson Mansion from 2003-2008, were the architecture and building partners for the Murphy Auditorium. The opening of the updated building will present a full suite of new programming tied to the Driehaus Museum’s strategic vision, along with a range of activities and events, both public and private, for the community.', 'Via PR', '2024-05-23', 'image002.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_admin`
--

CREATE TABLE `contact_admin` (
  `id_contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_admin`
--

INSERT INTO `contact_admin` (`id_contact`, `email`, `name`, `subject`, `message`) VALUES
(2, 'myukrida@gmail.com', 'myukrida', 'Test Contact ', 'Hello!');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id_img` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `imagepath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_img`, `img_name`, `category`, `imagepath`) VALUES
(1, 'bird-eagle-001.jpg', 'Animals', 'Images/Animals/bird-eagle-001.jpg'),
(2, 'bird-flamingo-001.jpg', 'Animals', 'Images/Animals/bird-flamingo-001.jpg'),
(3, 'bird-leafbird-002.jpg', 'Animals', 'Images/Animals/bird-leafbird-002.jpg'),
(4, 'bird-parrot-001.jpg', 'Animals', 'Images/Animals/bird-parrot-001.jpg'),
(5, 'bird-peacock-001.jpg', 'Animals', 'Images/Animals/bird-peacock-001.jpg'),
(6, 'bird-pigeon-001.jpg', 'Animals', 'Images/Animals/bird-pigeon-001.jpg'),
(7, 'bird-swan-001.jpg', 'Animals', 'Images/Animals/bird-swan-001.jpg'),
(8, 'bug-butterfly-001.jpg', 'Animals', 'Images/Animals/bug-butterfly-001.jpg'),
(9, 'bug-ladybug-001.jpg', 'Animals', 'Images/Animals/bug-ladybug-001.jpg'),
(10, 'fish-discus-001.jpg', 'Animals', 'Images/Animals/fish-discus-001.jpg'),
(11, 'fish-dolphin-001.jpg', 'Animals', 'Images/Animals/fish-dolphin-001.jpg'),
(12, 'mammal-cat-002.jpg', 'Animals', 'Images/Animals/mammal-cat-002.jpg'),
(13, 'mammal-cat-003.jpg', 'Animals', 'Images/Animals/mammal-cat-003.jpg'),
(14, 'mammal-deer-001.jpg', 'Animals', 'Images/Animals/mammal-deer-001.jpg'),
(15, 'mammal-dog-001.jpg', 'Animals', 'Images/Animals/mammal-dog-001.jpg'),
(16, 'mammal-elephant-001.jpg', 'Animals', 'Images/Animals/mammal-elephant-001.jpg'),
(17, 'mammal-girrafe-001.jpg', 'Animals', 'Images/Animals/mammal-girrafe-001.jpg'),
(18, 'mammal-hamster-001.jpg', 'Animals', 'Images/Animals/mammal-hamster-001.jpg'),
(19, 'mammal-horse-001.jpg', 'Animals', 'Images/Animals/mammal-horse-001.jpg'),
(20, 'mammal-lion-001.jpg', 'Animals', 'Images/Animals/mammal-lion-001.jpg'),
(21, 'mammal-monkey-001.jpg', 'Animals', 'Images/Animals/mammal-monkey-001.jpg'),
(22, 'mammal-panda-001.jpg', 'Animals', 'Images/Animals/mammal-panda-001.jpg'),
(23, 'mammal-polar_bear-001.jpg', 'Animals', 'Images/Animals/mammal-polar_bear-001.jpg'),
(24, 'mammal-porcupine-001.jpg', 'Animals', 'Images/Animals/mammal-porcupine-001.jpg'),
(25, 'mammal-squirrel-001.jpg', 'Animals', 'Images/Animals/mammal-squirrel-001.jpg'),
(26, 'mammal-tiger-001.jpg', 'Animals', 'Images/Animals/mammal-tiger-001.jpg'),
(27, 'mammal-tiger-002.jpg', 'Animals', 'Images/Animals/mammal-tiger-002.jpg'),
(28, 'mammal-zebra-001.jpg', 'Animals', 'Images/Animals/mammal-zebra-001.jpg'),
(29, 'pexels-pixabay-45201.jpg', 'Animals', 'Images/Animals/pexels-pixabay-45201.jpg'),
(30, 'reptile-chameleon-001.jpg', 'Animals', 'Images/Animals/reptile-chameleon-001.jpg'),
(31, 'sea-turtle-001.jpg', 'Animals', 'Images/Animals/sea-turtle-001.jpg'),
(32, 'mammal-cat-001.jpeg', 'Animals', 'Images/Animals/mammal-cat-001.jpeg'),
(33, 'animation-012.jpg', 'Animation', 'Images/Animation/animation-012.jpg'),
(34, 'animation-013.jpg', 'Animation', 'Images/Animation/animation-013.jpg'),
(35, 'animation-014.jpg', 'Animation', 'Images/Animation/animation-014.jpg'),
(36, 'animation-015.jpg', 'Animation', 'Images/Animation/animation-015.jpg'),
(37, 'Layla - Miss Hikari.jpeg', 'Animation', 'Images/Animation/Layla - Miss Hikari.jpeg'),
(38, 'animation-005.jpeg', 'Animation', 'Images/Animation/animation-005.jpeg'),
(39, 'animation-006.jpeg', 'Animation', 'Images/Animation/animation-006.jpeg'),
(40, 'animation-007.jpeg', 'Animation', 'Images/Animation/animation-007.jpeg'),
(41, 'animation-008.jpeg', 'Animation', 'Images/Animation/animation-008.jpeg'),
(42, 'animation-009.jpeg', 'Animation', 'Images/Animation/animation-009.jpeg'),
(43, 'animation-010.jpeg', 'Animation', 'Images/Animation/animation-010.jpeg'),
(44, 'animation-011.jpeg', 'Animation', 'Images/Animation/animation-011.jpeg'),
(45, 'animation-016.png', 'Animation', 'Images/Animation/animation-016.png'),
(46, 'animation-017.png', 'Animation', 'Images/Animation/animation-017.png'),
(47, 'animation-018.png', 'Animation', 'Images/Animation/animation-018.png'),
(48, 'animation-019.png', 'Animation', 'Images/Animation/animation-019.png'),
(49, 'animation-020.png', 'Animation', 'Images/Animation/animation-020.png'),
(50, 'animation-001.gif', 'Animation', 'Images/Animation/animation-001.gif'),
(51, 'animation-002.gif', 'Animation', 'Images/Animation/animation-002.gif'),
(52, 'animation-003.gif', 'Animation', 'Images/Animation/animation-003.gif'),
(53, 'animation-004.gif', 'Animation', 'Images/Animation/animation-004.gif'),
(54, 'angel-564351_1920.jpg', 'Christmas', 'Images/Christmas/angel-564351_1920.jpg'),
(55, 'christmas-1911637_1920.jpg', 'Christmas', 'Images/Christmas/christmas-1911637_1920.jpg'),
(56, 'christmas-tree-574742_1920.jpg', 'Christmas', 'Images/Christmas/christmas-tree-574742_1920.jpg'),
(57, 'gingerbread_123.jpg', 'Christmas', 'Images/Christmas/gingerbread_123.jpg'),
(58, 'pexels-nati-19283471.jpg', 'Christmas', 'Images/Christmas/pexels-nati-19283471.jpg'),
(59, 'pexels-toni-cuenca-688575.jpg', 'Christmas', 'Images/Christmas/pexels-toni-cuenca-688575.jpg'),
(60, 'snowflake-1823942_1920.jpg', 'Christmas', 'Images/Christmas/snowflake-1823942_1920.jpg'),
(61, 'warm-and-cozy-1975215_1920.jpg', 'Christmas', 'Images/Christmas/warm-and-cozy-1975215_1920.jpg'),
(62, 'Christmas Gift Wrapping Ideas_.jpeg', 'Christmas', 'Images/Christmas/Christmas Gift Wrapping Ideas_.jpeg'),
(63, 'Christmas_Decor Ideas.jpeg', 'Christmas', 'Images/Christmas/Christmas_Decor Ideas.jpeg'),
(64, 'Dogs_Christmas Trees.jpeg', 'Christmas', 'Images/Christmas/Dogs_Christmas Trees.jpeg'),
(65, 'Mode and The City.jpeg', 'Christmas', 'Images/Christmas/Mode and The City.jpeg'),
(66, 'decorative-001.jpeg', 'Decorative', 'Images/Decorative/decorative-001.jpeg'),
(67, 'decorative-002.jpeg', 'Decorative', 'Images/Decorative/decorative-002.jpeg'),
(68, 'decorative-003.jpeg', 'Decorative', 'Images/Decorative/decorative-003.jpeg'),
(69, 'decorative-004.jpeg', 'Decorative', 'Images/Decorative/decorative-004.jpeg'),
(70, 'decorative-005.jpeg', 'Decorative', 'Images/Decorative/decorative-005.jpeg'),
(71, 'decorative-006.jpeg', 'Decorative', 'Images/Decorative/decorative-006.jpeg'),
(72, 'decorative-007.jpeg', 'Decorative', 'Images/Decorative/decorative-007.jpeg'),
(73, 'decorative-008.jpeg', 'Decorative', 'Images/Decorative/decorative-008.jpeg'),
(74, 'decorative-009.jpeg', 'Decorative', 'Images/Decorative/decorative-009.jpeg'),
(75, 'decorative-010.jpeg', 'Decorative', 'Images/Decorative/decorative-010.jpeg'),
(76, 'decorative-011.jpeg', 'Decorative', 'Images/Decorative/decorative-011.jpeg'),
(77, 'decorative-012.jpeg', 'Decorative', 'Images/Decorative/decorative-012.jpeg'),
(78, 'decorative-013.jpeg', 'Decorative', 'Images/Decorative/decorative-013.jpeg'),
(79, 'fantasy-001.jpg', 'Fantasy', 'Images/Fantasy/fantasy-001.jpg'),
(80, 'fantasy-003.jpg', 'Fantasy', 'Images/Fantasy/fantasy-003.jpg'),
(81, 'fantasy-004.jpg', 'Fantasy', 'Images/Fantasy/fantasy-004.jpg'),
(82, 'fantasy-005.jpg', 'Fantasy', 'Images/Fantasy/fantasy-005.jpg'),
(83, 'fantasy-006.jpg', 'Fantasy', 'Images/Fantasy/fantasy-006.jpg'),
(84, 'fantasy-007.jpg', 'Fantasy', 'Images/Fantasy/fantasy-007.jpg'),
(85, 'fantasy-008.jpg', 'Fantasy', 'Images/Fantasy/fantasy-008.jpg'),
(86, 'fantasy-009.jpg', 'Fantasy', 'Images/Fantasy/fantasy-009.jpg'),
(87, 'fantasy-010.jpg', 'Fantasy', 'Images/Fantasy/fantasy-010.jpg'),
(88, 'fantasy-011.jpg', 'Fantasy', 'Images/Fantasy/fantasy-011.jpg'),
(89, 'fantasy-012.jpg', 'Fantasy', 'Images/Fantasy/fantasy-012.jpg'),
(90, 'fantasy-013.jpg', 'Fantasy', 'Images/Fantasy/fantasy-013.jpg'),
(91, 'fantasy-014.jpg', 'Fantasy', 'Images/Fantasy/fantasy-014.jpg'),
(92, 'fantasy-002.jpeg', 'Fantasy', 'Images/Fantasy/fantasy-002.jpeg'),
(93, 'fantasy-015.jpeg', 'Fantasy', 'Images/Fantasy/fantasy-015.jpeg'),
(94, 'coffee-3536700_1920.jpg', 'Food', 'Images/Food/coffee-3536700_1920.jpg'),
(95, '25 Creeptastic Halloween Party Food Ideas for Kids.jpeg', 'Food', 'Images/Food/25 Creeptastic Halloween Party Food Ideas for Kids.jpeg'),
(96, '3d3d7b1f-8915-4886-a441-d881c36b51a3.jpeg', 'Food', 'Images/Food/3d3d7b1f-8915-4886-a441-d881c36b51a3.jpeg'),
(97, 'A Pokemon bento.jpeg', 'Food', 'Images/Food/A Pokemon bento.jpeg'),
(98, 'Bavarois Framboise, Croustillant Chocolat Blanc.jpeg', 'Food', 'Images/Food/Bavarois Framboise, Croustillant Chocolat Blanc.jpeg'),
(99, 'Fluffy Japanese Souffle Pancakes.jpeg', 'Food', 'Images/Food/Fluffy Japanese Souffle Pancakes.jpeg'),
(100, 'Jack Daniels Burgers.jpeg', 'Food', 'Images/Food/Jack Daniels Burgers.jpeg'),
(101, 'Steak Frites with Chimichurri Sauce.jpeg', 'Food', 'Images/Food/Steak Frites with Chimichurri Sauce.jpeg'),
(102, 'Sweet and Spicy Tempeh with Garlic Curry Noodles.jpeg', 'Food', 'Images/Food/Sweet and Spicy Tempeh with Garlic Curry Noodles.jpeg'),
(103, 'Taco Tower!.jpeg', 'Food', 'Images/Food/Taco Tower!.jpeg'),
(104, 'Tortillas de Wraps.jpeg', 'Food', 'Images/Food/Tortillas de Wraps.jpeg'),
(105, 'Watermelon-Macarons.jpeg', 'Food', 'Images/Food/Watermelon-Macarons.jpeg'),
(106, 'lemon-slices.jpeg', 'Food', 'Images/Food/lemon-slices.jpeg'),
(107, 'cherries-158241_1920.png', 'Food', 'Images/Food/cherries-158241_1920.png'),
(108, 'popsicle-154321_1920.png', 'Food', 'Images/Food/popsicle-154321_1920.png'),
(109, 'avatar.jpg', 'Game', 'Images/Game/avatar.jpg'),
(110, 'cat-4143414_1920.jpg', 'Game', 'Images/Game/cat-4143414_1920.jpg'),
(111, 'chess-1702761_1920.jpg', 'Game', 'Images/Game/chess-1702761_1920.jpg'),
(112, 'scifi-3617337_1920.jpg', 'Game', 'Images/Game/scifi-3617337_1920.jpg'),
(113, 'DIY Ring Toss Game.jpeg', 'Game', 'Images/Game/DIY Ring Toss Game.jpeg'),
(114, 'Far Cry 4.jpeg', 'Game', 'Images/Game/Far Cry 4.jpeg'),
(115, 'Make Your Own Super Mario Game.jpeg', 'Game', 'Images/Game/Make Your Own Super Mario Game.jpeg'),
(116, 'Thrilling Arcade Museums.jpeg', 'Game', 'Images/Game/Thrilling Arcade Museums.jpeg'),
(117, 'be21e07c-7ea4-4e7f-b5bc-09bf9774a677.jpeg', 'Game', 'Images/Game/be21e07c-7ea4-4e7f-b5bc-09bf9774a677.jpeg'),
(118, 'football-157930_1920.png', 'Game', 'Images/Game/football-157930_1920.png'),
(119, 'horror-001.jpg', 'Horror', 'Images/Horror/horror-001.jpg'),
(120, 'witch-2146713_1920.jpg', 'Horror', 'Images/Horror/witch-2146713_1920.jpg'),
(121, '13 Horror Comics.jpeg', 'Horror', 'Images/Horror/13 Horror Comics.jpeg'),
(122, 'Creepy Carnival.jpeg', 'Horror', 'Images/Horror/Creepy Carnival.jpeg'),
(123, 'Dark Aesthetic.jpeg', 'Horror', 'Images/Horror/Dark Aesthetic.jpeg'),
(124, 'Old Hospitals.jpeg', 'Horror', 'Images/Horror/Old Hospitals.jpeg'),
(125, 'The Exorcist.jpeg', 'Horror', 'Images/Horror/The Exorcist.jpeg'),
(126, 'This Artist Creates Disturbing Artwork That Resembles Horror Movies - PolyTrendy.jpeg', 'Horror', 'Images/Horror/This Artist Creates Disturbing Artwork That Resembles Horror Movies - PolyTrendy.jpeg'),
(127, 'Top10_ Dez Filmes de Terror Assustadores.jpeg', 'Horror', 'Images/Horror/Top10_ Dez Filmes de Terror Assustadores.jpeg'),
(128, 'Wights, J_ Steven Restrepo.jpeg', 'Horror', 'Images/Horror/Wights, J_ Steven Restrepo.jpeg'),
(129, 'horror-002.jpeg', 'Horror', 'Images/Horror/horror-002.jpeg'),
(130, 'it never forgives, it never forgets.jpeg', 'Horror', 'Images/Horror/it never forgives, it never forgets.jpeg'),
(131, 'night tracer, Benny Kusnoto.jpeg', 'Horror', 'Images/Horror/night tracer, Benny Kusnoto.jpeg'),
(132, 'death-2026516_1920.png', 'Horror', 'Images/Horror/death-2026516_1920.png'),
(133, 'animation-004.gif', 'Horror', 'Images/Horror/animation-004.gif'),
(134, 'crowd-1056764_1920.jpg', 'Music', 'Images/Music/crowd-1056764_1920.jpg'),
(135, 'mic-1132528_1920.jpg', 'Music', 'Images/Music/mic-1132528_1920.jpg'),
(136, 'music-3510326_1920.jpg', 'Music', 'Images/Music/music-3510326_1920.jpg'),
(137, 'piano-3505109_1920.jpg', 'Music', 'Images/Music/piano-3505109_1920.jpg'),
(138, 'samsung-605439_1920.jpg', 'Music', 'Images/Music/samsung-605439_1920.jpg'),
(139, 'saxophone-546303_1920.jpg', 'Music', 'Images/Music/saxophone-546303_1920.jpg'),
(140, 'vinyl-1595847_1920.jpg', 'Music', 'Images/Music/vinyl-1595847_1920.jpg'),
(141, 'workshop-4524838_1920.jpg', 'Music', 'Images/Music/workshop-4524838_1920.jpg'),
(142, '7e70fb69-a3c1-465f-9076-8d036a8b7607.jpeg', 'Music', 'Images/Music/7e70fb69-a3c1-465f-9076-8d036a8b7607.jpeg'),
(143, 'Dive into anything.jpeg', 'Music', 'Images/Music/Dive into anything.jpeg'),
(144, 'Guitar Piano Aesthetic Classical Music Sheet Music.jpeg', 'Music', 'Images/Music/Guitar Piano Aesthetic Classical Music Sheet Music.jpeg'),
(145, 'Ian Post.jpeg', 'Music', 'Images/Music/Ian Post.jpeg'),
(146, 'The 26 Stages Of Starting A Band.jpeg', 'Music', 'Images/Music/The 26 Stages Of Starting A Band.jpeg'),
(147, 'The Art of Jazz - David Stone Martin Voices of East Anglia.jpeg', 'Music', 'Images/Music/The Art of Jazz - David Stone Martin Voices of East Anglia.jpeg'),
(148, 'Vintage, Vinyl, Music store Poster.jpeg', 'Music', 'Images/Music/Vintage, Vinyl, Music store Poster.jpeg'),
(149, 'abb65194-466c-4b54-b9eb-50275674e9c1.jpeg', 'Music', 'Images/Music/abb65194-466c-4b54-b9eb-50275674e9c1.jpeg'),
(150, 'entertainment! Musical moggies make up hilarious cat calendar.jpeg', 'Music', 'Images/Music/entertainment! Musical moggies make up hilarious cat calendar.jpeg'),
(151, 'nature-004.jpg', 'Nature', 'Images/Nature/nature-004.jpg'),
(152, 'nature-005.jpg', 'Nature', 'Images/Nature/nature-005.jpg'),
(153, 'nature-006.jpg', 'Nature', 'Images/Nature/nature-006.jpg'),
(154, 'nature-007.jpg', 'Nature', 'Images/Nature/nature-007.jpg'),
(155, 'nature-008.jpg', 'Nature', 'Images/Nature/nature-008.jpg'),
(156, 'nature-009.jpg', 'Nature', 'Images/Nature/nature-009.jpg'),
(157, 'nature-010.jpg', 'Nature', 'Images/Nature/nature-010.jpg'),
(158, 'nature-011.jpg', 'Nature', 'Images/Nature/nature-011.jpg'),
(159, 'nature-012.jpg', 'Nature', 'Images/Nature/nature-012.jpg'),
(160, 'nature-013.jpg', 'Nature', 'Images/Nature/nature-013.jpg'),
(161, 'nature-014.jpg', 'Nature', 'Images/Nature/nature-014.jpg'),
(162, 'nature-015.jpg', 'Nature', 'Images/Nature/nature-015.jpg'),
(163, 'nature-016.jpg', 'Nature', 'Images/Nature/nature-016.jpg'),
(164, 'nature-017.jpg', 'Nature', 'Images/Nature/nature-017.jpg'),
(165, 'nature-018.jpg', 'Nature', 'Images/Nature/nature-018.jpg'),
(166, 'nature-019.jpg', 'Nature', 'Images/Nature/nature-019.jpg'),
(167, 'nature-020.jpg', 'Nature', 'Images/Nature/nature-020.jpg'),
(168, 'nature-021.jpg', 'Nature', 'Images/Nature/nature-021.jpg'),
(169, 'nature-022.jpg', 'Nature', 'Images/Nature/nature-022.jpg'),
(170, 'nature-023.jpg', 'Nature', 'Images/Nature/nature-023.jpg'),
(171, 'nature-024.jpg', 'Nature', 'Images/Nature/nature-024.jpg'),
(172, 'nature-003.jpeg', 'Nature', 'Images/Nature/nature-003.jpeg'),
(173, 'clem-onojeghuo-zlABb6Gke24-unsplash.jpg', 'Photography', 'Images/Photography/clem-onojeghuo-zlABb6Gke24-unsplash.jpg'),
(174, 'pexels-arthur-shuraev-19415894.jpg', 'Photography', 'Images/Photography/pexels-arthur-shuraev-19415894.jpg'),
(175, 'pexels-luiz-fernando-5646986.jpg', 'Photography', 'Images/Photography/pexels-luiz-fernando-5646986.jpg'),
(176, 'pexels-mathias-reding-18111091.jpg', 'Photography', 'Images/Photography/pexels-mathias-reding-18111091.jpg'),
(177, 'pexels-zetong-li-18907092.jpg', 'Photography', 'Images/Photography/pexels-zetong-li-18907092.jpg'),
(178, 'Hiking.jpeg', 'Photography', 'Images/Photography/Hiking.jpeg'),
(179, 'Upstate New York - The Mandagies.jpeg', 'Photography', 'Images/Photography/Upstate New York - The Mandagies.jpeg'),
(180, 'german.jpeg', 'Photography', 'Images/Photography/german.jpeg'),
(181, 'lia.jpeg', 'Photography', 'Images/Photography/lia.jpeg'),
(182, 'london.jpeg', 'Photography', 'Images/Photography/london.jpeg'),
(183, 'Emotion and Design.jpeg', 'Sports', 'Images/Sports/Emotion and Design.jpeg'),
(184, 'Punch Out.jpeg', 'Sports', 'Images/Sports/Punch Out.jpeg'),
(185, 'a1e5467c-66a4-4414-b5e8-33e8527f410a.jpeg', 'Sports', 'Images/Sports/a1e5467c-66a4-4414-b5e8-33e8527f410a.jpeg'),
(186, 'kids playing rugby_.jpeg', 'Sports', 'Images/Sports/kids playing rugby_.jpeg'),
(187, 'surf.jpeg', 'Sports', 'Images/Sports/surf.jpeg'),
(188, 'Amsterdam_netherland.jpeg', 'Travel', 'Images/Travel/Amsterdam_netherland.jpeg'),
(189, 'Ancient Trading Cultures.jpeg', 'Travel', 'Images/Travel/Ancient Trading Cultures.jpeg'),
(190, 'AncientGreece.jpeg', 'Travel', 'Images/Travel/AncientGreece.jpeg'),
(191, 'Japan sakura.jpeg', 'Travel', 'Images/Travel/Japan sakura.jpeg'),
(192, 'Japant.jpeg', 'Travel', 'Images/Travel/Japant.jpeg'),
(193, 'Small Towns in America.jpeg', 'Travel', 'Images/Travel/Small Towns in America.jpeg'),
(194, 'The Natural History Museum London.jpeg', 'Travel', 'Images/Travel/The Natural History Museum London.jpeg'),
(195, 'The Topography Of Africa.jpeg', 'Travel', 'Images/Travel/The Topography Of Africa.jpeg'),
(196, 'US Memorials and Monuments.jpeg', 'Travel', 'Images/Travel/US Memorials and Monuments.jpeg'),
(197, 'cafe_coffe.jpeg', 'Travel', 'Images/Travel/cafe_coffe.jpeg'),
(198, 'europe-town.jpeg', 'Travel', 'Images/Travel/europe-town.jpeg'),
(199, 'Yui Hirasawa', 'Anime', 'Images/Anime/Twitter.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `imgallery`
--

CREATE TABLE `imgallery` (
  `id` int(3) NOT NULL,
  `imgpath` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imgallery`
--

INSERT INTO `imgallery` (`id`, `imgpath`, `category`, `description`) VALUES
(1, 'mammal-cat-002.jpg', 'Animals', 'Discover the beauty and uniqueness of your favorite pets.'),
(2, 'nature-017.jpg', 'Nature', 'Enjoy the soothing and stunning views of nature.'),
(3, 'fantasy-003.jpg', 'Fantasy', 'Enter a fantasy world full of magic and adventure.'),
(4, 'decorative-007.jpeg', 'Decorative', 'Admire the artistic and elegant designs of decorative arts.'),
(5, 'horror-002.jpeg', 'Horror', 'Prepare to be scared and thrilled by the terrifying and gruesome images of horror.'),
(6, 'chess-1702761_1920.jpg', 'Game', 'Have fun and challenge yourself with the exciting and interactive images of games.'),
(7, 'animation-003.gif', 'Animation', 'Enjoy the colorful and lively images of animation.'),
(8, 'Watermelon-Macarons.jpeg', 'Food', 'Satisfy your appetite and taste buds with the delicious and mouthwatering images of food.'),
(10, 'abb65194-466c-4b54-b9eb-50275674e9c1.jpeg', 'Music', 'Express your emotions and creativity with the harmonious and inspiring images of music.'),
(11, 'a1e5467c-66a4-4414-b5e8-33e8527f410a.jpeg', 'Sports', 'Feel the adrenaline and passion with the dynamic and energetic images of sports.'),
(12, 'europe-town.jpeg', 'Travel', 'Discover the culture and history with the diverse and fascinating images of travel.'),
(13, 'pexels-luiz-fernando-5646986.jpg', 'Photography', 'Enjoy the beauty and visual expression of images created with light.'),
(14, 'pexels-nati-19283471.jpg', 'Christmas', 'Christmas related stuffs.'),
(15, 'Twitter.jpg', 'Anime', 'Style of animation that originated in Japan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`) VALUES
(3, 'Nico', '4118af4d1a8ac07d93f11ce4f3bf1f58', 'nico@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `contact_admin`
--
ALTER TABLE `contact_admin`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id_img`);

--
-- Indexes for table `imgallery`
--
ALTER TABLE `imgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_admin`
--
ALTER TABLE `contact_admin`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `imgallery`
--
ALTER TABLE `imgallery`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
