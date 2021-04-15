-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2020 at 12:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investopia`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `top_news` tinyint(1) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `source` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(10000) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `img_url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `stock_id`, `top_news`, `author`, `source`, `title`, `description`, `date`, `content`, `url`, `img_url`) VALUES
(1, 3, 1, NULL, 'YouTube', 'Elon Musk calls out Jeff Bezos over book censorship - Fox Business', 'Tesla CEO Elon Musk called out Amazon CEO Jeff Bezos in a tweet over book censorship and called on the commerce giant to be broken up. #FoxBusiness Subscribe...', '2020-06-05 00:00:00', 'Tesla CEO Elon Musk called out Amazon CEO Jeff Bezos in a tweet over book censorship and called on the commerce giant to be broken up. #FoxBusiness\r\nSubscribe to Fox Business! https://bit.ly/2D9CdseW… [+1072 chars]', 'https://www.youtube.com/watch?v=xO109ZRR5YQ', 'https://i.ytimg.com/vi/xO109ZRR5YQ/maxresdefault.jpg'),
(2, 3, 1, NULL, 'Electrek', 'Tesla faces class action lawsuit over Model 3 paint issues in cold weather - Electrek', 'Tesla is facing a new class-action lawsuit over paint issues on Model 3 vehicles in cold weather with owners seeking financial compensation. In places with tough winters where they use salt and sand on the road, some Model 3 owners have reported surprisingly …', '2020-06-05 00:00:00', 'Tesla is facing a new class-action lawsuit over paint issues on Model 3 vehicles in cold weather with owners seeking financial compensation.\r\nIn places with tough winters where they use salt and sand… [+2531 chars]', 'https://electrek.co/2020/06/05/tesla-faces-class-action-lawsuit-model-3-paint-issues-cold-weather/', 'https://electrek.co/wp-content/uploads/sites/3/2019/11/Tesla-Model-3-paint-issues-e1574247845623.jpg?quality=82&strip=all'),
(3, 3, 1, 'Reuters', 'The Globe And Mail', 'Musk calls for breakup of Amazon, tweeting \'monopolies are wrong\' - The Globe and Mail', 'Tesla and SpaceX CEO sent direct messages to rival Bezos after an author complained about being unable to self-publish a book through the online retail giant', '2020-06-05 00:00:00', 'Elon Musk speaks at a press conference at the Kennedy Space Center in Cape Canaveral, Fla., on Jan. 19, 2020. \r\nJoe Skipper/Reuters\r\nTesla Inc. chief executive Elon Musk on Thursday called for Amazon… [+1903 chars]', 'https://www.theglobeandmail.com/business/international-business/us-business/article-elon-musk-calls-for-breakup-of-amazon-tweeting-monopolies-are-wrong/', 'https://www.theglobeandmail.com/resizer/bKWXjJxRmP8EuO4XW9yfCjdhz3o=/1200x0/filters:quality(80)/cloudfront-us-east-1.images.arcpublishing.com/tgam/6UYN2Y2JPBJHBACXWGHB2QVZ2U.JPG'),
(4, 3, 0, 'Engadget', 'Engadget', 'The Morning After: Tesla vs. Alameda County', 'The iconic first-person shooter Doom has been remastered and ported to pretty much everything, from ATMs to printer screens to iPods. Now, game development enthusiast Sylvain Lefebvre has created a machine that only plays his custom port of Doom.How? Well, Le…', '2020-05-12 17:22:41', 'The iconic first-person shooter Doom has been remastered and ported to pretty much everything, from ATMs to printer screens to iPods. Now, game development enthusiast Sylvain Lefebvre has created a m… [+3207 chars]', 'https://www.engadget.com/the-morning-after-elon-musk-fremont-111514566.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=80&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-05%2Fcdf54310-9152-11ea-915b-26b458c9f069&client=amp-blogside-v2&signature=a527a4fe7b661a7b0a55b05e8272d9869a0132a4'),
(5, 3, 0, 'Matt Burns', 'TechCrunch', 'Mnuchin: California should prioritize helping Musk reopen Tesla', 'U.S. Treasury Secretary Steve Mnuchin sided with Tesla in its ongoing fight with Alameda County. Speaking to CNBC, Mnuchin said that California needs to work with Tesla so Musk can quickly and safely open Tesla’s Fremont factory. This comes after Musk sued th…', '2020-05-11 00:00:00', 'U.S. Treasury Secretary Steve Mnuchin sided with Tesla in its ongoing fight with Alameda County. Speaking to CNBC, Mnuchin said that California needs to work with Tesla so Musk can quickly and safely… [+1935 chars]', 'http://techcrunch.com/2020/05/11/mnuchin-california-should-prioritize-helping-musk-reopen-tesla/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-173277250.jpg?w=713'),
(6, 3, 0, 'Anthony Ha', 'TechCrunch', 'Daily Crunch: Tesla sues Alameda County', 'Tesla turns to litigation in an attempt to reopen its California factory, we review Microsoft’s Surface Go 2 and Mount Sinai hospital starts using Nest cameras to monitor patients. Here’s your Daily Crunch for May 11, 2020. 1. Tesla sues Alameda County to for…', '2020-05-11 00:00:00', 'Tesla turns to litigation in an attempt to reopen its California factory, we review Microsoft’s Surface Go 2 and Mount Sinai hospital starts using Nest cameras to monitor patients.\r\nHere’s your Daily… [+2647 chars]', 'http://techcrunch.com/2020/05/11/daily-crunch-tesla-sues-alameda-county/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-980337816.jpg?w=600'),
(7, 3, 0, 'Mariella Moon', 'Engadget', 'Tesla slashes EV prices by up to $5,000 in North America and China', 'Tesla has quietly reduced its electric vehicles’ prices by thousands of dollars in North America and will also do the same in China, according to Reuters and Electrek. As the publications note, the automaker has cut prices across its lineup following an indus…', '2020-05-27 00:00:00', 'Tesla has quietly reduced its electric vehicles’ prices by thousands of dollars in North America and will also do the same in China, according to Reuters and Electrek. As the publications note, the a… [+665 chars]', 'https://www.engadget.com/tesla-cuts-ev-prices-north-america-china-102532751.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-05%2F85e58ae0-9fed-11ea-baf9-6b7942615f67&client=amp-blogside-v2&signature=70176a976d20af62060801b94e17eec69c6153f0'),
(8, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Elon Musk restarts Tesla factory in defiance of county orders', 'Tesla CEO Elon Musk said Monday that the company’s factory in Fremont, California is open and has restarted production despite a stay-at-home order issued by Alameda County. Musk said in tweet Monday afternoon that he will “be on the line,” a reference to the…', '2020-05-11 00:00:00', 'Tesla CEO Elon Musk said Monday that the company’s factory in Fremont, California is open and has restarted production despite a stay-at-home order issued by Alameda County.\r\nMusk said in tweet Monda… [+2076 chars]', 'http://techcrunch.com/2020/05/11/elon-musk-restarts-tesla-factory-in-defiance-of-county-orders/', 'https://techcrunch.com/wp-content/uploads/2018/11/AP_18296801176372.jpg?w=622'),
(9, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Elon Musk: Video conferencing is ‘definitely’ coming to Tesla vehicles', 'Ever since the Tesla Model 3 came to market in 2017 there’s been widespread speculation about an interior camera that’s hidden in the rearview mirror and faces into the car’s cabin. Tesla CEO Elon Musk has said the camera is there to support the company’s eve…', '2020-05-06 00:00:00', 'Ever since the Tesla Model 3 came to market in 2017, there’s been widespread speculation about an interior camera that’s hidden in the rearview mirror and faces into the car’s cabin.\r\nTesla CEO Elon … [+1715 chars]', 'http://techcrunch.com/2020/05/06/elon-musk-video-conferencing-is-definitely-coming-to-tesla-vehicles/', 'https://techcrunch.com/wp-content/uploads/2019/08/Model-3-Interior-Dashboard-Head-On.jpeg?w=641'),
(10, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla drops lawsuit against Alameda County over Fremont factory reopening', 'Tesla has officially dismissed a lawsuit filed earlier this month against Alameda County that sought to force the reopening of its factory in Fremont, California. The dismissal, which was granted Wednesday, closes the loop on a battle between Tesla CEO Elon M…', '2020-05-20 00:00:00', 'Tesla has officially dismissed a lawsuit filed earlier this month against Alameda County that sought to force the reopening of its factory in Fremont, California.\r\nThe dismissal, which was granted We… [+1216 chars]', 'http://techcrunch.com/2020/05/20/tesla-drops-lawsuit-against-alameda-county-over-fremont-factory-reopening/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-980337816.jpg?w=600'),
(11, 3, 0, 'Sean O\'Kane', 'The Verge', 'Elon Musk reaches first Tesla compensation award worth nearly $800 million', 'Tesla announced Thursday that CEO Elon Musk has cleared the first of twelve hurdles in his massive compensation plan. If Musk realizes the whole plan, it could net him tens of billions of dollars.', '2020-05-28 00:00:00', 'Also, the companys annual shareholder meeting is July 7th\r\nXinhua/Ding Ting via Getty Images\r\nTesla CEO Elon Musk has unlocked the first of 12 possible stock option awards from the massive compensati… [+6324 chars]', 'https://www.theverge.com/2020/5/28/21273882/elon-musk-tesla-compensation-plan-stock-award-dollars', 'https://cdn.vox-cdn.com/thumbor/5u5d0eY7h7VKW1rsPuhBxKsz9sk=/0x318:4000x2412/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/20007864/1192521427.jpg.jpg'),
(12, 3, 0, 'Sean O\'Kane', 'The Verge', 'Elon Musk defies coronavirus order and asks to be arrested', 'The Tesla CEO confirmed his company is reopening its California car factory against Alameda County’s wishes, and says he’ll be on the production line this week. “If anyone is arrested, I ask that it only be me,” he tweeted.', '2020-05-11 00:00:00', 'Tesla is reopening its California car factory against Alameda Countys wishes\r\nTesla CEO Elon Musk has confirmed that hes reopening his companys car factory in California in violation of a local shelt… [+1911 chars]', 'https://www.theverge.com/2020/5/11/21255149/elon-musk-tesla-fremont-factory-reopen-order-arrest-alameda', 'https://cdn.vox-cdn.com/thumbor/C76aoBJQmv0fabV9cp-X5w3O97I=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/15980837/elon_musk_tesla_3036.jpg'),
(13, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla employees who don’t return to work could lose unemployment benefits', 'Furloughed Tesla employees who are called back to work could lose unemployment benefits if they choose to stay at home due to COVID-19 concerns, the company’s head of human resources Valerie Workman wrote in an email sent to workers Wednesday. The internal em…', '2020-05-13 00:00:00', 'Furloughed Tesla employees who are called back to work could lose unemployment benefits if they choose to stay at home due to COVID-19 concerns, the company’s head of human resources Valerie Workman … [+2167 chars]', 'http://techcrunch.com/2020/05/13/tesla-employees-who-dont-return-to-work-could-lose-unemployment-benefits/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-980337816.jpg?w=600'),
(14, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla scouts head to Tulsa, Austin as hunt for Cybertruck gigafactory location nears end', 'Tesla officials visited two sites in Tulsa, Oklahoma this week to search for a location for its future and fifth gigafactory, according to a source familiar with the situation. Company representatives also visited Austin recently for a potential site for a fa…', '2020-05-15 00:00:00', 'Tesla officials visited two sites in Tulsa, Oklahoma this week to search for a location for its future and fifth gigafactory that will produce its all-electric Cybertruck and Model Y crossover, a sou… [+2635 chars]', 'http://techcrunch.com/2020/05/15/tesla-scouts-head-to-tulsa-austin-as-hunt-for-cybertruck-gigafactory-location-nears-end/', 'https://techcrunch.com/wp-content/uploads/2019/11/tesla-cybertruck-1.jpg?w=711'),
(15, 3, 0, 'Adam Rosenberg', 'Mashable', 'Tesla\'s latest car update adds \'Fallout Shelter\' to the Tesla Arcade', 'Now you can watch our pandemic-stricken society crumble from the comfort of your car while you struggle to survive in the midst of a fictional nuclear apocalypse.\nTesla\'s new \"2020.20\" firmware update adds Fallout Shelter to the Tesla Arcade, and it comes aft…', '2020-05-23 00:00:00', 'Now you can watch our pandemic-stricken society crumble from the comfort of your car while you struggle to survive in the midst of a fictional nuclear apocalypse.\r\nTesla\'s new \"2020.20\" firmware upda… [+1665 chars]', 'https://mashable.com/article/tesla-update-fallout-shelter/', 'https://mondrian.mashable.com/2020%252F05%252F23%252F69%252Fbab4eb7503694203bba75d447cbec211.ff19c.png%252F1200x630.png?signature=O_oXkNVaFrNKrU8BqgTIqvJ9Kl8='),
(16, 3, 0, 'Stan Schroeder', 'Mashable', 'Tesla’s FSD is getting pricier, but Musk says it be might be worth 15 times more', 'Tesla\'s Full Self-Driving (FSD) feature will get more expensive soon, but that\'s all pocket change compared to its potential value — if you ask Tesla CEO Elon Musk. \nAccording to Musk, FSD will cost $1,000 more starting July 1, bringing its cost to $8,000 whe…', '2020-05-19 00:00:00', 'Tesla\'s Full Self-Driving (FSD) feature will get more expensive soon, but that\'s all pocket change compared to its potential value if you ask Tesla CEO Elon Musk. \r\nAccording to Musk, FSD will cost $… [+2277 chars]', 'https://mashable.com/article/tesla-fsd-100000-elon-musk/', 'https://mondrian.mashable.com/2020%252F05%252F19%252F72%252F322f8314d1aa4281bf123741227893f0.a2340.png%252F1200x630.png?signature=4LlaSI_PgB5j1yjVzySW9myGdJE='),
(17, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla sues Alameda County to force California factory reopening', 'Tesla filed a lawsuit Saturday against Alameda County in an effort to invalidate orders that have prevented the automaker from reopening its factory in Fremont, California. The lawsuit, which seeks injunctive and declaratory relief against Alameda County, was…', '2020-05-09 00:00:00', 'Tesla filed a lawsuit Saturday against Alameda County in an effort to invalidate orders that have prevented the automaker from reopening its factory in Fremont, California.\r\nThe lawsuit, which seeks … [+2065 chars]', 'http://techcrunch.com/2020/05/09/tesla-sues-alameda-county-to-force-california-factory-reopening/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-980337816.jpg?w=600'),
(18, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Elon Musk: the Tesla Cybertruck isn’t getting any smaller', 'In the days and weeks after Tesla CEO Elon Musk revealed the cybertruck — a post-apocalyptic inspired vehicle made of cold-rolled steel — there was a lot of speculation about whether it would be smaller once it actually made it to market. Production of the Cy…', '2020-05-23 00:00:00', 'In the days and weeks after Tesla CEO Elon Musk revealed the cybertruck a post-apocalyptic inspired vehicle made of cold-rolled steel there was a lot of speculation about whether it would be smaller … [+2327 chars]', 'http://techcrunch.com/2020/05/23/elon-musk-the-tesla-cybertruck-isnt-getting-any-smaller/', 'https://techcrunch.com/wp-content/uploads/2020/05/Cybertruck-4.png?w=600'),
(19, 3, 0, 'Kirsten Korosec', 'TechCrunch', '‘Fallout Shelter’ joins Tesla arcade in latest software update', 'Nearly a year ago, Todd Howard, the director of Bethesda Games, said that the company’s “Fallout Shelter” game would be coming to Tesla displays. It arrived, via the 2020.20 software update, this week, which was first noted at driver’s platform Teslascope. Fa…', '2020-05-23 00:00:00', 'Nearly a year ago, Todd Howard, the director of Bethesda Games, said that the companys Fallout Shelter game would be coming to Tesla displays. It arrived, via the 2020.20 software update, this week, … [+1460 chars]', 'http://techcrunch.com/2020/05/22/fallout-shelter-joins-tesla-arcade-in-latest-software-update/', 'https://techcrunch.com/wp-content/uploads/2019/06/Screen-Shot-2019-06-13-at-12.28.51-PM.png?w=764'),
(20, 3, 0, 'Richard Lawler', 'Engadget', 'Tesla\'s Arcade adds \'Fallout Shelter\' for in-car play', 'Nearly a year after it was announced at E3, Fallout Shelter has joined the list of games Tesla owners can play on their in-car infotainment systems. After initially launching on smartphones five years ago, the free-to-play spin-off has come to additional cons…', '2020-05-22 00:00:00', 'Nearly a year after it was announced at E3, Fallout Shelter has joined the list of games Tesla owners can play on their in-car infotainment systems. After initially launching on smartphones five year… [+627 chars]', 'https://www.engadget.com/fallout-shelter-tesla-230607712.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=80&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-05%2Fdd13e670-9c7f-11ea-b5ff-056c5abeede0&client=amp-blogside-v2&signature=6586a440589bd740522e1c6c6255b5f97207158c'),
(21, 3, 0, 'Mariella Moon', 'Engadget', 'Tesla could build its third US factory in Austin or Tulsa', 'Tesla has narrowed down the potential sites for its third Gigafactory in the US, according to Autoblog. The automaker has reportedly chosen Austin, Texas and Tulsa, Oklahoma as the finalists for a new assembly plant — possibly its biggest one yet — dedicated …', '2020-05-16 00:00:00', 'Tesla has narrowed down the potential sites for its third Gigafactory in the US, according to Autoblog. The automaker has reportedly chosen Austin, Texas and Tulsa, Oklahoma as the finalists for a ne… [+605 chars]', 'https://www.engadget.com/teslas-third-us-factory-austin-tulsa-180141413.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=80&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-05%2F87e8d670-9751-11ea-bd9b-7f115d091e5c&client=amp-blogside-v2&signature=90073ed8f9b47eb4f6cfeac808be6a95106c9f7c'),
(22, 3, 0, 'Mariella Moon', 'Engadget', 'Tesla CEO Elon Musk gets $700 million in first performance-based payout', 'Tesla has awarded its CEO, Elon Musk, with the first out of 12 performance-based payouts — and it’s worth over a whopping $700 million. According to a document (via TechCrunch) filed with the Securities and Exchange Commission, Musk has earned 1.7 million Tes…', '2020-05-29 00:00:00', 'Tesla has awarded its CEO, Elon Musk, with the first out of 12 performance-based payouts — and it’s worth over a whopping $700 million. According to a document (via TechCrunch) filed with the Securit… [+535 chars]', 'https://www.engadget.com/tesla-elon-musk-700-million-performance-payout-074048172.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-images%2F2020-01%2F3c7d5270-3314-11ea-bedf-1468336b0495&client=amp-blogside-v2&signature=8e6308efaba8f0502bd429244b66c3be0a38b6a7'),
(23, 3, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla cuts prices across EV line up, ends free supercharging for Model S, Model X', 'Tesla slashed prices across its electric vehicle portfolio overnight as the automaker aims to boost sales in an economy beaten down by the COVID-19 pandemic. Reuters and Electrek were the first to report the changes. The base price of Model 3 standard range p…', '2020-05-27 00:00:00', 'Tesla slashed prices across its electric vehicle portfolio overnight as the automaker aims to boost sales in an economy beaten down by the COVID-19 pandemic.\r\nReuters and Electrek were the first to r… [+2305 chars]', 'http://techcrunch.com/2020/05/27/tesla-cuts-prices-across-ev-line-up-ends-free-supercharging-for-model-s-model-x/', 'https://techcrunch.com/wp-content/uploads/2019/09/Tesla-fleet-S3XY.jpg?w=764'),
(24, 9, 1, NULL, '9to5Mac', 'iPhone 12 launch delayed to Q4 per major Apple supplier - 9to5Mac', 'The CEO of Broadcom, one of Apple’s major suppliers for hardware like iPhone Wi-Fi chips has shared today that it expects Apple’s iPhone 12 lineup to see a delay from the traditional September timeframe to Q4, adding more weight to the idea that it will be Oc…', '2020-06-04 00:00:00', 'The CEO of Broadcom, one of Apple’s major suppliers for hardware like iPhone Wi-Fi chips has shared today that it expects Apple’s iPhone 12 lineup to see a delay from the traditional September timefr… [+1673 chars]', 'https://9to5mac.com/2020/06/04/major-apple-supplier-suggests-iphone-12-delayed/', 'https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Supply-chain-backs-iPhone-12-launch-in-October.jpg?quality=82&strip=all');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticker` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `user_id`, `ticker`, `name`, `date_created`) VALUES
(3, 1, 'TSLA', 'Tesla', '2020-06-02 21:22:38'),
(9, 1, 'AAPL', 'Apple', '2020-06-05 16:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'pmoe7', 'SOCCER12', 'mm@mm.ca'),
(2, 'sa', 'sa', 'a@as.ca'),
(3, 'df', 'sfs', 'da@cc.ca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
