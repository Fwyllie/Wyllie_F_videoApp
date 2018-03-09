-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 05:38 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wyllieVideoApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(10) UNSIGNED NOT NULL,
  `movie_cover` varchar(200) NOT NULL,
  `movie_thumbnail` varchar(200) NOT NULL,
  `movie_title` varchar(200) NOT NULL,
  `movie_year` varchar(50) NOT NULL,
  `movie_desc` varchar(1000) NOT NULL,
  `movie_genre` varchar(50) NOT NULL,
  `movie_trailer` varchar(200) NOT NULL,
  `movie_rating` varchar(15) NOT NULL,
  `movie_kids` varchar(10) NOT NULL,
  `movie_twitter` varchar(300) NOT NULL,
  `movie_fb` varchar(300) NOT NULL,
  `movie_insta` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_cover`, `movie_thumbnail`, `movie_title`, `movie_year`, `movie_desc`, `movie_genre`, `movie_trailer`, `movie_rating`, `movie_kids`, `movie_twitter`, `movie_fb`, `movie_insta`) VALUES
(1, 'batmanCover.jpg\r\n', 'batmanThumb.jpg', 'Batman Arkham Knight\r\n', '2015', 'One year after the events of Arkham City, Gotham City has found itself in a state of complete disarray. While newly appointed mayor, Quincy Sharp, seeks to capture the remaining inmates of Blackgate, John Blake, now donning the mantle of the Dark Knight, must contend with the diabolical Black Mask and his band of hired mercenaries - a struggle that will bring the young crusader to a pivotal crossroad.', 'adventure', 'batmanVideo.mp4', '7.7/10', '', 'twitter.com', 'facebook.com', 'instagram.com'),
(2, 'jumanjiCover.jpg', 'jumanjiThumb.jpg', 'Jumanji', '2017', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.', 'comedy', 'jumanjiVideo.mp4', '7.2/10', 'yes', 'twitter.com', 'facebook.com', 'instagram.com'),
(3, 'inceptionCover.jpg', 'inceptionThumbnail.jpg', 'Inception', '2010', 'Inception is a 2010 science fiction film written, co-produced, and directed by Christopher Nolan, and co-produced by Emma Thomas. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious, and is offered a chance to have his criminal history erased as payment for the implantation of another person\'s idea into a target\'s subconscious.[4] The ensemble cast additionally includes Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Ellen Page, Tom Hardy, Dileep Rao, Cillian Murphy, Tom Berenger, and Michael Caine.', 'serious', 'inceptionVideo.mp4', '8.8/10', 'yes', 'twitter.com', 'facebook.com', 'instagram.com'),
(4, 'intoTheWildCover.jpg', 'intoTheWildThumbnail.jpg', 'Into The Wild', '2007', 'Into the Wild is a 2007 American biographical survival film written, co-produced, and directed by Sean Penn. It is an adaptation of Jon Krakauer\'s 1996 nonfiction book of the same name, based on the travels of Christopher McCandless across North America and his experiences in the Alaskan wilderness in the early 1990s. The film stars Emile Hirsch as McCandless, and Marcia Gay Harden and William Hurt as his parents, and features Jena Malone, Catherine Keener, Vince Vaughn, Kristen Stewart, and Hal Holbrook.', 'educational', 'intoTheWildVideo.mp4', '8.1/10', 'yes', 'twitter.com', 'facebook.com', 'instagram.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_rev`
--

CREATE TABLE `tbl_mov_rev` (
  `mov_rev_id` smallint(5) UNSIGNED NOT NULL,
  `movie_id` smallint(11) NOT NULL,
  `review_id` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_rev`
--

INSERT INTO `tbl_mov_rev` (`mov_rev_id`, `movie_id`, `review_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 2, 3),
(5, 2, 4),
(6, 3, 1),
(7, 3, 7),
(8, 4, 1),
(9, 4, 2),
(10, 4, 3),
(11, 4, 4),
(12, 4, 5),
(13, 4, 6),
(14, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(10) UNSIGNED NOT NULL,
  `music_thumbnail` varchar(200) NOT NULL,
  `music_name` varchar(200) NOT NULL,
  `music_artist` varchar(200) NOT NULL,
  `music_genre` varchar(20) NOT NULL,
  `music_link` varchar(250) NOT NULL,
  `music_kids` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_thumbnail`, `music_name`, `music_artist`, `music_genre`, `music_link`, `music_kids`) VALUES
(1, 'stoneyCover.jpg', 'Congratulations', 'Post Malone', 'hiphop', 'congratulations.mp3', 'no'),
(2, 'iliwysCover.jpg', 'Somebody Else', 'The 1975', 'alternative', 'somebodyElse.mp3', 'yes'),
(3, 'revivalCover.jpg', 'Remind Me', 'Eminem', 'hiphop', 'remindme.mp3', 'no'),
(4, 'channelOrange.jpg', 'Thinking Bout You', 'Frank Ocean', 'pop', 'thinkinBoutYou.mp3', 'yes'),
(5, 'reputation.png', 'Gorgeous', 'Taylor Swift', 'pop', 'gorgeous.mp3', 'yes'),
(6, 'paris.jpg', 'Paris', 'The Chainsmokers', 'dance', 'paris.mp3', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `review_name` varchar(200) NOT NULL,
  `review_comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`review_id`, `review_name`, `review_comment`) VALUES
(1, 'Trevor', 'This is my favourite thing ever!! 10/10 would recommend. '),
(2, 'John Smith', 'SAD! Very Bad, do not watch this!!'),
(3, 'John Mayer', 'It was okay.'),
(4, 'Taylor Smith', 'I thought the plot could use some work, but overall great work. '),
(5, 'Ryan Wagget', 'I love everything this site has.'),
(6, 'Diego672', 'Cinematography was a solid 10, theme song is really inspiring and sets the mood for the entire movie. I did not like the main actor.'),
(7, 'Megan L.', 'THE BEST MOVIE EVER');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(10) UNSIGNED NOT NULL,
  `tv_thumbnail` varchar(200) NOT NULL,
  `tv_video` varchar(200) NOT NULL,
  `tv_name` varchar(150) NOT NULL,
  `tv_desc` varchar(1500) NOT NULL,
  `tv_rating` varchar(10) NOT NULL,
  `tv_genre` varchar(50) NOT NULL,
  `tv_episode` varchar(20) NOT NULL,
  `tv_kids` varchar(10) NOT NULL,
  `tv_fb` varchar(200) NOT NULL,
  `tv_twitter` varchar(200) NOT NULL,
  `tv_insta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_thumbnail`, `tv_video`, `tv_name`, `tv_desc`, `tv_rating`, `tv_genre`, `tv_episode`, `tv_kids`, `tv_fb`, `tv_twitter`, `tv_insta`) VALUES
(1, 'zoey101.jpg', 'zoey101.mp4', 'Zoey 101', 'Zoey 101 is an American comedy-drama television series which originally aired on Nickelodeon from January 9, 2005 until May 2, 2008. It focuses on the lives of teenager Zoey Brooks (Jamie Lynn Spears), her brother (Paul Butcher), and her friends as they attend Pacific Coast Academy (PCA), a fictional boarding school in Southern California. The series was created by Dan Schneider. It was initially filmed at Pepperdine University in Malibu, California, then at stages in Valencia, California beginning in season 3. It was nominated for an \"Outstanding Children\'s Program\" Emmy in 2005. Zoey 101 was the most expensive production ever for a Nickelodeon series, as it was shot completely on location in Malibu.', '5.9/10', 'comedy', '61', 'yes', 'facebook.com', 'twitter.com', 'instagram.com'),
(2, 'aa.jpg', 'aa.mp4', 'Ancient Aliens', 'Ancient Aliens is an American television series that premiered on April 20, 2010, on the History channel. Produced by Prometheus Entertainment in a documentary style, the program presents hypotheses of ancient astronauts and proposes that historical texts, archaeology, and legends contain evidence of past human-extraterrestrial contact. The show has been criticized for presenting pseudoscience and pseudohistory.', '7.4/10', 'history', '135', 'no', 'facebook.com', 'twitter.com', 'instagram.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_mov_rev`
--
ALTER TABLE `tbl_mov_rev`
  ADD PRIMARY KEY (`mov_rev_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mov_rev`
--
ALTER TABLE `tbl_mov_rev`
  MODIFY `mov_rev_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
