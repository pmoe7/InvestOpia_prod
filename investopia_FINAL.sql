-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 09:14 PM
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
  `stock_id` int(11) DEFAULT NULL,
  `top_news` tinyint(1) NOT NULL DEFAULT 0,
  `author` varchar(100) DEFAULT NULL,
  `source` varchar(1000) DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `img_url` varchar(1000) DEFAULT NULL,
  `sentiment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `stock_id`, `top_news`, `author`, `source`, `title`, `description`, `date`, `content`, `url`, `img_url`, `sentiment`) VALUES
(1, 1, 1, 'Tim Higgins', 'The Wall Street Journal', 'One of the Brains Behind Tesla Found a New Way to Make Electric Cars Cheaper - The Wall Street Journal', 'What’s the secret to building a more affordable electric vehicle? JB Straubel has an answer. It starts with a pile of old cell phones.', '2020-08-29 00:00:00', 'Almost every day old iPhones and other used personal electronics arrive by the truckload at a warehouse in Carson City, Nev., where workers crack them open, pull out their batteries and strip them fo… [+1463 chars]', 'https://www.wsj.com/articles/one-of-the-brains-behind-tesla-found-a-new-way-to-make-electric-cars-cheaper-11598673630', 'https://images.wsj.net/im-225983/social', -0.0325758),
(2, 1, 1, NULL, 'Google News', 'Apple, Tesla prepare for stock split - CNBC Television', NULL, '2020-08-28 00:00:00', NULL, 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9NjJZTWZtQUNUMjTSAQA?oc=5', NULL, 0.0333333),
(3, 1, 1, 'Investor\'s Business Daily', 'Investor\'s Business Daily', 'Stock Market Rally Charges Higher On Salesforce Earnings, Microsoft-Walmart TikTok Buzz, Tesla, EV Rivals Nio - Investor\'s Business Daily', 'The stock market rally kept rising with the S&P 500 and Nasdaq hitting highs. Salesforce earnings, Microsoft-TikTok buzz, Tesla and China EV rivals led.', '2020-08-28 00:00:00', 'The stock market rally continued to run this week, with the S&amp;P 500 and Nasdaq hitting fresh highs and the Dow Jones moving toward all-time levels. Salesforce.com (CRM) delivered strong earnings … [+10426 chars]', 'https://www.investors.com/news/stock-market-rally-salesforce-earnings-microsoft-walmart-tiktok-buzz-tesla-ev-rivals-nio-xpeng/', 'https://www.investors.com/wp-content/uploads/2019/12/stock-UniversalDisplay-Nasdaq-10-company.jpg', 0.0625),
(4, 1, 1, 'Joey Klender', 'Teslarati', 'Elon Musk’s updates to Tesla Battery Day show we have no idea what will happen - Teslarati', 'Tesla’s Battery Day is less than a month away, and there is no shortage of speculation for what might be unveiled at the event. Numerous attempts to uncover subliminal messages within Tesla’s announcements and other related topics of discussion have been shot…', '2020-08-28 00:00:00', 'Tesla’s Battery Day is less than a month away, and there is no shortage of speculation for what might be unveiled at the event. Numerous attempts to uncover subliminal messages within Tesla’s announc… [+3304 chars]', 'https://www.teslarati.com/tesla-battery-day-elon-musk-what-will-happen/', 'https://www.teslarati.com/wp-content/uploads/2017/11/tesla-roadster-elon-musk-semi-event-1024x502.jpg', -0.0364583),
(5, 1, 1, NULL, 'Wordpress.com', 'Tesla employee bribed with US$1 million helps FBI arrest Russian hackers - Driving', 'The hackers\' scheme to hold Tesla\'s private data for ransom was exposed by their contact, who even wore a wire to help catch the criminals', '2020-08-27 00:00:00', 'There are, it seems, people better than you and I. To wit—\r\nAccording to Clearance Job, a recruiting agency out of Urbandale, Iowa that specializes in employees with American federal government secur… [+2094 chars]', 'https://postmediadriving.wordpress.com/tesla/auto-news/news/tesla-employee-bribed-with-us1-million-helps-fbi-arrest-russian-hackers', 'https://postmediadriving.files.wordpress.com/2018/04/self_driving_vehicles-regulation.jpg?quality=80', -0.0125),
(6, 1, 1, NULL, 'Google News', 'Tesla Avoided Electric Ford F-150\'s Battery Problem Justifying Roadrunner - Torque News', NULL, '2020-08-27 00:00:00', NULL, 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9TUJHMmpTMXdTOTDSAQA?oc=5', NULL, 0),
(7, 1, 1, NULL, 'Google News', 'Tesla competitor Xpeng Motors debuts at NYSE—Here\'s what to know - CNBC Television', NULL, '2020-08-27 00:00:00', NULL, 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9SkhpZ0NPVXRUcGfSAQA?oc=5', NULL, 0),
(8, 1, 1, NULL, 'Futurism', 'Tesla Driver, Watching Movie on Autopilot, Slams Into Police Cars - Futurism', 'This just keeps happening.', '2020-08-27 00:00:00', 'Crash Course\r\nNorth Carolina NBC affiliate WRALreports that a Raleigh doctor named Devainder Goli was watching a movie on his phone, while his Tesla was on Autopilot, when the vehicle narrowly missed… [+1604 chars]', 'https://futurism.com/the-byte/tesla-driver-watching-movie-autopilot-slams-police-cars', 'https://wp-assets.futurism.com/2020/08/tesla-driver-watching-movie-autopilot-slams-police-cars-768x403.png', 0),
(9, 1, 0, 'Darrell Etherington', 'TechCrunch', 'Radio Flyer teams up with Tesla to launch a tyke-sized Tesla Model Y', 'If, like me, you can’t afford a full-sized Tesla because your life has been a series of bad investments (one day my early Fyre Festival backing will pay off) then Radio Flyer’s newest product might be just the thing for you. It’s a scaled down Model Y, design…', '2020-08-18 00:00:00', 'If, like me, you can’t afford a full-sized Tesla because your life has been a series of bad investments (one day my early Fyre Festival backing will pay off) then Radio Flyer’s newest product might b… [+1134 chars]', 'http://techcrunch.com/2020/08/18/radio-flyer-teams-up-with-tesla-to-launch-a-tyke-sized-tesla-model-y/', 'https://techcrunch.com/wp-content/uploads/2020/08/633-Driveway-with-Full-Size-Car.jpg?w=600', -0.125926),
(10, 1, 0, 'Jon Fingas', 'Engadget', 'Tesla thwarts performance hacks for its electric cars', 'You might not want to rush into installing an unofficial performance boost for your Tesla. Users on Reddit (via Electrek) have discovered that the latest software for Tesla’s Model 3 thwarts an Ingenext mod that unlocks features like an extra 50HP and Drive M…', '2020-08-23 00:00:00', 'Ingenext is planning to counter the update in a week or two with a solution that allows its mod to run unimpeded. It said that only three customers are known to have updated their cars with Tesla cod… [+490 chars]', 'https://www.engadget.com/tesla-fights-performance-hacks-212500628.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2F0979bbe0-e587-11ea-9fff-595b7b08e1b0&client=amp-blogside-v2&signature=7b1905d40c37df36bc1613e2bee78c9b0de7711d', 0.116667),
(11, 1, 0, 'Nick Statt', 'The Verge', 'Tesla’s planned five-way stock split will make its shares much more affordable', 'Tesla has announced a new five-way stock split to take effect on August 28th, which will make the company’s shares cheaper for buyers. The electric car maker’s stock is close to $1,400 a share right now, making it difficult for individuals, including Tesla em…', '2020-08-11 00:00:00', 'Another chance for Tesla stock to hit $420\r\nIllustration by Alex Castro / The Verge\r\nTesla has announced a new five-way stock split to take effect on August 28th, which will make the companys shares … [+1794 chars]', 'https://www.theverge.com/2020/8/11/21364073/tesla-five-way-stock-split-august-21-plan-approved-shares-accessible-cheaper', 'https://cdn.vox-cdn.com/thumbor/Jt5UDX1_I_-_z-X_ilz77r7VLZI=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/10752839/acastro_180430_1777_tesla_0003.jpg', 0.237013),
(12, 1, 0, 'Kris Holt', 'Engadget', 'Lucid hints its first EV will have Tesla-beating range', 'Lucid Motors had expected its upcoming luxury electric sedan would have a range of 400 miles on a single charge. However, testing has suggested the Lucid Air can travel much further than that before the battery needs more juice. The company submitted the Air …', '2020-08-11 00:00:00', 'Lucid Motors had expected its upcoming luxury electric sedan would have a range of 400 miles on a single charge. However, testing has suggested the Lucid Air can travel much further than that before … [+359 chars]', 'https://www.engadget.com/lucid-air-estimated-epa-range-153023968.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2Fd209bec0-dbe1-11ea-bca7-3dea85cdb615&client=amp-blogside-v2&signature=2fb80e3cd614344665945d00c0654f760d9bc6d3', 0.166071),
(13, 1, 0, 'Kirsten Korosec', 'TechCrunch', 'Tesla shares rally for no reason', 'Tesla shares surpassed $1,800 for the first time today, the latest in an eye-popping run up of the stock that has propelled the company’s valuation to more than $341 billion. Let’s put these numbers in perspective. Tesla, an automaker that delivered 367,500 v…', '2020-08-17 00:00:00', 'Tesla shares surpassed $1,800 for the first time today, the latest in an eye-popping run up of the stock that has propelled the company’s valuation to more than $341 billion.\r\nLet’s put these numbers… [+3478 chars]', 'http://techcrunch.com/2020/08/17/tesla-shares-rally-for-no-reason/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-1008732780.jpeg?w=600', 0.208333),
(14, 1, 0, 'Anthony Ha', 'TechCrunch', 'Daily Crunch: Tesla targeted in ransomware attack', 'The Justice Department reveals a thwarted malware attack on Tesla, Facebook tests linking your news subscriptions to your social network account and Xiaomi has plans for under-screen cameras. This is your Daily Crunch for August 28, 2020. The big story: Tesla…', '2020-08-28 00:00:00', 'The Justice Department reveals a thwarted malware attack on Tesla, Facebook tests linking your news subscriptions to your social network account and Xiaomi has plans for under-screen cameras. This is… [+3339 chars]', 'http://techcrunch.com/2020/08/28/daily-crunch-tesla-ransomware/', 'https://techcrunch.com/wp-content/uploads/2020/03/GettyImages-980337816.jpg?w=600', 0.00555556),
(15, 1, 0, 'Matt Burns', 'TechCrunch', 'The Polestar 2 bests the Tesla Model 3 in drivability and enjoyment', 'I enjoy driving the Polestar 2 more than the Tesla Model 3. The Polestar 2 is more comfortable, seemingly better built, and has a better infotainment system. In all the traditional automotive metrics, it’s a better car, and yet I find it hard to recommend ove…', '2020-08-14 00:00:00', 'I enjoy driving the Polestar 2 more than the Tesla Model 3. The Polestar 2 is more comfortable, seemingly better built, and has a better infotainment system. In all the traditional automotive metrics… [+11558 chars]', 'http://techcrunch.com/2020/08/14/the-polestar-2-bests-the-tesla-model-3-in-drivability-and-enjoyment/', 'https://techcrunch.com/wp-content/uploads/2020/08/polestar-2-7.jpg?w=600', 0.16713),
(16, 1, 0, 'Kirsten Korosec', 'TechCrunch', 'Elon Musk confirms Tesla was target of foiled ransomware attack', 'Elon Musk called an attempted cyberattack against Tesla “serious,” a comment that confirms the company was the target of a foiled ransomware attempt at its massive factory near Reno, Nevada. The Justice Department released a complaint Thursday that described …', '2020-08-28 00:00:00', 'Elon Musk called an attempted cyberattack against Tesla “serious,” a comment that confirms the company was the target of a foiled ransomware attempt at its massive factory near Reno, Nevada.\r\nThe Jus… [+1342 chars]', 'http://techcrunch.com/2020/08/27/elon-musk-confirms-tesla-was-target-of-foiled-ransomware-attack/', 'https://techcrunch.com/wp-content/uploads/2020/03/Tesla_Gigafactory_1_-_December_2019.jpg?w=641', -0.0666667),
(17, 1, 0, 'Kirsten Korosec', 'TechCrunch', 'Rivian fires back at Tesla in lawsuit, accuses automaker of attempting to ‘malign its reputation’', 'Rivian has asked a judge to dismiss a lawsuit filed by Tesla, arguing that two of the three claims in the case fails to state sufficient allegations of trade secret theft and poaching talent and instead was an attempt to malign its reputation and hurt its own…', '2020-08-12 00:00:00', 'Rivian has asked a judge to dismiss a lawsuit filed by Tesla, arguing that two of the three claims in the case fails to state sufficient allegations of trade secret theft and poaching talent and inst… [+2675 chars]', 'http://techcrunch.com/2020/08/11/rivian-fires-back-at-tesla-in-lawsuit/', 'https://techcrunch.com/wp-content/uploads/2020/07/rivian.jpeg?w=600', -0.225),
(18, 1, 0, 'Anna Iovine', 'Mashable', 'Exclusive dating app for Tesla owners is not a joke (maybe)', 'If you own a Tesla and want a partner to raise a little X Æ A-12 of your own one day, you\'re in luck: Tesla Dating is an up-and-coming dating site just for you. \nWith the tagline \"Because You Can\'t Spell LOVE Without EV [electric vehicle],\" one might think th…', '2020-08-20 00:00:00', 'If you own a Tesla and want a partner to raise a little X Æ A-12 of your own one day, you\'re in luck: Tesla Dating is an up-and-coming dating site just for you. \r\nWith the tagline \"Because You Can\'t … [+1622 chars]', 'https://mashable.com/article/tesla-dating-app-elon-musk/', 'https://mondrian.mashable.com/2020%252F08%252F20%252F64%252F64609e6e5e0b453b8549542c0bb5f45b.d8a2d.png%252F1200x630.png?signature=2AbSUqYshjHCEtNgCdH8ohtr4DE=', 0.189063),
(19, 1, 0, 'Rita Liao', 'TechCrunch', 'China now accounts for nearly one-quarter of Tesla revenue', 'Tesla has been counting on China to maintain its sales momentum, and it seems to be on track with the plan. In the three months ended June 30, the automaker’s revenue in China climbed 102.9% year-over-year to $1.4 billion, according to its latest SEC filing. …', '2020-07-29 00:00:00', 'Tesla has been counting on China to maintain its sales momentum, and it seems to be on track with the plan.\r\nIn the three months ended June 30, the automaker’s revenue in China climbed 102.9% year-ov… [+1295 chars]', 'http://techcrunch.com/2020/07/28/tesla-china-revenue/', 'https://techcrunch.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-18-at-12.27.48-PM-e1547785719855.png?w=751', 0.15),
(20, 1, 0, 'Ann Smajstrla', 'Engadget', 'Record-breaking Faraday Future prototype EVs are up for auction', 'Remember Faraday Future? It’s the electric vehicle startup that, when it launched in 2015, was promising to shakeup the EV industry and become a rival to Tesla. Since then, the company has struggled with funding, production and legal issues. A Faraday Future …', '2020-08-10 00:00:00', 'Remember Faraday Future? It’s the electric vehicle startup that, when it launched in 2015, was promising to shakeup the EV industry and become a rival to Tesla. Since then, the company has struggled … [+708 chars]', 'https://www.engadget.com/recordbreaking-faraday-future-prototype-evs-auction-211946137.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2F29bb7980-db45-11ea-bffd-d6d89112322f&client=amp-blogside-v2&signature=62342cdb40643b3d58f1a4dfc92c9ce9a2054547', 0.05),
(21, 1, 0, 'Kirsten Korosec', 'TechCrunch', 'Elon Musk says ’embarrassingly late’ two-factor is coming to Tesla app', 'Tesla CEO Elon Musk acknowledged Friday that the company was ‘embarrassingly late’ rolling out a security layer known as two-factor authentication for its mobile app. “Sorry, this is embarrassingly late. Two factor authentication via sms or authenticator app …', '2020-08-15 00:00:00', 'Tesla CEO Elon Musk acknowledged Friday that the company was embarrassingly late rolling out a security layer known as two-factor authentication for its mobile app.\r\nSorry, this is embarrassingly lat… [+2004 chars]', 'http://techcrunch.com/2020/08/14/elon-musk-says-embarrassingly-late-two-factor-is-coming-to-tesla-app/', 'https://techcrunch.com/wp-content/uploads/2018/11/Model-3-My-Tesla-Phone-App-as-Key.png?w=616', -0.333333),
(22, 1, 0, 'Sasha Lekach', 'Mashable', 'Cadillac\'s first electric vehicle goes after Tesla', 'Cadillac introduced its first all-electric vehicle Thursday evening and it\'s a luxury crossover SUV. It\'s taking on both of Tesla\'s SUVs: the new \"budget\" Model Y and the pricy Model X. \nThe LYRIQ (yes, all caps officially, but we\'re calling it the Lyriq) was…', '2020-08-06 00:00:00', 'Cadillac introduced its first all-electric vehicle Thursday evening and it\'s a luxury crossover SUV. It\'s taking on both of Tesla\'s SUVs: the new \"budget\" Model Y and the pricy Model X. \r\nThe LYRIQ (… [+2686 chars]', 'https://mashable.com/article/cadillac-lyriq-electric-vehicle/', 'https://mondrian.mashable.com/2020%252F08%252F06%252Fb2%252F56f4c79ca917487d87bfd0363187aa7b.34e88.jpg%252F1200x630.jpg?signature=nTawmNvZfRu6qFtXA6_ukySmnYk=', 0.221591),
(23, 1, 0, 'Sasha Lekach', 'Mashable', 'Lucid Air\'s battery range blows past Tesla', 'Tesla CEO Elon Musk has been boasting about the Model S electric sedan\'s new range, which is now above 400 miles on a single battery charge. That pales in comparison to the upcoming Lucid Air\'s range. \nLucid\'s first electric vehicle is a sleek sedan with a re…', '2020-08-11 00:00:00', 'Tesla CEO Elon Musk has been boasting about the Model S electric sedan\'s new range, which is now above 400 miles on a single battery charge. That pales in comparison to the upcoming Lucid Air\'s range… [+1282 chars]', 'https://mashable.com/article/lucid-air-electric-vehicle-range/', 'https://mondrian.mashable.com/2020%252F08%252F11%252F8d%252Fd9c52e7bce7448b08b63bc0af45ba554.a0c69.png%252F1200x630.png?signature=PkKvbJ233P0HCBPE_TGkKc8k4ng=', -0.0856331),
(24, 1, 0, 'Mariella Moon', 'Engadget', 'Tesla is finally bringing two-factor authentication to its car app', 'Last year, Tesla chief Elon Musk announced that the automaker will introduce two-factor verification for its app. The company has yet to make it available, but Musk has revealed it’s finally close to happening. In response to a tweet asking about the feature’…', '2020-08-15 00:00:00', 'Last year, Tesla chief Elon Musk announced that the automaker will introduce two-factor verification for its app. The company has yet to make it available, but Musk has revealed it’s finally close to… [+527 chars]', 'https://www.engadget.com/tesla-twofactor-verification-161553557.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2F098b7840-deba-11ea-92c7-f95f6c9dc562&client=amp-blogside-v2&signature=4201f4bd5c822abd79ae17f8fd8636c3d5be1b20', 0.0666667),
(25, 1, 0, 'Nathan Ingraham', 'Engadget', 'YouTuber built his own DIY version of Tesla\'s Cyberquad', 'Remember the ridiculous unveiling of Tesla’s fabled Cybertruck? The one where the truck’s “Armor Glass” windows were broken in a demo gone wrong? You may also remember that Tesla announced a “Cyberquad” as a sort of accessory to go with the truck. It’s essent…', '2020-08-24 00:00:00', 'Remember the ridiculous unveiling of Tesla’s fabled Cybertruck? The one where the truck’s “Armor Glass” windows were broken in a demo gone wrong? You may also remember that Tesla announced a “Cyberqu… [+883 chars]', 'https://www.engadget.com/diy-tesla-cybertruck-rich-rebuilds-133625454.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2Fda4d6510-e60d-11ea-b5cd-a039370e78cc&client=amp-blogside-v2&signature=2a975c76b2bc00997c2e2149b991272ca8735dac', 0.233333),
(26, 1, 0, 'Alyse Stanley', 'Gizmodo.com', 'A Tesla Employee Foiled an Alleged Ransomware Scheme', 'CEO Elon Musk called a thwarted cyberattack against Tesla “serious” on Thursday after a Russian national reportedly tried to recruit and bribe an employee to install ransomware on the company’s network at its Gigafactory in northern Nevada.Read more...', '2020-08-28 00:00:00', 'CEO Elon Musk called a thwarted cyberattack against Tesla serious on Thursday after a Russian national reportedly tried to recruit and bribe an employee to install ransomware on the companys network … [+2581 chars]', 'https://gizmodo.com/a-tesla-employee-foiled-an-alleged-ransomware-scheme-1844876316', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/pppflzxhbgeqwktfnvde.jpg', -0.0222222),
(27, 1, 0, 'Sasha Lekach', 'Mashable', 'Now there\'s a Tesla Model Y for toddlers', 'Tesla\'s newest Model Y sure puts the \"compact\" in compact SUV.\nOn Tuesday, pre-orders opened for Radio Flyer\'s Model Y for kids aged between 18 months and four years. Unlike the real thing priced at $50,000, this one is only $99. It\'s a partnership between Te…', '2020-08-18 00:00:00', 'Tesla\'s newest Model Y sure puts the \"compact\" in compact SUV.\r\nOn Tuesday, pre-orders opened for Radio Flyer\'s Model Y for kids aged between 18 months and four years. Unlike the real thing priced at… [+1206 chars]', 'https://mashable.com/article/radio-flyer-tesla-model-y/', 'https://mondrian.mashable.com/2020%252F08%252F18%252F5d%252F48041bc9f1ad41d5b9bb09787c16e5dd.e9f9d.jpg%252F1200x630.jpg?signature=0o2gsujXUAcu_iz01P2u6k2bDeU=', 0.075),
(28, 1, 0, 'Lauren Messman', 'New York Times', 'What’s on TV Saturday: A CNN Special and ‘Tesla’', 'CNN examines the state of women’s rights in America, 100 years since the suffrage movement. And Ethan Hawke stars in an unorthodox biopic.', '2020-08-24 00:00:00', 'SON OF THE WHITE MARE (1981) Watch through virtual cinemas. This animated film, from the Hungarian director Marcell Jankovics, has been described as a bedtime story on acid. Through its vibrant color… [+1015 chars]', 'https://www.nytimes.com/2020/08/24/arts/television/whats-on-tv-saturday-a-cnn-special-and-tesla.html', 'https://static01.nyt.com/images/2020/08/22/arts/22tvcol-women/22tvcol-women-facebookJumbo.png', 0.178571),
(29, 2, 0, 'David Murphy', 'Lifehacker.com', 'Stop Paying the Apple Tax', 'The Apple tax is no joke, but neither is a typical Apple owner’s fear of popping open their systems and feeding their Mac some extra-delicious low-cost memory. But here’s the thing: If you pay Apple for RAM that you can install yourself, you’re wasting money.…', '2020-08-20 00:00:00', 'The Apple tax is no joke, but neither is a typical Apple owners fear of popping open their systems and feeding their Mac some extra-delicious low-cost memory. But heres the thing: If you pay Apple fo… [+4154 chars]', 'https://lifehacker.com/dont-buy-overpriced-ram-from-apple-1844778287', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/nzm0tm7oepn9uafordzq.jpg', -0.0416667),
(30, 2, 0, 'Darrell Etherington', 'TechCrunch', 'Apple said to soon offer subscription bundles combining multiple of its services', 'Apple is reportedly getting ready to launch new bundles of its various subscription services, according to Bloomberg. The bundled services packages, said to be potentially called ‘Apple One,’ will include Apple services including Apple Music, Apple Arcade, Ap…', '2020-08-13 00:00:00', 'Apple is reportedly getting ready to launch new bundles of its various subscription services, according to Bloomberg. The bundled services packages, said to be potentially called ‘Apple One,’ will in… [+2034 chars]', 'http://techcrunch.com/2020/08/13/apple-said-to-soon-offer-subscription-bundles-combining-multiple-of-its-services/', 'https://techcrunch.com/wp-content/uploads/2019/09/Apple-tv-plus-launches-november-1-the-morning-show-screens-091019.jpg?w=549', 0.0420455),
(31, 2, 0, 'Taylor Lyles', 'The Verge', 'Apple’s new ‘Everything Apple’ is a universal gift card for all its products', 'Apple has announced the “Everything Apple” universal gift card for any purchases made directly to the tech giant. Apple previously offered two separate gift cards, Apple Store and an App Store and iTunes card, each with separate functions.', '2020-07-31 00:00:00', 'Apple previously sold two separate gift cards\r\nIf you wanted to buy yourself or someone you loved an Apple gift card, it used to be a bit complicated. Apple offered two separate gift cards: an iTunes… [+1409 chars]', 'https://www.theverge.com/2020/7/31/21349447/apple-universal-gift-card-everything-app-store-itunes-icloud', 'https://cdn.vox-cdn.com/thumbor/AwqVkYUMBvvQbH6rjLf3r1yOBRA=/0x150:2086x1242/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/21516867/Screen_Shot_2020_07_31_at_9.57.29_AM.png', 0.0257576),
(32, 2, 0, 'Kris Holt', 'Engadget', 'Apple now offers a single gift card for digital and physical purchases', 'Apple is now offering a single gift card you can use towards any of its products. The Apple Gift Card is more flexible than the company’s previous cards, since you can use it for the App Store, subscriptions or other digital goods, as well as physical items f…', '2020-07-31 00:00:00', 'Before now, the company offered two different types of gift cards, so this should simplify things and give giftees more flexibility. The App Store &amp; iTunes card used to only let you buy digital i… [+900 chars]', 'https://www.engadget.com/apple-gift-card-digital-physical-purchases-app-store-apple-store-162555232.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-07%2F46558fe0-d348-11ea-b9f3-34a01b18f5f2&client=amp-blogside-v2&signature=88bf38c20c343f60e5bea207a43629497e34fb7d', 0.0149802),
(33, 2, 0, 'David Murphy', 'Lifehacker.com', 'How to Install Apple\'s First-Ever watchOS Public Beta', 'Of all the devices to beta-test with a new operating system, the very last one on my list is my Apple Watch. I like new features, don’t get me wrong, but a buggy OS can brick your smartwatch. And since you can’t downgrade an Apple Watch, you’re either going t…', '2020-08-10 00:00:00', 'Of all the devices to beta-test with a new operating system, the very last one on my list is my Apple Watch. I like new features, dont get me wrong, but a buggy OS can brick your smartwatch. And sinc… [+1889 chars]', 'https://lifehacker.com/how-to-install-apples-first-ever-watchos-public-beta-1844676432', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/ij3mqay8gfc3x9icwjm6.jpg', -0.0284091),
(34, 2, 0, 'Catie Keck', 'Gizmodo.com', 'Apple Renames Apple Beats 1 Apple Music 1, Not to Be Confused With Apple Music or Apple Music', 'Apple today announced it’s adding two new offerings to its global radio portfolio: a hits station and one for country music. Somewhat confusing for fans of its existing and immensely popular Beats 1, Apple also announced the station will be renamed Apple Musi…', '2020-08-18 00:00:00', 'Apple today announced its adding two new offerings to its global radio portfolio: a hits station and one for country music. Somewhat confusing for fans of its existing and immensely popular Beats 1, … [+1836 chars]', 'https://gizmodo.com/apple-renames-apple-beats-1-apple-music-1-not-to-be-co-1844768053', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/kgpfsnanftwa9rkjlckz.jpg', -0.145455),
(35, 2, 0, 'Christine Fisher', 'Engadget', 'Epic Games offers ‘Fortnite’ discounts if you bypass Android and iOS app stores', 'Beginning today, Epic Games is discounting Fortnite V-bucks and other cash purchases if players buy them through PlayStation, Xbox, Nintendo Switch, PC and Mac. The discounts are available on mobile if players use the new “Epic direct payment” option instead …', '2020-08-13 00:00:00', 'Beginning today, Epic Games is discounting Fortnite V-bucks and other cash purchases if players buy them through PlayStation, Xbox, Nintendo Switch, PC and Mac. The discounts are available on mobile … [+498 chars]', 'https://www.engadget.com/epic-games-fortnite-direct-payment-discounts-143422257.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2Fceb426d0-dd70-11ea-aeeb-25631d860f18&client=amp-blogside-v2&signature=3d9c2ed8c511551559b0742621305187059f5c4c', 0.10928),
(36, 2, 0, 'Sarah Perez', 'TechCrunch', 'Apple launches Apple Music Radio with a rebranded Beats 1, plus two more stations', 'Apple is revamping its streaming radio service. Starting today, its flagship radio station Beats 1 will be rebranded to Apple Music 1 — a change that more closely associates the station with Apple’s subscription-based streaming music service, Apple Music. In …', '2020-08-18 00:00:00', 'Apple is revamping its streaming radio service. Starting today, its flagship radio station Beats 1 will be rebranded to Apple Music 1 — a change that more closely associates the station with Apple’s … [+4567 chars]', 'http://techcrunch.com/2020/08/18/apple-launches-apple-music-radio-with-a-rebranded-beats-1-plus-two-more-stations/', 'https://techcrunch.com/wp-content/uploads/2020/08/Apple_announces-apple-music-radio-apple-music-1_08182020.jpg?w=400', 0.375),
(37, 2, 0, 'David Murphy', 'Lifehacker.com', 'Stop Apple News+ from Taking Over Your iOS or macOS', 'Even if you aren’t playing around with iOS 14 or macOS Big Sur yet, there’s one setting you want to know if you’re an Apple News+ subscriber. That’s because starting with iOS 14 and macOS Big Sur, web links to news stories that you tap or click will pull up s…', '2020-08-11 00:00:00', 'Even if you arent playing around with iOS 14 or macOS Big Sur yet, theres one setting you want to know if youre an Apple News+ subscriber. Thats because starting with iOS 14 and macOS Big Sur, web li… [+2385 chars]', 'https://lifehacker.com/stop-apple-news-from-taking-over-your-ios-or-macos-1844685432', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/kimihxzhax3ccfy1r218.jpg', 0),
(38, 2, 0, 'Kris Holt', 'Engadget', 'Apple countersues headphone maker Koss in AirPods patent dispute', 'Apple is striking back at Koss, which filed a patent infringement lawsuit last month related to AirPods and Beats. It countersued the maker of the first stereo headphones, asking for a court to rule that Apple didn’t infringe any of the five patents as laid o…', '2020-08-10 00:00:00', 'Apple is striking back at Koss, which filed a patent infringement lawsuit last month related to AirPods and Beats. It countersued the maker of the first stereo headphones, asking for a court to rule … [+554 chars]', 'https://www.engadget.com/apple-koss-airpods-beats-patent-lawsuit-151456927.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2F59ddaf20-db18-11ea-b7cb-6923567e8178&client=amp-blogside-v2&signature=703e9c14cc918bec2c8edfb455b9d8d091f52eb0', 0.075),
(39, 2, 0, 'Brendan Hesse', 'Lifehacker.com', 'How to Piss Off Advertisers With Your iOS 14 Settings', 'Of all the big tech companies, Apple has arguably the best privacy policies. And with iOS 14, Apple is making yet another big privacy-focused upgrade to iOS. Once the new OS update hits this fall, users can choose to hide their device’s “Identifier for Advert…', '2020-08-27 00:00:00', 'Of all the big tech companies, Apple has arguably the best privacy policies. And with iOS 14, Apple is making yet another big privacy-focused upgrade to iOS. Once the new OS update hits this fall, us… [+1846 chars]', 'https://lifehacker.com/how-to-piss-off-advertisers-with-your-ios-14-settings-1844870607', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/kumaj8kckqvxblqgzy5k.jpg', 0.142045),
(40, 2, 0, 'Nick Statt', 'The Verge', 'This giant glowing orb is the world’s first floating Apple Store', 'The world’s first and only floating Apple Store is opening soon on the waterfront of Singapore. The Apple Marina Bay Sands, recently revealed in photos and marketing material, will be the city-state’s third Apple Store; its first only opened in 2017.', '2020-08-24 00:00:00', 'Photo by Roslan Rahman/AFP via Getty Images\n\n Apple’s worldwide retail network may be struggling during the coronavirus pandemic, but that hasn’t stopped the company from indulging in its penchant fo… [+3024 chars]', 'https://www.theverge.com/2020/8/24/21399749/apple-store-retail-singapore-floating-design-marina-bay-sands', 'https://cdn.vox-cdn.com/thumbor/8JYZ_JlD1kb-ASh1n1yWpVsf0_0=/0x395:5506x3278/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/21812448/1228178821.jpg.jpg', 0.104167),
(41, 2, 0, 'Jay Peters', 'The Verge', 'Apple is now the world’s most valuable publicly traded company', 'Apple is now the world’s most valuable publicly traded company, passing Saudi Arabia’s state-owned oil company Saudi Aramco. Apple now has a market valuation of $1.84 trillion, while Saudi Aramco’s is $1.76 trillion, according to CNBC.', '2020-07-31 00:00:00', 'Its now larger than Saudi Arabias state-owned oil company\r\nIllustration by Alex Castro / The Verge\r\nApple is now the worlds most valuable publicly traded company, passing Saudi Arabias state-owned oi… [+1188 chars]', 'https://www.theverge.com/2020/7/31/21350154/apple-worlds-most-valuable-company-saudi-aramco', 'https://cdn.vox-cdn.com/thumbor/W4T_cOXSKByy6vwN8c-FcH-1S4A=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/11477051/acastro_180604_1777_apple_wwdc_0003.jpg', 0.25),
(42, 2, 0, 'Lucas Matney', 'TechCrunch', 'Epic Games launches a campaign (and lawsuit) against Apple’s App Store', 'Epic Games is launching an all-out campaign against Apple and its App Store rules. Thursday morning, Epic Games introduced a new payment mechanic through a server side update that allowed gamers to purchase Fortnite’s in-game currency directly, allowing the a…', '2020-08-13 00:00:00', 'Epic Games is launching an all-out campaign against Apple and its App Store rules.\r\nThursday morning, Epic Games introduced a new payment mechanic through a server side update that allowed gamers to … [+1956 chars]', 'http://techcrunch.com/2020/08/13/epic-games-launches-a-campaign-and-lawsuit-against-apples-app-store/', 'https://techcrunch.com/wp-content/uploads/2020/08/Screen-Shot-2020-08-13-at-1.18.02-PM.jpg?w=608', 0.104545),
(43, 2, 0, 'Russell Brandom', 'The Verge', 'Apple is not interested in buying TikTok', 'Apple says it is not in talks to acquire TikTok from Chinese parent company ByteDance, and it is unlikely to pursue such a deal — after an Axios report had named the company alongside Microsoft as a potential buyer.', '2020-08-04 00:00:00', 'An Axios report named the company as a potential suitor\r\nIllustration by Alex Castro / The Verge\r\nApple says its not interested in acquiring TikTok, despite an Axios report that named the company as … [+1065 chars]', 'https://www.theverge.com/2020/8/4/21354082/apple-tiktok-acquisition-denial-targeted-ads-bytedance', 'https://cdn.vox-cdn.com/thumbor/bEspe2VM_QH315QC-wUtGt5WL_c=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/11477047/acastro_180604_1777_apple_wwdc_0001.jpg', -0.125),
(44, 2, 0, 'Karissa Bell', 'Engadget', '\'Fortnite\' maker Epic Games sues Apple over App Store policies', 'Fortnite developer Epic Games is suing Apple after the company removed the game from its App Store. In a lawsuit, Epic accuses the iPhone maker of anti-competitive and monopolistic behavior. “Epic brings this suit to end Apple’s unfair and anti-competitive ac…', '2020-08-13 00:00:00', 'Fortnite developer Epic Games is suing Apple after the company removed the game from its App Store. In a lawsuit, Epic accuses the iPhone maker of anti-competitive and monopolistic behavior. “Epic br… [+361 chars]', 'https://www.engadget.com/fortnite-maker-epic-games-sues-apple-195415590.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-images%2F2020-05%2F1536c6d0-9e38-11ea-b7fd-830353452518&client=amp-blogside-v2&signature=bb6812a6cbfaa1741dd8a89840dcf95b8d0d3f0c', -0.01),
(45, 2, 0, 'Christine Fisher', 'Engadget', 'Martin Scorsese signs Apple TV+ deal after last year\'s Netflix success', 'The rumors that Apple would team up with Martin Scorsese to produce Killers of the Flower Moon are true. Scorsese has officially signed a multi-year deal with Apple TV+, Deadline reports. As part of the agreement, Scorsese’s Sikelia Productions will produce a…', '2020-08-12 00:00:00', 'This isn’t Scorsese’s first Apple partnership -- he starred in a Siri ad way back in 2012 and remotely directed a shot in The Departed via iChat in 2007. This isn’t Apple’s first big movie signing, e… [+597 chars]', 'https://www.engadget.com/apple-tv-plus-martin-scorsese-deal-135551633.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-images%2F2019-12%2F7564c150-173e-11ea-bf34-857d0272c772&client=amp-blogside-v2&signature=34fc07d1b19578eb28114fa79e54a5226dd3d131', 0.25),
(46, 2, 0, 'Mariella Moon', 'Engadget', 'Apple Store app\'s \'For You\' tab shows personalized shopping suggestions', 'Apple has updated its Store app for iOS and iPadOS with a new tab that shows all the devices linked to your Apple ID along with shopping suggestions based on that list. As 9to5Mac notes, tapping on the tab shows an overview of the iPhones, iPads and Macs you …', '2020-07-30 00:00:00', 'Apple has updated its Store app for iOS and iPadOS with a new tab that shows all the devices linked to your Apple ID along with shopping suggestions based on that list. As 9to5Mac notes, tapping on t… [+404 chars]', 'https://www.engadget.com/apple-store-app-for-you-tab-084014849.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-07%2F7a4a5ff0-d22c-11ea-bbff-c2af4b36d9d6&client=amp-blogside-v2&signature=4a3860e7877d509646bb1a53a6c917171614f768', 0.0681818),
(47, 2, 0, 'Nicole Lee', 'Engadget', 'Epic Games asks court to stop Apple pulling its developer tools next week', 'Epic Games has filed yet another lawsuit against Apple. The Fortnite developer is now suing the Cupertino-based company for allegedly retaliating against it for its other lawsuit last week. Apple has not only removed the game from the App Store but has told E…', '2020-08-17 00:00:00', 'Epic Games has filed yet another lawsuit against Apple. The Fortnite developer is now suing the Cupertino-based company for allegedly retaliating against it for its other lawsuit last week. Apple has… [+910 chars]', 'https://www.engadget.com/epic-fortnite-apple-lawsuit-developer-tools-190559744.html', 'https://o.aolcdn.com/images/dims?resize=1200%2C630&crop=1200%2C630%2C0%2C0&quality=95&image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2020-08%2Fb1cb8210-dda8-11ea-adf7-960b1f55c12a&client=amp-blogside-v2&signature=a8b14a6ee2f9c5f146c2e4476fc00062debf024a', -0.01875),
(48, 2, 0, 'David Murphy', 'Lifehacker.com', 'This Free macOS 8 Emulator Lets You Play \'Oregon Trail\'', 'macOS 8, not to be confused with OS X 10.8—which you’re probably much more familiar with—is a 1990s-era operating system that found a home on ancient Apple systems with decidedly old-school names, such as “Power Macintosh” and “PowerBook.” But now, you can us…', '2020-07-30 00:00:00', 'macOS 8, not to be confused with OS X 10.8which youre probably much more familiar withis a 1990s-era operating system that found a home on ancient Apple systems with decidedly old-school names, such … [+2764 chars]', 'https://lifehacker.com/this-free-macos-8-emulator-lets-you-play-oregon-trail-1844547631', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/qtcabpcexgzgptmfpjyh.jpg', 0.259375),
(49, 1, 1, NULL, 'Google News', 'Shaquille O\'Neal Asks Elon Musk To Make a Big Boy Tesla - Torque News', NULL, '2020-08-29 00:00:00', NULL, 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9VmprekNrWGQ2MWPSAQA?oc=5', NULL, 0),
(50, 1, 1, 'Investor\'s Business Daily', 'Investor\'s Business Daily', 'Dow Jones Futures: Will Stock Market Rally Strike Out With Apple, Tesla Stock Splits On Tap, Microsoft-Walmart TikTok Deal Buzz - Investor\'s Business Daily', 'Dow Jones futures: The stock market rally is flashing warning signs. Here\'s what to do. The Apple and Tesla stock splits are due. A TikTok deal may be near.', '2020-08-29 00:00:00', 'Dow Jones futures will not start trading until Sunday evening, along with S&amp;P 500 futures and Nasdaq futures. The coronavirus stock market rally had another strong week, with the S&amp;P 500 and … [+7005 chars]', 'https://www.investors.com/market-trend/stock-market-today/dow-jones-futures-stock-market-rally-apple-stock-tesla-stock-splits-microsoft-walmart-tiktok-deal/', 'https://www.investors.com/wp-content/uploads/2017/11/stock-bull-tongue-adobe.jpg', -0.00625),
(51, 1, 1, 'CBS San Francisco', 'Cbslocal.com', 'Elon Musk Says Russian Instigated Ransomware Attack At Tesla Battery Factory In Nevada - CBS San Francisco', 'According to Elon Musk, a Russian man\'s ransomware scheme took aim at Tesla’s 1.9 million-square-foot factory in Sparks, Nevada, which makes batteries for Tesla vehicles and energy storage units.', '2020-08-29 00:00:00', 'SAN FRANCISCO (CBS/AP) — In a tweet, Tesla CEO Elon Musk solved a mystery involving a 27-year-old Russian, an insider at an unnamed corporation and an alleged million-dollar payment offered to help t… [+3884 chars]', 'https://sanfrancisco.cbslocal.com/2020/08/28/elon-musk-says-russian-behind-ransomware-attack-tesla-factory-nevada/', 'https://sanfrancisco.cbslocal.com/wp-content/uploads/sites/15116056/2020/08/musk.jpg?w=1024', 0),
(52, 1, 1, 'Andrei Nedelea', 'InsideEVs ', 'Tesla On Autopilot Slams Into Two Police Cars While Driver Watches Movie - InsideEVs ', 'This Tesla was on Autopilot when it slammed into two police cars. The driver of the Tesla Model S admits to watching a movie when the wreck occurred.', '2020-08-29 00:00:00', 'No matter how much we and other outlets insist that having 100 percent faith that your Tesla on Autopilot is a bad idea that can have serious consequences, it seems our message just isnt getting acro… [+1826 chars]', 'https://insideevs.com/news/441193/tesla-autopilot-crash-police-cars-movie/', 'https://cdn.motor1.com/images/mgl/lpj2N/s1/tesla-autopilot-crash.jpg', 0),
(53, 1, 1, NULL, 'Boing Boing', 'Tesla Gigafactory worker in Nevada targeted by Russian in failed ransomware attack - Boing Boing', '“A worker in Gigafactory Nevada ended up turning down a $1 million incentive, working closely with the FBI, and thwarting a planned cybersecurity attack against the electric car maker.” — Tesla blo…', '2020-08-29 00:00:00', '\"A worker in Gigafactory Nevada ended up turning down a $1 million incentive, working closely with the FBI, and thwarting a planned cybersecurity attack against the electric car maker.\" Tesla blog po… [+5801 chars]', 'https://boingboing.net/2020/08/28/tesla-gigafactory-worker-in-ne.html', 'https://i2.wp.com/boingboing.net/wp-content/uploads/2020/08/tesla-gigafactory-1-profile-1a.jpg?fit=1200%2C584&ssl=1', -0.202778),
(54, 1, 1, NULL, 'Google News', 'Tesla stock could reach $7K by 2024: Ark Invest analyst - Yahoo Finance', NULL, '2020-08-28 00:00:00', NULL, 'https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9NWxERGVyNkRXb0HSAQA?oc=5', NULL, 0),
(55, 1, 1, NULL, 'Futurism', 'Elon Musk: Tesla Security Was \"Overzealous\" In Kicking Out Drone Photographer - Futurism', '\"I’m fine with reasonable drone footage.\"', '2020-08-28 00:00:00', 'Drone Zone\r\nTesla CEO Elon Musk has issued a mea culpa in the case of a drone photographer who was told to stop filming at the companys Giga Texas construction site yesterday.\r\nI think our security w… [+846 chars]', 'https://futurism.com/the-byte/elon-musk-overzealous-drone-photographer', 'https://wp-assets.futurism.com/2020/08/elon-musk-overzealous-drone-photographer-768x403.jpg', 0.154167),
(56, 569, 0, 'Tom Wilson, Anna Irrera, Jessica DiNapoli', 'Reuters', 'EXPAINER -Bitcoin on your balance sheet? Here\'s what you need to know - Reuters', 'Large companies from carmaker Tesla Inc to business intelligence firm MicroStrategy Inc have swapped billions of dollars in cash for bitcoin in recent months.', '2021-03-08 00:00:00', 'LONDON/NEW YORK (Reuters) - Large companies from carmaker Tesla Inc to business intelligence firm MicroStrategy Inc have swapped billions of dollars in cash for bitcoin in recent months.\r\nFILE PHOTO:… [+4231 chars]', 'https://www.reuters.com/article/crypto-currency-bitcoin-treasury-explain-idUSKBN2B00FL', 'https://static.reuters.com/resources/r/?m=02&d=20210308&t=2&i=1554094247&r=LYNXMPEH2709H&w=800', 0.00238095),
(57, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla names Musk \'Technoking\' in cryptic regulatory filing - Reuters', 'Tesla Inc added \"Technoking of Tesla\" to billionaire Chief Executive Elon Musk\'s list of official titles on Monday in a formal regulatory filing that also named finance chief Zachary Kirkhorn \"Master of Coin\".', '2021-03-15 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: SpaceX owner and Tesla CEO Elon Musk speaks during a conversation with legendary game designer Todd Howard (not pictured) at the E3 gaming convention in Los Angeles, Cal… [+916 chars]', 'https://www.reuters.com/article/us-tesla-musk-idUSKBN2B71AX', 'https://static.reuters.com/resources/r/?m=02&d=20210315&t=2&i=1554928077&r=LYNXMPEH2E0UD&w=800', 0),
(58, 569, 0, 'Reuters Staff', 'Reuters', 'Musk says Tesla vehicles can now be bought using bitcoin - Reuters', 'Tesla Inc chief Elon Musk said on Wednesday that a Tesla vehicle can now be bought using bitcoin and the option will be available outside the United States later this year.', '2021-03-24 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: Tesla Inc CEO Elon Musk speaks onstage during a delivery event for Tesla China-made Model 3 cars at its factory in Shanghai, China January 7, 2020. REUTERS/Aly Song/File… [+540 chars]', 'https://www.reuters.com/article/us-tesla-musk-bitcoin-idUSKBN2BG0RV', 'https://static.reuters.com/resources/r/?m=02&d=20210324&t=2&i=1555996564&r=LYNXMPEH2N0IA&w=800', 0.0666667),
(59, 569, 0, 'Reuters Staff', 'Reuters', 'Musk says cell supply shortage makes it difficult to scale Tesla Semi production - Reuters', 'Tesla Inc Chief Executive Officer Elon Musk said in a tweet on Tuesday the near-term cell supply shortage makes it difficult to scale the production of Tesla Semi commercial truck.', '2021-03-30 00:00:00', 'By Reuters Staff\r\n(Reuters) - Tesla Inc Chief Executive Officer Elon Musk said in a tweet on Tuesday the near-term cell supply shortage makes it difficult to scale the production of Tesla Semi commer… [+10 chars]', 'https://www.reuters.com/article/us-tesla-musk-semi-idUSKBN2BM19B', 'https://static.reuters.com/resources/r/?m=02&d=20210330&t=2&i=1556732161&r=LYNXMPEH2T0KT&w=800', -0.375),
(60, 569, 0, 'Reuters Staff', 'Reuters', 'UPDATE 1-Tesla names Musk \'Technoking\' in cryptic regulatory filing - Reuters', 'Tesla Inc added \"Technoking of Tesla\" to billionaire Chief Executive Elon Musk\'s list of official titles on Monday in a regulatory filing that also named finance chief Zachary Kirkhorn \"Master of Coin\".', '2021-03-15 00:00:00', 'By Reuters Staff\r\nMarch 15 (Reuters) - Tesla Inc added Technoking of Tesla to billionaire Chief Executive Elon Musks list of official titles on Monday in a regulatory filing that also named finance c… [+1187 chars]', 'https://www.reuters.com/article/tesla-musk-idUSL4N2LD41Q', 'https://s1.reutersmedia.net/resources_v2/images/rcom-default.png?w=800', 0),
(61, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla first-quarter deliveries beat estimates - Reuters', 'Tesla Inc on Friday beat Wall Street estimates for first-quarter deliveries, as solid demand offset the impact from a global shortage of chips.', '2021-04-02 00:00:00', 'By Reuters Staff\r\nApril 2 (Reuters) - Tesla Inc on Friday beat Wall Street estimates for first-quarter deliveries, as solid demand offset the impact from a global shortage of chips.\r\nThe electric-car… [+184 chars]', 'https://www.reuters.com/article/tesla-deliveries-idUSL4N2LV1GI', 'https://s1.reutersmedia.net/resources_v2/images/rcom-default.png?w=800', 0),
(62, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla raises price of variants of Model Y, Model 3, Model S - Reuters UK', 'Tesla Inc has increased price of its Model Y Long Range and Model S Plaid plus by $10,000, the electric-car maker\'s website showed.', '2021-03-11 00:00:00', 'By Reuters Staff\r\n(Reuters) - Tesla Inc has increased price of its Model Y Long Range and Model S Plaid plus by $10,000, the electric-car makers website showed.\r\nThe price of its Model 3 Standard Ran… [+244 chars]', 'https://www.reuters.com/article/us-tesla-prices-idUSKBN2B30P1', 'https://static.reuters.com/resources/r/?m=02&d=20210311&t=2&i=1554495623&r=LYNXMPEH2A0E0&w=800', -0.025),
(63, 569, 0, 'Reuters Staff', 'Reuters', 'Musk says would be good for U.S., China to increase mutual trust - Reuters', 'Tesla Inc chief executive Elon Musk said on Saturday it would be good for the United States and China to have more trust in each other.', '2021-03-20 00:00:00', 'By Reuters Staff\r\nBEIJING, March 20 (Reuters) - Tesla Inc chief executive Elon Musk said on Saturday it would be good for the United States and China to have more trust in each other.\r\nMusk was holdi… [+374 chars]', 'https://www.reuters.com/article/china-forum-musk-idUSB9N2G700Q', 'https://s1.reutersmedia.net/resources_v2/images/rcom-default.png?w=800', 0.529167);
INSERT INTO `articles` (`id`, `stock_id`, `top_news`, `author`, `source`, `title`, `description`, `date`, `content`, `url`, `img_url`, `sentiment`) VALUES
(64, 569, 0, 'Reuters Staff', 'Reuters', 'India\'s Tata Power and Tesla in talks over setting up charging infrastructure: report - Reuters', 'India\'s power generation and transmission company Tata Power and Tesla Inc were exploring an arrangement on setting up charging infrastructure, CNBC-TV18 reported.', '2021-03-12 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: The logo of car manufacturer Tesla is seen at a branch office in Bern, Switzerland October 28, 2020. REUTERS/Arnd Wiegmann\r\nBENGALURU (Reuters) - Indias power generation… [+309 chars]', 'https://www.reuters.com/article/us-tata-power-tesla-india-idUSKBN2B416O', 'https://static.reuters.com/resources/r/?m=02&d=20210312&t=2&i=1554661673&r=LYNXMPEH2B0P2&w=800', 0),
(65, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla urges court to reinstate hike in emissions penalties - Reuters', 'Tesla Inc is pressing a U.S. appeals court to immediately reinstate a 2016 Obama regulation more than doubling penalties for automakers who fail to meet fuel efficiency requirements.', '2021-03-24 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: A Tesla logo on a Model S is photographed inside of a Tesla dealership in New York, U.S., April 29, 2016. REUTERS/Lucas Jackson\r\nWASHINGTON (Reuters) - Tesla Inc is pres… [+663 chars]', 'https://www.reuters.com/article/us-autos-emissions-tesla-idUSKBN2BG2AP', 'https://static.reuters.com/resources/r/?m=02&d=20210324&t=2&i=1556050623&r=LYNXMPEH2N1FH&w=800', 0),
(66, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla raises price of variants of Model Y, Model 3, Model S - Reuters', 'Tesla Inc has increased price of its Model Y Long Range and Model S Plaid plus by $10,000, the electric-car maker\'s website showed.', '2021-03-11 00:00:00', 'By Reuters Staff\r\n(Reuters) - Tesla Inc has increased price of its Model Y Long Range and Model S Plaid plus by $10,000, the electric-car makers website showed.\r\nThe price of its Model 3 Standard Ran… [+244 chars]', 'https://www.reuters.com/article/tesla-prices-int-idUSKBN2B30Q5', 'https://static.reuters.com/resources/r/?m=02&d=20210311&t=2&i=1554496490&r=LYNXMPEH2A0EG&w=800', -0.025),
(67, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla investor sues Musk, says many tweets in violation of SEC settlement - Reuters', 'A Tesla Inc investor has sued Chief Executive Officer Elon Musk and its board, saying many of his tweets violated a previous settlement with the U.S. Securities and Exchange Commission.', '2021-03-12 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: SpaceX owner and Tesla CEO Elon Musk looks on after arriving on the red carpet for the Axel Springer award, in Berlin, Germany, December 1, 2020. REUTERS/Hannibal Hansch… [+266 chars]', 'https://www.reuters.com/article/us-tesla-sec-idUSKBN2B42DN', 'https://static.reuters.com/resources/r/?m=02&d=20210312&t=2&i=1554708613&r=LYNXMPEH2B1ED&w=800', 0.183333),
(68, 569, 0, 'Reuters Staff', 'Reuters', 'Outgoing CEO says Panasonic must cut Tesla reliance as battery tie-up evolves: FT - Reuters Canada', 'Panasonic Corp\'s outgoing Chief Executive Kazuhiro Tsuga said the company will need to reduce its heavy reliance on Tesla Inc by making batteries more compatible with electric vehicles from other global carmakers, the Financial Times reported on Sunday.', '2021-03-14 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: Panasonic Corp President Kazuhiro Tsuga attends a joint news conference with Toyota Motor Corp President Akio Toyoda in Tokyo, Japan, December 13, 2017. REUTERS/Toru Han… [+1106 chars]', 'https://www.reuters.com/article/us-panasonic-tesla-idUSKBN2B6052', 'https://static.reuters.com/resources/r/?m=02&d=20210314&t=2&i=1554826108&r=LYNXMPEH2D02Z&w=800', 0.0175),
(69, 569, 0, 'Hyunjoo Jin', 'Reuters', 'Exclusive: LG hopes to make new battery cells for Tesla in 2023 in U.S. or Europe - sources - Reuters', 'LG Energy Solution aims to build advanced battery cells for Tesla Inc electric vehicles in 2023 and is considering potential production sites in the United States and Europe, two people familiar with the matter told Reuters.', '2021-03-09 00:00:00', 'SAN FRANCISCO (Reuters) - LG Energy Solution aims to build advanced battery cells for Tesla Inc electric vehicles in 2023 and is considering potential production sites in the United States and Europe… [+4194 chars]', 'https://www.reuters.com/article/us-tesla-lg-evs-exclusive-idUSKBN2B12HY', 'https://static.reuters.com/resources/r/?m=02&d=20210309&t=2&i=1554305933&r=LYNXMPEH281BY&w=800', 0.197348),
(70, 569, 0, 'Paresh Dave, Jeffrey Dastin', 'Reuters', 'Verkada surveillance cameras at Tesla, hundreds more businesses breached: hackers - Reuters Canada', 'A small group of hackers viewed surveillance footage from hundreds of businesses including Tesla Inc by gaining administrative access to camera maker Verkada over the last two days, one of the people involved in the breach told Reuters.', '2021-03-10 00:00:00', '(Reuters) - A small group of hackers viewed surveillance footage from hundreds of businesses including Tesla Inc by gaining administrative access to camera maker Verkada over the last two days, one o… [+2340 chars]', 'https://www.reuters.com/article/us-verkada-breach-idUSKBN2B2048', 'https://static.reuters.com/resources/r/?m=02&d=20210310&t=2&i=1554335854&r=LYNXMPEH29034&w=800', 0.1875),
(71, 569, 0, 'Reuters Staff', 'Reuters', 'UPDATE 1-Tesla shares surge on record electric cars deliveries in first qtr - Reuters', 'Shares of Tesla Inc surged nearly 8% in pre-market trading on Monday, after the world\'s most valuable carmaker posted record deliveries as a solid demand for its electric cars offset the impact of a global shortage of chips.', '2021-04-05 00:00:00', 'By Reuters Staff\r\n(Adds background on deliveries, analyst comment, updates shares)\r\nApril 5 (Reuters) - Shares of Tesla Inc surged nearly 8% in pre-market trading on Monday, after the worlds most val… [+820 chars]', 'https://www.reuters.com/article/tesla-stocks-idUSL4N2LY124', 'https://s1.reutersmedia.net/resources_v2/images/rcom-default.png?w=800', 0.2),
(72, 569, 0, 'Nick Carey, Christina Amann', 'Reuters', 'BMW has got its timing right for beefing up electric cars: CEO - Reuters', 'BMW has timed its shift to electric cars well and its upcoming products will upend the perception the German carmaker is behind on electrification and could make its stock compete with the likes of Tesla Inc, its top executive said.', '2021-03-30 00:00:00', 'LONDON (Reuters) - BMW has timed its shift to electric cars well and its upcoming products will upend the perception the German carmaker is behind on electrification and could make its stock compete … [+2243 chars]', 'https://www.reuters.com/article/us-bmw-ceo-electric-idUSKBN2BM0G6', 'https://static.reuters.com/resources/r/?m=02&d=20210330&t=2&i=1556700713&r=LYNXMPEH2T07C&w=800', 0.159524),
(73, 569, 0, 'Reuters Staff', 'Reuters', 'Tesla loses more than $244 billion in a month as rally fizzles - Reuters', 'Shares of Tesla Inc fell for a fifth consecutive session on Monday, caught in a tech-led selloff that has wiped more than $244 billion off the company\'s market value over the last month.', '2021-03-08 00:00:00', 'By Reuters Staff\r\nFILE PHOTO: The logo of car manufacturer Tesla is seen at a branch office in Bern, Switzerland October 28, 2020. REUTERS/Arnd Wiegmann\r\n(Reuters) - Shares of Tesla Inc fell for a fi… [+1471 chars]', 'https://www.reuters.com/article/us-tesla-stock-idUSKBN2B028I', 'https://static.reuters.com/resources/r/?m=02&d=20210308&t=2&i=1554172824&r=LYNXMPEH271FR&w=800', 0.175),
(74, 569, 0, 'Noel Randewich', 'Reuters', 'Tesla loses a third of its value for the third time in a year - Reuters', 'Tesla Inc\'s stock extended losses on Monday and is now down by a third from its January record high, making it the third time in about a year that the electric car maker\'s shares have corrected that dramatically.', '2021-03-08 00:00:00', '(Reuters) - Tesla Incs stock extended losses on Monday and is now down by a third from its January record high, making it the third time in about a year that the electric car makers shares have corre… [+2464 chars]', 'https://www.reuters.com/article/us-usa-stocks-tesla-graphic-idUSKBN2B02FN', 'https://static.reuters.com/resources/r/?m=02&d=20210308&t=2&i=1554184552&r=LYNXMPEH271L0&w=800', -0.0494444),
(75, 569, 0, 'https://www.engadget.com/about/editors/jon-fingas', 'Engadget', 'Tesla factory reported hundreds of COVID-19 cases after reopening', 'Tesla reported hundreds of COVID-19 cases at its Fremont factory in the months following its early reopening in May last year.', '2021-03-13 00:00:00', 'Tesla\'s determination to restart EV production at its Fremont factory last May appears to have had some consequences. According to the Washington Post, PlainSite has obtained Alameda County health da… [+1955 chars]', 'https://www.engadget.com/tesla-fremont-factory-covid-19-cases-200515835.html', 'https://s.yimg.com/uu/api/res/1.2/W3l158KPAI0dG0E3g_C71Q--~B/aD0zMDc5O3c9NDYxOTthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/os/creatr-images/2020-05/99347430-9552-11ea-b737-ef675da501f7.cf.jpg', 0.0166667),
(76, 569, 0, 'Matthew DeBord', 'Business Insider', 'It\'s time to retire comparisons between Apple and Tesla, once and for all (TSLA, AAPL)', 'Summary List PlacementFor years, comparisons between Apple and Tesla haven\'t merely been commonplace — they\'ve been expected. \nSome of this could be chalked up to timing. Apple co-founder and CEO Steve Jobs died in 2011, leaving the tech world with a visionar…', '2021-03-14 00:00:00', 'For years, comparisons between Apple and Tesla haven\'t merely been commonplace they\'ve been expected. \r\nSome of this could be chalked up to timing. Apple co-founder and CEO Steve Jobs died in 2011, l… [+5195 chars]', 'https://www.businessinsider.com/its-time-to-retire-comparisons-between-apple-and-tesla-2021-3', 'https://i.insider.com/5fe25c2ca644880018193012?width=1200&format=jpeg', -0.15),
(77, 569, 0, 'Graham Rapier', 'Business Insider', 'Elon Musk teases a Tesla Cybertruck availability update as soon as April (TSLA)', 'Summary List PlacementElon Musk on Saturday teased an update about the availability of Tesla\'s forthcoming Cybertruck as soon as April.\n\"Update probably in Q2. Cybertruck will be built at Giga Texas, so focus right now is on getting that beast built,\" the CEO…', '2021-03-07 00:00:00', 'Elon Musk on Saturday teased an update about the availability of Tesla\'s forthcoming Cybertruck as soon as April.\r\n\"Update probably in Q2. Cybertruck will be built at Giga Texas, so focus right now i… [+870 chars]', 'https://www.businessinsider.com/elon-musk-teases-tesla-cybertruck-release-date-in-tweet-2021-3', 'https://i.insider.com/604518cf2db4af00117e3fad?width=1200&format=jpeg', 0.142857),
(78, 569, 0, 'Tim Levin', 'Business Insider', 'EV startup Canoo unveils quirky pickup coming in 2023 (GOEV, TSLA, F, GM)', 'Summary List PlacementYet another startup is entering the battery-powered pickup arena. And this latest entry may just have the quirky looks needed to take on the upcoming Tesla Cybertruck. \nElectric-vehicle firm Canoo on Wednesday took the wraps off of a str…', '2021-03-11 00:00:00', 'Yet another startup is entering the battery-powered pickup arena. And this latest entry may just have the quirky looks needed to take on the upcoming Tesla Cybertruck. \r\nElectric-vehicle firm Canoo o… [+2523 chars]', 'https://www.businessinsider.com/canoo-ev-pickup-truck-first-look-features-specs-2021-3', 'https://i.insider.com/604a3bf2f196be0018beed77?width=1200&format=jpeg', 0.05),
(79, 569, 0, 'Matthew Fox', 'Business Insider', '2 reasons why buying a Tesla with bitcoin is a bad idea (TSLA)', 'Summary List Placement<ul>\n<li>Tesla said earlier this week it will start accepting bitcoin as a form of payment for its products.</li>\n<li>The move comes after Tesla added $1.5 billion of bitcoin to its balance sheet in January.</li>\n<li>Detailed below are t…', '2021-03-25 00:00:00', 'Tesla is now accepting bitcoin as a form of payment for its vehicles, making it one of the first companies to accept the cryptocurrency as a form of payment for its products.\r\nThe move came two month… [+2007 chars]', 'https://www.businessinsider.com/2-reasons-buying-tesla-with-bitcoin-bad-idea-2021-3', 'https://i.insider.com/605cd979106eb50019d05a63?width=1200&format=jpeg', -0.35),
(80, 569, 0, 'Tyler Sonnemaker', 'Business Insider', 'SoftBank is under investigation by the SEC following its risky \'Nasdaq whale\' investments (UBER, AAPL, TSLA)', 'Summary List PlacementThe Japanese investing conglomerate SoftBank, which has holdings in household names like Apple, Amazon, Tesla, Uber, DoorDash, and Sprint, is under investigation by the Securities and Exchange Commission, Vice News reported Wednesday.\nTh…', '2021-03-24 00:00:00', 'The Japanese investing conglomerate SoftBank, which has holdings in household names like Apple, Amazon, Tesla, Uber, DoorDash, and Sprint, is under investigation by the Securities and Exchange Commis… [+1339 chars]', 'https://www.businessinsider.com/softbank-sec-investigation-foia-request-nasdaq-whale-sb-northstar-2021-3', 'https://i.insider.com/6023e697cca90200129b7684?width=1200&format=jpeg', -0.025),
(81, 569, 0, 'Matthew DeBord', 'Business Insider', 'The true disrupter in the auto industry isn\'t Tesla — it\'s Fisker (TSLA, FSR)', 'Summary List PlacementNobody really saw this one coming. A year ago, Henrik Fisker was an admired auto-industry veteran, but with a failed startup behind him. Fisker Automotive\'s 2013 bankruptcy sent Fisker back to his roots in design for a spell, but it didn…', '2021-03-06 00:00:00', 'Nobody really saw this one coming. A year ago, Henrik Fisker was an admired auto-industry veteran, but with a failed startup behind him. Fisker Automotive\'s 2013 bankruptcy sent Fisker back to his ro… [+5464 chars]', 'https://www.businessinsider.com/the-biggest-disrupter-in-auto-industry-isnt-tesla-its-fisker-2021-3', 'https://i.insider.com/5c0970cc0fefb302aa2a8af3?width=1200&format=jpeg', 0.105),
(82, 569, 0, 'Graham Rapier', 'Business Insider', 'Elon Musk lost $27 billion in a rough week for the electric vehicle sector (TSLA)', 'Summary List PlacementElectric vehicle stocks have been on a tear in 2020, fueled by a storm of reverse-mergers, technical breakthroughs, and potential political help.\nBut heavy selling amid broader market weakness last week caused headaches for some investor…', '2021-03-07 00:00:00', 'Electric vehicle stocks have been on a tear in 2020, fueled by a storm of reverse-mergers, technical breakthroughs, and potential political help.\r\nBut heavy selling amid broader market weakness last … [+1791 chars]', 'https://www.businessinsider.com/elon-musk-loses-27-billion-electric-vehicle-stocks-tesla-selloff-2021-3', 'https://i.insider.com/6044f08044d8e300117b97a3?width=1200&format=jpeg', -0.07),
(83, 569, 0, 'Matthew DeBord', 'Business Insider', 'Elon Musk wants Tesla to be big in Texas. That might just be a terrible idea. (TSLA)', 'Summary List PlacementElon Musk wants Tesla and SpaceX to be big in Texas. Very big.\nSpaceX has already established a controversial beachhead in the small town of Boca Chica, which Musk wants to rename \"Starbase\" and transform into a Lone Star Cape Kennedy fo…', '2021-04-03 00:00:00', 'Elon Musk wants Tesla and SpaceX to be big in Texas. Very big.\r\nSpaceX has already established a controversial beachhead in the small town of Boca Chica, which Musk wants to rename \"Starbase\" and tra… [+5667 chars]', 'https://www.businessinsider.com/elon-musk-wants-tesla-big-in-texas-terrible-idea-2021-4', 'https://i.insider.com/5fca986bb6a3a800199b6c04?width=1200&format=jpeg', -0.075),
(84, 569, 0, 'Grace Kay', 'Business Insider', 'The US consumer safety regulator is investigating Tesla solar panel fires on Walmart stores and Amazon warehouses (TSLA)', 'Summary List PlacementThe US Consumer Product Safety Commission is looking into several complaints of Tesla solar panel fires, CNBC first reported on Tuesday, citing agency documents it received through a Freedom of Information Act request. \nOver the past few…', '2021-03-23 00:00:00', 'The US Consumer Product Safety Commission is looking into several complaints of Tesla solar panel fires, CNBC first reported on Tuesday, citing agency documents it received through a Freedom of Infor… [+3829 chars]', 'https://www.businessinsider.com/tesla-solar-panel-fires-walmart-amazon-safety-regulator-investigation-foia-2021-3', 'https://i.insider.com/605a0a950d155e0019ef6324?width=1200&format=jpeg', 0),
(85, 569, 0, 'Grace Kay', 'Business Insider', 'Elon Musk deleted a tweet implying Tesla could be the world\'s largest company \'within a few months\' (TSLA)', 'Summary List PlacementTesla CEO Elon Musk deleted a tweet on Friday that implied Tesla would become a bigger company than Apple, the world\'s largest company, \"within a few months\" \nThe conversation on Twitter about Tesla\'s market value was started by an accou…', '2021-03-26 00:00:00', 'Tesla CEO Elon Musk deleted a tweet on Friday that implied Tesla would become a bigger company than Apple, the world\'s largest company, \"within a few months\" \r\nThe conversation on Twitter about Tesla… [+2850 chars]', 'https://www.businessinsider.com/elon-musk-twitter-deleted-tweet-implying-company-bigger-than-apple-2021-3', 'https://i.insider.com/605e19978e71b30018519082?width=1200&format=jpeg', -0.15),
(86, 569, 0, 'Will Daniel', 'Business Insider', 'Bitcoin-mining stocks sink as the cryptocurrency struggles to reclaim $50,000 level (MARA, RIOT, HVBTF, TSLA, MSTR)', 'Summary List PlacementBitcoin-mining stocks sank across the board on Friday as the cryptocurrency struggled to reclaim the $50,000 per-coin level.\nShares of Marathon Patent Group, Riot Blockchain, and Hive Blockchain Technologies all dropped double digits in …', '2021-03-05 00:00:00', 'Bitcoin-mining stocks sank across the board on Friday as the cryptocurrency struggled to reclaim the $50,000 per-coin level.\r\nShares of Marathon Patent Group, Riot Blockchain, and Hive Blockchain Tec… [+1565 chars]', 'https://www.businessinsider.com/bitcoin-mining-stocks-price-outlook-cryptocurrency-struggles-reclaim-50000-2021-3', 'https://i.insider.com/5fa5baa41df1d50018219658?width=1200&format=jpeg', 0),
(87, 569, 0, 'Tim Levin', 'Business Insider', 'Tesla just hiked prices by up to $10,000 — here\'s how much each model will set you back (TSLA)', 'Summary List PlacementTesla is known to quietly raise and lower is prices whenever it sees fit.\nIn October, Tesla CEO Elon Musk dropped the price of the Model S sedan to $69,420 after rival Lucid announced its sedan would start at $69,900. And on Thursday, th…', '2021-03-14 00:00:00', 'Tesla is known to quietly raise and lower is prices whenever it sees fit.\r\nIn October, Tesla CEO Elon Musk dropped the price of the Model S sedan to $69,420 after rival Lucid announced its sedan woul… [+4923 chars]', 'https://www.businessinsider.com/tesla-cost-breakdown-buying-guide-2021-3', 'https://i.insider.com/604bdbd8fea127001886a931?width=1200&format=jpeg', 0.15),
(88, 569, 0, 'Julia Musto', 'Fox Business', 'Elon Musk reverses course on selling NFT song - Fox Business', '<ol><li>Elon Musk reverses course on selling NFT song  Fox Business\r\n</li><li>Elon Musk turns down $1 million offer to buy his tweet as an NFT  CNBC\r\n</li><li>Elon Musk Passes On $1 Million USD Offer for His Tweet as an NFT  HYPEBEAST\r\n</li><li>Tesla\'s (TSLA)…', '2021-03-17 00:00:00', 'Billionaire Elon Musk reversed course on Tuesday after announcing he would sell a techno music track he produced about non-fungible tokens (NFT).\r\nThe Tesla and SpaceX founder, who recently declared … [+1595 chars]', 'https://www.foxbusiness.com/technology/elon-musk-reverses-course-selling-nft-song', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2021/02/0/0/Elon-Musk.jpg?ve=1&tl=1', -0.0777778),
(89, 569, 0, 'Avery Hartmans', 'Business Insider', 'A rare photo shows Elon Musk and Jeff Bezos having dinner 17 years ago, before their longstanding feud ignited (TSLA, AMZN)', 'Summary List PlacementA rare photo has surfaced of a fateful meeting between Jeff Bezos and Elon Musk 17 years ago. \nThe photo — which was tweeted by Trung Phan, a writer for business newsletter The Hustle — shows Musk and Bezos smiling while seated together …', '2021-03-22 00:00:00', 'A rare photo has surfaced of a fateful meeting between Jeff Bezos and Elon Musk 17 years ago. \r\nThe photo which was tweeted by Trung Phan, a writer for business newsletter The Hustle shows Musk and B… [+1578 chars]', 'https://www.businessinsider.com/elon-musk-jeff-bezos-photo-meeting-rivalry-2021-3', 'https://i.insider.com/5ff75a5fd184b30018aad96a?width=1200&format=jpeg', 0.3),
(90, 569, 0, 'Matthew DeBord', 'Business Insider', '\'Technoking\' and \'Master of Coin\' — Elon Musk\'s goofy new Tesla titles prove that the company will never have to pay for marketing (TSLA)', 'Summary List PlacementMarketing is one of the most expensive things that traditional automakers do. In 2019, General Motors alone spent about $3 billion to tell customers about its vehicles, a level of expenditure that has been typical for decades.\nTesla, mea…', '2021-03-20 00:00:00', 'Marketing is one of the most expensive things that traditional automakers do. In 2019, General Motors alone spent about $3 billion to tell customers about its vehicles, a level of expenditure that ha… [+6716 chars]', 'https://www.businessinsider.com/technoking-musk-new-tesla-title-proves-no-need-spend-marketing-2021-3', 'https://i.insider.com/5e32fe3862fa813a0c67ed14?width=1200&format=jpeg', 0.141035),
(91, 569, 0, 'Will Daniel', 'Business Insider', 'Biden\'s infrastructure plan is a \'green tidal wave\' that will revive the EV sector after its recent pullback, Wedbush says (TSLA, RIDE, NKLA)', 'Summary List PlacementPresident Biden\'s infrastructure plan is set to be released on Wednesday afternoon and some analysts argue it will help revive the EV sector after its recent pullback.\nWedbush\'s Dan Ives said in a note to clients on Wednesday morning tha…', '2021-03-31 00:00:00', 'Drew Angerer/Getty Images\r\nPresident Biden\'s infrastructure plan is set to be released on Wednesday afternoon and some analysts argue it will help revive the EV sector after its recent pullback.\r\nWed… [+2251 chars]', 'https://markets.businessinsider.com/news/stocks/bidens-infrastructure-plan-green-tidal-wave-for-evs-wedbush-ives-2021-3-1030264230', 'https://images2.markets.businessinsider.com/60646f416183e1001981975a?format=jpeg', -0.05),
(92, 569, 0, 'Carla Mozée', 'Business Insider', 'The rotation into cyclical stocks isn\'t over, but investors should use volatility to \'build positions\' in tech, UBS says (COMPX, NDX, INX, DJIA, FB, TSLA)', 'Summary List PlacementThe bounce back in technology stocks does not spell the end of the market\'s rotation into cyclicals, says UBS, which suggested investors take advantage of volatility to add exposure to fintech and other tech-sector disruptors.\nTechnology…', '2021-03-11 00:00:00', 'The bounce back in technology stocks does not spell the end of the market\'s rotation into cyclicals, says UBS, which suggested investors take advantage of volatility to add exposure to fintech and ot… [+2175 chars]', 'https://www.businessinsider.com/stock-market-outlook-cyclicals-economic-recovery-tech-volatility-bounce-back-2021-3', 'https://i.insider.com/5f917636212113001874014f?width=1200&format=jpeg', -0.03125),
(93, 569, 0, 'Tim Levin', 'Business Insider', 'Tesla is about to reveal how many cars it sold in the first quarter of 2021 — here\'s what to expect (TSLA)', 'Summary List PlacementTesla is set to release first quarter delivery figures as soon as Thursday, and Wall Street largely expects Elon Musk\'s automaker to match its strong output from the final stretch of 2020. \nAnalyst consensus is that Tesla will deliver 17…', '2021-03-31 00:00:00', 'Tesla is set to release first quarter delivery figures as soon as Thursday, and Wall Street largely expects Elon Musk\'s automaker to match its strong output from the final stretch of 2020. \r\nAnalyst … [+1949 chars]', 'https://www.businessinsider.com/tesla-q1-deliveries-preview-wall-street-estimates-2021-3', 'https://i.insider.com/603fc377b46d720018b049cc?width=1200&format=jpeg', 0.299702),
(94, 569, 0, 'Aditi Ganguly', 'StockNews.com', 'Is Volkswagen a Good Electric Vehicle Stock to Buy?', 'The company\'s active interest in the electric vehicle industry since mid-2020 has caught investors\' eyes.', '2021-03-15 00:00:00', 'March\r\n15, 2021\r\n4 min read\r\nThis story originally appeared on StockNewsThe shares of automotive giant Volkswagen AG (VWAGY - Get Rating) have gained 106.7% over the past year as the global automotiv… [+4249 chars]', 'https://stocknews.com/news/vwagy-is-volkswagen-a-good-electric-vehicle-stock-to-buy/', 'https://assets.entrepreneur.com/content/3x2/2000/1615835200-vw.jpg', 0.283333);

-- --------------------------------------------------------

--
-- Table structure for table `sentiments`
--

CREATE TABLE `sentiments` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sentiment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `ticker` varchar(10) NOT NULL,
  `company` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `sector` varchar(50) NOT NULL,
  `market_cap` float NOT NULL,
  `beta` float NOT NULL,
  `exch` varchar(50) NOT NULL,
  `indices` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `ticker`, `company`, `price`, `sector`, `market_cap`, `beta`, `exch`, `indices`) VALUES
(1, 'A', 'Agilent Technologies, Inc.', 0, 'Healthcare', 36560700000, 1.01083, 'NYQ', 'SP'),
(2, 'AAL', 'American Airlines Group, Inc.', 0, 'Industrials', 13913000000, 1.85807, 'NMS', 'SP'),
(3, 'AAP', 'Advance Auto Parts Inc Advance ', 0, 'Consumer Cyclical', 11554600000, 1.33098, 'NYQ', 'SP'),
(4, 'AAPL', 'Apple Inc.', 0, 'Technology', 2014240000000, 1.25135, 'NMS', 'SP'),
(5, 'ABBV', 'AbbVie Inc.', 0, 'Healthcare', 190715000000, 0.809859, 'NYQ', 'SP'),
(6, 'ABC', 'AmerisourceBergen Corporation', 0, 'Healthcare', 22544300000, 0.480498, 'NYQ', 'SP'),
(7, 'ABMD', 'ABIOMED, Inc.', 0, 'Healthcare', 13401000000, 1.37541, 'NMS', 'SP'),
(8, 'ABT', 'Abbott Laboratories', 0, 'Healthcare', 205285000000, 0.723185, 'NYQ', 'SP'),
(9, 'ACN', 'Accenture plc', 0, 'Technology', 170004000000, 1.12297, 'NYQ', 'SP'),
(10, 'ADBE', 'Adobe Inc.', 0, 'Technology', 209470000000, 0.964247, 'NMS', 'SP'),
(11, 'ADI', 'Analog Devices, Inc.', 0, 'Technology', 55123700000, 1.32178, 'NMS', 'SP'),
(12, 'ADM', 'Archer-Daniels-Midland Company', 0, 'Consumer Defensive', 32605800000, 0.872697, 'NYQ', 'SP'),
(13, 'ADP', 'Automatic Data Processing, Inc.', 0, 'Industrials', 77915000000, 0.737811, 'NMS', 'SP'),
(14, 'ADSK', 'Autodesk, Inc.', 0, 'Technology', 57971500000, 1.36836, 'NMS', 'SP'),
(15, 'AEE', 'Ameren Corporation', 0, 'Utilities', 19303100000, 0.244312, 'NYQ', 'SP'),
(16, 'AEP', 'American Electric Power Company', 0, 'Utilities', 40324200000, 0.241061, 'NMS', 'SP'),
(17, 'AES', 'The AES Corporation', 0, 'Utilities', 18366400000, 0.874322, 'NYQ', 'SP'),
(18, 'AFL', 'AFLAC Incorporated', 0, 'Financial Services', 34987100000, 0.980498, 'NYQ', 'SP'),
(19, 'AIG', 'American International Group, I', 0, 'Financial Services', 41380200000, 1.37649, 'NYQ', 'SP'),
(20, 'AIZ', 'Assurant, Inc.', 0, 'Financial Services', 8033480000, 0.596966, 'NYQ', 'SP'),
(21, 'AJG', 'Arthur J. Gallagher & Co.', 0, 'Financial Services', 24265900000, 0.691224, 'NYQ', 'SP'),
(22, 'AKAM', 'Akamai Technologies, Inc.', 0, 'Technology', 15727900000, 0.394366, 'NMS', 'SP'),
(23, 'ALB', 'Albemarle Corporation', 0, 'Basic Materials', 17763100000, 1.58234, 'NYQ', 'SP'),
(24, 'ALGN', 'Align Technology, Inc.', 0, 'Healthcare', 40499300000, 1.71723, 'NMS', 'SP'),
(25, 'ALK', 'Alaska Air Group, Inc.', 0, 'Industrials', 8247360000, 1.85915, 'NYQ', 'SP'),
(26, 'ALL', 'Allstate Corporation (The)', 0, 'Financial Services', 34439700000, 0.823943, 'NYQ', 'SP'),
(27, 'ALLE', 'Allegion plc', 0, 'Industrials', 10520400000, 1.13218, 'NYQ', 'SP'),
(28, 'ALXN', 'Alexion Pharmaceuticals, Inc.', 0, 'Healthcare', 33742300000, 1.24052, 'NMS', 'SP'),
(29, 'AMAT', 'Applied Materials, Inc.', 0, 'Technology', 103402000000, 1.48754, 'NMS', 'SP'),
(30, 'AMCR', 'Amcor plc', 0, 'Consumer Cyclical', 18634400000, 0.439524, 'NYQ', 'SP'),
(31, 'AMD', 'Advanced Micro Devices, Inc.', 0, 'Technology', 93901500000, 2.18418, 'NMS', 'SP'),
(32, 'AME', 'AMETEK, Inc.', 0, 'Industrials', 27812900000, 1.33532, 'NYQ', 'SP'),
(33, 'AMGN', 'Amgen Inc.', 0, 'Healthcare', 132817000000, 0.717226, 'NMS', 'SP'),
(34, 'AMP', 'Ameriprise Financial, Inc.', 0, 'Financial Services', 26094200000, 1.69718, 'NYQ', 'SP'),
(35, 'AMT', 'American Tower Corporation (REI', 0, 'Real Estate', 90841000000, 0.222101, 'NYQ', 'SP'),
(36, 'AMZN', 'Amazon.com, Inc.', 0, 'Consumer Cyclical', 1539720000000, 1.13272, 'NMS', 'SP'),
(37, 'ANET', 'Arista Networks, Inc.', 0, 'Technology', 20769100000, 1.0948, 'NYQ', 'SP'),
(38, 'ANSS', 'ANSYS, Inc.', 0, 'Technology', 26900900000, 1.21506, 'NMS', 'SP'),
(39, 'ANTM', 'Anthem, Inc.', 0, 'Healthcare', 81683500000, 1.013, 'NYQ', 'SP'),
(40, 'AON', 'Aon plc', 0, 'Financial Services', 51919800000, 0.854279, 'NYQ', 'SP'),
(41, 'AOS', 'A.O. Smith Corporation', 0, 'Industrials', 12385600000, 1.04496, 'NYQ', 'SP'),
(42, 'APA', 'Apache Corporation', 0, 'Energy', 8173130000, 5.026, 'NMS', 'SP'),
(43, 'APD', 'Air Products and Chemicals, Inc', 0, 'Basic Materials', 60103300000, 0.802816, 'NYQ', 'SP'),
(44, 'APH', 'Amphenol Corporation', 0, 'Technology', 37267300000, 1.27302, 'NYQ', 'SP'),
(45, 'APTV', 'Aptiv PLC', 0, 'Consumer Cyclical', 40150000000, 2.19718, 'NYQ', 'SP'),
(46, 'ARE', 'Alexandria Real Estate Equities', 0, 'Real Estate', 22100500000, 0.765438, 'NYQ', 'SP'),
(47, 'ATO', 'Atmos Energy Corporation', 0, 'Utilities', 11638300000, 0.363488, 'NYQ', 'SP'),
(48, 'ATVI', 'Activision Blizzard, Inc', 0, 'Communication Services', 70742800000, 0.659804, 'NMS', 'SP'),
(49, 'AVB', 'AvalonBay Communities, Inc.', 0, 'Real Estate', 25837600000, 0.983206, 'NYQ', 'SP'),
(50, 'AVGO', 'Broadcom Inc.', 0, 'Technology', 178636000000, 1.04171, 'NMS', 'SP'),
(51, 'AVY', 'Avery Dennison Corporation', 0, 'Industrials', 14964300000, 0.995666, 'NYQ', 'SP'),
(52, 'AWK', 'American Water Works Company, I', 0, 'Utilities', 24826300000, 0.207475, 'NYQ', 'SP'),
(53, 'AXP', 'American Express Company', 0, 'Financial Services', 118220000000, 1.29307, 'NYQ', 'SP'),
(54, 'AZO', 'AutoZone, Inc.', 0, 'Consumer Cyclical', 27861800000, 0.888949, 'NYQ', 'SP'),
(55, 'BA', 'Boeing Company (The)', 0, 'Industrials', 143190000000, 1.63218, 'NYQ', 'SP'),
(56, 'BAC', 'Bank of America Corporation', 0, 'Financial Services', 322400000000, 1.55471, 'NYQ', 'SP'),
(57, 'BAX', 'Baxter International Inc.', 0, 'Healthcare', 39256700000, 0.656013, 'NYQ', 'SP'),
(58, 'BBY', 'Best Buy Co., Inc.', 0, 'Consumer Cyclical', 28004900000, 1.50487, 'NYQ', 'SP'),
(59, 'BDX', 'Becton, Dickinson and Company', 0, 'Healthcare', 69121300000, 0.765438, 'NYQ', 'SP'),
(60, 'BEN', 'Franklin Resources, Inc.', 0, 'Financial Services', 14464700000, 1.29198, 'NYQ', 'SP'),
(61, 'BIIB', 'Biogen Inc.', 0, 'Healthcare', 40005000000, 0.423076, 'NMS', 'SP'),
(62, 'BIO', 'Bio-Rad Laboratories, Inc.', 0, 'Healthcare', 16885100000, 0.80065, 'NYQ', 'SP'),
(63, 'BK', 'The Bank of New York Mellon Cor', 0, 'Financial Services', 40252100000, 1.03684, 'NYQ', 'SP'),
(64, 'BKNG', 'Booking Holdings Inc. Common St', 0, 'Consumer Cyclical', 97051600000, 1.25027, 'NMS', 'SP'),
(65, 'BKR', 'Baker Hughes Company', 0, 'Energy', 25365000000, 1.80065, 'NYQ', 'SP'),
(66, 'BLK', 'BlackRock, Inc.', 0, 'Financial Services', 111194000000, 1.16468, 'NYQ', 'SP'),
(67, 'BLL', 'Ball Corporation', 0, 'Consumer Cyclical', 27945900000, 0.422535, 'NYQ', 'SP'),
(68, 'BMY', 'Bristol-Myers Squibb Company', 0, 'Healthcare', 136512000000, 0.617009, 'NYQ', 'SP'),
(69, 'BR', 'Broadridge Financial Solutions,', 0, 'Technology', 16487500000, 0.872156, 'NYQ', 'SP'),
(70, 'BWA', 'BorgWarner Inc.', 0, 'Consumer Cyclical', 11927100000, 1.63218, 'NYQ', 'SP'),
(71, 'BXP', 'Boston Properties, Inc.', 0, 'Real Estate', 16594900000, 1.26381, 'NYQ', 'SP'),
(72, 'C', 'Citigroup, Inc.', 0, 'Financial Services', 153940000000, 1.92362, 'NYQ', 'SP'),
(73, 'CAG', 'ConAgra Brands, Inc.', 0, 'Consumer Defensive', 17984600000, 0.827193, 'NYQ', 'SP'),
(74, 'CAH', 'Cardinal Health, Inc.', 0, 'Healthcare', 16495300000, 1.02871, 'NYQ', 'SP'),
(75, 'CAT', 'Caterpillar, Inc.', 0, 'Industrials', 120545000000, 0.966413, 'NYQ', 'SP'),
(76, 'CB', 'Chubb Limited', 0, 'Financial Services', 78105000000, 0.706933, 'NYQ', 'SP'),
(77, 'CBOE', 'Cboe Global Markets, Inc.', 0, 'Financial Services', 11095200000, 0.653304, 'BTS', 'SP'),
(78, 'CBRE', 'CBRE Group Inc', 0, 'Real Estate', 25777200000, 1.52383, 'NYQ', 'SP'),
(79, 'CCI', 'Crown Castle International Corp', 0, 'Real Estate', 65533500000, 0.30715, 'NYQ', 'SP'),
(80, 'CCL', 'Carnival Corporation', 0, 'Consumer Cyclical', 30885800000, 2.36836, 'NYQ', 'SP'),
(81, 'CDNS', 'Cadence Design Systems, Inc.', 0, 'Technology', 35396200000, 1.06392, 'NMS', 'SP'),
(82, 'CDW', 'CDW Corporation', 0, 'Technology', 22056600000, 1.09372, 'NMS', 'SP'),
(83, 'CE', 'Celanese Corporation Celanese C', 0, 'Basic Materials', 16847700000, 1.22968, 'NYQ', 'SP'),
(84, 'CERN', 'Cerner Corporation', 0, 'Healthcare', 21694800000, 0.716684, 'NMS', 'SP'),
(85, 'CF', 'CF Industries Holdings, Inc.', 0, 'Basic Materials', 10564500000, 1.18364, 'NYQ', 'SP'),
(86, 'CFG', 'Citizens Financial Group, Inc.', 0, 'Financial Services', 18968200000, 1.78873, 'NYQ', 'SP'),
(87, 'CHD', 'Church & Dwight Company, Inc.', 0, 'Consumer Defensive', 19888900000, 0.361863, 'NYQ', 'SP'),
(88, 'CHRW', 'C.H. Robinson Worldwide, Inc.', 0, 'Industrials', 12648200000, 0.72481, 'NMS', 'SP'),
(89, 'CHTR', 'Charter Communications, Inc.', 0, 'Communication Services', 121870000000, 1.00487, 'NMS', 'SP'),
(90, 'CI', 'Cigna Corporation', 0, 'Healthcare', 83513000000, 0.842903, 'NYQ', 'SP'),
(91, 'CINF', 'Cincinnati Financial Corporatio', 0, 'Financial Services', 17127700000, 0.637594, 'NMS', 'SP'),
(92, 'CL', 'Colgate-Palmolive Company', 0, 'Consumer Defensive', 64321100000, 0.612676, 'NYQ', 'SP'),
(93, 'CLX', 'Clorox Company (The)', 0, 'Consumer Defensive', 23809700000, 0.178223, 'NYQ', 'SP'),
(94, 'CMA', 'Comerica Incorporated', 0, 'Financial Services', 9841950000, 1.6533, 'NYQ', 'SP'),
(95, 'CMCSA', 'Comcast Corporation', 0, 'Communication Services', 262060000000, 1.04496, 'NMS', 'SP'),
(96, 'CME', 'CME Group Inc.', 0, 'Financial Services', 74185200000, 0.482123, 'NMS', 'SP'),
(97, 'CMG', 'Chipotle Mexican Grill, Inc.', 0, 'Consumer Cyclical', 39870900000, 1.30661, 'NYQ', 'SP'),
(98, 'CMI', 'Cummins Inc.', 0, 'Industrials', 40329800000, 1.13759, 'NYQ', 'SP'),
(99, 'CMS', 'CMS Energy Corporation', 0, 'Utilities', 16495800000, 0.154929, 'NYQ', 'SP'),
(100, 'CNC', 'Centene Corporation', 0, 'Healthcare', 35820300000, 0.508125, 'NYQ', 'SP'),
(101, 'CNP', 'CenterPoint Energy, Inc (Holdin', 0, 'Utilities', 11759700000, 0.963705, 'NYQ', 'SP'),
(102, 'COF', 'Capital One Financial Corporati', 0, 'Financial Services', 59485000000, 1.72806, 'NYQ', 'SP'),
(103, 'COG', 'Cabot Oil & Gas Corporation', 0, 'Energy', 7664870000, 0.222101, 'NYQ', 'SP'),
(104, 'COO', 'The Cooper Companies, Inc.', 0, 'Healthcare', 18822400000, 0.836944, 'NYQ', 'SP'),
(105, 'COP', 'ConocoPhillips', 0, 'Energy', 80498100000, 1.84399, 'NYQ', 'SP'),
(106, 'COST', 'Costco Wholesale Corporation', 0, 'Consumer Defensive', 143345000000, 0.637053, 'NMS', 'SP'),
(107, 'CPB', 'Campbell Soup Company', 0, 'Consumer Defensive', 14508100000, 0.570964, 'NYQ', 'SP'),
(108, 'CPRT', 'Copart, Inc.', 0, 'Industrials', 25680600000, 1.01788, 'NMS', 'SP'),
(109, 'CRM', 'Salesforce.com Inc', 0, 'Technology', 194523000000, 1.11159, 'NYQ', 'SP'),
(110, 'CSCO', 'Cisco Systems, Inc.', 0, 'Technology', 203870000000, 0.910075, 'NMS', 'SP'),
(111, 'CSX', 'CSX Corporation', 0, 'Industrials', 71362800000, 1.15764, 'NMS', 'SP'),
(112, 'CTAS', 'Cintas Corporation', 0, 'Industrials', 37079800000, 1.49242, 'NMS', 'SP'),
(113, 'CTLT', 'Catalent, Inc.', 0, 'Healthcare', 17541900000, 1.47833, 'NYQ', 'SP'),
(114, 'CTSH', 'Cognizant Technology Solutions ', 0, 'Technology', 40337300000, 1.17118, 'NMS', 'SP'),
(115, 'CTXS', 'Citrix Systems, Inc.', 0, 'Technology', 16204200000, 0.181473, 'NMS', 'SP'),
(116, 'CVS', 'CVS Health Corporation', 0, 'Healthcare', 95335100000, 0.812567, 'NYQ', 'SP'),
(117, 'CVX', 'Chevron Corporation', 0, 'Energy', 214541000000, 1.35103, 'NYQ', 'SP'),
(118, 'D', 'Dominion Energy, Inc.', 0, 'Utilities', 58981500000, 0.346153, 'NYQ', 'SP'),
(119, 'DAL', 'Delta Air Lines, Inc.', 0, 'Industrials', 30503400000, 1.48104, 'NYQ', 'SP'),
(120, 'DD', 'DuPont de Nemours, Inc.', 0, 'Basic Materials', 41266000000, 1.29361, 'NYQ', 'SP'),
(121, 'DE', 'Deere & Company', 0, 'Industrials', 113220000000, 1.00487, 'NYQ', 'SP'),
(122, 'DFS', 'Discover Financial Services', 0, 'Financial Services', 30549600000, 1.79361, 'NYQ', 'SP'),
(198, 'BSX', 'NULL', 0, 'NULL', 0, 0, 'NYQ', 'SP'),
(204, 'CARR', 'Carrier Global Corporation', 0, 'Industrials', 33710800000, 0, 'NYQ', 'SP'),
(245, 'CTVA', 'Corteva, Inc.', 0, 'Basic Materials', 34970900000, 0, 'NYQ', 'SP'),
(254, 'DG', 'Dollar General Corporation', 0, 'Consumer Defensive', 45949900000, 0.554712, 'NYQ', 'SP'),
(255, 'DGX', 'Quest Diagnostics Incorporated', 0, 'Healthcare', 15596900000, 1.01788, 'NYQ', 'SP'),
(256, 'DHI', 'D.R. Horton, Inc.', 0, 'Consumer Cyclical', 29856300000, 1.63001, 'NYQ', 'SP'),
(257, 'DHR', 'Danaher Corporation', 0, 'Healthcare', 151650000000, 0.62026, 'NYQ', 'SP'),
(258, 'DIS', 'Walt Disney Company (The)', 0, 'Communication Services', 354085000000, 1.20964, 'NYQ', 'SP'),
(259, 'DISCA', 'Discovery, Inc. - Series A', 0, 'Communication Services', 28962600000, 1.54117, 'NMS', 'SP'),
(260, 'DISCK', 'Discovery, Inc. - Series C', 0, 'Communication Services', 28962500000, 1.54117, 'NMS', 'SP'),
(261, 'DISH', 'DISH Network Corporation', 0, 'Communication Services', 18826400000, 2.00379, 'NMS', 'SP'),
(262, 'DLR', 'Digital Realty Trust, Inc.', 0, 'Real Estate', 38049700000, 0.12676, 'NYQ', 'SP'),
(263, 'DLTR', 'Dollar Tree, Inc.', 0, 'Consumer Defensive', 25360800000, 0.828819, 'NMS', 'SP'),
(264, 'DOV', 'Dover Corporation', 0, 'Industrials', 19115400000, 1.3169, 'NYQ', 'SP'),
(265, 'DOW', 'Dow Inc.', 0, 'Basic Materials', 47761500000, 0, 'NYQ', 'SP'),
(266, 'DPZ', 'Domino\'s Pizza Inc', 0, 'Consumer Cyclical', 13888900000, 0.416034, 'NYQ', 'SP'),
(267, 'DRE', 'Duke Realty Corporation', 0, 'Real Estate', 14733900000, 0.516251, 'NYQ', 'SP'),
(268, 'DRI', 'Darden Restaurants, Inc.', 0, 'Consumer Cyclical', 18518300000, 1.53467, 'NYQ', 'SP'),
(269, 'DTE', 'DTE Energy Company', 0, 'Utilities', 24460100000, 0.618634, 'NYQ', 'SP'),
(270, 'DUK', 'Duke Energy Corporation (Holdin', 0, 'Utilities', 69787000000, 0.237811, 'NYQ', 'SP'),
(271, 'DVA', 'DaVita Inc.', 0, 'Healthcare', 11661100000, 1.30065, 'NYQ', 'SP'),
(272, 'DVN', 'Devon Energy Corporation', 0, 'Energy', 16087100000, 3.47725, 'NYQ', 'SP'),
(273, 'DXC', 'DXC Technology Company', 0, 'Technology', 7383230000, 2.49025, 'NYQ', 'SP'),
(274, 'DXCM', 'DexCom, Inc.', 0, 'Healthcare', 34276700000, 0.777356, 'NMS', 'SP'),
(275, 'EA', 'Electronic Arts Inc.', 0, 'Communication Services', 37425900000, 0.895991, 'NMS', 'SP'),
(276, 'EBAY', 'eBay Inc.', 0, 'Consumer Cyclical', 37655900000, 1.1571, 'NMS', 'SP'),
(277, 'ECL', 'Ecolab Inc.', 0, 'Basic Materials', 62020900000, 1.00704, 'NYQ', 'SP'),
(278, 'ED', 'Consolidated Edison, Inc.', 0, 'Utilities', 24096000000, 0.151679, 'NYQ', 'SP'),
(279, 'EFX', 'Equifax, Inc.', 0, 'Industrials', 21014500000, 1.32503, 'NYQ', 'SP'),
(280, 'EIX', 'Edison International', 0, 'Utilities', 22081900000, 0.6013, 'NYQ', 'SP'),
(281, 'EL', 'Estee Lauder Companies, Inc. (T', 0, 'Consumer Defensive', 103477000000, 0.920368, 'NYQ', 'SP'),
(282, 'EMN', 'Eastman Chemical Company', 0, 'Basic Materials', 15883600000, 1.5623, 'NYQ', 'SP'),
(283, 'EMR', 'Emerson Electric Company', 0, 'Industrials', 55034800000, 1.58396, 'NYQ', 'SP'),
(284, 'ENPH', 'Enphase Energy, Inc.', 0, 'Technology', 20474900000, 1.21939, 'NGM', 'SP'),
(285, 'EOG', 'EOG Resources, Inc.', 0, 'Energy', 43831400000, 2.16143, 'NYQ', 'SP'),
(286, 'EQIX', 'Equinix, Inc.', 0, 'Real Estate', 57028200000, 0.290899, 'NMS', 'SP'),
(287, 'EQR', 'Equity Residential', 0, 'Real Estate', 26615600000, 0.768689, 'NYQ', 'SP'),
(288, 'ES', 'Eversource Energy (D/B/A)', 0, 'Utilities', 28019900000, 0.321776, 'NYQ', 'SP'),
(289, 'ESS', 'Essex Property Trust, Inc.', 0, 'Real Estate', 17722100000, 0.764897, 'NYQ', 'SP'),
(290, 'ETN', 'Eaton Corporation, PLC', 0, 'Industrials', 55435400000, 1.16414, 'NYQ', 'SP'),
(291, 'ETR', 'Entergy Corporation', 0, 'Utilities', 18933300000, 0.518959, 'NYQ', 'SP'),
(292, 'ETSY', 'Etsy, Inc.', 0, 'Consumer Cyclical', 25957300000, 1.61755, 'NMS', 'SP'),
(293, 'EVRG', 'Evergy, Inc.', 0, 'Utilities', 12924500000, 0.375406, 'NYQ', 'SP'),
(294, 'EW', 'Edwards Lifesciences Corporatio', 0, 'Healthcare', 51822600000, 1.0195, 'NYQ', 'SP'),
(295, 'EXC', 'Exelon Corporation', 0, 'Utilities', 40869500000, 0.453954, 'NMS', 'SP'),
(296, 'EXPD', 'Expeditors International of Was', 0, 'Industrials', 16506900000, 0.770314, 'NMS', 'SP'),
(297, 'EXPE', 'Expedia Group, Inc.', 0, 'Consumer Cyclical', 24108900000, 1.75027, 'NMS', 'SP'),
(298, 'EXR', 'Extra Space Storage Inc', 0, 'Real Estate', 17030000000, 0.207475, 'NYQ', 'SP'),
(299, 'F', 'Ford Motor Company', 0, 'Consumer Cyclical', 51364900000, 1.20856, 'NYQ', 'SP'),
(300, 'FANG', 'Diamondback Energy, Inc. - Comm', 0, 'Energy', 13654300000, 2.71073, 'NMS', 'SP'),
(301, 'FAST', 'Fastenal Company', 0, 'Industrials', 26505800000, 1.25189, 'NMS', 'SP'),
(302, 'FB', 'Facebook, Inc.', 0, 'Communication Services', 754348000000, 1.25352, 'NMS', 'SP'),
(303, 'FBHS', 'Fortune Brands Home & Security,', 0, 'Consumer Cyclical', 12464700000, 1.63163, 'NYQ', 'SP'),
(304, 'FCX', 'Freeport-McMoRan, Inc.', 0, 'Basic Materials', 50311600000, 2.25298, 'NYQ', 'SP'),
(305, 'FDX', 'FedEx Corporation', 0, 'Industrials', 69029800000, 1.31636, 'NYQ', 'SP'),
(306, 'FE', 'FirstEnergy Corp.', 0, 'Utilities', 18768100000, 0.225893, 'NYQ', 'SP'),
(307, 'FFIV', 'F5 Networks, Inc.', 0, 'Technology', 11818500000, 1.11213, 'NMS', 'SP'),
(308, 'FIS', 'Fidelity National Information S', 0, 'Technology', 90386700000, 0.857529, 'NYQ', 'SP'),
(309, 'FISV', 'Fiserv, Inc.', 0, 'Technology', 82919300000, 0.917659, 'NMS', 'SP'),
(310, 'FITB', 'Fifth Third Bancorp', 0, 'Financial Services', 27033900000, 1.57963, 'NMS', 'SP'),
(311, 'FLIR', 'FLIR Systems, Inc.', 0, 'Technology', 7164280000, 1.55688, 'NMS', 'SP'),
(312, 'FLS', 'Flowserve Corporation', 0, 'Industrials', 5252730000, 1.78873, 'NYQ', 'SP'),
(313, 'FLT', 'FleetCor Technologies, Inc.', 0, 'Technology', 23804500000, 1.50542, 'NYQ', 'SP'),
(314, 'FMC', 'FMC Corporation', 0, 'Basic Materials', 13756800000, 0.978873, 'NYQ', 'SP'),
(315, 'FOX', 'Fox Corporation', 0, 'Communication Services', 23716100000, 0, 'NMS', 'SP'),
(316, 'FOXA', 'Fox Corporation', 0, 'Communication Services', 23936000000, 0, 'NMS', 'SP'),
(317, 'FRC', 'FIRST REPUBLIC BANK', 0, 'Financial Services', 29741400000, 1.10888, 'NYQ', 'SP'),
(318, 'FRT', 'Federal Realty Investment Trust', 0, 'Real Estate', 8251930000, 1.14843, 'NYQ', 'SP'),
(319, 'FTNT', 'Fortinet, Inc.', 0, 'Technology', 29449400000, 1.08126, 'NMS', 'SP'),
(320, 'FTV', 'Fortive Corporation', 0, 'Technology', 23482600000, 1.22137, 'NYQ', 'SP'),
(321, 'GD', 'NULL', 0, 'NULL', 0, 0, 'NYQ', 'SP'),
(322, 'GE', 'General Electric Company', 0, 'Industrials', 116175000000, 1.10184, 'NYQ', 'SP'),
(323, 'GILD', 'Gilead Sciences, Inc.', 0, 'Healthcare', 80308700000, 0.417118, 'NMS', 'SP'),
(324, 'GIS', 'General Mills, Inc.', 0, 'Consumer Defensive', 35805700000, 0.56013, 'NYQ', 'SP'),
(325, 'GL', 'Globe Life Inc.', 0, 'Financial Services', 10446000000, 1.1338, 'NYQ', 'SP'),
(326, 'GLW', 'Corning Incorporated', 0, 'Technology', 29943300000, 1.19718, 'NYQ', 'SP'),
(327, 'GM', 'General Motors Company', 0, 'Consumer Cyclical', 81886900000, 1.35915, 'NYQ', 'SP'),
(328, 'GOOG', 'Alphabet Inc.', 0, 'Communication Services', 1381090000000, 0.999458, 'NMS', 'SP'),
(329, 'GOOGL', 'Alphabet Inc.', 0, 'Communication Services', 1376700000000, 0.999458, 'NMS', 'SP'),
(330, 'GPC', 'Genuine Parts Company', 0, 'Consumer Cyclical', 16629700000, 1.12622, 'NYQ', 'SP'),
(331, 'GPN', 'Global Payments Inc.', 0, 'Industrials', 61871100000, 1.19393, 'NYQ', 'SP'),
(332, 'GPS', 'Gap, Inc. (The)', 0, 'Consumer Cyclical', 11277000000, 1.61322, 'NYQ', 'SP'),
(333, 'GRMN', 'Garmin Ltd.', 0, 'Technology', 24308400000, 1.01408, 'NMS', 'SP'),
(334, 'GS', 'Goldman Sachs Group, Inc. (The)', 0, 'Financial Services', 118268000000, 1.48483, 'NYQ', 'SP'),
(335, 'GWW', 'W.W. Grainger, Inc.', 0, 'Industrials', 20736100000, 1.19881, 'NYQ', 'SP'),
(336, 'HAL', 'Halliburton Company', 0, 'Energy', 21451600000, 2.92687, 'NYQ', 'SP'),
(337, 'HAS', 'Hasbro, Inc.', 0, 'Consumer Cyclical', 13290200000, 0.973456, 'NMS', 'SP'),
(338, 'HBAN', 'Huntington Bancshares Incorpora', 0, 'Financial Services', 16632000000, 1.41224, 'NMS', 'SP'),
(339, 'HBI', 'Hanesbrands Inc.', 0, 'Consumer Cyclical', 6927270000, 1.46479, 'NYQ', 'SP'),
(340, 'HCA', 'HCA Healthcare, Inc.', 0, 'Healthcare', 63010600000, 1.65655, 'NYQ', 'SP'),
(341, 'HD', 'Home Depot, Inc. (The)', 0, 'Consumer Cyclical', 286634000000, 1.01083, 'NYQ', 'SP'),
(342, 'HES', 'Hess Corporation', 0, 'Energy', 21762300000, 2.26327, 'NYQ', 'SP'),
(343, 'HFC', 'HollyFrontier Corporation', 0, 'Energy', 6654140000, 1.81311, 'NYQ', 'SP'),
(344, 'HIG', 'Hartford Financial Services Gro', 0, 'Financial Services', 19559600000, 1.04442, 'NYQ', 'SP'),
(345, 'HII', 'Huntington Ingalls Industries, ', 0, 'Industrials', 7573910000, 0.964788, 'NYQ', 'SP'),
(346, 'HLT', 'Hilton Worldwide Holdings Inc.', 0, 'Consumer Cyclical', 34565000000, 1.31744, 'NYQ', 'SP'),
(347, 'HOLX', 'Hologic, Inc.', 0, 'Healthcare', 17716800000, 1.20206, 'NMS', 'SP'),
(348, 'HON', 'Honeywell International Inc.', 0, 'Industrials', 148079000000, 1.19664, 'NYQ', 'SP'),
(349, 'HPE', 'Hewlett Packard Enterprise Comp', 0, 'Technology', 19712400000, 1.38624, 'NYQ', 'SP'),
(350, 'HPQ', 'HP Inc.', 0, 'Technology', 37722100000, 1.05471, 'NYQ', 'SP'),
(351, 'HRL', 'Hormel Foods Corporation', 0, 'Consumer Defensive', 26056700000, -0.053087, 'NYQ', 'SP'),
(352, 'HSIC', 'Henry Schein, Inc.', 0, 'Healthcare', 9389800000, 0.835319, 'NMS', 'SP'),
(353, 'HST', 'Host Hotels & Resorts, Inc.', 0, 'Real Estate', 11666700000, 1.43933, 'NMS', 'SP'),
(354, 'HSY', 'The Hershey Company', 0, 'Consumer Defensive', 31623900000, 0.316359, 'NYQ', 'SP'),
(355, 'HUM', 'Humana Inc.', 0, 'Healthcare', 51992700000, 0.848862, 'NYQ', 'SP'),
(356, 'HWM', 'Howmet Aerospace Inc.', 0, 'Industrials', 13637200000, 1.75581, 'NYQ', 'SP'),
(357, 'IBM', 'International Business Machines', 0, 'Technology', 114264000000, 1.24539, 'NYQ', 'SP'),
(358, 'ICE', 'Intercontinental Exchange Inc.', 0, 'Financial Services', 64922100000, 0.704767, 'NYQ', 'SP'),
(359, 'IDXX', 'IDEXX Laboratories, Inc.', 0, 'Healthcare', 41754600000, 0.890032, 'NMS', 'SP'),
(360, 'IEX', 'IDEX Corporation', 0, 'Industrials', 15196200000, 1.09209, 'NYQ', 'SP'),
(361, 'IFF', 'Internationa Flavors & Fragranc', 0, 'Basic Materials', 33650100000, 1.00325, 'NYQ', 'SP'),
(362, 'ILMN', 'Illumina, Inc.', 0, 'Healthcare', 58279800000, 1.02221, 'NMS', 'SP'),
(363, 'INCY', 'Incyte Corporation', 0, 'Healthcare', 17224800000, 0.770314, 'NMS', 'SP'),
(364, 'INFO', 'IHS Markit Ltd.', 0, 'Industrials', 37255900000, 1.01029, 'NYQ', 'SP'),
(365, 'INTC', 'Intel Corporation', 0, 'Technology', 252922000000, 0.676056, 'NMS', 'SP'),
(366, 'INTU', 'Intuit Inc.', 0, 'Technology', 104831000000, 1.01679, 'NMS', 'SP'),
(367, 'IP', 'International Paper Company', 0, 'Consumer Cyclical', 21472000000, 1.07638, 'NYQ', 'SP'),
(368, 'IPG', 'Interpublic Group of Companies,', 0, 'Communication Services', 11400000000, 1.01842, 'NYQ', 'SP'),
(369, 'IPGP', 'IPG Photonics Corporation', 0, 'Technology', 11036500000, 1.46641, 'NMS', 'SP'),
(370, 'IQV', 'IQVIA Holdings, Inc.', 0, 'Healthcare', 36385900000, 1.3922, 'NYQ', 'SP'),
(371, 'IR', 'Ingersoll Rand Inc.', 0, 'Industrials', 20506900000, 1.55584, 'NYQ', 'SP'),
(372, 'IRM', 'Iron Mountain Incorporated (Del', 0, 'Real Estate', 10642700000, 0.840736, 'NYQ', 'SP'),
(373, 'ISRG', 'Intuitive Surgical, Inc.', 0, 'Healthcare', 84734600000, 1.00704, 'NMS', 'SP'),
(374, 'IT', 'Gartner, Inc.', 0, 'Technology', 16327400000, 1.61701, 'NYQ', 'SP'),
(375, 'ITW', 'Illinois Tool Works Inc.', 0, 'Industrials', 67759300000, 1.1078, 'NYQ', 'SP'),
(376, 'IVZ', 'Invesco Ltd', 0, 'Financial Services', 11564000000, 1.32232, 'NYQ', 'SP'),
(377, 'J', 'Jacobs Engineering Group Inc.', 0, 'Industrials', 16228200000, 0.90845, 'NYQ', 'SP'),
(378, 'JBHT', 'J.B. Hunt Transport Services, I', 0, 'Industrials', 16595700000, 1.03359, 'NMS', 'SP'),
(379, 'JCI', 'Johnson Controls International ', 0, 'Industrials', 43267500000, 1.1143, 'NYQ', 'SP'),
(380, 'JKHY', 'Jack Henry & Associates, Inc.', 0, 'Technology', 11371300000, 0.573672, 'NMS', 'SP'),
(381, 'JNJ', 'Johnson & Johnson', 0, 'Healthcare', 418354000000, 0.711267, 'NYQ', 'SP'),
(382, 'JNPR', 'Juniper Networks, Inc.', 0, 'Technology', 8102570000, 0.821235, 'NYQ', 'SP'),
(383, 'JPM', 'JP Morgan Chase & Co.', 0, 'Financial Services', 473381000000, 1.20152, 'NYQ', 'SP'),
(384, 'K', 'Kellogg Company', 0, 'Consumer Defensive', 20329400000, 0.639761, 'NYQ', 'SP'),
(385, 'KEY', 'KeyCorp', 0, 'Financial Services', 20500100000, 1.54659, 'NYQ', 'SP'),
(386, 'KEYS', 'Keysight Technologies Inc.', 0, 'Technology', 25161300000, 0.954496, 'NYQ', 'SP'),
(387, 'KHC', 'The Kraft Heinz Company', 0, 'Consumer Defensive', 48327800000, 1.10076, 'NMS', 'SP'),
(388, 'KIM', 'Kimco Realty Corporation', 0, 'Real Estate', 8320150000, 1.50758, 'NYQ', 'SP'),
(389, 'KLAC', 'KLA Corporation', 0, 'Technology', 43672600000, 1.26544, 'NMS', 'SP'),
(390, 'KMB', 'Kimberly-Clark Corporation', 0, 'Consumer Defensive', 45441700000, 0.535752, 'NYQ', 'SP'),
(391, 'KMI', 'Kinder Morgan, Inc.', 0, 'Energy', 36774700000, 1.0753, 'NYQ', 'SP'),
(392, 'KMX', 'CarMax Inc', 0, 'Consumer Cyclical', 21707400000, 1.65926, 'NYQ', 'SP'),
(393, 'KO', 'Coca-Cola Company (The)', 0, 'Consumer Defensive', 221671000000, 0.624593, 'NYQ', 'SP'),
(394, 'KR', 'Kroger Company (The)', 0, 'Consumer Defensive', 26676700000, 0.304983, 'NYQ', 'SP'),
(395, 'KSU', 'Kansas City Southern', 0, 'Industrials', 19465100000, 1.00812, 'NYQ', 'SP'),
(396, 'L', 'Loews Corporation', 0, 'Financial Services', 13485900000, 0.903575, 'NYQ', 'SP'),
(397, 'LB', 'L Brands, Inc.', 0, 'Consumer Cyclical', 15226500000, 1.74052, 'NYQ', 'SP'),
(398, 'LDOS', 'Leidos Holdings, Inc.', 0, 'Technology', 13404800000, 0.973456, 'NYQ', 'SP'),
(399, 'LEG', 'Leggett & Platt, Incorporated', 0, 'Consumer Cyclical', 6558920000, 1.50162, 'NYQ', 'SP'),
(400, 'LEN', 'Lennar Corporation', 0, 'Consumer Cyclical', 27933200000, 1.50054, 'NYQ', 'SP'),
(401, 'LH', 'Laboratory Corporation of Ameri', 0, 'Healthcare', 22703700000, 1.04063, 'NYQ', 'SP'),
(402, 'LHX', 'L3Harris Technologies, Inc.', 0, 'Industrials', 39261100000, 0.746466, 'NYQ', 'SP'),
(403, 'LIN', 'Linde plc', 0, 'Basic Materials', 138886000000, 0.809317, 'NYQ', 'SP'),
(404, 'LKQ', 'LKQ Corporation', 0, 'Consumer Cyclical', 12942300000, 1.68851, 'NMS', 'SP'),
(405, 'LLY', 'Eli Lilly and Company', 0, 'Healthcare', 196909000000, 0.277356, 'NYQ', 'SP'),
(406, 'LMT', 'Lockheed Martin Corporation', 0, 'Industrials', 95470300000, 0.945287, 'NYQ', 'SP'),
(407, 'LNC', 'Lincoln National Corporation', 0, 'Financial Services', 11809300000, 2.23023, 'NYQ', 'SP'),
(408, 'LNT', 'Alliant Energy Corporation', 0, 'Utilities', 12591500000, 0.325568, 'NMS', 'SP'),
(409, 'LOW', 'Lowe\'s Companies, Inc.', 0, 'Consumer Cyclical', 123144000000, 1.33586, 'NYQ', 'SP'),
(410, 'LRCX', 'Lam Research Corporation', 0, 'Technology', 74126400000, 1.32557, 'NMS', 'SP'),
(411, 'LUMN', 'Lumen Technologies, Inc.', 0, 'Communication Services', 15224300000, 1.10022, 'NYQ', 'SP'),
(412, 'LUV', 'Southwest Airlines Company', 0, 'Industrials', 34560600000, 1.25894, 'NYQ', 'SP'),
(413, 'LVS', 'Las Vegas Sands Corp.', 0, 'Consumer Cyclical', 47373500000, 1.50867, 'NYQ', 'SP'),
(414, 'LW', 'Lamb Weston Holdings, Inc.', 0, 'Consumer Defensive', 11809400000, 0.798934, 'NYQ', 'SP'),
(415, 'LYB', 'LyondellBasell Industries NV', 0, 'Basic Materials', 36387100000, 1.57313, 'NYQ', 'SP'),
(416, 'LYV', 'Live Nation Entertainment, Inc.', 0, 'Communication Services', 19225200000, 1.4182, 'NYQ', 'SP'),
(417, 'MA', 'Mastercard Incorporated', 0, 'Financial Services', 379166000000, 1.19502, 'NYQ', 'SP'),
(418, 'MAA', 'Mid-America Apartment Communiti', 0, 'Real Estate', 15423100000, 0.670097, 'NYQ', 'SP'),
(419, 'MAR', 'Marriott International', 0, 'Consumer Cyclical', 47734300000, 1.90195, 'NMS', 'SP'),
(420, 'MAS', 'Masco Corporation', 0, 'Industrials', 14613400000, 1.34236, 'NYQ', 'SP'),
(421, 'MCD', 'McDonald\'s Corporation', 0, 'Consumer Cyclical', 159038000000, 0.617009, 'NYQ', 'SP'),
(422, 'MCHP', 'Microchip Technology Incorporat', 0, 'Technology', 38052100000, 1.72102, 'NMS', 'SP'),
(423, 'MCK', 'McKesson Corporation', 0, 'Healthcare', 29208700000, 0.851029, 'NYQ', 'SP'),
(424, 'MCO', 'Moody\'s Corporation', 0, 'Financial Services', 54470400000, 1.15493, 'NYQ', 'SP'),
(425, 'MDLZ', 'Mondelez International, Inc.', 0, 'Consumer Defensive', 80516900000, 0.617009, 'NMS', 'SP'),
(426, 'MDT', 'Medtronic plc.', 0, 'Healthcare', 159962000000, 0.737811, 'NYQ', 'SP'),
(427, 'MET', 'MetLife, Inc.', 0, 'Financial Services', 53488500000, 1.35428, 'NYQ', 'SP'),
(428, 'MGM', 'MGM Resorts International', 0, 'Consumer Cyclical', 18616400000, 2.48754, 'NYQ', 'SP'),
(429, 'MHK', 'Mohawk Industries, Inc.', 0, 'Consumer Cyclical', 12991200000, 1.54604, 'NYQ', 'SP'),
(430, 'MKC', 'McCormick & Company, Incorporat', 0, 'Consumer Defensive', 22935300000, 0.472914, 'NYQ', 'SP'),
(431, 'MKTX', 'MarketAxess Holdings, Inc.', 0, 'Financial Services', 19635900000, 0.441495, 'NMS', 'SP'),
(432, 'MLM', 'Martin Marietta Materials, Inc.', 0, 'Basic Materials', 21231100000, 0.687973, 'NYQ', 'SP'),
(433, 'MMC', 'Marsh & McLennan Companies, Inc', 0, 'Financial Services', 59635700000, 0.877573, 'NYQ', 'SP'),
(434, 'MMM', '3M Company', 0, 'Industrials', 106850000000, 0.947453, 'NYQ', 'SP'),
(435, 'MNST', 'Monster Beverage Corporation', 0, 'Consumer Defensive', 47215400000, 1.08776, 'NMS', 'SP'),
(436, 'MO', 'Altria Group, Inc.', 0, 'Consumer Defensive', 89588900000, 0.629469, 'NYQ', 'SP'),
(437, 'MOS', 'Mosaic Company (The)', 0, 'Basic Materials', 12532800000, 1.79686, 'NYQ', 'SP'),
(438, 'MPC', 'Marathon Petroleum Corporation', 0, 'Energy', 37891200000, 2.17768, 'NYQ', 'SP'),
(439, 'MPWR', 'Monolithic Power Systems, Inc.', 0, 'Technology', 14754300000, 0.944203, 'NMS', 'SP'),
(440, 'MRK', 'Merck & Company, Inc.', 0, 'Healthcare', 189167000000, 0.432827, 'NYQ', 'SP'),
(441, 'MRO', 'Marathon Oil Corporation', 0, 'Energy', 9642510000, 3.36078, 'NYQ', 'SP'),
(442, 'MS', 'Morgan Stanley', 0, 'Financial Services', 156245000000, 1.52708, 'NYQ', 'SP'),
(443, 'MSCI', 'MSCI Inc', 0, 'Financial Services', 33840700000, 0.921993, 'NYQ', 'SP'),
(444, 'MSFT', 'Microsoft Corporation', 0, 'Technology', 1752960000000, 0.812567, 'NMS', 'SP'),
(445, 'MSI', 'Motorola Solutions, Inc.', 0, 'Technology', 30046400000, 0.765438, 'NYQ', 'SP'),
(446, 'MTB', 'M&T Bank Corporation', 0, 'Financial Services', 20145400000, 1.20856, 'NYQ', 'SP'),
(447, 'MTD', 'Mettler-Toledo International, I', 0, 'Healthcare', 24695400000, 1.00162, 'NYQ', 'SP'),
(448, 'MU', 'Micron Technology, Inc.', 0, 'Technology', 95545600000, 1.2649, 'NMS', 'SP'),
(449, 'MXIM', 'Maxim Integrated Products, Inc.', 0, 'Technology', 23292800000, 1.24485, 'NMS', 'SP'),
(450, 'NCLH', 'Norwegian Cruise Line Holdings ', 0, 'Consumer Cyclical', 10732500000, 2.90357, 'NYQ', 'SP'),
(451, 'NDAQ', 'Nasdaq, Inc.', 0, 'Financial Services', 23821300000, 0.834236, 'NMS', 'SP'),
(452, 'NEE', 'NextEra Energy, Inc.', 0, 'Utilities', 145932000000, 0.177139, 'NYQ', 'SP'),
(453, 'NEM', 'Newmont Corporation', 0, 'Basic Materials', 46562300000, 0.234019, 'NYQ', 'SP'),
(454, 'NFLX', 'Netflix, Inc.', 0, 'Communication Services', 223458000000, 0.828277, 'NMS', 'SP'),
(455, 'NI', 'NiSource Inc', 0, 'Utilities', 8671860000, 0.300108, 'NYQ', 'SP'),
(456, 'NKE', 'Nike, Inc.', 0, 'Consumer Cyclical', 216909000000, 0.86078, 'NYQ', 'SP'),
(457, 'NLOK', 'NortonLifeLock Inc.', 0, 'Technology', 12225700000, 1.01788, 'NMS', 'SP'),
(458, 'NLSN', 'Nielsen N.V.', 0, 'Industrials', 9295440000, 1.4377, 'NYQ', 'SP'),
(459, 'NOC', 'Northrop Grumman Corporation', 0, 'Industrials', 50015400000, 0.776814, 'NYQ', 'SP'),
(460, 'NOV', 'NOV Inc.', 0, 'Energy', 6506420000, 2.31257, 'NYQ', 'SP'),
(461, 'NOW', 'ServiceNow, Inc.', 0, 'Technology', 92951400000, 0.985373, 'NYQ', 'SP'),
(462, 'NRG', 'NRG Energy, Inc.', 0, 'Utilities', 9968590000, 0.920368, 'NYQ', 'SP'),
(463, 'NSC', 'Norfolk Southern Corporation', 0, 'Industrials', 65318300000, 1.32286, 'NYQ', 'SP'),
(464, 'NTAP', 'NetApp, Inc.', 0, 'Technology', 14838600000, 1.27356, 'NMS', 'SP'),
(465, 'NTRS', 'Northern Trust Corporation', 0, 'Financial Services', 21118900000, 1.09317, 'NMS', 'SP'),
(466, 'NUE', 'Nucor Corporation', 0, 'Basic Materials', 20106200000, 1.40682, 'NYQ', 'SP'),
(467, 'NVDA', 'NVIDIA Corporation', 0, 'Technology', 309213000000, 1.41224, 'NMS', 'SP'),
(468, 'NVR', 'NVR, Inc.', 0, 'Consumer Cyclical', 17582800000, 1.00596, 'NYQ', 'SP'),
(469, 'NWL', 'Newell Brands Inc.', 0, 'Consumer Defensive', 10738100000, 0.986457, 'NMS', 'SP'),
(470, 'NWS', 'News Corporation', 0, 'Communication Services', 14816400000, 1.63814, 'NMS', 'SP'),
(471, 'NWSA', 'News Corporation', 0, 'Communication Services', 14860000000, 1.63814, 'NMS', 'SP'),
(472, 'O', 'Realty Income Corporation', 0, 'Real Estate', 22933700000, 0.72156, 'NYQ', 'SP'),
(473, 'ODFL', 'Old Dominion Freight Line, Inc.', 0, 'Industrials', 26419600000, 1.00812, 'NMS', 'SP'),
(474, 'OKE', 'ONEOK, Inc.', 0, 'Energy', 22671900000, 2.00975, 'NYQ', 'SP'),
(475, 'OMC', 'Omnicom Group Inc.', 0, 'Communication Services', 16463600000, 0.916576, 'NYQ', 'SP'),
(476, 'ORCL', 'Oracle Corporation', 0, 'Technology', 212323000000, 0.787648, 'NYQ', 'SP'),
(477, 'ORLY', 'O\'Reilly Automotive, Inc.', 0, 'Consumer Cyclical', 33271000000, 1.04225, 'NMS', 'SP'),
(478, 'OTIS', 'Otis Worldwide Corporation', 0, 'Industrials', 28730700000, 0, 'NYQ', 'SP'),
(479, 'OXY', 'Occidental Petroleum Corporatio', 0, 'Energy', 27350500000, 2.47941, 'NYQ', 'SP'),
(480, 'PAYC', 'Paycom Software, Inc.', 0, 'Technology', 22735600000, 1.42524, 'NYQ', 'SP'),
(481, 'PAYX', 'Paychex, Inc.', 0, 'Industrials', 34151800000, 0.896533, 'NMS', 'SP'),
(482, 'PBCT', 'People\'s', 0, 'Financial Services', 7859450000, 1.25244, 'NMS', 'SP'),
(483, 'PCAR', 'PACCAR Inc.', 0, 'Industrials', 33510600000, 1.0623, 'NMS', 'SP'),
(484, 'PEAK', 'Healthpeak Properties, Inc.', 0, 'Real Estate', 16575400000, 0.66143, 'NYQ', 'SP'),
(485, 'PEG', 'Public Service Enterprise Group', 0, 'Utilities', 29164100000, 0.56013, 'NYQ', 'SP'),
(486, 'PEP', 'Pepsico, Inc.', 0, 'Consumer Defensive', 184288000000, 0.600216, 'NMS', 'SP'),
(487, 'PFE', 'Pfizer, Inc.', 0, 'Healthcare', 194827000000, 0.617551, 'NYQ', 'SP'),
(488, 'PFG', 'Principal Financial Group Inc', 0, 'Financial Services', 16703100000, 1.62026, 'NMS', 'SP'),
(489, 'PG', 'Procter & Gamble Company (The)', 0, 'Consumer Defensive', 313572000000, 0.406825, 'NYQ', 'SP'),
(490, 'PGR', 'Progressive Corporation (The)', 0, 'Financial Services', 54017700000, 0.473456, 'NYQ', 'SP'),
(491, 'PH', 'Parker-Hannifin Corporation', 0, 'Industrials', 39537500000, 1.7974, 'NYQ', 'SP'),
(492, 'PHM', 'PulteGroup, Inc.', 0, 'Consumer Cyclical', 12983600000, 1.40737, 'NYQ', 'SP'),
(493, 'PKG', 'Packaging Corporation of Americ', 0, 'Consumer Cyclical', 13354700000, 0.990249, 'NYQ', 'SP'),
(494, 'PKI', 'PerkinElmer, Inc.', 0, 'Healthcare', 13486700000, 1.12947, 'NYQ', 'SP'),
(495, 'PLD', 'Prologis, Inc.', 0, 'Real Estate', 72263900000, 0.767063, 'NYQ', 'SP'),
(496, 'PM', 'Philip Morris International Inc', 0, 'Consumer Defensive', 135124000000, 0.846153, 'NYQ', 'SP'),
(497, 'PNC', 'PNC Financial Services Group, I', 0, 'Financial Services', 75382300000, 1.36728, 'NYQ', 'SP'),
(498, 'PNR', 'Pentair plc.', 0, 'Industrials', 9952220000, 1.16251, 'NYQ', 'SP'),
(499, 'PNW', 'Pinnacle West Capital Corporati', 0, 'Utilities', 8841810000, 0.279523, 'NYQ', 'SP'),
(500, 'POOL', 'Pool Corporation', 0, 'Consumer Cyclical', 13806700000, 0.745937, 'NMS', 'SP'),
(501, 'PPG', 'PPG Industries, Inc.', 0, 'Basic Materials', 35181700000, 1.13163, 'NYQ', 'SP'),
(502, 'PPL', 'PPL Corporation', 0, 'Utilities', 21116300000, 0.783315, 'NYQ', 'SP'),
(503, 'PRGO', 'Perrigo Company plc', 0, 'Healthcare', 5539460000, 1.20747, 'NYQ', 'SP'),
(504, 'PRU', 'Prudential Financial, Inc.', 0, 'Financial Services', 36841600000, 1.68093, 'NYQ', 'SP'),
(505, 'PSA', 'Public Storage', 0, 'Real Estate', 41921600000, 0.100758, 'NYQ', 'SP'),
(506, 'PSX', 'Phillips 66', 0, 'Energy', 38641700000, 1.73131, 'NYQ', 'SP'),
(507, 'PVH', 'PVH Corp.', 0, 'Consumer Cyclical', 7491120000, 2.45395, 'NYQ', 'SP'),
(508, 'PWR', 'Quanta Services, Inc.', 0, 'Industrials', 11828800000, 1.26273, 'NYQ', 'SP'),
(509, 'PXD', 'Pioneer Natural Resources Compa', 0, 'Energy', 34327900000, 1.99404, 'NYQ', 'SP'),
(510, 'PYPL', 'PayPal Holdings, Inc.', 0, 'Financial Services', 283508000000, 1.15059, 'NMS', 'SP'),
(511, 'QCOM', 'QUALCOMM Incorporated', 0, 'Technology', 145260000000, 1.33532, 'NMS', 'SP'),
(512, 'QRVO', 'Qorvo, Inc.', 0, 'Technology', 18730300000, 1.43283, 'NMS', 'SP'),
(513, 'RCL', 'D/B/A Royal Caribbean Cruises L', 0, 'Consumer Cyclical', 22228100000, 2.91874, 'NYQ', 'SP'),
(514, 'RE', 'Everest Re Group, Ltd.', 0, 'Financial Services', 10006700000, 0.633802, 'NYQ', 'SP'),
(515, 'REG', 'Regency Centers Corporation', 0, 'Real Estate', 10130300000, 1.10401, 'NMS', 'SP'),
(516, 'REGN', 'Regeneron Pharmaceuticals, Inc.', 0, 'Healthcare', 50132400000, 0.141928, 'NMS', 'SP'),
(517, 'RF', 'Regions Financial Corporation', 0, 'Financial Services', 20664100000, 1.55417, 'NYQ', 'SP'),
(518, 'RHI', 'Robert Half International Inc.', 0, 'Industrials', 8655190000, 1.63489, 'NYQ', 'SP'),
(519, 'RJF', 'Raymond James Financial, Inc.', 0, 'Financial Services', 16171400000, 1.25406, 'NYQ', 'SP'),
(520, 'RL', 'Ralph Lauren Corporation', 0, 'Consumer Cyclical', 8965050000, 1.51246, 'NYQ', 'SP'),
(521, 'RMD', 'ResMed Inc.', 0, 'Healthcare', 26975900000, 0.313651, 'NYQ', 'SP'),
(522, 'ROK', 'Rockwell Automation, Inc.', 0, 'Industrials', 30625400000, 1.37432, 'NYQ', 'SP'),
(523, 'ROL', 'Rollins, Inc.', 0, 'Consumer Cyclical', 16373600000, 0.460455, 'NYQ', 'SP'),
(524, 'ROP', 'Roper Technologies, Inc.', 0, 'Industrials', 40513100000, 1.01679, 'NYQ', 'SP'),
(525, 'ROST', 'Ross Stores, Inc.', 0, 'Consumer Cyclical', 43335200000, 1.02275, 'NMS', 'SP'),
(526, 'RSG', 'Republic Services, Inc.', 0, 'Industrials', 30566400000, 0.672806, 'NYQ', 'SP'),
(527, 'RTX', 'Raytheon Technologies Corporati', 0, 'Industrials', 116331000000, 1.02817, 'NYQ', 'SP'),
(528, 'SBAC', 'SBA Communications Corporation', 0, 'Real Estate', 27312300000, 0.170097, 'NMS', 'SP'),
(529, 'SBUX', 'Starbucks Corporation', 0, 'Consumer Cyclical', 126889000000, 0.87053, 'NMS', 'SP'),
(530, 'SCHW', 'Charles Schwab Corporation (The', 0, 'Financial Services', 122409000000, 1.09426, 'NYQ', 'SP'),
(531, 'SEE', 'Sealed Air Corporation', 0, 'Consumer Cyclical', 7257960000, 1.24106, 'NYQ', 'SP'),
(532, 'SHW', 'Sherwin-Williams Company (The)', 0, 'Basic Materials', 63267900000, 1.04117, 'NYQ', 'SP'),
(533, 'SIVB', 'SVB Financial Group', 0, 'Financial Services', 27502400000, 2.08613, 'NMS', 'SP'),
(534, 'SJM', 'J.M. Smucker Company (The) New', 0, 'Consumer Defensive', 13267600000, 0.286023, 'NYQ', 'SP'),
(535, 'SLB', 'Schlumberger N.V.', 0, 'Energy', 41878200000, 2.42145, 'NYQ', 'SP'),
(536, 'SLG', 'SL Green Realty Corp', 0, 'Real Estate', 5161780000, 1.65547, 'NYQ', 'SP'),
(537, 'SNA', 'Snap-On Incorporated', 0, 'Industrials', 11864500000, 1.28223, 'NYQ', 'SP'),
(538, 'SNPS', 'Synopsys, Inc.', 0, 'Technology', 34869000000, 1.07963, 'NMS', 'SP'),
(539, 'SO', 'Southern Company (The)', 0, 'Utilities', 63164100000, 0.425243, 'NYQ', 'SP'),
(540, 'SPG', 'Simon Property Group, Inc.', 0, 'Real Estate', 37550900000, 1.56338, 'NYQ', 'SP'),
(541, 'SPGI', 'S&P Global Inc.', 0, 'Financial Services', 82885100000, 0.952329, 'NYQ', 'SP'),
(542, 'SRE', 'Sempra Energy', 0, 'Utilities', 38274700000, 0.637053, 'NYQ', 'SP'),
(543, 'STE', 'STERIS plc (Ireland)', 0, 'Healthcare', 15362600000, 0.535211, 'NYQ', 'SP'),
(544, 'STT', 'State Street Corporation', 0, 'Financial Services', 29282700000, 1.58288, 'NYQ', 'SP'),
(545, 'STX', 'Seagate Technology PLC', 0, 'Technology', 17348600000, 1.16847, 'NMS', 'SP'),
(546, 'STZ', 'Constellation Brands, Inc.', 0, 'Consumer Defensive', 43652500000, 1.18689, 'NYQ', 'SP'),
(547, 'SWK', 'Stanley Black & Decker, Inc.', 0, 'Industrials', 30754700000, 1.44366, 'NYQ', 'SP'),
(548, 'SWKS', 'Skyworks Solutions, Inc.', 0, 'Technology', 27647100000, 1.16251, 'NMS', 'SP'),
(549, 'SYF', 'Synchrony Financial', 0, 'Financial Services', 24295300000, 1.82178, 'NYQ', 'SP'),
(550, 'SYK', 'Stryker Corporation', 0, 'Healthcare', 90318300000, 0.969122, 'NYQ', 'SP'),
(551, 'SYY', 'Sysco Corporation', 0, 'Consumer Defensive', 41460800000, 1.42308, 'NYQ', 'SP'),
(552, 'T', 'AT&T Inc.', 0, 'Communication Services', 213881000000, 0.730769, 'NYQ', 'SP'),
(553, 'TAP', 'Molson Coors Beverage Company', 0, 'Consumer Defensive', 10170300000, 1.13218, 'NYQ', 'SP'),
(554, 'TDG', 'Transdigm Group Incorporated Tr', 0, 'Industrials', 32778900000, 1.67118, 'NYQ', 'SP'),
(555, 'TDY', 'Teledyne Technologies Incorpora', 0, 'Technology', 14445700000, 1.07367, 'NYQ', 'SP'),
(556, 'TEL', 'TE Connectivity Ltd. New Switze', 0, 'Technology', 43045300000, 1.38407, 'NYQ', 'SP'),
(557, 'TER', 'Teradyne, Inc.', 0, 'Technology', 18154800000, 1.36511, 'NMS', 'SP'),
(558, 'TFC', 'Truist Financial Corporation', 0, 'Financial Services', 79215400000, 1.33532, 'NYQ', 'SP'),
(559, 'TFX', 'Teleflex Incorporated', 0, 'Healthcare', 19545300000, 1.20747, 'NYQ', 'SP'),
(560, 'TGT', 'Target Corporation', 0, 'Consumer Defensive', 89446600000, 0.994041, 'NYQ', 'SP'),
(561, 'TJX', 'TJX Companies, Inc. (The)', 0, 'Consumer Cyclical', 78761300000, 0.983748, 'NYQ', 'SP'),
(562, 'TMO', 'Thermo Fisher Scientific Inc', 0, 'Healthcare', 173698000000, 0.793066, 'NYQ', 'SP'),
(563, 'TMUS', 'T-Mobile US, Inc.', 0, 'Communication Services', 158345000000, 0.561213, 'NMS', 'SP'),
(564, 'TPR', 'Tapestry, Inc.', 0, 'Consumer Cyclical', 11938700000, 1.51408, 'NYQ', 'SP'),
(565, 'TRMB', 'Trimble Inc.', 0, 'Technology', 17786600000, 1.52654, 'NMS', 'SP'),
(566, 'TROW', 'T. Rowe Price Group, Inc.', 0, 'Financial Services', 40029600000, 1.17335, 'NMS', 'SP'),
(567, 'TRV', 'The Travelers Companies, Inc.', 0, 'Financial Services', 39189000000, 0.782231, 'NYQ', 'SP'),
(568, 'TSCO', 'Tractor Supply Company', 0, 'Consumer Cyclical', 19479400000, 1.00812, 'NMS', 'SP'),
(569, 'TSLA', 'Tesla, Inc.', 0, 'Consumer Cyclical', 641240000000, 2.06013, 'NMS', 'SP'),
(570, 'TSN', 'Tyson Foods, Inc.', 0, 'Consumer Defensive', 27008500000, 0.808775, 'NYQ', 'SP'),
(571, 'TT', 'Trane Technologies plc', 0, 'Industrials', 38966400000, 1.24106, 'NYQ', 'SP'),
(572, 'TTWO', 'Take-Two Interactive Software, ', 0, 'Communication Services', 18983600000, 0.617551, 'NMS', 'SP'),
(573, 'TWTR', 'Twitter, Inc.', 0, 'Communication Services', 51744300000, 0.810942, 'NYQ', 'SP'),
(574, 'TXN', 'Texas Instruments Incorporated', 0, 'Technology', 156376000000, 1.06284, 'NMS', 'SP'),
(575, 'TXT', 'Textron Inc.', 0, 'Industrials', 11970300000, 1.7416, 'NYQ', 'SP'),
(576, 'TYL', 'Tyler Technologies, Inc.', 0, 'Technology', 16264000000, 0.608342, 'NYQ', 'SP'),
(577, 'UA', 'Under Armour, Inc.', 0, 'Consumer Cyclical', 9414270000, 1.22373, 'NYQ', 'SP'),
(578, 'UAA', 'Under Armour, Inc.', 0, 'Consumer Cyclical', 9393590000, 1.22373, 'NYQ', 'SP'),
(579, 'UAL', 'United Continental Holdings, In', 0, 'Industrials', 17172200000, 1.66143, 'NMS', 'SP'),
(580, 'UDR', 'UDR, Inc.', 0, 'Real Estate', 12864200000, 0.756229, 'NYQ', 'SP'),
(581, 'UHS', 'Universal Health Services, Inc.', 0, 'Healthcare', 11367700000, 1.20585, 'NYQ', 'SP'),
(582, 'ULTA', 'Ulta Beauty, Inc.', 0, 'Consumer Cyclical', 19332000000, 1.77085, 'NMS', 'SP'),
(583, 'UNH', 'UnitedHealth Group Incorporated', 0, 'Healthcare', 330484000000, 0.757313, 'NYQ', 'SP'),
(584, 'UNM', 'Unum Group', 0, 'Financial Services', 5971360000, 1.74539, 'NYQ', 'SP'),
(585, 'UNP', 'Union Pacific Corporation', 0, 'Industrials', 142754000000, 1.10888, 'NYQ', 'SP'),
(586, 'UPS', 'United Parcel Service, Inc.', 0, 'Industrials', 143261000000, 1.00921, 'NYQ', 'SP'),
(587, 'URI', 'United Rentals, Inc.', 0, 'Industrials', 21880700000, 2.13543, 'NYQ', 'SP'),
(588, 'USB', 'U.S. Bancorp', 0, 'Financial Services', 80785100000, 1.13922, 'NYQ', 'SP'),
(589, 'V', 'Visa Inc.', 0, 'Financial Services', 492056000000, 0.984832, 'NYQ', 'SP'),
(590, 'VAR', 'Varian Medical Systems, Inc.', 0, 'Healthcare', 16164500000, 1.05634, 'NYQ', 'SP'),
(591, 'VFC', 'V.F. Corporation', 0, 'Consumer Cyclical', 31207900000, 0.973992, 'NYQ', 'SP'),
(592, 'VIAC', 'ViacomCBS Inc.', 0, 'Communication Services', 51356400000, 1.84669, 'NMS', 'SP'),
(593, 'VLO', 'Valero Energy Corporation', 0, 'Energy', 33244800000, 2.19664, 'NYQ', 'SP'),
(594, 'VMC', 'Vulcan Materials Company (Holdi', 0, 'Basic Materials', 22710600000, 0.597508, 'NYQ', 'SP'),
(595, 'VNO', 'Vornado Realty Trust', 0, 'Real Estate', 8999430000, 1.40791, 'NYQ', 'SP'),
(596, 'VNT', 'Vontier Corporation', 0, 'Technology', 5214840000, 0, 'NYQ', 'SP'),
(597, 'VRSK', 'Verisk Analytics, Inc.', 0, 'Industrials', 28465800000, 0.780606, 'NMS', 'SP'),
(598, 'VRSN', 'VeriSign, Inc.', 0, 'Technology', 21499400000, 0.797399, 'NMS', 'SP'),
(599, 'VRTX', 'Vertex Pharmaceuticals Incorpor', 0, 'Healthcare', 55706800000, 0.625677, 'NMS', 'SP'),
(600, 'VTR', 'Ventas, Inc.', 0, 'Real Estate', 21419300000, 1.34074, 'NYQ', 'SP'),
(601, 'VTRS', 'Viatris Inc.', 0, 'Healthcare', 16971500000, 1.56013, 'NMS', 'SP'),
(602, 'VZ', 'Verizon Communications Inc.', 0, 'Communication Services', 236206000000, 0.472372, 'NYQ', 'SP'),
(603, 'WAB', 'Westinghouse Air Brake Technolo', 0, 'Industrials', 14403300000, 1.67226, 'NYQ', 'SP'),
(604, 'WAT', 'Waters Corporation', 0, 'Healthcare', 16976100000, 0.825027, 'NYQ', 'SP'),
(605, 'WBA', 'Walgreens Boots Alliance, Inc.', 0, 'Healthcare', 43651400000, 0.462621, 'NMS', 'SP'),
(606, 'WDC', 'Western Digital Corporation', 0, 'Technology', 20379900000, 1.64464, 'NMS', 'SP'),
(607, 'WEC', 'WEC Energy Group, Inc.', 0, 'Utilities', 27512200000, 0.152762, 'NYQ', 'SP'),
(608, 'WELL', 'Welltower Inc.', 0, 'Real Estate', 30873800000, 1.04009, 'NYQ', 'SP'),
(609, 'WFC', 'Wells Fargo & Company', 0, 'Financial Services', 163628000000, 1.29144, 'NYQ', 'SP'),
(610, 'WHR', 'Whirlpool Corporation', 0, 'Consumer Cyclical', 12848700000, 1.88895, 'NYQ', 'SP'),
(611, 'WLTW', 'Willis Towers Watson Public Lim', 0, 'Financial Services', 28919200000, 0.777356, 'NMS', 'SP'),
(612, 'WM', 'Waste Management, Inc.', 0, 'Industrials', 51493500000, 0.761646, 'NYQ', 'SP'),
(613, 'WMB', 'Williams Companies, Inc. (The)', 0, 'Energy', 29616500000, 1.49946, 'NYQ', 'SP'),
(614, 'WMT', 'Walmart Inc.', 0, 'Consumer Defensive', 373976000000, 0.471289, 'NYQ', 'SP'),
(615, 'WRB', 'W.R. Berkley Corporation', 0, 'Financial Services', 13479500000, 0.826652, 'NYQ', 'SP'),
(616, 'WRK', 'Westrock Company', 0, 'Consumer Cyclical', 13890000000, 1.26273, 'NYQ', 'SP'),
(617, 'WST', 'West Pharmaceutical Services, I', 0, 'Healthcare', 19839600000, 0.98754, 'NYQ', 'SP'),
(618, 'WU', 'Western Union Company (The)', 0, 'Financial Services', 10108700000, 1.00325, 'NYQ', 'SP'),
(619, 'WY', 'Weyerhaeuser Company', 0, 'Real Estate', 26575700000, 1.91658, 'NYQ', 'SP'),
(620, 'WYNN', 'Wynn Resorts, Limited', 0, 'Consumer Cyclical', 15589500000, 2.5325, 'NMS', 'SP'),
(621, 'XEL', 'Xcel Energy Inc.', 0, 'Utilities', 33431000000, 0.271939, 'NMS', 'SP'),
(622, 'XLNX', 'Xilinx, Inc.', 0, 'Technology', 29181400000, 1.0195, 'NMS', 'SP'),
(623, 'XOM', 'Exxon Mobil Corporation', 0, 'Energy', 261502000000, 1.40249, 'NYQ', 'SP'),
(624, 'XRAY', 'DENTSPLY SIRONA Inc.', 0, 'Healthcare', 13594100000, 0.864572, 'NMS', 'SP'),
(625, 'XRX', 'Xerox Holdings Corporation', 0, 'Technology', 5270260000, 1.90899, 'NYQ', 'SP'),
(626, 'XYL', 'Xylem Inc.', 0, 'Industrials', 18216200000, 1.03846, 'NYQ', 'SP'),
(627, 'YUM', 'Yum! Brands, Inc.', 0, 'Consumer Cyclical', 31388800000, 1.04875, 'NYQ', 'SP'),
(628, 'ZBH', 'Zimmer Biomet Holdings, Inc.', 0, 'Healthcare', 33338000000, 1.35861, 'NYQ', 'SP'),
(629, 'ZBRA', 'Zebra Technologies Corporation', 0, 'Technology', 25156900000, 1.65439, 'NMS', 'SP'),
(630, 'ZION', 'Zions Bancorporation N.A.', 0, 'Financial Services', 9465290000, 1.61538, 'NMS', 'SP'),
(631, 'ZTS', 'Zoetis Inc.', 0, 'Healthcare', 71815800000, 0.633802, 'NYQ', 'SP');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `handle` varchar(50) NOT NULL,
  `followers` bigint(20) NOT NULL,
  `tweet` text NOT NULL,
  `date` date NOT NULL,
  `sentiment` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `access` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `access`) VALUES
(1, 'pmoe7', 'SOCCER12', 'mm@mm.ca', 1),
(2, 'sa', 'sa', 'a@as.ca', 0),
(3, 'df', 'sfs', 'da@cc.ca', 0),
(4, 'test', 'test', 'test@test.ca', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_stocks`
--

CREATE TABLE `user_stocks` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `stock_id` int(10) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_stocks`
--

INSERT INTO `user_stocks` (`id`, `user_id`, `stock_id`, `date_created`) VALUES
(1, 1, 569, '2021-04-05 14:47:00'),
(2, 1, 4, '2021-04-05 15:06:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sentiments`
--
ALTER TABLE `sentiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`ticker`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_stocks`
--
ALTER TABLE `user_stocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `sentiments`
--
ALTER TABLE `sentiments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_stocks`
--
ALTER TABLE `user_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
