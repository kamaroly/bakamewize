-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 15, 2015 at 11:21 PM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pyrocms`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `default` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores settings for the multi-site interface';

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`slug`, `default`, `value`) VALUES
('date_format', 'g:ia -- m/d/y', 'g:ia -- m/d/y'),
('lang_direction', 'ltr', 'ltr'),
('status_message', 'This site has been disabled by a super-administrator.', 'This site has been disabled by a super-administrator.');

-- --------------------------------------------------------

--
-- Table structure for table `core_sites`
--

CREATE TABLE `core_sites` (
`id` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ref` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_sites`
--

INSERT INTO `core_sites` (`id`, `name`, `ref`, `domain`, `active`, `created_on`, `updated_on`) VALUES
(1, 'Default Site', 'default', 'localhost', 1, 1365632023, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_users`
--

CREATE TABLE `core_users` (
`id` smallint(5) unsigned NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Super User Information';

--
-- Dumping data for table `core_users`
--

INSERT INTO `core_users` (`id`, `email`, `password`, `salt`, `group_id`, `ip_address`, `active`, `activation_code`, `created_on`, `last_login`, `username`, `forgotten_password_code`, `remember_code`) VALUES
(1, 'root@dmh.com', 'c3cc06f17ebb387c4dd8ac72abd32a56654f1595', '26a8d', 1, '', 1, '', 1365632022, 1365632022, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_blog`
--

CREATE TABLE `default_blog` (
`id` int(9) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `parsed` text COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` int(11) NOT NULL,
  `updated_on` int(11) NOT NULL DEFAULT '0',
  `comments_enabled` enum('no','1 day','1 week','2 weeks','1 month','3 months','always') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3 months',
  `status` enum('draft','live') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `type` set('html','markdown','wysiwyg-advanced','wysiwyg-simple') COLLATE utf8_unicode_ci NOT NULL,
  `preview_hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` char(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_blog`
--

INSERT INTO `default_blog` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `intro`, `title`, `slug`, `category_id`, `body`, `parsed`, `keywords`, `author_id`, `created_on`, `updated_on`, `comments_enabled`, `status`, `type`, `preview_hash`, `image`) VALUES
(1, '2013-04-11 14:28:00', '2013-04-11 14:28:00', 1, 1, 'The lysine contingency &ndash; it&rsquo;s intended to prevent the spread of the animals is case they ever got off the island. Dr. Wu inserted a gene that makes a single faulty enzyme in protein metabolism. The animals can&rsquo;t manufacture the amino acid lysine. Unless they&rsquo;re continually supplied with lysine by...', 'Time Travel', 'time-travel', 1, 'Vivamus non sem at ante dapibus rhoncus. Aenean a diam sed dolor tristique euismod eu vitae turpis. Sed tincidunt, erat eget elementum pellentesque, arcu magna pharetra ante, non pellentesque ante est eget arcu. Proin ligula tortor, fermentum id cursus ut, vulputate vel velit. Duis vehicula vehicula felis sed scelerisque. Aenean nec mi sapien. Fusce id dictum purus. Aliquam eget varius orci. Sed non purus eu nisi faucibus feugiat. Donec sed lectus nisi, et vestibulum libero. Praesent ullamcorper sem vel arcu vulputate pulvinar. Praesent sollicitudin blandit augue nec eleifend. Aenean euismod, ligula id bibendum tincidunt, massa nibh fermentum mi, quis sodales dolor nisl in ante. Mauris arcu elit, semper at posuere non, placerat nec lectus. Aenean dui lacus, suscipit ut aliquam et, luctus sit amet eros. Nulla magna sapien, sodales at sagittis vel, fermentum a justo. Quisque a risus non ipsum tempus pulvinar eu nec ante.', '', 'ac041a1c2b61483707b8a13b314cf2d5', 1, 1365683280, 1365683280, '3 months', 'live', 'wysiwyg-advanced', '', 'd3438a454ffdbf9'),
(2, '2013-04-11 14:29:00', '2013-04-11 14:29:00', 1, 2, 'You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don&rsquo;t know exactly when we turned on each other, but I know that seven of us survived the slide&hellip; and only five made it out. Now we took an oath, that I&rsquo;m breaking now. We said we&rsquo;d say it was the snow that killed the other two, but it wasn&rsquo;t. Nature is lethal but it doesn&rsquo;t hold a candle to man.', 'You think water moves fast?', 'you-think-water-moves-fast', 2, 'Morbi eget quam vel mauris tristique euismod sed at leo. Proin velit justo, dictum ac tempor vitae, scelerisque id odio. Praesent at libero elit, eget hendrerit sapien. Maecenas sed quam eu sapien porttitor sodales eget posuere ligula. Suspendisse potenti. In eget tortor nec nisi mattis venenatis. Duis cursus quam iaculis ante mollis non pharetra odio vulputate. Aenean a lectus at tortor ultricies rhoncus. Praesent in lorem ut risus pharetra ornare. Nunc condimentum lorem sit amet sem malesuada bibendum. Maecenas ligula velit, iaculis non tincidunt ac, faucibus eget tellus. Pellentesque et velit auctor dui consequat porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie auctor varius. Ut vitae diam non nulla pretium commodo at ac purus. Nullam quis magna eu quam porta faucibus sit amet vitae metus.', '', '45237cafca5897e0ae7e85ce8ced8dba', 1, 1365683340, 1365683340, '3 months', 'live', 'wysiwyg-advanced', '', '8fb9f79d94372bd'),
(3, '2013-04-11 14:30:00', '2013-04-11 14:30:00', 1, 3, 'The lysine contingency &ndash; it&rsquo;s intended to prevent the spread of the animals is case they ever got off the island. Dr. Wu inserted a gene that makes a single faulty enzyme in protein metabolism. The animals can&rsquo;t manufacture the amino acid lysine. Unless they&rsquo;re continually supplied with lysine by us, they&rsquo;ll slip into a coma and die.', 'Cogntingency', 'cogntingency', 2, 'Praesent non libero augue, nec feugiat turpis. Aenean euismod, orci ac bibendum ullamcorper, augue lorem tempor tellus, id rhoncus felis enim tincidunt nulla. Vestibulum quam justo, luctus sed mollis vel, ornare eget erat. Curabitur tempor, mi vehicula tristique semper, mi est adipiscing mi, ac iaculis mi nibh et lorem. Duis elit diam, vehicula id fringilla a, tincidunt ac erat. Morbi vitae lectus risus. Maecenas at nibh odio. Quisque ut ante sit amet orci sagittis interdum. Duis congue, nisl sed tincidunt molestie, nibh orci porta lectus, at euismod libero diam non diam. Vivamus vehicula felis a massa fringilla dignissim. Vestibulum ac risus odio, sit amet tempor lectus. Ut ornare nisi feugiat enim imperdiet congue ultricies nisi blandit.', '', '92bb81118f2686157ff9a6772c4d1853', 1, 1365683400, 1365683400, '3 months', 'live', 'wysiwyg-advanced', '', 'a89831c2af1383b'),
(6, '2013-05-04 01:30:00', '2013-05-04 01:30:00', 1, 4, '<span style="color: rgb(68, 68, 68); font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px;">Proiciens te princeps ibi Neptune reddens pater. Horreo Athenagora ut diem finito convocatis secessit civitatis intelligitur sicut nec. Tyrium coniugem Jesu Dionysiadem in modo compungi. Mancipia dolor invenerit decoratam esse in fuerat est in fuerat construeret in lucem. Horum tolle mei ad quia ad suis est amet coram te finis laeta gavisus ait.</span>', 'Time Management For Designers', 'time-management-for-designers', 5, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Proiciens te princeps ibi Neptune reddens pater. Horreo Athenagora ut diem finito convocatis secessit civitatis intelligitur sicut nec. Tyrium coniugem Jesu Dionysiadem in modo compungi. Mancipia dolor invenerit decoratam esse in fuerat est in fuerat construeret in lucem. Horum tolle mei ad quia ad suis est amet coram te finis laeta gavisus ait. Iusto opes mihi quidditas mihi esse in rei finibus veteres hoc. Taliarchus eius ad te ad te. Accepto coeperunt molestie consetetur sea talenta Carissimi deo adiuves finem volo erat bene nostrae iam adultera in. Video cum autem nobiscum laetitia posset diam dominum oculos rex Dionysiadi suo Nescimus de me vero non potentiae. Stet consequat Apolloni codicellos aperiri sacras mari itaque sed. Apolloni figitur acquievit sed esse ait!</p>\n\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Eiusdem ea commotio gaude haec vidit loco. Ait in fuerat est cum obiectum invidunt cum. Accepit corpus Lorem post iactavit ad suis caelo in lucem concitaverunt in. Tyro sed haec aliquam inlido laetare in, vento penitus nec &lsquo;pectore zaetam at actus putabat ut diem anulo sedentem ad nomine. Palpat venas tanquam vero cum unde non solutionem innocentem vis lacrimis ceram mandavit lugentem ubi ait. Taliarche secretum conpaginari tacitus qui. Tum vero non coepit dies tuum filiae. Sit in modo compungi mulierem ubi ait.</p>\n\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Scrutor audire nolens mori vere suis alteri ad per animum est in deinde plectrum anni ipsa mihi. Occurrit hoc puella mihi Tyrum in fuerat construeret cena reges undis Tharsiam si. Concita tempestatis cui ubi confudit huc apud libram domine de his carpens introivit gubernum. Supponite facultatibus actum justo forma anima Apollonium contigit cum. Homine nutrix eius est se est in. Quaestiones patre ab adulescentiae discesserunt manu duas particularis, stranguillioni in lucem genero coruscus eum istam vero cum. Tantus nata suum in rei finibus veteres hoc. Audito dolet sit audivit ergo adseris de ascendit. Virginis instaret dolores in deinde cupis hominem in lucem in lucem exempli paupers coniunx rex. Regis ei sed eu fides Concordi fabricata ait est amet Cur meae puer ut libertatem non ait. Spongia non potentiae falsa namque amorem civium currebant in rei sensibilium. Quoque mortalem statuit quod eam sed. Dionysiade in lucem concitaverunt in deinde cepit roseo, post autem illud ad per te. Dicentem cives Tharsis ratio indue villicus Apollonius ut casus tui Dianae autem Apolloni ex civibus unde beata quid.</p>', '', 'd9726a40fb859c16d0624db9c60e3683', 1, 1367623800, 1367623800, '3 months', 'live', 'wysiwyg-advanced', '', '537111b352f5177'),
(7, '2013-05-04 01:34:00', NULL, 1, 5, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing.</p>', 'The Dark Knight Rises vs The Avengers', 'the-dark-knight-rises-vs-the-avengers', 3, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum.</p>', '', 'f8f45b54a9c3d15f05ab41924a4a013f', 1, 1367624040, 0, '3 months', 'live', 'wysiwyg-advanced', '', '39e076e5f63ad1e'),
(8, '2013-05-04 02:03:00', NULL, 1, 6, '<span style="color: rgb(68, 68, 68); font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px;">Interveniens sed dominum vidit pater ostendit in fuerat. Dabit es illum Apollonii vidit ad suis, horum tolle Adfertur guttae sapientiae decubuerat age. Quid populi cum obiectum aliquip ipsa quod eam sed, x domum in modo cavendum es est cum.</span>', 'Batman Begins Review', 'batman-begins-review', 4, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Voce clamavimus haec sed esse haec puella eius non coepit dies vero rex Stranguillio sit in lucem concitaverunt in. Nuntiatur hoc Apollonius non solutionem inveni in lucem in fuerat est se sed dominum oculos capillos apto. Statimque assueta cum unde meae ceroma fronte comico hac civitati etenim quid facilisis. Non dum est Apollonius non solutionem invenerunt. Dona abstulit meis caligine templo die antiquis vocans diversificatur subito est cum obiectum ait Cumque hoc Apollonius ut casus. Materia puella eius sed quod tamen adnuente rediens eam sed. Carissimi deo apprehendit in rei civibus laude clamaverunt donavit ipsum, apollonii appropinquat tation ulterius quod eam est se ad suis. Nisi est in deinde cepit roseo. Quos ipsum longinquas Aeolus immanitate excidit ipsum ait mea in modo invenit Boreas quam aniculae morsque nutricem rex.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Interveniens sed dominum vidit pater ostendit in fuerat. Dabit es illum Apollonii vidit ad suis, horum tolle Adfertur guttae sapientiae decubuerat age. Quid populi cum obiectum aliquip ipsa quod eam sed, x domum in modo cavendum es est cum. Nuptui tradiditque semper vide eis fictas. Secundis sacerdotem filia navem causa alia qui dicens unam emanabat cum magna aliter diligo alii paupertas quantitas non coepit. Filiae multi quia quod tamen sed haec sed haec vidit loco. Ascendi in deinde cupis ei sed, coniungitur vestra nutriendam veni mei ad quia.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Quoque non coepit dies decora in rei civibus. Eiusdem ea rege Athenagoram homo ad quia ei sed quod tamen sed dominum oculos ut libertatem accipies Tharsos! Cyrenaeorum tertia domina tu tu tu tu secum cogitaverat est amet Cur meae. Domus respexit princeps audito doctrinis paruit unum ad per te princeps audito adsumere proprium rex. Quattuordecim anulum ad per te sed dominum in deinde duas horrido in. &lsquo;Quicumque iactavit ad nomine sed eu fugiens laudo in lucem in rei exultant deo. Dicere Tharsia adulescens qui dicens mea vero non potentiae falsa namque amorem infirmata dictum ait est se vero quo. Vituperia ad quia ei Taliarchum in modo, accepit non coepit cenam ita cum obiectum invidunt! Nubila grata gratias agendi coepit amatrix tolle Adfertur guttae sapientiae decubuerat age meae in rei finibus veteres hoc. Scitote si quod ait regem consolatus dum. Imas rebum scias haec puella. Apollonius ut sua Cumque persequatur sic nec est amet coram te. Acceptis codicello lenonem autem est Apollonius eius ad quia iuvenis.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Taliarchus eius in fuerat construeret. Plenus vado est cum suam ut casus adprehendens, actum in deinde cupis auras sed quod eam eos. Apertius ingens ferro conparuit Tharsiam in rei completo litus ostendam Apollonio in. Fulgor infaustissimi eum in deinde duas formis ei primum regalibus rerum. Nullam coepit contingere navis famuli curvus in lucem. Concordi fabricata ait Cumque hoc ambulare manu fueris litore iunctionem quae. Praestetur cubiculo ab adulescentiae discesserunt manu duas particularis, dulcius populo magna anima haec. Occurrit erat coram me testatur sed quod ait in modo ad per animum pares terris sidera unam. Ingreditur ad suis caelo dicit pietate dudum sbyssi conturbatum ingreditur ad nomine Hesterna studiis vadem singulas cotidie hoc. Permansit in rei finibus veteres hoc Apollonius in fuerat accidens suos faciam! Dicere nec est in deinde vero rex in rei completo litus Ephesum peteret sua Cumque ego dum miror puella. Musis nihilominus admonendus tu illum vero cum suam vidit ad suis. Maria non ait est in lucem exitum atque armata mare ut libertatem adhuc dicente sicut consideraret celerius in. Stranguillionis in deinde vero non potentiae Apollonium illis ad nomine Hesterna studiis ascende meae in deinde plectrum anni ipsa Invitamus me. Viscera tres latere potentiae Apollonium ut diem finito servis rex in deinde vero diam dominum in.</p>', '', '492ac93ed14b8572912ae80e88a8911e', 1, 1367625780, 0, '3 months', 'live', 'wysiwyg-advanced', '', 'ca97380a49b863d'),
(9, '2013-05-04 03:03:00', NULL, 1, 7, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>', 'Rage Of The Winter Skies', 'rage-of-the-winter-skies', 6, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>', '', 'f035bbe0abddef021b12f0eb6cd61882', 1, 1367629380, 0, '3 months', 'live', 'wysiwyg-advanced', '', '60cfa4a18d7e3c7'),
(10, '2013-05-04 03:05:00', NULL, 1, 8, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>', 'Alienware X51 Video Preview', 'alienware-x51-video-preview', 3, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>', '', '5e22ce4a6636bbe3a39b050cd1e810fa', 1, 1367629500, 0, '3 months', 'live', 'wysiwyg-advanced', '', '3625ab1d0864b86'),
(11, '2013-05-04 03:07:00', NULL, 1, 9, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>', 'Hilly Landscape Of Tuscany', 'hilly-landscape-of-tuscany', 3, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>', '', '4073a7e031a62069e1253a60bd318a97', 1, 1367629620, 0, '3 months', 'live', 'wysiwyg-advanced', '', '5996e8140cc4650'),
(12, '2013-05-04 03:11:00', NULL, 1, 10, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>', '10 Tips for Great Photos', '10-tips-for-great-photos', 1, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>', '', '1920722877131870b58fa38f2bab40be', 1, 1367629860, 0, '3 months', 'live', 'wysiwyg-advanced', '', 'a15c1d6ff73074b'),
(13, '2013-05-04 03:15:00', NULL, 1, 11, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>', 'On The Moring Dew', 'on-the-moring-dew', 1, '<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.</p>\r\n\r\n<p style="margin: 0px 0px 20px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>\r\n\r\n<p style="margin: 0px; padding: 0px; border: 0px; font-family: ''Open Sans'', Arial, sans-serif; font-size: 13px; line-height: 22px; vertical-align: baseline; color: rgb(68, 68, 68);">Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut</p>', '', 'e9e9313927611e2ca96db551e5658007', 1, 1367630100, 0, '3 months', 'live', 'wysiwyg-advanced', '', '86f2a6dda60f0d8');

-- --------------------------------------------------------

--
-- Table structure for table `default_blog_categories`
--

CREATE TABLE `default_blog_categories` (
`id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_blog_categories`
--

INSERT INTO `default_blog_categories` (`id`, `slug`, `title`) VALUES
(1, 'fashion', 'Fashion'),
(2, 'design', 'Design'),
(3, 'beauty', 'Beauty'),
(4, 'model', 'Model'),
(5, 'style', 'Style'),
(6, 'games', 'Games');

-- --------------------------------------------------------

--
-- Table structure for table `default_ci_sessions`
--

CREATE TABLE `default_ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_ci_sessions`
--

INSERT INTO `default_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('22d61178b779f46c48ca5e7cccda2bf2', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909359, ''),
('88b706773f123765ed7758670c11cf78', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364758198, ''),
('c20dbc9f860d96453b14e2d4e81d16b6', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364768330, ''),
('82e64ff1b75cbdd4ba544293e3dd8a62', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909479, ''),
('a03958525f8a1bcb8c2566054d0883c5', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909686, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('3d07fe69d12c44a415750353755584f7', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909358, ''),
('c0d4dd73aaec40e0e69ddd8788f55557', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909480, ''),
('df73d59ca0437f36685c25ead7a9c8ae', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909534, ''),
('bd5c08ca09d24653310affb2ded33380', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909536, ''),
('b7d6292737d7097d3ab7da6487c712ef', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909651, ''),
('9cc4befb33522726a727b8ec9c9b240c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909692, ''),
('4d392821adb1e121154cfce2f8e22996', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909795, ''),
('51cd5c507d258ce7ccde8db671287c5d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909797, ''),
('42ee097201ea231b19a6839ffaf20ce0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909834, ''),
('c8603714ee65be7e491f12f755805272', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364909847, ''),
('7c3d33532d9504d1c70cb0b3295373ce', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365106321, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c9449befcfcfb3e5a44361986cac46cc', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365187514, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('8fa6721c2ca1b99dbea01d56f5fc1c12', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365190541, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('81781a847bc29888c34f1225624630f9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365218742, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2b67600eb4d044b1f3ec337035ed554d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365255218, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('61f8af38fbbdeacaeebf71d87230aae6', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365255221, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7536b7e1be774231c7aa834b2c2f733f', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365265220, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('63cf67b441ccc3bd3942c21eb0cbc588', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365266306, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('de7628b1994154d173fc71c0468bcb9e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365277232, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c7544cb7cde49b45865638349a5f3c54', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365283787, 'a:1:{s:14:"admin_redirect";s:5:"admin";}'),
('48d52b99f727adb004fd04e1acfe7b6d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365303627, 'a:1:{s:14:"admin_redirect";s:5:"admin";}'),
('302e245a37c220e1397ede4511cac77b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365303629, ''),
('324f85e58c7fe863aba935902e8503a3', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365624711, 'a:1:{s:14:"admin_redirect";s:5:"admin";}'),
('7af2b2714e41f8f5a1bef568b5308894', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365624714, ''),
('4bf2a5bede0f5e308ef61ea842d852cf', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365624720, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('cdd7639aeb53328b008bb461902d64d9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1365624726, ''),
('4bb76895fe3333aa263c162b092dbd0a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365696746, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ed29d149cfdaa956e1dfac33d5a85668', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676351, ''),
('612ce89e6bd0b3f507c491a0182f2d7d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676417, ''),
('ab08e0bb6ef4f4ceb34f4a91086115d7', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676423, ''),
('90a1af01dae34760f13b12c945295a08', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676430, ''),
('970a7362711c47ee02b193a0164e6517', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676853, ''),
('dbd1666d020b3fccd5a45562dad237c2', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365676436, ''),
('43dce2e732124af8f157ccb44a36de6e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365677902, ''),
('89d2110a2900ce29e5a4f2f173d10a5b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365678339, ''),
('327e1015cc68fb81277ac6cf7679a98c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365678348, ''),
('81266cc129bd7b7f030a7c69749a14df', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365678936, ''),
('978e969017f88c89b4672088e0dd93c0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365679949, ''),
('33665822a5f81de211cd74897bfe0203', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365679960, ''),
('39747c88eb063b6113938a23ca8fb28a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365774800, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('aad479fcacf802fbdddfda3e7644264b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365744562, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('8a7dcc7839e2358e07cc7761df8827a8', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365750783, ''),
('259b36eef2ca09df196cbe6cadf9947b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365750878, ''),
('d659bbd27ce7051b423e3c35be47ba3b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365756017, ''),
('13d065f4f65d86696a4d7b9b4f2173ce', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365757205, ''),
('fbe767a6de3c1dc583cb35c3618491f3', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365833372, ''),
('159e3f03b88edb0dcc6cbdb27dd1ec64', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365841350, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('62b04658140dea50604014dc14141441', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365821630, ''),
('58f64020989a4b779f4dac8772eb5f20', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365834840, 'a:7:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";s:18:"flash:new:referrer";s:25:"blog/2013/04/cogntingency";}'),
('608e9c2ad3f6073d1201bcb9ab367edb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849361, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('50b88aa02b9a81f374694ad18f262ca0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849361, ''),
('4d5d7d0664c11f5d4fd5b48d35f4e9bb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849361, ''),
('6b51c3db29f90cf7d82430cb8ec033c7', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849361, ''),
('7597f3739f50a4a908180f4de3746bdb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849362, ''),
('d91ad40e724977bce94988d301b9847e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849362, ''),
('2c5d15174b7133a2e6f4e08c21113f1a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849362, ''),
('019519d247dd29963172c074ba172a14', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849362, ''),
('42b630c2af736b686addfa71a69e2a66', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849363, ''),
('aea52e0796a4d4d459f75cdd1a1a9ea0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849363, ''),
('4dc8ed52d49cb6ffa15b5bf737827be9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849363, ''),
('1384725310bd6bc57f142b1cbe57cea7', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365849363, ''),
('fa6a5975a8b10f1630b5a52d5484075e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365851087, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('533341eeb8498f162ed80739e2890453', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365934092, ''),
('c0695942e7d06034985789da3b3db312', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365855586, 'a:1:{s:14:"admin_redirect";s:5:"admin";}'),
('b4def915443b96020d4cf0d4c4f70c2d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365869841, ''),
('bae384f8414ad26247734024f9ec3a86', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938043, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7a8f5a15802ef4de30d8550b3168f19b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365934043, ''),
('9f8dbe838dff3f98a2a0f56308d674cb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365876949, ''),
('8b38bbc407084fc138aa668bdb39cf19', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365934263, ''),
('6b1b7083ac857eeda5c9a9a2e4f1bd4a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365934401, ''),
('a6929e6b6f3702ddcf1b2cc165000c4e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365937124, ''),
('79deca7d54887a938df9caeaf1513f27', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365937446, ''),
('975db9d42f0ea49a5563f2e8650b662c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365937531, ''),
('976adcf05e87b5be2826b67e121dbb63', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365937766, ''),
('73c11db88c6c4c4f397cfe720b9a9acb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365937771, ''),
('ec1c822debcaea77803fa897a2bc5396', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938044, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('eacb411664072545ff827e1d3048cf7c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938044, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e650e7939189472bc86e65a292ee2c24', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938045, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('fff7a909a139339f56f4721b77ffbc35', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938045, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('0094c020808b8ad21c7e29ac5b023eec', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938045, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('270e7cbba434efa23215801f89f8017a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938045, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('6f3624af968c4d1fcb26e7be691a06b6', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938046, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('510cf6860bc365c0892276e6debd7310', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938046, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('79d7d380f83695f7917be200a2c34cd1', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938047, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('fa89e0a712bac4f64d2f946dc98e1297', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365938047, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('b5defe7ded0cda2912f685ca343e3d89', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366000233, ''),
('72f1b0ef02573032423814775d505eb0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366014442, ''),
('b668cbcf42e91682b6b58c3d2a4c2cb0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1365954383, ''),
('ba829fa7865f8b9a130f2ac343f10395', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366019402, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('6d383d57ad912a161bf8d3108c8c7f77', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366014441, ''),
('9dcd0faab9d36a2857f2809680606d89', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366014453, ''),
('b62912714a9990596d7ac985ebf83e16', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366014454, ''),
('2a2cc40b533ec7a328640beb2e88c818', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187354, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c9a3f9ae2e417bbf7a526ab8c222049c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187354, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5b0d61ea58c8a347002fc28d4d9d8c54', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187355, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('75f2fdd1b1db1b79a924b0689cf4755f', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187355, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('267b50b26914db0971263042c5f02687', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187355, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ff0a44b846f1ed8c26111322a9a20d7a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187356, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('fa53626732b94a4f2b8b7ea7c317b345', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187356, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7e879e7573cca0b017bbc642b5af351a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187357, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e8af6aaca7ed6a0a960a7e7eaeda7d49', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187357, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f6636a04bb39c7182b9caf0d120abd13', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366187357, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('b5d724c3c3da7ba9dbf51ba98f47d9de', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366205083, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a3bf17b39f909a9f6e0f2c5bf97560ee', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366269904, ''),
('3d43bb31c8e500eb2f183d947fe471c0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366305835, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4a73813b36a881b137cd6b9c9b61c32b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366298331, ''),
('b681438663fc54dadab07484e2412697', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366305890, ''),
('afc9e36e0586d1e265d2f8d54bbe71b4', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366307629, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('47b47094e24af113b13d93e2e9194dc0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366360839, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5b7c6a3f58b7a15e7e6488e23e3e0eb8', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366355029, ''),
('baecf051fa2eefff3d06ce2a9f32f332', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366386773, ''),
('0af8fa7683cf5f5c1573f4f7fb6d2ebe', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366366257, ''),
('75db115192852b11b251ae57deb76fc8', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366441347, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('b6494ed5076d5b2669e0005c52fe1bcf', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366387033, ''),
('28844f89682c8dd08fdd6370b289608b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366440749, ''),
('141648c1743f7bc5412a5e9e9c79c23f', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366441156, ''),
('57e62b3bef2c62a8fcb935861c4daf88', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366441347, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('edd4cbfca63b8039f89795ac1f5faa09', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366441347, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('39379e337ecf3250687bf5ba503ad104', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366469054, ''),
('1d55a2d562103c56d6eb155eb6630fb9', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366444919, ''),
('9f58a1e5ded397b2735382b422e8696a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:20.0) Gecko/20100101 Firefox/20.0', 1366456304, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('901a67ac4b870b7864a82527044c8fdd', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366452531, ''),
('e806df162add24ac628f5010153a759d', '::1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', 1366455734, ''),
('a707d450691a4210b7a592f24b93bb99', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366459459, 'a:1:{s:14:"admin_redirect";s:23:"admin/pages/favicon.ico";}'),
('204d4119fe66b0b77d303d546d756822', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366459873, ''),
('83fa7d17eeb20bc6ca2f61c1ea6fb454', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366459874, ''),
('cf0aabe59b86d67cfb60e701f2523064', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366459876, ''),
('409705453c3c6d14b540acdd307d9b1b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366460051, ''),
('23e2467d352789fb9a88acfc20584cb0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366479079, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5d57260d7460882a7b80af0cf4ee550c', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366993248, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('02686498efa81ba0a2e4f4c383dfca4a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366991662, ''),
('34e9472323f23fc5ef5ee081129eb7eb', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366991816, ''),
('53272f626e5ae6ddd1651b09939b473a', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366991817, ''),
('c2a43222f82b9f5d666f5fa4b7cde63b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366991996, ''),
('4ff30b3ea6269bdf25aa59b889b74b51', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366992853, ''),
('c01d4f04d45bc9b346ae35d4670dd621', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366993118, ''),
('3c6ad7ad1f72643dcd6df443d5c0858b', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366993119, ''),
('2e4c86f4b3775d69c110736fcd863978', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403621, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c46a7c251951cd67b7640e39a9bb03a2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403349, ''),
('d67113f0530e7c6c860f9f4329636e90', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403622, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('dcaf59dde98c1772d355e5c8f0b1ea01', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403624, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('21cb143f4bdca8fb87e1e025ba5be3ef', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403626, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('50b177489282f93bf9a160c7e2a487a1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367403627, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2708f6ab5be64edc6bcf8cd19eab35a4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367410397, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('85b5a914a2811b0846f3646b736b45c0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367410398, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('90f2eb30938c2089fb576db6dbc43311', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367410399, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9dca073bb8e20653ed1f73a3c692b942', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367410400, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('3e3dd2d6cb3ba8dda18c519318b22c11', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367410402, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a5e767c0ba4dec8fadbdaca9a37b31a7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367413512, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('19db2555b7c843ac92595547c11c9746', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367413514, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5a402b98f95b6c7ab3f90c19fc6d8421', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367414649, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7ea3a2f9a3d5598d8448928962f5cec1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367414650, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('823e78bce7b5e39ee1f592830b447717', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367418958, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a03319b825a6ea3bd0a646a8fa5fc51f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367418895, ''),
('3be9c3fffd90719956d39dc9985a86ec', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367593284, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('25bc3566b101e2e7327c8833fbfe121f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367603770, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('0fc8fa662c0f19395444b07aba2410ca', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367603772, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c44145d16aad1e8aeea8e7bed2fb72fd', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367612700, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('8f49a6dbb94e739c770dd3b4e3f9aec6', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367612470, ''),
('64f678c52226fcacb3cb99b0d478d74d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367612701, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('df020ec97fff5ccef8fa92a2d0dc4203', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367612702, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e11e458ff50bc6acbbf9fed8192adc4a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367614729, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9a4b7ed3cc19508264936e9b035615b7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622933, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('afb6c13fb977b56cdab712b691347909', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367615394, ''),
('3268fce91c93743a54428e4eb763090f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622933, ''),
('5c5472544f799a5650c1f3e362e1eed2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622936, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('cb0ed8f1a78bc32168ac56749c075de2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622937, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9de1e852650b4c548e0c3ee2784833f8', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622938, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5e4d836f0be702331284d3f2fe1a8c3e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367622940, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c5622692e3c31d46c55c7b6db32afb7e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624355, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('b68e8de1ef6cdcda2343cb9a7e5b184b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624356, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a6b66ac6517a1e4ef436c73cb5c6e590', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624358, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ca42ecdcf20b1c1316fbc5295b458347', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624359, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('653750a0da3a7fef41ec73b8d37aacdf', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624361, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('6d68e0dc730846cd1e9b77c9ac8924fc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624362, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('abb3ea6ed69a09ce37aa1f8b25de6aa5', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624363, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c8369ff25289f825600c40876d8f35b2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624365, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('339ed4238027eb8154a89bb1e710c5ae', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367624366, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9b0fb96e127f2221228db0b71187da70', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625143, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1db50affb4f7aeef84bcbeb9e4cef5cc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625144, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4fcf7b36f9c54856b93ad2e7c89d6e4a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625145, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1b16a4dd7b22b4d8333ba00ab35c7ca6', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625146, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e353ed7fb3f8f1657cf18a9c88f37f55', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625148, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c42361e3d85e172de583571a817084c9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367625149, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('63284bc3478a2a27e1d5d4e4b8f1f652', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626600, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('21b07c8f44ef27b46b2dbd31112cb530', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626602, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('818cd662dd60e6cc861979967f3c2326', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626604, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c6e7e680b1cd738b07b611d9962b0a1b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626605, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('382f4466bec4489804fb4fe3344736d9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626606, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d3f1440a743853ee9714021ca17cf3ff', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626607, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ed3b23e5850435ceff0ed98ace71aa85', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367626608, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('085fdeb419f724f25532adf3250f6ac9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627623, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('68e8b222b66ef91c9e90a75c6cfce9a4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627625, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ca3db3e77a35bd6421bf271351f0bf0c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627627, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a64118f247bfcc373bc171eabd84640b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627628, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ebf99610c85eaae9851585d3f1b84f9e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627629, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('07ab729e94953d1a1646fbf93a74c2cc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627631, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ba036f62772c91666601f11064af00d2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627632, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a388d76cafda587a80ded0aae80cd988', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627633, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f22fc2de6c2f650c585a93e526059a11', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627936, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('eb2a45e4c69b4485fc8184b65abf900b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627937, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('3518c7c64526946f6b94b9f5361a5947', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627938, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c7416e3e901680d16d31522e3a2a1ea4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367627939, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}');
INSERT INTO `default_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('a2e4f17d709014dbe0f5984094209cf0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367632712, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c5128dbf80fe3dca32366a8b6733c033', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367632713, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2150f127746056d6beeeb3312f3a044e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367632714, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d47056984b9b4e44ead75d233054862a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367632715, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('75b3f0ed47c96402607e5d14b298f2e9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641104, ''),
('a94dd4ac25de247e07d499552132ad5c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641106, ''),
('5b22afc4879bfe49b5cbff9ee28e3e89', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641108, ''),
('615edbbe113eaeeb86a7e540ad22cd18', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641109, ''),
('070bf2354ddb6471b12b4a26e1913f6c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641111, ''),
('50df6635e6516e43351243e648adc6aa', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641112, ''),
('c70a22ad69161d732ee4806e4c399953', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641113, ''),
('d1c5e8111c3342d22c6d38f1699275a0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367641114, ''),
('783c193173c66ca3c7cbee5ed51f9a92', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644718, ''),
('8e2fc305a35de366d4cc5ff8a7e25751', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644720, ''),
('6360e38de4698a20be3b6679ab86685e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644722, ''),
('42fa1e7f3bb8e9b2a16c76b4c6386bd4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644723, ''),
('ea8b4129443b7b5760d62778c1f578aa', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644725, ''),
('953b0dda6417dbd5db1c4fe2f8198c49', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644727, ''),
('2a1f17cdea769f8f57701a9313b908ac', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644728, ''),
('0f64df68a0c1aacd15b36b7210956e56', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644730, ''),
('2fb33109c9a113a25723de41f7f0a946', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644731, ''),
('d13f1bd692e300dacf65098259210a00', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644733, ''),
('e778262b545a2e9904141c045d5dd2d9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644734, ''),
('de48d92f0b88925fab70264c34fd4593', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644736, ''),
('a2b6e3b86603c0c59b1ae92fa06e29d9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367644737, ''),
('9b476b01ebfe76d2057f2f87d3c57642', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367645362, ''),
('9346c7deab0cad7caf748dca5276213d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367645364, ''),
('1c0d3333b20d43d9ab35066e61db403d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367645365, ''),
('60461f490d6693fe9ec6283b9a2767e7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367645367, ''),
('5de40dcc83a97f4f5db755c278d08b3b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367645368, ''),
('51a4c1850d4a896bb5838175d12b75eb', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646394, ''),
('0398727b10f46d08c68fc2dae3cb0d3d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646395, ''),
('950da12829c9c14078ec125b4c948aa9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646397, ''),
('7bc400c800dd27ece8d2f8285f6d9f08', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646398, ''),
('8be192d4dce9780da544bd8f83b0c8c2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646400, ''),
('00d54e71336183f2c1c76ef3ed898dc1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367646401, ''),
('70c5657615e745a2502ea79d2d198877', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367734173, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('22634819cc74397c6a9495a2182ea039', '192.168.1.2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367663073, ''),
('98432c9fbbb78a535ab6a2ed8f08caa8', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367729242, ''),
('361ad13308c6410f86f5e36fddb716ff', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367734174, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ae4e51f0f3e264691529be2879346972', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367735704, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('6995edeb1dcbe5cb17657df2e1a17419', '192.168.1.4', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367734657, ''),
('f57dc6d49fd72a5522c4b9983947c6ab', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737270, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('dc37effa225b4d55f5ab2f0d0425debc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737272, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('207cf714c8b26e47878155a2497aa156', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737274, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5e88cce65bf6df30a37fe59f46fe0cfc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737275, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d04c1b751bd9ba76f47ddb760780aa63', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737276, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('83fbad985d49e0c8a8a8bfc6ea74a802', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737278, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f96a040e5732332972529a0ea518326d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737279, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('17065f5771d078304a18e2468e9f974a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737280, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('153ae5373feef273cb7dca25c04a49ef', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737282, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ce7afee91840f481d910951ca9f96931', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737283, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a57e8f3331c5a13a58f958719e9620de', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737285, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d38e5743a7fdad3b5da3fa6b1912f15c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737286, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d9d706e18bf466891228319aa28cbc39', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737287, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c3bd98a051cf72f2eb02867566ef3ec4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737893, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5a71abf2cd13b9e99039a03fae460cf5', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737894, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('8187c3eb19fc2ba1603492b81aa6d49d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737895, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('bcce8ae0a8ae918a16b4905814491794', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737897, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2188eee9613cea203e471df2d991c878', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737898, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('37e913ecc4f79504238d1ac8f3fad718', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737899, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('faf2a79ed91f291a770d5a99de99e4c4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737901, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4c58e6d668722b0d7a75a5f55cc83823', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737903, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('278c4979088c99c2cc018839ce680554', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737905, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('b15c45799f15503f5a5de63e40c3df16', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737906, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1aa6d4a788461c6be1438a34e37d7271', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367737907, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7671fe7243055fd6b8ea2ef172e93236', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746083, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('61091b934f525b7e5de3ba884931aaee', '192.168.1.3', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367740884, ''),
('7625c71150237b832f308de78cf7d9ed', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746084, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('de7f375a6a97f1dfc9500dca5a7550e7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749104, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('79ca0061e37fada2ca77ffc540478c5e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746087, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2b0b7c378acf2c78fb8e8504fa2275ef', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746089, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2d3dae12aa710563e22d5698b2fabb55', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746090, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('30db22b05ca6b8d863d73d05f1cc0003', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746091, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('38187545f757164c999d6c011b80d72d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746093, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7c4959399ffaccca589df802df2aea83', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367746094, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d582593ca6de907ae6ca097b31e417b2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749054, ''),
('57cb6ab831a75bd937bedf33fdfe4a98', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749105, ''),
('e44660e14453385805db52a5fd22038a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749107, ''),
('50224686cc65dc93beb0ee6164b12636', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749108, ''),
('7b47402f232b3356ded30d9c25f51e30', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749110, ''),
('83d7fa9fc7212aca539ae86fcc78d332', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749111, ''),
('2ba68a654996a974a0816b82e0fef161', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749113, ''),
('0b496bb282dcfaec01e95089b9382a5f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749114, ''),
('a633fc6835bba58dfed35ca248b05a9b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749116, ''),
('8c9e6c19b021018ca7a9a7f3d332540b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749117, ''),
('62fb571a345dc1d7d6d9c9308cd072d4', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367749118, ''),
('322eb1961f7d9be49b76bb9d78a6262c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753513, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('0917367989cb67fd561dd9cce813c26f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367750139, ''),
('8744c76e418f5aa4fdbca84856101e26', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367750856, ''),
('49655bfe5e44b8e2f03de9801fac5453', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753515, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('21fccfa94df711d0e9f194b72b493b0e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753516, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9b9ca17d9fa8c0f55a29797fe7d2195a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753518, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a9525dcb684b106314cb8e897dcd9541', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753520, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4f90b9ea76a6a1cd260c36933c9c4ae9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753521, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f7199ca4d27bca3a8f857849d5e9f403', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753523, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('22a0bc9614ed0c411e519672509da28a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753524, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4abfff1164be759223f672f1f05ddf8d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753525, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('36fddc954be46068fee76ff4911e090f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753527, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('51de45f989e07fca4b33b1c213596019', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753528, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5dfbebfe5fb9b8b11772284f728847d7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753529, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('27129f944099b8b9404cc939c3a2c804', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367753530, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1bfb9ee37937ef4a053bbd970e6fd8fa', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367754840, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c145cbd53ffbb71aeb8cfc2654baa304', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367754841, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e74ea470f38f6ed2f576262e2e4735d5', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367758150, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('c2af333268e25c1faed24ebddd798d71', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367758151, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7d9265daefb79aed84b382012c0c2f3b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367758815, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('74a52c218325dc14bbc13915f7256754', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367758816, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('8ce6b29a6439c7a5f02b1f42eb295c40', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367759119, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f16c24b32f0c0d3e66d217cff24eb806', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367759120, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f277b71cd963caaa3b6b5b571e4485b6', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762500, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1611ea33067edf2a8e23da0b8a07ad60', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762501, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('87e7834ab63559207d5c80cd26e5b617', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762503, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7e31b0374f586b6cb744db2a0923585f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762505, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ce75fa51ac7e94f69d3a83760314ad1e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762507, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f13eeb46d53d36c728630135b95f5d39', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762508, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('47e3e282f88c44d1244103783cd6be72', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762510, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d2fba1e92b9b164d6edaad522aa770b0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367762511, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ca0ee753bb1adbca0324dd63425c3b94', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767343, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('88c7d21390a95d9e347cf8c8e1fde6df', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767070, ''),
('d70dfca00368cf123b3cb2a55b7cf84f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767105, ''),
('ee3e48af3677402de78f0620401d4c30', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767187, ''),
('1f5ed81a6515c0b0d1251dc8115cce92', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767344, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d00617fe39c8c6ab999c33ab2f70fb30', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767346, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d4bdac8f4900ed7157cbb90471e66c75', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767347, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('95ad15fcba7e9da2da6149cc26194c00', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767349, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('5da40d111b6385df26238968a0bbc6c0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767350, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1bb038f4a696ad9b7c37d2c18f125743', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767351, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1bf8965f16a1c09d1d4eb4f695885b1f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767353, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ad2449fec4097f0214809fa63c0c8cb3', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768478, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('65115543783f17b169412dff74a01e96', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767355, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('57f232c3e67e7828cd6a9c6f69f2dbf5', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367767356, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('9e522df76e92e08293aba9fe89938b7d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768479, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1ebee65c1583e30966280161d73f4c60', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768481, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('6fc1cfb51091a9da94654c7be475ccd2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768482, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('7da7ccac389858b1e0539ea1d5c0cc65', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768483, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('4a2c067319fc93d7f7eb4ae5d23e163f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768485, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('76a5dec0544de9fbd6fce6ba92e2ca10', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768486, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('3cbb4ddc0d9bda236894ce93816e67a0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768488, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('107b34a96447f8dc46bd4c3e0f856ed9', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768489, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('ac956d0472924130d9bcdc1eb2fa9693', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768491, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('05dc546d3023affa6d3e66e57458bb22', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768492, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('1727675855dfe1ab07b8717a0df2e3fe', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768494, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('e98bb45c94b225da6f7255935bad126c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768495, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a6d0d08b815501a9748a937879201999', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768497, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('f52b091c19cb51f571a33728339c1493', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768498, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2427f98a26c70f60d71b82931458b580', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367768499, 'a:5:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('2a66acd07dd28f5805180d30b104421b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825827, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('a04afd778ab7f0a296da7db1f6675673', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825317, ''),
('34ff83f1c57fad7d74f5a793768ef8d2', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367777112, ''),
('fa0f2f0303af486a551f9e4cb0c4191c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825319, ''),
('32923ec645e3fd626ffc832056c31051', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825325, ''),
('9ed540e59655d1cfcc595b2d74227257', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825365, ''),
('37f0d5e6933a04c08729c0205ec2242d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825367, ''),
('568f807888e69998bcd78c7ce68bedbc', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825371, ''),
('74e957af86b1a18003b8f82dc8b9610b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826384, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('d355c4883823c46818ba468cbb66b7cd', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825849, ''),
('aca58570d43db9a4c723fcd5d86bc2a0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825947, ''),
('1920fa1cbc6c0387155edfd50cfc2450', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825948, ''),
('152d5d3e24b9770f477d36e90f311938', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825964, ''),
('1c27ce87a8817610e0a990fa9e8cd8d3', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367825994, ''),
('728ffb109e6cf102082b4c878cf26598', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367829355, 'a:6:{s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";s:17:"flash:old:success";s:41:"The module "pmaker" has been uninstalled.";}'),
('a41cc83ee0dbbf4b560ff3247cc047f8', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826435, ''),
('b6be5538b5133d1e31e1b5e98242c507', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826436, ''),
('535729b914af22a67a99030440a9cf69', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826472, ''),
('c7b6fe3fbe4524dd8235292b6ff592d7', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826473, ''),
('e92e7bae0bf055d80ee1dd116872d04f', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826477, ''),
('d54c0685ae98e4507916f3e7b9f78420', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826513, ''),
('3050fc935ecc375102f86d911fcd52f1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826514, ''),
('907e25a297d3e768ea83e242b58f9a58', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826517, ''),
('da9c3af523a37cf7f12a2ce57b1bcb4e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826527, ''),
('6ae8a811ee5bd2ebb96bbdf83d4315df', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826556, ''),
('8a2578603f8fa4da56b4d5b688717c07', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826558, ''),
('fdfc215ffe625d5d93a9142bda94cd6e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826568, ''),
('47af401b9ee70c687549bca0a9e1f209', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826660, ''),
('fb33096c73d971b3184f97813689f77b', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826662, ''),
('0df5dd253bd3e812cbfbdd5a5ec5ae00', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367826665, ''),
('dfba3739ec6e30d46db54891cdbb668a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367830380, 'a:6:{s:8:"username";s:5:"admin";s:5:"email";s:12:"root@dmh.com";s:2:"id";s:1:"1";s:7:"user_id";s:1:"1";s:8:"group_id";s:1:"1";s:5:"group";s:5:"admin";}'),
('117da23b4552574ced397087b53e872e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367830030, ''),
('061b0be53cb9aee53cddac6bf92dd3a5', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 1426453906, '');

-- --------------------------------------------------------

--
-- Table structure for table `default_comments`
--

CREATE TABLE `default_comments` (
`id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `parsed` text COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `entry_title` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entry_plural` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_comments`
--

INSERT INTO `default_comments` (`id`, `is_active`, `user_id`, `user_name`, `user_email`, `user_website`, `comment`, `parsed`, `module`, `entry_id`, `entry_title`, `entry_key`, `entry_plural`, `uri`, `cp_uri`, `created_on`, `ip_address`) VALUES
(1, 1, 1, 'Admin Admin', 'root@dmh.com', '', 'hello test comment', '<p>hello test comment</p>\n', 'blog', '2', 'You think water moves fast?', 'blog:post', 'blog:posts', 'blog/2013/04/you-think-water-moves-fast', NULL, 1365831124, '::1'),
(2, 1, 0, 'Ehsan', 'pyrocms.ir@gmail.com', 'http://pyrocms.ir', 'Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus.', '<p>Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus.</p>\n', 'blog', '2', 'You think water moves fast?', 'blog:post', 'blog:posts', 'blog/2013/04/you-think-water-moves-fast', NULL, 1365833350, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `default_comment_blacklists`
--

CREATE TABLE `default_comment_blacklists` (
`id` int(11) NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_contact_log`
--

CREATE TABLE `default_contact_log` (
`id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `sender_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sender_ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sender_os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sent_at` int(11) NOT NULL DEFAULT '0',
  `attachments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_data_fields`
--

CREATE TABLE `default_data_fields` (
`id` int(11) unsigned NOT NULL,
  `field_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `field_slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `field_namespace` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `field_data` blob,
  `view_options` blob,
  `is_locked` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_data_fields`
--

INSERT INTO `default_data_fields` (`id`, `field_name`, `field_slug`, `field_namespace`, `field_type`, `field_data`, `view_options`, `is_locked`) VALUES
(1, 'lang:blog:intro_label', 'intro', 'blogs', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a363a2273696d706c65223b733a31303a22616c6c6f775f74616773223b733a313a2279223b7d, NULL, 'no'),
(2, 'lang:pages:body_label', 'body', 'pages', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a383a22616476616e636564223b733a31303a22616c6c6f775f74616773223b733a313a2279223b7d, NULL, 'no'),
(3, 'lang:user:first_name_label', 'first_name', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a35303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(4, 'lang:user:last_name_label', 'last_name', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a35303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(5, 'lang:profile_company', 'company', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a3130303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(6, 'lang:profile_bio', 'bio', 'users', 'textarea', 0x613a323a7b733a31323a2264656661756c745f74657874223b4e3b733a31303a22616c6c6f775f74616773223b4e3b7d, NULL, 'no'),
(7, 'lang:user:lang', 'lang', 'users', 'pyro_lang', 0x613a313a7b733a31323a2266696c7465725f7468656d65223b733a333a22796573223b7d, NULL, 'no'),
(8, 'lang:profile_dob', 'dob', 'users', 'datetime', 0x613a353a7b733a383a227573655f74696d65223b733a323a226e6f223b733a31303a2273746172745f64617465223b733a353a222d31303059223b733a383a22656e645f64617465223b4e3b733a373a2273746f72616765223b733a343a22756e6978223b733a31303a22696e7075745f74797065223b733a383a2264726f70646f776e223b7d, NULL, 'no'),
(9, 'lang:profile_gender', 'gender', 'users', 'choice', 0x613a353a7b733a31313a2263686f6963655f64617461223b733a33343a22203a204e6f742054656c6c696e670a6d203a204d616c650a66203a2046656d616c65223b733a31313a2263686f6963655f74797065223b733a383a2264726f70646f776e223b733a31333a2264656661756c745f76616c7565223b4e3b733a31313a226d696e5f63686f69636573223b4e3b733a31313a226d61785f63686f69636573223b4e3b7d, NULL, 'no'),
(10, 'lang:profile_phone', 'phone', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(11, 'lang:profile_mobile', 'mobile', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(12, 'lang:profile_address_line1', 'address_line1', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(13, 'lang:profile_address_line2', 'address_line2', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(14, 'lang:profile_address_line3', 'address_line3', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b4e3b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(15, 'lang:profile_address_postcode', 'postcode', 'users', 'text', 0x613a323a7b733a31303a226d61785f6c656e677468223b693a32303b733a31333a2264656661756c745f76616c7565223b4e3b7d, NULL, 'no'),
(16, 'lang:profile_website', 'website', 'users', 'url', NULL, NULL, 'no'),
(17, 'image', 'image', 'blogs', 'image', 0x613a353a7b733a363a22666f6c646572223b733a313a2233223b733a31323a22726573697a655f7769647468223b733a303a22223b733a31333a22726573697a655f686569676874223b733a303a22223b733a31303a226b6565705f726174696f223b733a333a22796573223b733a31333a22616c6c6f7765645f7479706573223b733a31323a226a70677c6a7065677c706e67223b7d, NULL, 'no'),
(18, 'content', 'content', 'pages', 'slug', 0x613a323a7b733a31303a2273706163655f74797065223b733a313a222d223b733a31303a22736c75675f6669656c64223b733a343a22626f6479223b7d, NULL, 'no'),
(19, 'Page body', 'contents', 'pages', 'wysiwyg', 0x613a323a7b733a31313a22656469746f725f74797065223b733a383a22616476616e636564223b733a31303a22616c6c6f775f74616773223b733a313a2279223b7d, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `default_data_field_assignments`
--

CREATE TABLE `default_data_field_assignments` (
`id` int(11) unsigned NOT NULL,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `is_required` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `is_unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `instructions` text COLLATE utf8_unicode_ci,
  `field_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_data_field_assignments`
--

INSERT INTO `default_data_field_assignments` (`id`, `sort_order`, `stream_id`, `field_id`, `is_required`, `is_unique`, `instructions`, `field_name`) VALUES
(1, 1, 1, 1, 'yes', 'no', NULL, NULL),
(2, 1, 2, 2, 'no', 'no', NULL, NULL),
(3, 1, 3, 3, 'yes', 'no', NULL, NULL),
(4, 2, 3, 4, 'yes', 'no', NULL, NULL),
(5, 3, 3, 5, 'no', 'no', NULL, NULL),
(6, 4, 3, 6, 'no', 'no', NULL, NULL),
(7, 5, 3, 7, 'no', 'no', NULL, NULL),
(8, 6, 3, 8, 'no', 'no', NULL, NULL),
(9, 7, 3, 9, 'no', 'no', NULL, NULL),
(10, 8, 3, 10, 'no', 'no', NULL, NULL),
(11, 9, 3, 11, 'no', 'no', NULL, NULL),
(12, 10, 3, 12, 'no', 'no', NULL, NULL),
(13, 11, 3, 13, 'no', 'no', NULL, NULL),
(14, 12, 3, 14, 'no', 'no', NULL, NULL),
(15, 13, 3, 15, 'no', 'no', NULL, NULL),
(16, 14, 3, 16, 'no', 'no', NULL, NULL),
(17, 2, 1, 17, 'no', 'no', 'Upload post image', NULL),
(19, 1, 8, 19, 'no', 'no', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_data_streams`
--

CREATE TABLE `default_data_streams` (
`id` int(10) unsigned NOT NULL,
  `stream_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `stream_slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `stream_namespace` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stream_prefix` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_options` blob NOT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` enum('title','custom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'title',
  `permissions` text COLLATE utf8_unicode_ci,
  `is_hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `menu_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_data_streams`
--

INSERT INTO `default_data_streams` (`id`, `stream_name`, `stream_slug`, `stream_namespace`, `stream_prefix`, `about`, `view_options`, `title_column`, `sorting`, `permissions`, `is_hidden`, `menu_path`) VALUES
(1, 'lang:blog:blog_title', 'blog', 'blogs', NULL, NULL, 0x613a323a7b693a303b733a323a226964223b693a313b733a373a2263726561746564223b7d, NULL, 'title', NULL, 'no', NULL),
(2, 'Default', 'def_page_fields', 'pages', NULL, 'A simple page type with a WYSIWYG editor that will get you started adding content.', 0x613a323a7b693a303b733a323a226964223b693a313b733a373a2263726561746564223b7d, NULL, 'title', NULL, 'no', NULL),
(3, 'lang:user_profile_fields_label', 'profiles', 'users', NULL, 'Profiles for users module', 0x613a313a7b693a303b733a31323a22646973706c61795f6e616d65223b7d, 'display_name', 'title', NULL, 'no', NULL),
(8, 'Page Type custom home', 'custom_home', 'pages', 'pages_', NULL, 0x613a323a7b693a303b733a323a226964223b693a313b733a373a2263726561746564223b7d, NULL, 'title', NULL, 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_def_page_fields`
--

CREATE TABLE `default_def_page_fields` (
`id` int(9) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_def_page_fields`
--

INSERT INTO `default_def_page_fields` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `body`) VALUES
(2, '2013-04-11 00:13:52', '2013-05-05 20:22:12', 1, NULL, '<div class="row-fluid">\r\n<div class="row-fluid">\r\n<div class="span8 pull-left">\r\n<h4 class="section-title"><span>Feedback form</span></h4>\r\n{{ contact:form name=&quot;text|required&quot; email=&quot;text|required|valid_email&quot; subject=&quot;dropdown|Support|Sales|Feedback|Other&quot; message=&quot;textarea&quot; attachment=&quot;file|zip&quot; }}\r\n\r\n<ul class="row-fluid" id="contact-form">\r\n	<li class="span4"><label for="name">Name:</label>{{ name}}</li>\r\n	<li class="span4"><label for="email">Email:</label>{{ email }}</li>\r\n	<li class="span4"><label for="subject">Subject:</label>{{ subject }}</li>\r\n	<li class="span12"><label for="message">Message:</label>{{ message }}</li>\r\n</ul>\r\n\r\n<div><label for="attachment">Attach a zip file:</label>{{ attachment }}</div>\r\n{{ /contact:form }}\r\n\r\n<div class="clearfix">&nbsp;</div>\r\n</div>\r\n\r\n<div class="span4 pull-left">\r\n<h4 class="section-title"><span>Get in touch</span></h4>\r\n\r\n<div class="vmargin">\r\n<div class="icon-map-marker contact-details">&nbsp;</div>\r\nStreet Address nr 100, 4536534, Your Town, United States</div>\r\n\r\n<div class="vmargin">\r\n<div class="icon-phone contact-details">&nbsp;</div>\r\n(212) 555 55 00</div>\r\n\r\n<div class="vmargin">\r\n<div class="icon-envelope contact-details">&nbsp;</div>\r\n<a href="mailto:office@yourwebsite.com">office@yourwebsite.com</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(3, '2013-04-11 00:13:52', '2013-05-05 22:03:25', 1, NULL, '{{ search:form class=&quot;search-form&quot; }} <input  type="text" name="q" placeholder="Search terms..." /> {{ /search:form }}'),
(4, '2013-04-11 00:13:52', '2013-05-05 22:05:12', 1, NULL, '{{ search:form class=&quot;search-form&quot; }} <input name="q" placeholder="Search terms..." type="text" /> {{ /search:form }} {{ search:results }} {{ total }} results for &quot;{{ query }}&quot;.\r\n<hr /> {{ entries }}\r\n<article>\r\n<h3>{{ singular }}: <a href="{{ url }}">{{ title }}</a></h3>\r\n\r\n<p>{{ description }}</p>\r\n</article>\r\n{{ /entries }} {{ pagination }} {{ /search:results }}'),
(5, '2013-04-11 00:13:52', NULL, 1, NULL, '<p>We cannot find the page you are looking for, please click <a title="Home" href="{{ pages:url id=''1'' }}">here</a> to go to the homepage.</p>'),
(7, '2013-04-17 15:47:57', '2013-04-18 20:37:47', 1, 1, '<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n'),
(8, '2013-04-18 20:36:34', NULL, 1, 2, '<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>'),
(9, '2013-04-18 20:37:05', NULL, 1, 3, '<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	In at odio id dui vulputate sodales nec at arcu. Nullam eu dolor ut nulla feugiat dapibus at ornare nulla. Curabitur sed justo purus. Etiam velit leo, condimentum at bibendum consectetur, luctus eu dui. Donec lacinia, leo vel pulvinar tempor, nisl dolor fringilla enim, eu condimentum est nunc eget felis. Etiam posuere tincidunt lectus, a cursus velit congue ut. Morbi eros lectus, sollicitudin at consectetur vel, volutpat quis diam.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ut libero nibh, viverra at faucibus at, posuere non tortor. Suspendisse potenti. Sed et nulla eu est eleifend porta. Ut lobortis nisi nec nisi tempor iaculis. Mauris leo elit, luctus et ullamcorper eget, hendrerit vel nulla. Suspendisse ullamcorper erat nec turpis tempor luctus. Duis gravida posuere blandit. Nulla in metus orci, non adipiscing ante. Nulla non pellentesque neque. Cras rutrum semper odio, vel eleifend diam suscipit at. Fusce luctus justo vel dolor egestas viverra rutrum dolor gravida. Praesent a eros neque, in tincidunt sapien. Mauris et risus et sapien egestas tristique. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>'),
(10, '2013-04-18 21:20:57', '2013-05-05 20:14:00', 1, 4, '<div class="row-fluid"><!-- main area -->\r\n<div class="row-fluid">\r\n<h3 class="section-title vmargin">Service Icons</h3>\r\n\r\n<ul class="the-big-icons">\r\n	<li><br />\r\n	bicon-arrow</li>\r\n	<li><br />\r\n	bicon-blocked</li>\r\n	<li><br />\r\n	bicon-Briefcase</li>\r\n	<li><br />\r\n	bicon-Broadcast</li>\r\n	<li><br />\r\n	bicon-Bulb</li>\r\n	<li><br />\r\n	bicon-Cart</li>\r\n	<li><br />\r\n	bicon-Cell</li>\r\n	<li><br />\r\n	bicon-Chart</li>\r\n	<li><br />\r\n	bicon-Circle</li>\r\n	<li><br />\r\n	bicon-Circle-2</li>\r\n	<li><br />\r\n	bicon-Clock</li>\r\n	<li><br />\r\n	bicon-Closed</li>\r\n	<li><br />\r\n	bicon-Control-Panel</li>\r\n	<li><br />\r\n	bicon-currency</li>\r\n	<li><br />\r\n	bicon-File</li>\r\n	<li><br />\r\n	bicon-Floppy</li>\r\n	<li><br />\r\n	bicon-Folder</li>\r\n	<li><br />\r\n	bicon-Forward</li>\r\n	<li><br />\r\n	bicon-Globe</li>\r\n	<li><br />\r\n	bicon-Home</li>\r\n	<li><br />\r\n	bicon-info</li>\r\n	<li><br />\r\n	bicon-info-2</li>\r\n	<li><br />\r\n	bicon-Key</li>\r\n	<li><br />\r\n	bicon-Letter-Closed</li>\r\n	<li><br />\r\n	bicon-Letter-Open</li>\r\n	<li><br />\r\n	bicon-List</li>\r\n	<li><br />\r\n	bicon-Lock</li>\r\n	<li><br />\r\n	bicon-Machine</li>\r\n	<li><br />\r\n	bicon-Massage</li>\r\n	<li><br />\r\n	bicon-Network</li>\r\n	<li><br />\r\n	bicon-Pause</li>\r\n	<li><br />\r\n	bicon-Picture</li>\r\n	<li><br />\r\n	bicon-Play</li>\r\n	<li><br />\r\n	bicon-Power</li>\r\n	<li><br />\r\n	bicon-Recycle</li>\r\n	<li><br />\r\n	bicon-Recycle-Closed</li>\r\n	<li><br />\r\n	bicon-Recycle-Open</li>\r\n	<li><br />\r\n	bicon-Reverse</li>\r\n	<li><br />\r\n	bicon-RSS</li>\r\n	<li><br />\r\n	bicon-Scince</li>\r\n	<li><br />\r\n	bicon-Search</li>\r\n	<li><br />\r\n	bicon-Sign-Down</li>\r\n	<li><br />\r\n	bicon-Sign-up</li>\r\n	<li><br />\r\n	bicon-Stock</li>\r\n	<li><br />\r\n	bicon-Track-back</li>\r\n	<li><br />\r\n	bicon-Track-Forward</li>\r\n	<li><br />\r\n	bicon-TV</li>\r\n	<li><br />\r\n	bicon-Un-Lock</li>\r\n	<li><br />\r\n	bicon-Wire-less</li>\r\n	<li><br />\r\n	bicon-Work</li>\r\n</ul>\r\n</div>\r\n\r\n<div class="row-fluid">\r\n<h3 class="section-title vmargin"><span>Font awesome</span></h3>\r\n\r\n<ul class="the-icons clearfix">\r\n	<li>icon-cloud-download</li>\r\n	<li>icon-cloud-upload</li>\r\n	<li>icon-lightbulb</li>\r\n	<li>icon-exchange</li>\r\n	<li>icon-bell-alt</li>\r\n	<li>icon-file-alt</li>\r\n	<li>icon-beer</li>\r\n	<li>icon-coffee</li>\r\n	<li>icon-food</li>\r\n	<li>icon-fighter-jet</li>\r\n	<li>icon-user-md</li>\r\n	<li>icon-stethoscope</li>\r\n	<li>icon-suitcase</li>\r\n	<li>icon-building</li>\r\n	<li>icon-hospital</li>\r\n	<li>icon-ambulance</li>\r\n	<li>icon-medkit</li>\r\n	<li>icon-h-sign</li>\r\n	<li>icon-plus-sign-alt</li>\r\n	<li>icon-spinner</li>\r\n	<li>icon-angle-left</li>\r\n	<li>icon-angle-right</li>\r\n	<li>icon-angle-up</li>\r\n	<li>icon-angle-down</li>\r\n	<li>icon-double-angle-left</li>\r\n	<li>icon-double-angle-right</li>\r\n	<li>icon-double-angle-up</li>\r\n	<li>icon-double-angle-down</li>\r\n	<li>icon-circle-blank</li>\r\n	<li>icon-circle</li>\r\n	<li>icon-desktop</li>\r\n	<li>icon-laptop</li>\r\n	<li>icon-tablet</li>\r\n	<li>icon-mobile-phone</li>\r\n	<li>icon-quote-left</li>\r\n	<li>icon-quote-right</li>\r\n	<li>icon-reply</li>\r\n	<li>icon-github-alt</li>\r\n	<li>icon-folder-close-alt</li>\r\n	<li>icon-folder-open-alt</li>\r\n	<li>icon-adjust</li>\r\n	<li>icon-asterisk</li>\r\n	<li>icon-ban-circle</li>\r\n	<li>icon-bar-chart</li>\r\n	<li>icon-barcode</li>\r\n	<li>icon-beaker</li>\r\n	<li>icon-beer</li>\r\n	<li>icon-bell</li>\r\n	<li>icon-bell-alt</li>\r\n	<li>icon-bolt</li>\r\n	<li>icon-book</li>\r\n	<li>icon-bookmark</li>\r\n	<li>icon-bookmark-empty</li>\r\n	<li>icon-briefcase</li>\r\n	<li>icon-bullhorn</li>\r\n	<li>icon-calendar</li>\r\n	<li>icon-camera</li>\r\n	<li>icon-camera-retro</li>\r\n	<li>icon-certificate</li>\r\n	<li>icon-check</li>\r\n	<li>icon-check-empty</li>\r\n	<li>icon-circle</li>\r\n	<li>icon-circle-blank</li>\r\n	<li>icon-cloud</li>\r\n	<li>icon-cloud-download</li>\r\n	<li>icon-cloud-upload</li>\r\n	<li>icon-coffee</li>\r\n	<li>icon-cog</li>\r\n	<li>icon-cogs</li>\r\n	<li>icon-comment</li>\r\n	<li>icon-comment-alt</li>\r\n	<li>icon-comments</li>\r\n	<li>icon-comments-alt</li>\r\n	<li>icon-credit-card</li>\r\n	<li>icon-dashboard</li>\r\n	<li>icon-desktop</li>\r\n	<li>icon-download</li>\r\n	<li>icon-download-alt</li>\r\n	<li>icon-edit</li>\r\n	<li>icon-envelope</li>\r\n	<li>icon-envelope-alt</li>\r\n	<li>icon-exchange</li>\r\n	<li>icon-exclamation-sign</li>\r\n	<li>icon-external-link</li>\r\n	<li>icon-eye-close</li>\r\n	<li>icon-eye-open</li>\r\n	<li>icon-facetime-video</li>\r\n	<li>icon-fighter-jet</li>\r\n	<li>icon-film</li>\r\n	<li>icon-filter</li>\r\n	<li>icon-fire</li>\r\n	<li>icon-flag</li>\r\n	<li>icon-folder-close</li>\r\n	<li>icon-folder-open</li>\r\n	<li>icon-folder-close-alt</li>\r\n	<li>icon-folder-open-alt</li>\r\n	<li>icon-food</li>\r\n	<li>icon-gift</li>\r\n	<li>icon-glass</li>\r\n	<li>icon-globe</li>\r\n	<li>icon-group</li>\r\n	<li>icon-hdd</li>\r\n	<li>icon-headphones</li>\r\n	<li>icon-heart</li>\r\n	<li>icon-heart-empty</li>\r\n	<li>icon-home</li>\r\n	<li>icon-inbox</li>\r\n	<li>icon-info-sign</li>\r\n	<li>icon-key</li>\r\n	<li>icon-leaf</li>\r\n	<li>icon-laptop</li>\r\n	<li>icon-legal</li>\r\n	<li>icon-lemon</li>\r\n	<li>icon-lightbulb</li>\r\n	<li>icon-lock</li>\r\n	<li>icon-unlock</li>\r\n	<li>icon-magic</li>\r\n	<li>icon-magnet</li>\r\n	<li>icon-map-marker</li>\r\n	<li>icon-minus</li>\r\n	<li>icon-minus-sign</li>\r\n	<li>icon-mobile-phone</li>\r\n	<li>icon-money</li>\r\n	<li>icon-move</li>\r\n	<li>icon-music</li>\r\n	<li>icon-off</li>\r\n	<li>icon-ok</li>\r\n	<li>icon-ok-circle</li>\r\n	<li>icon-ok-sign</li>\r\n	<li>icon-pencil</li>\r\n	<li>icon-picture</li>\r\n	<li>icon-plane</li>\r\n	<li>icon-plus</li>\r\n	<li>icon-plus-sign</li>\r\n	<li>icon-print</li>\r\n	<li>icon-pushpin</li>\r\n	<li>icon-qrcode</li>\r\n	<li>icon-question-sign</li>\r\n	<li>icon-quote-left</li>\r\n	<li>icon-quote-right</li>\r\n	<li>icon-random</li>\r\n	<li>icon-refresh</li>\r\n	<li>icon-remove</li>\r\n	<li>icon-remove-circle</li>\r\n	<li>icon-remove-sign</li>\r\n	<li>icon-reorder</li>\r\n	<li>icon-reply</li>\r\n	<li>icon-resize-horizontal</li>\r\n	<li>icon-resize-vertical</li>\r\n	<li>icon-retweet</li>\r\n	<li>icon-road</li>\r\n	<li>icon-rss</li>\r\n	<li>icon-screenshot</li>\r\n	<li>icon-search</li>\r\n	<li>icon-share</li>\r\n	<li>icon-share-alt</li>\r\n	<li>icon-shopping-cart</li>\r\n	<li>icon-signal</li>\r\n	<li>icon-signin</li>\r\n	<li>icon-signout</li>\r\n	<li>icon-sitemap</li>\r\n	<li>icon-sort</li>\r\n	<li>icon-sort-down</li>\r\n	<li>icon-sort-up</li>\r\n	<li>icon-spinner</li>\r\n	<li>icon-star</li>\r\n	<li>icon-star-empty</li>\r\n	<li>icon-star-half</li>\r\n	<li>icon-tablet</li>\r\n	<li>icon-tag</li>\r\n	<li>icon-tags</li>\r\n	<li>icon-tasks</li>\r\n	<li>icon-thumbs-down</li>\r\n	<li>icon-thumbs-up</li>\r\n	<li>icon-time</li>\r\n	<li>icon-tint</li>\r\n	<li>icon-trash</li>\r\n	<li>icon-trophy</li>\r\n	<li>icon-truck</li>\r\n	<li>icon-umbrella</li>\r\n	<li>icon-upload</li>\r\n	<li>icon-upload-alt</li>\r\n	<li>icon-user</li>\r\n	<li>icon-user-md</li>\r\n	<li>icon-volume-off</li>\r\n	<li>icon-volume-down</li>\r\n	<li>icon-volume-up</li>\r\n	<li>icon-warning-sign</li>\r\n	<li>icon-wrench</li>\r\n	<li>icon-zoom-in</li>\r\n	<li>icon-zoom-out</li>\r\n	<li>icon-file</li>\r\n	<li>icon-file-alt</li>\r\n	<li>icon-cut</li>\r\n	<li>icon-copy</li>\r\n	<li>icon-paste</li>\r\n	<li>icon-save</li>\r\n	<li>icon-undo</li>\r\n	<li>icon-repeat</li>\r\n	<li>icon-text-height</li>\r\n	<li>icon-text-width</li>\r\n	<li>icon-align-left</li>\r\n	<li>icon-align-center</li>\r\n	<li>icon-align-right</li>\r\n	<li>icon-align-justify</li>\r\n	<li>icon-indent-left</li>\r\n	<li>icon-indent-right</li>\r\n	<li>icon-font</li>\r\n	<li>icon-bold</li>\r\n	<li>icon-italic</li>\r\n	<li>icon-strikethrough</li>\r\n	<li>icon-underline</li>\r\n	<li>icon-link</li>\r\n	<li>icon-paper-clip</li>\r\n	<li>icon-columns</li>\r\n	<li>icon-table</li>\r\n	<li>icon-th-large</li>\r\n	<li>icon-th</li>\r\n	<li>icon-th-list</li>\r\n	<li>icon-list</li>\r\n	<li>icon-list-ol</li>\r\n	<li>icon-list-ul</li>\r\n	<li>icon-list-alt</li>\r\n	<li>icon-angle-left</li>\r\n	<li>icon-angle-right</li>\r\n	<li>icon-angle-up</li>\r\n	<li>icon-angle-down</li>\r\n	<li>icon-arrow-down</li>\r\n	<li>icon-arrow-left</li>\r\n	<li>icon-arrow-right</li>\r\n	<li>icon-arrow-up</li>\r\n	<li>icon-caret-down</li>\r\n	<li>icon-caret-left</li>\r\n	<li>icon-caret-right</li>\r\n	<li>icon-caret-up</li>\r\n	<li>icon-chevron-down</li>\r\n	<li>icon-chevron-left</li>\r\n	<li>icon-chevron-right</li>\r\n	<li>icon-chevron-up</li>\r\n	<li>icon-circle-arrow-down</li>\r\n	<li>icon-circle-arrow-left</li>\r\n	<li>icon-circle-arrow-right</li>\r\n	<li>icon-circle-arrow-up</li>\r\n	<li>icon-double-angle-left</li>\r\n	<li>icon-double-angle-right</li>\r\n	<li>icon-double-angle-up</li>\r\n	<li>icon-double-angle-down</li>\r\n	<li>icon-hand-down</li>\r\n	<li>icon-hand-left</li>\r\n	<li>icon-hand-right</li>\r\n	<li>icon-hand-up</li>\r\n	<li>icon-circle</li>\r\n	<li>icon-circle-blank</li>\r\n	<li>icon-play-circle</li>\r\n	<li>icon-play</li>\r\n	<li>icon-pause</li>\r\n	<li>icon-stop</li>\r\n	<li>icon-step-backward</li>\r\n	<li>icon-fast-backward</li>\r\n	<li>icon-backward</li>\r\n	<li>icon-forward</li>\r\n	<li>icon-fast-forward</li>\r\n	<li>icon-step-forward</li>\r\n	<li>icon-eject</li>\r\n	<li>icon-fullscreen</li>\r\n	<li>icon-resize-full</li>\r\n	<li>icon-resize-small</li>\r\n	<li>icon-phone</li>\r\n	<li>icon-phone-sign</li>\r\n	<li>icon-facebook</li>\r\n	<li>icon-facebook-sign</li>\r\n	<li>icon-twitter</li>\r\n	<li>icon-twitter-sign</li>\r\n	<li>icon-github</li>\r\n	<li>icon-github-alt</li>\r\n	<li>icon-github-sign</li>\r\n	<li>icon-linkedin</li>\r\n	<li>icon-linkedin-sign</li>\r\n	<li>icon-pinterest</li>\r\n	<li>icon-pinterest-sign</li>\r\n	<li>icon-google-plus</li>\r\n	<li>icon-google-plus-sign</li>\r\n	<li>icon-sign-blank</li>\r\n	<li>icon-ambulance</li>\r\n	<li>icon-beaker</li>\r\n	<li>icon-h-sign</li>\r\n	<li>icon-hospital</li>\r\n	<li>icon-medkit</li>\r\n	<li>icon-plus-sign-alt</li>\r\n	<li>icon-stethoscope</li>\r\n	<li>icon-user-md</li>\r\n</ul>\r\n</div>\r\n<!-- /main area --></div>\r\n'),
(11, '2013-04-19 10:44:31', '2013-05-06 10:43:57', 1, 5, '<div class="row-fluid vmargin">\r\n<div class="span4">\r\n<p><span class="drop-cap">P</span>ras aliquet. Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna eros ac molestie placerat, enim tellus varius.Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna</p>\r\n</div>\r\n\r\n<div class="span4">\r\n<p><span class="drop-cap gray">P</span>ras aliquet. Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna eros ac molestie placerat, enim tellus varius.Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna Integer faucibus, eros ac molestie placerat, enim tellus varius lacus, nec dictum nunc tortor id urna</p>\r\n</div>\r\n</div>\r\n'),
(12, '2013-04-19 10:45:52', '2013-05-06 10:44:32', 1, 6, '<div class="row-fluid">\r\n<div class="span4">\r\n<h4 class="h-bg-1"><span>Blackquote</span></h4>\r\n\r\n<div class="vmargin">\r\n<blockquote>\r\n<p>Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Smith, <cite title="Source Title">Stanford University</cite></small></blockquote>\r\n\r\n<blockquote class="pull-right">\r\n<p>Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Smith, <cite title="Source Title">Stanford University</cite></small></blockquote>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<h4 class="h-bg-1"><span style="line-height: 1.2em;">highlights</span></h4>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="vmargin">\r\n<p>Nullam lobortis luctus mi ac interdum. Nullam turpis felis, lacinia nec mollis at, tincidunt et nulla. Vestibulum ante ipsum primis in faucibus orci <span class="highlight">luctus et ultrices posuere cubilia Curae</span>; Fusce nec leo vel felis pharetra elementum. Pellentesque id leo mollis tellus porta cursus. <span class="highlight gray">Nam consequat placerat porta.</span> Maecenas varius cursus convallis. Suspendisse sit amet tortor in elit tincidunt condimentum. Quisque ut urna nec erat laoreet elementum sit amet ut tortor. Maecenas lacinia condimentum hendrerit. <span class="highlight black">Praesent scelerisque, urna id venenatis vulputate,</span> diam elit ultricies dui, in imperdiet quam leo et libero. Nulla id lacus a ipsum egestas adipiscing.</p>\r\n</div>\r\n</div>\r\n</div>\r\n'),
(14, '2013-04-19 10:47:28', NULL, 1, 7, '<div class="row-fluid ">\r\n                    <div class="span3">\r\n                        <h4 class="h-bg-1"><span>Normal list</span></h4>\r\n                        <ul class="vmargin">\r\n                            <li>\r\n                                <i class=" icon-angle-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-double-angle-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-plus"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-minus"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-ok-circle"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-ok-sign"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-check"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-arrow-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-circle"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-circle-blank"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-ok"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-star"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-caret-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-hand-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-thumbs-up"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-thumbs-down"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n\r\n\r\n                        </ul>\r\n                        <div class="vmargin">\r\n                            <h4 class="h-bg-1"><span>Unordered list</span></h4>\r\n                        </div>\r\n                        <ul class="list">\r\n                            <li>Lorem ipsum dolor sit amet</li>\r\n                            <li>Consectetur adipiscing elit</li>\r\n                            <li>Integer molestie lorem at massa</li>\r\n                            <li>Facilisis in pretium nisl aliquet</li>\r\n                            <li>Nulla volutpat aliquam velit\r\n                                <ul>\r\n                                <li>Phasellus iaculis neque</li>\r\n                                <li>Purus sodales ultricies</li>\r\n                                <li>Vestibulum laoreet porttitor sem</li>\r\n                                <li>Ac tristique libero volutpat at</li>\r\n                                </ul>\r\n                            </li>\r\n                            <li>Faucibus porta lacus fringilla vel</li>\r\n                            <li>Aenean sit amet erat nunc</li>\r\n                            <li>Eget porttitor lorem</li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class="span3">\r\n                        <h4 class="h-bg-1"><span>Colored list</span></h4>\r\n                        <ul class="vmargin color-icons">\r\n                            <li>\r\n                                <i class=" icon-angle-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-double-angle-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-plus"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-minus"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-ok-circle"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-ok-sign"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-check"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-arrow-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-circle"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-circle-blank"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-ok"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-star"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-caret-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class="icon-hand-right"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-thumbs-up"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n                            <li>\r\n                                <i class=" icon-thumbs-down"></i>\r\n                                eget conseact etur lectus\r\n                            </li>\r\n\r\n\r\n                        </ul>\r\n                        <div class="vmargin">\r\n                            <h4 class="h-bg-1"><span>Ordered list</span></h4>\r\n                        </div>\r\n                        <ol>\r\n                            <li>Lorem ipsum dolor sit amet</li>\r\n                            <li>Consectetur adipiscing elit</li>\r\n                            <li>Integer molestie lorem at massa</li>\r\n                            <li>Facilisis in pretium nisl aliquet</li>\r\n                            <li>Nulla volutpat aliquam velit</li>\r\n                            <li>Faucibus porta lacus fringilla vel</li>\r\n                            <li>Aenean sit amet erat nunc</li>\r\n                            <li>Eget porttitor lorem</li>\r\n                        </ol>\r\n                    </div>\r\n                    <div class="span6">\r\n                        <h4 class="h-bg-1"><span>Large list</span></h4>\r\n                        <div class="row-fluid">\r\n                                    <div class="span6">\r\n                                    <ul class="vmargin large-icons">\r\n                                        <li>\r\n                                            <i class=" icon-angle-right"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-double-angle-right"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-plus"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-minus"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class="icon-ok-circle"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-ok-sign"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-check"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-arrow-right"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n\r\n\r\n\r\n                                    </ul>\r\n                                </div>\r\n                                <div class="span6">\r\n                                    <ul class="vmargin large-icons color-icons">\r\n\r\n                                        <li>\r\n                                            <i class="icon-circle"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-circle-blank"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-ok"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-star"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-caret-right"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class="icon-hand-right"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-thumbs-up"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n                                        <li>\r\n                                            <i class=" icon-thumbs-down"></i>\r\n                                            eget conseact etur lectus\r\n                                        </li>\r\n\r\n\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n                </div>'),
(15, '2013-04-19 10:48:24', NULL, 1, 8, '<div class="row-fluid">\r\n                    <div class="span6">\r\n                        <h4 class="underline vmargin"><span>Striped table</span></h4>\r\n                        <table class="table table-striped ">\r\n                            <thead>\r\n                                <tr>\r\n                                    <th>#</th>\r\n                                    <th>First Name</th>\r\n                                    <th>Last Name</th>\r\n                                    <th>Username</th>\r\n                                </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td>1</td>\r\n                                    <td>Mark</td>\r\n                                    <td>Otto</td>\r\n                                    <td>@mdo</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>2</td>\r\n                                    <td>Jacob</td>\r\n                                    <td>Thornton</td>\r\n                                    <td>@fat</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>3</td>\r\n                                    <td>Larry</td>\r\n                                    <td>the Bird</td>\r\n                                    <td>@twitter</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                    </div>\r\n                    <div class="span6">\r\n                        <h4 class="underline vmargin"><span>Bordered table</span></h4>\r\n                        <table class="table table-bordered ">\r\n                            <thead>\r\n                                <tr>\r\n                                    <th>#</th>\r\n                                    <th>First Name</th>\r\n                                    <th>Last Name</th>\r\n                                    <th>Username</th>\r\n                                </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td>1</td>\r\n                                    <td>Mark</td>\r\n                                    <td>Otto</td>\r\n                                    <td>@mdo</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>2</td>\r\n                                    <td>Jacob</td>\r\n                                    <td>Thornton</td>\r\n                                    <td>@fat</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>3</td>\r\n                                    <td>Larry</td>\r\n                                    <td>the Bird</td>\r\n                                    <td>@twitter</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>\r\n                    </div>\r\n                </div>\r\n                <div class="row-fluid">\r\n                    <div class="span6">\r\n                        <h4 class="underline vmargin"><span>Hover table</span></h4>\r\n                        <table class="table table-hover ">\r\n                            <thead>\r\n                                <tr>\r\n                                    <th>#</th>\r\n                                    <th>First Name</th>\r\n                                    <th>Last Name</th>\r\n                                    <th>Username</th>\r\n                                </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td>1</td>\r\n                                    <td>Mark</td>\r\n                                    <td>Otto</td>\r\n                                    <td>@mdo</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>2</td>\r\n                                    <td>Jacob</td>\r\n                                    <td>Thornton</td>\r\n                                    <td>@fat</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>3</td>\r\n                                    <td>Larry</td>\r\n                                    <td>the Bird</td>\r\n                                    <td>@twitter</td>\r\n                                </tr>\r\n                            </tbody>\r\n\r\n                        </table>\r\n                    </div>\r\n                    <div class="span6">\r\n                        <h4 class="underline vmargin"><span>Condensed table</span></h4>\r\n                        <table class="table table-condensed">\r\n                            <thead>\r\n                                <tr>\r\n                                    <th>#</th>\r\n                                    <th>First Name</th>\r\n                                    <th>Last Name</th>\r\n                                    <th>Username</th>\r\n                                </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td>1</td>\r\n                                    <td>Mark</td>\r\n                                    <td>Otto</td>\r\n                                    <td>@mdo</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>2</td>\r\n                                    <td>Jacob</td>\r\n                                    <td>Thornton</td>\r\n                                    <td>@fat</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>3</td>\r\n                                    <td>Larry</td>\r\n                                    <td>the Bird</td>\r\n                                    <td>@twitter</td>\r\n                                </tr>\r\n                            </tbody>\r\n\r\n                        </table>\r\n                    </div>\r\n                </div>');
INSERT INTO `default_def_page_fields` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `body`) VALUES
(16, '2013-04-19 10:49:09', '2013-04-19 12:42:20', 1, 9, '<div class="row-fluid">\r\n<div class="span4">\r\n<div class="tabbable">\r\n<ul class="nav nav-tabs" id="myTab">\r\n	<li class="active"><a data-toggle="tab" href="#tab1">Tab 1</a></li>\r\n	<li><a data-toggle="tab" href="#tab2">Tab 2</a></li>\r\n	<li><a data-toggle="tab" href="#tab3">Tab 3</a></li>\r\n</ul>\r\n\r\n<div class="tab-content" id="myTabContent">\r\n<div class="tab-pane fade active in" id="tab1">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor.</p>\r\n</div>\r\n\r\n<div class="tab-pane fade" id="tab2">\r\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation.</p>\r\n</div>\r\n\r\n<div class="tab-pane fade" id="tab3">\r\n<p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari.</p>\r\n</div>\r\n<!-- tabs end --></div>\r\n</div>\r\n</div>\r\n\r\n<div class="span4">\r\n<dl class="accordion-wrapper">\r\n	<dt class="accordion-head active"><a href="#">What venus you were living in!?</a></dt>\r\n	<dd class="accordion-body">\r\n	<div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae</div>\r\n	</dd>\r\n	<dt class="accordion-head"><a href="#">Take one more step</a></dt>\r\n	<dd class="accordion-body">\r\n	<div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae</div>\r\n	</dd>\r\n	<dt class="accordion-head"><a href="#">You might be unchained</a></dt>\r\n	<dd class="accordion-body">\r\n	<div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae</div>\r\n	</dd>\r\n	<dt class="accordion-head last"><a href="#">There you go!</a></dt>\r\n	<dd class="accordion-body">\r\n	<div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae</div>\r\n	</dd>\r\n</dl>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="tabbable tabs-left  texture-1">\r\n<ul class="nav nav-tabs" id="myTab2">\r\n	<li class="active"><a data-toggle="pill" href="#tab4">Section 1</a></li>\r\n	<li><a data-toggle="pill" href="#tab5">Section 2</a></li>\r\n	<li><a data-toggle="pill" href="#tab6">Section 3</a></li>\r\n</ul>\r\n\r\n<div class="tab-content">\r\n<div class="tab-pane active fade in" id="tab4">\r\n<p>Raw denim you probably haven&#39;t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>\r\n</div>\r\n\r\n<div class="tab-pane fade" id="tab5">\r\n<p>next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard</p>\r\n</div>\r\n\r\n<div class="tab-pane fade" id="tab6">\r\n<p>Howdy, I&#39;m in Section 3.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),
(17, '2013-04-19 10:49:53', '2013-04-19 14:02:02', 1, 10, '<section id="buttons">\r\n<div class="row">\r\n<div class="span8">\r\n<table class="table table-bordered table-striped">\r\n	<thead>\r\n		<tr>\r\n			<th>Button</th>\r\n			<th>class=&quot;&quot;</th>\r\n			<th>Description</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><button class="btn">Default</button></td>\r\n			<td><code>btn</code></td>\r\n			<td>Standard gray button with gradient</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-primary">Primary</button></td>\r\n			<td><code>btn btn-primary</code></td>\r\n			<td>Identifies the primary action in a set of buttons</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-info">Info</button></td>\r\n			<td><code>btn btn-info</code></td>\r\n			<td>Used as an alternate to the default styles</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-success">Success</button></td>\r\n			<td><code>btn btn-success</code></td>\r\n			<td>Indicates a successful or positive action</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-warning">Warning</button></td>\r\n			<td><code>btn btn-warning</code></td>\r\n			<td>Indicates caution should be taken with this action</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-danger">Danger</button></td>\r\n			<td><code>btn btn-danger</code></td>\r\n			<td>Indicates a dangerous or potentially negative action</td>\r\n		</tr>\r\n		<tr>\r\n			<td><button class="btn btn-inverse">Inverse</button></td>\r\n			<td><code>btn btn-inverse</code></td>\r\n			<td>Alternate dark gray button, not tied to a semantic action or use</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class="span4">\r\n<h5>Buttons for actions</h5>\r\n\r\n<p>Button styles can be applied to anything with the <code>.btn</code> class applied. However, typically you&#39;ll want to apply these to only <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements.</p>\r\n\r\n<h6>Multiple sizes</h6>\r\n\r\n<p>Fancy larger or smaller buttons? Add <code>.btn-large</code>, <code>.btn-small</code>, or <code>.btn-mini</code> for two additional sizes.</p>\r\n\r\n<p><button class="btn btn-large btn-warning">Primary action</button></p>\r\n\r\n<p><button class="btn btn-small btn-danger">Primary action</button></p>\r\n\r\n<p><button class="btn btn-mini btn-inverse">Primary action</button></p>\r\n</div>\r\n</div>\r\n</section>\r\n<section id="pagination">\r\n              		<div class="row">\r\n                    <div class="span4">\r\n                     <h5>Pagination</h5>\r\n                 \r\n                    <p>Links are customizable and work in a number of circumstances with the right class. <code>.disabled</code> for unclickable links and <code>.active</code> for current page.</p>\r\n                      <h6>Flexible alignment</h6>\r\n                      <p>Add either of two optional classes to change the alignment of pagination links: <code>.pagination-centered</code> and <code>.pagination-right</code>.</p>\r\n                    </div>\r\n                    <div class="span4">\r\n                     \r\n                      <div class="pagination">\r\n                        <ul>\r\n                          <li class="disabled"><a href="#">«</a></li>\r\n                          <li class="active"><a href="#">1</a></li>\r\n                          <li><a href="#">2</a></li>\r\n                          <li><a href="#">3</a></li>\r\n                          <li><a href="#">4</a></li>\r\n                          <li><a href="#">»</a></li>\r\n                        </ul>\r\n                      </div>\r\n                      <div class="pagination">\r\n                        <ul>\r\n                          <li><a href="#">«</a></li>\r\n                          <li><a href="#">10</a></li>\r\n                          <li class="active"><a href="#">11</a></li>\r\n                          <li><a href="#">12</a></li>\r\n                          <li><a href="#">»</a></li>\r\n                        </ul>\r\n                      </div>\r\n                      <div class="pagination">\r\n                        <ul>\r\n                          <li><a href="#">←</a></li>\r\n                          <li class="active"><a href="#">10</a></li>\r\n                          <li class="disabled"><a href="#">...</a></li>\r\n                          <li><a href="#">20</a></li>\r\n                          <li><a href="#">→</a></li>\r\n                        </ul>\r\n                      </div>\r\n                    </div>\r\n                    \r\n			<div class="span4">\r\n<pre class="prettyprint linenums">&lt;div class="pagination"&gt;\r\n  &lt;ul&gt;\r\n    &lt;li&gt;&lt;a href="#"&gt;Prev&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li class="active"&gt;\r\n      &lt;a href="#"&gt;1&lt;/a&gt;\r\n    &lt;/li&gt;\r\n    &lt;li&gt;&lt;a href="#"&gt;2&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href="#"&gt;3&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href="#"&gt;4&lt;/a&gt;&lt;/li&gt;\r\n    &lt;li&gt;&lt;a href="#"&gt;Next&lt;/a&gt;&lt;/li&gt;\r\n  &lt;/ul&gt;\r\n&lt;/div&gt;</pre>\r\n                </div>\r\n                  </div>\r\n                \r\n                 <div class="row">\r\n                    <div class="span4">\r\n                     <h5>Pagers</h5>\r\n                      <p>The pager component is a set of links for simple pagination implementations with light markup and even lighter styles. It''s great for simple sites like blogs or magazines.</p>\r\n                      <h6>Optional disabled state</h6>\r\n                      <p>Pager links also use the general <code>.disabled</code> class from the pagination.</p>\r\n                    </div>\r\n                    \r\n				<div class="span4">\r\n                    <ul class="pager">\r\n                        <li><a href="#">Previous</a></li>\r\n                        <li><a href="#">Next</a></li>\r\n                      </ul>\r\n                        <pre class="prettyprint linenums">&lt;ul class="pager"&gt;\r\n  &lt;li&gt;\r\n    &lt;a href="#"&gt;Previous&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li&gt;\r\n    &lt;a href="#"&gt;Next&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;</pre>\r\n		</div>\r\n                    <div class="span4">\r\n                     <ul class="pager">\r\n                        <li class="previous"><a href="#">← Older</a></li>\r\n                        <li class="next"><a href="#">Newer →</a></li>\r\n                      </ul>\r\n                        <pre class="prettyprint linenums">&lt;ul class="pager"&gt;\r\n  &lt;li class="previous"&gt;\r\n    &lt;a href="#"&gt;&amp;larr; Older&lt;/a&gt;\r\n  &lt;/li&gt;\r\n  &lt;li class="next"&gt;\r\n    &lt;a href="#"&gt;Newer &amp;rarr;&lt;/a&gt;\r\n  &lt;/li&gt;\r\n&lt;/ul&gt;</pre>\r\n                    </div>\r\n                  </div>\r\n                </section>\r\n<section id="progress">\r\n<div class="page-header">\r\n<h5>Progress bars</h5>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="span4">\r\n<div class="progress">\r\n<div class="bar" style="width: 60%;">&nbsp;</div>\r\n</div>\r\n\r\n<pre class="prettyprint linenums">\r\n&lt;div class=&quot;progress&quot;&gt;\r\n  &lt;div class=&quot;bar&quot;\r\n       style=&quot;width: 60%;&quot;&gt;&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="progress progress-striped">\r\n<div class="bar" style="width: 20%;">&nbsp;</div>\r\n</div>\r\n\r\n<pre class="prettyprint linenums">\r\n&lt;div class=&quot;progress progress-striped&quot;&gt;\r\n  &lt;div class=&quot;bar&quot;\r\n       style=&quot;width: 20%;&quot;&gt;&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n</div>\r\n\r\n<div class="span4">\r\n<div class="progress progress-striped active">\r\n<div class="bar" style="width: 45%">&nbsp;</div>\r\n</div>\r\n\r\n<pre class="prettyprint linenums">\r\n&lt;div class=&quot;progress progress-striped\r\n     active&quot;&gt;\r\n  &lt;div class=&quot;bar&quot;\r\n       style=&quot;width: 40%;&quot;&gt;&lt;/div&gt;\r\n&lt;/div&gt;</pre>\r\n</div>\r\n</div>\r\n\r\n<div class="row">\r\n<div class="span3">\r\n<h6>Additional colors</h6>\r\n\r\n<div class="progress progress-info" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 20%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-success" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 40%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-warning" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 60%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-danger" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 80%">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="span3">\r\n<h6>Striped bars</h6>\r\n\r\n<div class="progress progress-info progress-striped" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 20%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-success progress-striped" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 40%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-warning progress-striped" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 60%">&nbsp;</div>\r\n</div>\r\n\r\n<div class="progress progress-danger progress-striped" style="margin-bottom: 9px;">\r\n<div class="bar" style="width: 80%">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="span3">\r\n<h6>Behavior</h6>\r\n\r\n<p>Progress bars use CSS3 transitions, so if you dynamically adjust the width via javascript, it will smoothly resize.</p>\r\n\r\n<p>If you use the <code>.active</code> class, your <code>.progress-striped</code> progress bars will animate the stripes left to right.</p>\r\n</div>\r\n\r\n<div class="span3">\r\n<h6>Browser support</h6>\r\n\r\n<p>Progress bars use CSS3 gradients, transitions, and animations to achieve all their effects. These features are not supported in IE7-9 or older versions of Firefox.</p>\r\n</div>\r\n</div>\r\n</section>'),
(18, '2013-04-20 14:49:21', '2013-04-20 14:51:47', 1, 11, '<div class="row-fluid">\r\n<ul class="table-style">\r\n	<li class="span3"><a data-placement="top" data-title="i''m tooltip" href="#" rel="tooltip"><strong>Top tooltip</strong></a></li>\r\n	<li class="span3"><a data-placement="bottom" data-title="i''m tooltip" href="#" rel="tooltip"><strong>Bottom tooltip</strong></a></li>\r\n	<li class="span3"><a data-placement="right" data-title="i''m tooltip" href="#" rel="tooltip"><strong>Right tooltip</strong></a></li>\r\n	<li class="span3"><a data-placement="left" data-title="i''m tooltip" href="#" rel="tooltip"><strong>Left tooltip</strong></a></li>\r\n</ul>\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `default_email_templates`
--

CREATE TABLE `default_email_templates` (
`id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_email_templates`
--

INSERT INTO `default_email_templates` (`id`, `slug`, `name`, `description`, `subject`, `body`, `lang`, `is_default`, `module`) VALUES
(1, 'comments', 'Comment Notification', 'Email that is sent to admin when someone creates a comment', 'You have just received a comment from {{ name }}', '<h3>You have received a comment from {{ name }}</h3>\n				<p>\n				<strong>IP Address: {{ sender_ip }}</strong><br/>\n				<strong>Operating System: {{ sender_os }}<br/>\n				<strong>User Agent: {{ sender_agent }}</strong>\n				</p>\n				<p>{{ comment }}</p>\n				<p>View Comment: {{ redirect_url }}</p>', 'en', 1, 'comments'),
(2, 'contact', 'Contact Notification', 'Template for the contact form', '{{ settings:site_name }} :: {{ subject }}', 'This message was sent via the contact form on with the following details:\n				<hr />\n				IP Address: {{ sender_ip }}\n				OS {{ sender_os }}\n				Agent {{ sender_agent }}\n				<hr />\n				{{ message }}\n\n				{{ name }},\n\n				{{ email }}', 'en', 1, 'pages'),
(3, 'registered', 'New User Registered', 'Email sent to the site contact e-mail when a new user registers', '{{ settings:site_name }} :: You have just received a registration from {{ name }}', '<h3>You have received a registration from {{ name }}</h3>\n				<p><strong>IP Address: {{ sender_ip }}</strong><br/>\n				<strong>Operating System: {{ sender_os }}</strong><br/>\n				<strong>User Agent: {{ sender_agent }}</strong>\n				</p>', 'en', 1, 'users'),
(4, 'activation', 'Activation Email', 'The email which contains the activation code that is sent to a new user', '{{ settings:site_name }} - Account Activation', '<p>Hello {{ user:first_name }},</p>\n				<p>Thank you for registering at {{ settings:site_name }}. Before we can activate your account, please complete the registration process by clicking on the following link:</p>\n				<p><a href="{{ url:site }}users/activate/{{ user:id }}/{{ activation_code }}">{{ url:site }}users/activate/{{ user:id }}/{{ activation_code }}</a></p>\n				<p>&nbsp;</p>\n				<p>In case your email program does not recognize the above link as, please direct your browser to the following URL and enter the activation code:</p>\n				<p><a href="{{ url:site }}users/activate">{{ url:site }}users/activate</a></p>\n				<p><strong>Activation Code:</strong> {{ activation_code }}</p>', 'en', 1, 'users'),
(5, 'forgotten_password', 'Forgotten Password Email', 'The email that is sent containing a password reset code', '{{ settings:site_name }} - Forgotten Password', '<p>Hello {{ user:first_name }},</p>\n				<p>It seems you have requested a password reset. Please click this link to complete the reset: <a href="{{ url:site }}users/reset_pass/{{ user:forgotten_password_code }}">{{ url:site }}users/reset_pass/{{ user:forgotten_password_code }}</a></p>\n				<p>If you did not request a password reset please disregard this message. No further action is necessary.</p>', 'en', 1, 'users'),
(6, 'new_password', 'New Password Email', 'After a password is reset this email is sent containing the new password', '{{ settings:site_name }} - New Password', '<p>Hello {{ user:first_name }},</p>\n				<p>Your new password is: {{ new_password }}</p>\n				<p>After logging in you may change your password by visiting <a href="{{ url:site }}edit-profile">{{ url:site }}edit-profile</a></p>', 'en', 1, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `default_files`
--

CREATE TABLE `default_files` (
  `id` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `folder_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '1',
  `type` enum('a','v','d','i','o') COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(5) DEFAULT NULL,
  `height` int(5) DEFAULT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `alt_attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_files`
--

INSERT INTO `default_files` (`id`, `folder_id`, `user_id`, `type`, `name`, `filename`, `path`, `description`, `extension`, `mimetype`, `keywords`, `width`, `height`, `filesize`, `alt_attribute`, `download_count`, `date_added`, `sort`) VALUES
('01fb2d059454e0f', 4, 1, 'i', '1.jpg', '2cbcb452731acdc5fbaa1c00df8d4ee0.jpg', '{{ url:site }}files/large/2cbcb452731acdc5fbaa1c00df8d4ee0.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 361, '', 0, 1365750013, 0),
('0dafabb73f50922', 3, 1, 'i', '4038506827_6bd4a899c8_b.jpg', '7db3e743a700209e2a9bd2440c813d52.jpg', '{{ url:site }}files/large/7db3e743a700209e2a9bd2440c813d52.jpg', '', '.jpg', 'image/jpeg', '', 1024, 681, 315, '', 0, 1366451207, 0),
('15f332120833ac0', 3, 1, 'i', '98ac293fb3c574cf77c92ca9337e075b.png', 'e61f32d5904931077eae49e301bd0526.png', '{{ url:site }}files/large/e61f32d5904931077eae49e301bd0526.png', '', '.png', 'image/png', '', 960, 305, 447, '', 0, 1367419073, 0),
('18e178c582573a4', 3, 1, 'i', 'fashion8.jpg', 'adecaf7a898c46651f5c2ca75d5405a7.jpg', '{{ url:site }}files/large/adecaf7a898c46651f5c2ca75d5405a7.jpg', '', '.jpg', 'image/jpeg', '', 1024, 690, 99, '', 0, 1366452207, 0),
('1dbc3fad2f06e5a', 4, 1, 'i', '4.jpg', 'c2c7c6a215380b05592919ec2d0a9739.jpg', '{{ url:site }}files/large/c2c7c6a215380b05592919ec2d0a9739.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 226, '', 0, 1365750011, 0),
('1e717043b6805e0', 3, 1, 'i', 'd4133f8b94f5d46e9cd4675005b423ef.jpg', 'f3238e4adc7581c89977f09b9739909e.jpg', '{{ url:site }}files/large/f3238e4adc7581c89977f09b9739909e.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 87, '', 0, 1367623954, 0),
('1eb53704001451e', 5, 1, 'i', 'fashion8.jpg', '8e21b6e53d2b28da8acffce874b6300b.jpg', '{{ url:site }}files/large/8e21b6e53d2b28da8acffce874b6300b.jpg', '', '.jpg', 'image/jpeg', '', 1680, 1132, 264, '', 0, 1366460955, 0),
('1f26418c48f44ba', 3, 1, 'i', '5.jpg', '7b585d22feff0f79125be94aba7a2c8d.jpg', '{{ url:site }}files/large/7b585d22feff0f79125be94aba7a2c8d.jpg', '', '.jpg', 'image/jpeg', '', 500, 333, 70, '', 0, 1365838791, 0),
('32b084dcbf43dec', 3, 1, 'i', '4.jpg', '945536b6af8a9e974770e7c3406a70fb.jpg', '{{ url:site }}files/large/945536b6af8a9e974770e7c3406a70fb.jpg', '', '.jpg', 'image/jpeg', '', 500, 333, 108, '', 0, 1365683380, 0),
('3625ab1d0864b86', 3, 1, 'i', 'b00c042bea203a24beb7014309175d6e.jpg', 'b6590bd6b14fd0e56e16c4c693953899.jpg', '{{ url:site }}files/large/b6590bd6b14fd0e56e16c4c693953899.jpg', '', '.jpg', 'image/jpeg', '', 1024, 426, 137, '', 0, 1367629606, 0),
('39e076e5f63ad1e', 3, 1, 'i', '95dec7d8281264e4001225e91a5b69e5.jpg', '84f4b47abc4075f6b6482473f8927e9d.jpg', '{{ url:site }}files/large/84f4b47abc4075f6b6482473f8927e9d.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 136, '', 0, 1367624139, 0),
('39ffe75a28ea2f8', 3, 1, 'i', '6.jpg', 'cfc75de149dee52cf685048702880344.jpg', '{{ url:site }}files/large/cfc75de149dee52cf685048702880344.jpg', '', '.jpg', 'image/jpeg', '', 500, 333, 71, '', 0, 1365683479, 0),
('4907ba3b5cbb52e', 4, 1, 'i', '3.jpg', 'd7af44200fc9833d588ed059ba761f07.jpg', '{{ url:site }}files/large/d7af44200fc9833d588ed059ba761f07.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 496, '', 0, 1365750011, 0),
('52118875d18cc22', 4, 1, 'i', '7.jpg', 'cd1001bdbbe2bdb3bd81dccc199c4269.jpg', '{{ url:site }}files/large/cd1001bdbbe2bdb3bd81dccc199c4269.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 209, '', 0, 1365750013, 0),
('537111b352f5177', 3, 1, 'i', 'bg-header-small-1.jpg', '3134c366d2e98afe0bad07866edc86b1.jpg', '{{ url:site }}files/large/3134c366d2e98afe0bad07866edc86b1.jpg', '', '.jpg', 'image/jpeg', '', 1200, 400, 49, '', 0, 1426453245, 0),
('5996e8140cc4650', 3, 1, 'i', 'b7d55d1b1f761598e97a8b647a81e66a.jpg', 'c35c5b8970e2188f36e74c326fe921ca.jpg', '{{ url:site }}files/large/c35c5b8970e2188f36e74c326fe921ca.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 113, '', 0, 1367629768, 0),
('60cfa4a18d7e3c7', 3, 1, 'i', '2cbcb452731acdc5fbaa1c00df8d4ee0.jpg', '71371b0e28ec9b6e8fcbdbd4c09f858d.jpg', '{{ url:site }}files/large/71371b0e28ec9b6e8fcbdbd4c09f858d.jpg', '', '.jpg', 'image/jpeg', '', 1024, 426, 141, '', 0, 1367629518, 0),
('68e3f017ccf2667', 4, 1, 'i', '2.jpg', '3b171c676a499049bfbc292a06cb42d0.jpg', '{{ url:site }}files/large/3b171c676a499049bfbc292a06cb42d0.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 244, '', 0, 1365750014, 0),
('86f2a6dda60f0d8', 3, 1, 'i', 'cb04c5e98f6b5ca99a24679567c9eb50.jpg', 'b91ea6256ccf857d5bac675ab5c5c57b.jpg', '{{ url:site }}files/large/b91ea6256ccf857d5bac675ab5c5c57b.jpg', '', '.jpg', 'image/jpeg', '', 1000, 420, 109, '', 0, 1367630223, 0),
('895ce224e4ca206', 3, 1, 'i', '5.jpg', '33f18c381a5854c3cf136a09bbb45bd5.jpg', '{{ url:site }}files/large/33f18c381a5854c3cf136a09bbb45bd5.jpg', '', '.jpg', 'image/jpeg', '', 500, 333, 70, '', 0, 1365838693, 0),
('8f2cd43372b556a', 5, 1, 'i', 'image2.jpg', 'cb04c5e98f6b5ca99a24679567c9eb50.jpg', '{{ url:site }}files/large/cb04c5e98f6b5ca99a24679567c9eb50.jpg', '', '.jpg', 'image/jpeg', '', 1000, 693, 102, '', 0, 1366460955, 0),
('8fb9f79d94372bd', 3, 1, 'i', 'ddaeee206a88e62c7e18e9091995975d.jpg', '7c80fd7418f0d60123631fb0f34aea15.jpg', '{{ url:site }}files/large/7c80fd7418f0d60123631fb0f34aea15.jpg', '', '.jpg', 'image/jpeg', '', 1024, 426, 122, '', 0, 1367604809, 0),
('93eba5f18ee58a2', 3, 1, 'i', '5358893447_afe122dc87_b.jpg', '7d01c7c10425f9ea9b83c4d25bd7eb7c.jpg', '{{ url:site }}files/large/7d01c7c10425f9ea9b83c4d25bd7eb7c.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 264, '', 0, 1366451183, 0),
('994d535ab550410', 4, 1, 'i', '5.jpg', 'd4e14a4b8fe3e3b4b32d00044bb417f0.jpg', '{{ url:site }}files/large/d4e14a4b8fe3e3b4b32d00044bb417f0.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 549, '', 0, 1365750012, 0),
('a152ea2a7a61449', 3, 1, 'i', '3779566018_d83c04941a_b.jpg', 'b4f0e21e791d827374e9b2e3d4e3742e.jpg', '{{ url:site }}files/large/b4f0e21e791d827374e9b2e3d4e3742e.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 411, '', 0, 1366449452, 0),
('a15c1d6ff73074b', 3, 1, 'i', 'cd1001bdbbe2bdb3bd81dccc199c4269.jpg', '53e5b0ebfdd269d1a6dc8bfd02fbbc39.jpg', '{{ url:site }}files/large/53e5b0ebfdd269d1a6dc8bfd02fbbc39.jpg', '', '.jpg', 'image/jpeg', '', 1024, 426, 105, '', 0, 1367629936, 0),
('a2d6a617cd301f6', 3, 1, 'i', '5358893447_afe122dc87_b.jpg', 'b00c042bea203a24beb7014309175d6e.jpg', '{{ url:site }}files/large/b00c042bea203a24beb7014309175d6e.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 264, '', 0, 1366448914, 0),
('a51d2e629913fc2', 1, 1, 'i', 'slide3.jpg', '04e10e58d55d3daf2b3d1cac762a71e6.jpg', '{{ url:site }}files/large/04e10e58d55d3daf2b3d1cac762a71e6.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 87, '', 0, 1366452402, 0),
('a89831c2af1383b', 3, 1, 'i', 'bg-header-small-2.jpg', 'b8d3fbb15ebf3f84cdd5e7ddf22a6250.jpg', '{{ url:site }}files/large/b8d3fbb15ebf3f84cdd5e7ddf22a6250.jpg', '', '.jpg', 'image/jpeg', '', 1200, 400, 56, '', 0, 1426453199, 0),
('ab9bf775abea792', 1, 1, 'i', 'image1.jpg', 'b7d55d1b1f761598e97a8b647a81e66a.jpg', '{{ url:site }}files/large/b7d55d1b1f761598e97a8b647a81e66a.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 113, '', 0, 1366452916, 0),
('ae99f0c5e034711', 4, 1, 'i', '6.jpg', '01cbefccf009cf6c75018eba233cb1be.jpg', '{{ url:site }}files/large/01cbefccf009cf6c75018eba233cb1be.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 474, '', 0, 1365750012, 0),
('bee9e7ca5d0e19f', 3, 1, 'i', '5291d1b96aef21b2032c457ec4b9bd23.jpg', 'd3b1c648228492641233f88f8b69d3bc.jpg', '{{ url:site }}files/large/d3b1c648228492641233f88f8b69d3bc.jpg', '', '.jpg', 'image/jpeg', '', 1024, 426, 117, '', 0, 1367604790, 0),
('c2ab2c3cb02dd87', 3, 1, 'i', '3.jpg', '28f7a2f86269b8478f4f4d4ba6115794.jpg', '{{ url:site }}files/large/28f7a2f86269b8478f4f4d4ba6115794.jpg', '', '.jpg', 'image/jpeg', '', 500, 333, 69, '', 0, 1365683427, 0),
('c444952f9dddd5a', 3, 1, 'i', '3642590863_d0ce95912b_b.jpg', 'ddaeee206a88e62c7e18e9091995975d.jpg', '{{ url:site }}files/large/ddaeee206a88e62c7e18e9091995975d.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 277, '', 0, 1366451481, 0),
('c6595829a92111c', 4, 1, 'i', '8.jpg', 'e881b4f322fc2ea96343453abc0a8833.jpg', '{{ url:site }}files/large/e881b4f322fc2ea96343453abc0a8833.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 155, '', 0, 1365750012, 0),
('ca97380a49b863d', 3, 1, 'i', '04e10e58d55d3daf2b3d1cac762a71e6.jpg', '5500dea044e109296bdc5465185b017f.jpg', '{{ url:site }}files/large/5500dea044e109296bdc5465185b017f.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 87, '', 0, 1367625891, 0),
('cc66ff8c1bd0d91', 3, 1, 'i', '3539348159_0734e58b83_b.jpg', '5291d1b96aef21b2032c457ec4b9bd23.jpg', '{{ url:site }}files/large/5291d1b96aef21b2032c457ec4b9bd23.jpg', '', '.jpg', 'image/jpeg', '', 1024, 681, 243, '', 0, 1366451358, 0),
('d3438a454ffdbf9', 3, 1, 'i', 'b7d55d1b1f761598e97a8b647a81e66a.jpg', '2ae74bc4c08b6b978ac86b84f79b47cf.jpg', '{{ url:site }}files/large/2ae74bc4c08b6b978ac86b84f79b47cf.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 113, '', 0, 1367604832, 0),
('dd2d56512ddf48d', 4, 1, 'i', '9.jpg', '3a730bef6ae990688fc6f090ca4cd83d.jpg', '{{ url:site }}files/large/3a730bef6ae990688fc6f090ca4cd83d.jpg', '', '.jpg', 'image/jpeg', '', 1024, 683, 173, '', 0, 1365750013, 0),
('ea5301fd261031f', 3, 1, 'i', 'da672afbc96c5a50f37285f45746d823.png', '376f449f1a32a4f0d7cb7396277a24b4.png', '{{ url:site }}files/large/376f449f1a32a4f0d7cb7396277a24b4.png', '', '.png', 'image/png', '', 960, 305, 447, '', 0, 1367418989, 0),
('f73b9620463b27d', 1, 1, 'i', 'slide2.jpg', '95dec7d8281264e4001225e91a5b69e5.jpg', '{{ url:site }}files/large/95dec7d8281264e4001225e91a5b69e5.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 136, '', 0, 1365677522, 0),
('fb5d719ae411238', 1, 1, 'i', 'slide1.jpg', 'd4133f8b94f5d46e9cd4675005b423ef.jpg', '{{ url:site }}files/large/d4133f8b94f5d46e9cd4675005b423ef.jpg', '', '.jpg', 'image/jpeg', '', 1200, 500, 87, '', 0, 1365677249, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_file_folders`
--

CREATE TABLE `default_file_folders` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `remote_container` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_file_folders`
--

INSERT INTO `default_file_folders` (`id`, `parent_id`, `slug`, `name`, `location`, `remote_container`, `date_added`, `sort`, `hidden`) VALUES
(1, 0, 'home', 'home', 'local', '', 1365677227, 1365677227, 0),
(3, 0, 'blog', 'blog', 'local', '', 1365683163, 1365683163, 0),
(4, 0, 'image-gallery', 'Image gallery', 'local', '', 1365749982, 1365749982, 0),
(5, 0, 'lightbox', 'Lightbox', 'local', '', 1366460888, 1366460888, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_groups`
--

CREATE TABLE `default_groups` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_groups`
--

INSERT INTO `default_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `default_keywords`
--

CREATE TABLE `default_keywords` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_keywords`
--

INSERT INTO `default_keywords` (`id`, `name`) VALUES
(1, 'building'),
(2, 'photogrphy'),
(3, 'photography'),
(4, 'darkness'),
(5, 'fashion'),
(6, 'template'),
(7, 'bootstrap'),
(8, 'style'),
(9, 'time'),
(10, 'film'),
(11, 'movie'),
(12, 'model'),
(13, 'games'),
(14, 'beauty'),
(15, 'photo'),
(16, 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `default_keywords_applied`
--

CREATE TABLE `default_keywords_applied` (
`id` int(11) NOT NULL,
  `hash` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `keyword_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_keywords_applied`
--

INSERT INTO `default_keywords_applied` (`id`, `hash`, `keyword_id`) VALUES
(7, '9704c7a1391e0007715e9f503a4f1fec', 6),
(8, '9704c7a1391e0007715e9f503a4f1fec', 7),
(37, '45237cafca5897e0ae7e85ce8ced8dba', 4),
(38, '45237cafca5897e0ae7e85ce8ced8dba', 3),
(39, 'ac041a1c2b61483707b8a13b314cf2d5', 1),
(40, 'ac041a1c2b61483707b8a13b314cf2d5', 5),
(45, 'f8f45b54a9c3d15f05ab41924a4a013f', 10),
(46, 'f8f45b54a9c3d15f05ab41924a4a013f', 11),
(47, '492ac93ed14b8572912ae80e88a8911e', 12),
(48, '492ac93ed14b8572912ae80e88a8911e', 10),
(49, 'f035bbe0abddef021b12f0eb6cd61882', 13),
(50, 'f035bbe0abddef021b12f0eb6cd61882', 10),
(51, '5e22ce4a6636bbe3a39b050cd1e810fa', 10),
(52, '5e22ce4a6636bbe3a39b050cd1e810fa', 14),
(53, '4073a7e031a62069e1253a60bd318a97', 7),
(54, '4073a7e031a62069e1253a60bd318a97', 14),
(55, '1920722877131870b58fa38f2bab40be', 5),
(56, '1920722877131870b58fa38f2bab40be', 10),
(57, '1920722877131870b58fa38f2bab40be', 15),
(58, 'e9e9313927611e2ca96db551e5658007', 16),
(59, 'e9e9313927611e2ca96db551e5658007', 5),
(64, '92bb81118f2686157ff9a6772c4d1853', 1),
(65, '92bb81118f2686157ff9a6772c4d1853', 2),
(66, 'd9726a40fb859c16d0624db9c60e3683', 8),
(67, 'd9726a40fb859c16d0624db9c60e3683', 9);

-- --------------------------------------------------------

--
-- Table structure for table `default_migrations`
--

CREATE TABLE `default_migrations` (
  `version` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_migrations`
--

INSERT INTO `default_migrations` (`version`) VALUES
(129),
(125);

-- --------------------------------------------------------

--
-- Table structure for table `default_modules`
--

CREATE TABLE `default_modules` (
`id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `skip_xss` tinyint(1) NOT NULL,
  `is_frontend` tinyint(1) NOT NULL,
  `is_backend` tinyint(1) NOT NULL,
  `menu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `installed` tinyint(1) NOT NULL,
  `is_core` tinyint(1) NOT NULL,
  `updated_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_modules`
--

INSERT INTO `default_modules` (`id`, `name`, `slug`, `version`, `type`, `description`, `skip_xss`, `is_frontend`, `is_backend`, `menu`, `enabled`, `installed`, `is_core`, `updated_on`) VALUES
(1, 'a:25:{s:2:"en";s:8:"Settings";s:2:"ar";s:18:"الإعدادات";s:2:"br";s:15:"Configurações";s:2:"pt";s:15:"Configurações";s:2:"cs";s:10:"Nastavení";s:2:"da";s:13:"Indstillinger";s:2:"de";s:13:"Einstellungen";s:2:"el";s:18:"Ρυθμίσεις";s:2:"es";s:15:"Configuraciones";s:2:"fa";s:14:"تنظیمات";s:2:"fi";s:9:"Asetukset";s:2:"fr";s:11:"Paramètres";s:2:"he";s:12:"הגדרות";s:2:"id";s:10:"Pengaturan";s:2:"it";s:12:"Impostazioni";s:2:"lt";s:10:"Nustatymai";s:2:"nl";s:12:"Instellingen";s:2:"pl";s:10:"Ustawienia";s:2:"ru";s:18:"Настройки";s:2:"sl";s:10:"Nastavitve";s:2:"tw";s:12:"網站設定";s:2:"cn";s:12:"网站设定";s:2:"hu";s:14:"Beállítások";s:2:"th";s:21:"ตั้งค่า";s:2:"se";s:14:"Inställningar";}', 'settings', '1.0.0', NULL, 'a:25:{s:2:"en";s:89:"Allows administrators to update settings like Site Name, messages and email address, etc.";s:2:"ar";s:161:"تمكن المدراء من تحديث الإعدادات كإسم الموقع، والرسائل وعناوين البريد الإلكتروني، .. إلخ.";s:2:"br";s:120:"Permite com que administradores e a equipe consigam trocar as configurações do website incluindo o nome e descrição.";s:2:"pt";s:113:"Permite com que os administradores consigam alterar as configurações do website incluindo o nome e descrição.";s:2:"cs";s:102:"Umožňuje administrátorům měnit nastavení webu jako jeho jméno, zprávy a emailovou adresu apod.";s:2:"da";s:90:"Lader administratorer opdatere indstillinger som sidenavn, beskeder og email adresse, etc.";s:2:"de";s:92:"Erlaubt es Administratoren die Einstellungen der Seite wie Name und Beschreibung zu ändern.";s:2:"el";s:230:"Επιτρέπει στους διαχειριστές να τροποποιήσουν ρυθμίσεις όπως το Όνομα του Ιστοτόπου, τα μηνύματα και τις διευθύνσεις email, κ.α.";s:2:"es";s:131:"Permite a los administradores y al personal configurar los detalles del sitio como el nombre del sitio y la descripción del mismo.";s:2:"fa";s:105:"تنظیمات سایت در این ماژول توسط ادمین هاس سایت انجام می شود";s:2:"fi";s:105:"Mahdollistaa sivuston asetusten muokkaamisen, kuten sivuston nimen, viestit ja sähköpostiosoitteet yms.";s:2:"fr";s:118:"Permet aux admistrateurs de modifier les paramètres du site : nom du site, description, messages, adresse email, etc.";s:2:"he";s:116:"ניהול הגדרות שונות של האתר כגון: שם האתר, הודעות, כתובות דואר וכו";s:2:"id";s:112:"Memungkinkan administrator untuk dapat memperbaharui pengaturan seperti nama situs, pesan dan alamat email, dsb.";s:2:"it";s:109:"Permette agli amministratori di aggiornare impostazioni quali Nome del Sito, messaggi e indirizzo email, etc.";s:2:"lt";s:104:"Leidžia administratoriams keisti puslapio vavadinimą, žinutes, administratoriaus el. pašta ir kitą.";s:2:"nl";s:114:"Maakt het administratoren en medewerkers mogelijk om websiteinstellingen zoals naam en beschrijving te veranderen.";s:2:"pl";s:103:"Umożliwia administratorom zmianę ustawień strony jak nazwa strony, opis, e-mail administratora, itd.";s:2:"ru";s:135:"Управление настройками сайта - Имя сайта, сообщения, почтовые адреса и т.п.";s:2:"sl";s:98:"Dovoljuje administratorjem posodobitev nastavitev kot je Ime strani, sporočil, email naslova itd.";s:2:"tw";s:99:"網站管理者可更新的重要網站設定。例如：網站名稱、訊息、電子郵件等。";s:2:"cn";s:99:"网站管理者可更新的重要网站设定。例如：网站名称、讯息、电子邮件等。";s:2:"hu";s:125:"Lehetővé teszi az adminok számára a beállítások frissítését, mint a weboldal neve, üzenetek, e-mail címek, stb...";s:2:"th";s:232:"ให้ผู้ดูแลระบบสามารถปรับปรุงการตั้งค่าเช่นชื่อเว็บไซต์ ข้อความและอีเมล์เป็นต้น";s:2:"se";s:84:"Administratören kan uppdatera webbplatsens titel, meddelanden och E-postadress etc.";}', 1, 0, 1, 'settings', 1, 1, 1, 1367836703),
(2, 'a:11:{s:2:"en";s:12:"Streams Core";s:2:"pt";s:14:"Núcleo Fluxos";s:2:"fr";s:10:"Noyau Flux";s:2:"el";s:23:"Πυρήνας Ροών";s:2:"se";s:18:"Streams grundmodul";s:2:"tw";s:14:"Streams 核心";s:2:"cn";s:14:"Streams 核心";s:2:"ar";s:31:"الجداول الأساسية";s:2:"it";s:12:"Streams Core";s:2:"fa";s:26:"هسته استریم ها";s:2:"fi";s:13:"Striimit ydin";}', 'streams_core', '1.0.0', NULL, 'a:11:{s:2:"en";s:29:"Core data module for streams.";s:2:"pt";s:37:"Módulo central de dados para fluxos.";s:2:"fr";s:32:"Noyau de données pour les Flux.";s:2:"el";s:113:"Προγραμματιστικός πυρήνας για την λειτουργία ροών δεδομένων.";s:2:"se";s:50:"Streams grundmodul för enklare hantering av data.";s:2:"tw";s:29:"Streams 核心資料模組。";s:2:"cn";s:29:"Streams 核心资料模组。";s:2:"ar";s:57:"وحدة البيانات الأساسية للجداول";s:2:"it";s:17:"Core dello Stream";s:2:"fa";s:48:"ماژول مرکزی برای استریم ها";s:2:"fi";s:48:"Ydin datan hallinoiva moduuli striimejä varten.";}', 1, 0, 0, '0', 1, 1, 1, 1367836703),
(3, 'a:25:{s:2:"en";s:7:"Add-ons";s:2:"ar";s:16:"الإضافات";s:2:"br";s:12:"Complementos";s:2:"pt";s:12:"Complementos";s:2:"cs";s:8:"Doplňky";s:2:"da";s:7:"Add-ons";s:2:"de";s:13:"Erweiterungen";s:2:"el";s:16:"Πρόσθετα";s:2:"es";s:9:"Agregados";s:2:"fa";s:17:"افزونه ها";s:2:"fi";s:9:"Lisäosat";s:2:"fr";s:10:"Extensions";s:2:"he";s:12:"תוספות";s:2:"id";s:7:"Pengaya";s:2:"it";s:7:"Add-ons";s:2:"lt";s:7:"Priedai";s:2:"nl";s:7:"Add-ons";s:2:"pl";s:12:"Rozszerzenia";s:2:"ru";s:20:"Дополнения";s:2:"sl";s:11:"Razširitve";s:2:"tw";s:12:"附加模組";s:2:"cn";s:12:"附加模组";s:2:"hu";s:14:"Bővítmények";s:2:"th";s:27:"ส่วนเสริม";s:2:"se";s:8:"Tillägg";}', 'addons', '2.0.0', NULL, 'a:25:{s:2:"en";s:59:"Allows admins to see a list of currently installed modules.";s:2:"ar";s:91:"تُمكّن المُدراء من معاينة جميع الوحدات المُثبّتة.";s:2:"br";s:75:"Permite aos administradores ver a lista dos módulos instalados atualmente.";s:2:"pt";s:75:"Permite aos administradores ver a lista dos módulos instalados atualmente.";s:2:"cs";s:68:"Umožňuje administrátorům vidět seznam nainstalovaných modulů.";s:2:"da";s:63:"Lader administratorer se en liste over de installerede moduler.";s:2:"de";s:56:"Zeigt Administratoren alle aktuell installierten Module.";s:2:"el";s:152:"Επιτρέπει στους διαχειριστές να προβάλουν μια λίστα των εγκατεστημένων πρόσθετων.";s:2:"es";s:71:"Permite a los administradores ver una lista de los módulos instalados.";s:2:"fa";s:93:"مشاهده لیست افزونه ها و مدیریت آنها برای ادمین سایت";s:2:"fi";s:60:"Listaa järjestelmänvalvojalle käytössä olevat moduulit.";s:2:"fr";s:66:"Permet aux administrateurs de voir la liste des modules installés";s:2:"he";s:160:"נותן אופציה למנהל לראות רשימה של המודולים אשר מותקנים כעת באתר או להתקין מודולים נוספים";s:2:"id";s:57:"Memperlihatkan kepada admin daftar modul yang terinstall.";s:2:"it";s:83:"Permette agli amministratori di vedere una lista dei moduli attualmente installati.";s:2:"lt";s:75:"Vartotojai ir svečiai gali komentuoti jūsų naujienas, puslapius ar foto.";s:2:"nl";s:79:"Stelt admins in staat om een overzicht van geinstalleerde modules te genereren.";s:2:"pl";s:81:"Umożliwiają administratorowi wgląd do listy obecnie zainstalowanych modułów.";s:2:"ru";s:83:"Список модулей, которые установлены на сайте.";s:2:"sl";s:65:"Dovoljuje administratorjem pregled trenutno nameščenih modulov.";s:2:"tw";s:54:"管理員可以檢視目前已經安裝模組的列表";s:2:"cn";s:54:"管理员可以检视目前已经安装模组的列表";s:2:"hu";s:79:"Lehetővé teszi az adminoknak, hogy lássák a telepített modulok listáját.";s:2:"th";s:162:"ช่วยให้ผู้ดูแลระบบดูรายการของโมดูลที่ติดตั้งในปัจจุบัน";s:2:"se";s:67:"Gör det möjligt för administratören att se installerade mouler.";}', 0, 0, 1, '0', 1, 1, 1, 1367836703),
(4, 'a:17:{s:2:"en";s:4:"Blog";s:2:"ar";s:16:"المدوّنة";s:2:"br";s:4:"Blog";s:2:"pt";s:4:"Blog";s:2:"el";s:18:"Ιστολόγιο";s:2:"fa";s:8:"بلاگ";s:2:"he";s:8:"בלוג";s:2:"id";s:4:"Blog";s:2:"lt";s:6:"Blogas";s:2:"pl";s:4:"Blog";s:2:"ru";s:8:"Блог";s:2:"tw";s:6:"文章";s:2:"cn";s:6:"文章";s:2:"hu";s:4:"Blog";s:2:"fi";s:5:"Blogi";s:2:"th";s:15:"บล็อก";s:2:"se";s:5:"Blogg";}', 'blog', '2.0.0', NULL, 'a:25:{s:2:"en";s:18:"Post blog entries.";s:2:"ar";s:48:"أنشر المقالات على مدوّنتك.";s:2:"br";s:30:"Escrever publicações de blog";s:2:"pt";s:39:"Escrever e editar publicações no blog";s:2:"cs";s:49:"Publikujte nové články a příspěvky na blog.";s:2:"da";s:17:"Skriv blogindlæg";s:2:"de";s:47:"Veröffentliche neue Artikel und Blog-Einträge";s:2:"sl";s:23:"Objavite blog prispevke";s:2:"fi";s:28:"Kirjoita blogi artikkeleita.";s:2:"el";s:93:"Δημιουργήστε άρθρα και εγγραφές στο ιστολόγιο σας.";s:2:"es";s:54:"Escribe entradas para los artículos y blog (web log).";s:2:"fa";s:44:"مقالات منتشر شده در بلاگ";s:2:"fr";s:34:"Poster des articles d''actualités.";s:2:"he";s:19:"ניהול בלוג";s:2:"id";s:15:"Post entri blog";s:2:"it";s:36:"Pubblica notizie e post per il blog.";s:2:"lt";s:40:"Rašykite naujienas bei blog''o įrašus.";s:2:"nl";s:41:"Post nieuwsartikelen en blogs op uw site.";s:2:"pl";s:27:"Dodawaj nowe wpisy na blogu";s:2:"ru";s:49:"Управление записями блога.";s:2:"tw";s:42:"發表新聞訊息、部落格等文章。";s:2:"cn";s:42:"发表新闻讯息、部落格等文章。";s:2:"th";s:48:"โพสต์รายการบล็อก";s:2:"hu";s:32:"Blog bejegyzések létrehozása.";s:2:"se";s:18:"Inlägg i bloggen.";}', 1, 1, 1, 'content', 1, 1, 1, 1367836703),
(5, 'a:25:{s:2:"en";s:8:"Comments";s:2:"ar";s:18:"التعليقات";s:2:"br";s:12:"Comentários";s:2:"pt";s:12:"Comentários";s:2:"cs";s:11:"Komentáře";s:2:"da";s:11:"Kommentarer";s:2:"de";s:10:"Kommentare";s:2:"el";s:12:"Σχόλια";s:2:"es";s:11:"Comentarios";s:2:"fi";s:9:"Kommentit";s:2:"fr";s:12:"Commentaires";s:2:"fa";s:10:"نظرات";s:2:"he";s:12:"תגובות";s:2:"id";s:8:"Komentar";s:2:"it";s:8:"Commenti";s:2:"lt";s:10:"Komentarai";s:2:"nl";s:8:"Reacties";s:2:"pl";s:10:"Komentarze";s:2:"ru";s:22:"Комментарии";s:2:"sl";s:10:"Komentarji";s:2:"tw";s:6:"回應";s:2:"cn";s:6:"回应";s:2:"hu";s:16:"Hozzászólások";s:2:"th";s:33:"ความคิดเห็น";s:2:"se";s:11:"Kommentarer";}', 'comments', '1.1.0', NULL, 'a:25:{s:2:"en";s:76:"Users and guests can write comments for content like blog, pages and photos.";s:2:"ar";s:152:"يستطيع الأعضاء والزوّار كتابة التعليقات على المُحتوى كالأخبار، والصفحات والصّوَر.";s:2:"br";s:97:"Usuários e convidados podem escrever comentários para quase tudo com suporte nativo ao captcha.";s:2:"pt";s:100:"Utilizadores e convidados podem escrever comentários para quase tudo com suporte nativo ao captcha.";s:2:"cs";s:100:"Uživatelé a hosté mohou psát komentáře k obsahu, např. neovinkám, stránkám a fotografiím.";s:2:"da";s:83:"Brugere og besøgende kan skrive kommentarer til indhold som blog, sider og fotoer.";s:2:"de";s:65:"Benutzer und Gäste können für fast alles Kommentare schreiben.";s:2:"el";s:224:"Οι χρήστες και οι επισκέπτες μπορούν να αφήνουν σχόλια για περιεχόμενο όπως το ιστολόγιο, τις σελίδες και τις φωτογραφίες.";s:2:"es";s:130:"Los usuarios y visitantes pueden escribir comentarios en casi todo el contenido con el soporte de un sistema de captcha incluído.";s:2:"fa";s:168:"کاربران و مهمان ها می توانند نظرات خود را بر روی محتوای سایت در بلاگ و دیگر قسمت ها ارائه دهند";s:2:"fi";s:107:"Käyttäjät ja vieraat voivat kirjoittaa kommentteja eri sisältöihin kuten uutisiin, sivuihin ja kuviin.";s:2:"fr";s:130:"Les utilisateurs et les invités peuvent écrire des commentaires pour quasiment tout grâce au générateur de captcha intégré.";s:2:"he";s:94:"משתמשי האתר יכולים לרשום תגובות למאמרים, תמונות וכו";s:2:"id";s:100:"Pengguna dan pengunjung dapat menuliskan komentaruntuk setiap konten seperti blog, halaman dan foto.";s:2:"it";s:85:"Utenti e visitatori possono scrivere commenti ai contenuti quali blog, pagine e foto.";s:2:"lt";s:75:"Vartotojai ir svečiai gali komentuoti jūsų naujienas, puslapius ar foto.";s:2:"nl";s:52:"Gebruikers en gasten kunnen reageren op bijna alles.";s:2:"pl";s:93:"Użytkownicy i goście mogą dodawać komentarze z wbudowanym systemem zabezpieczeń captcha.";s:2:"ru";s:187:"Пользователи и гости могут добавлять комментарии к новостям, информационным страницам и фотографиям.";s:2:"sl";s:89:"Uporabniki in obiskovalci lahko vnesejo komentarje na vsebino kot je blok, stra ali slike";s:2:"tw";s:75:"用戶和訪客可以針對新聞、頁面與照片等內容發表回應。";s:2:"cn";s:75:"用户和访客可以针对新闻、页面与照片等内容发表回应。";s:2:"hu";s:117:"A felhasználók és a vendégek hozzászólásokat írhatnak a tartalomhoz (bejegyzésekhez, oldalakhoz, fotókhoz).";s:2:"th";s:240:"ผู้ใช้งานและผู้เยี่ยมชมสามารถเขียนความคิดเห็นในเนื้อหาของหน้าเว็บบล็อกและภาพถ่าย";s:2:"se";s:98:"Användare och besökare kan skriva kommentarer till innehåll som blogginlägg, sidor och bilder.";}', 0, 0, 1, 'content', 1, 1, 1, 1367836703),
(6, 'a:25:{s:2:"en";s:7:"Contact";s:2:"ar";s:14:"الإتصال";s:2:"br";s:7:"Contato";s:2:"pt";s:8:"Contacto";s:2:"cs";s:7:"Kontakt";s:2:"da";s:7:"Kontakt";s:2:"de";s:7:"Kontakt";s:2:"el";s:22:"Επικοινωνία";s:2:"es";s:8:"Contacto";s:2:"fa";s:18:"تماس با ما";s:2:"fi";s:13:"Ota yhteyttä";s:2:"fr";s:7:"Contact";s:2:"he";s:17:"יצירת קשר";s:2:"id";s:6:"Kontak";s:2:"it";s:10:"Contattaci";s:2:"lt";s:18:"Kontaktinė formą";s:2:"nl";s:7:"Contact";s:2:"pl";s:7:"Kontakt";s:2:"ru";s:27:"Обратная связь";s:2:"sl";s:7:"Kontakt";s:2:"tw";s:12:"聯絡我們";s:2:"cn";s:12:"联络我们";s:2:"hu";s:9:"Kapcsolat";s:2:"th";s:18:"ติดต่อ";s:2:"se";s:7:"Kontakt";}', 'contact', '1.0.0', NULL, 'a:25:{s:2:"en";s:112:"Adds a form to your site that allows visitors to send emails to you without disclosing an email address to them.";s:2:"ar";s:157:"إضافة استمارة إلى موقعك تُمكّن الزوّار من مراسلتك دون علمهم بعنوان البريد الإلكتروني.";s:2:"br";s:139:"Adiciona um formulário para o seu site permitir aos visitantes que enviem e-mails para voce sem divulgar um endereço de e-mail para eles.";s:2:"pt";s:116:"Adiciona um formulário ao seu site que permite aos visitantes enviarem e-mails sem divulgar um endereço de e-mail.";s:2:"cs";s:149:"Přidá na web kontaktní formulář pro návštěvníky a uživatele, díky kterému vás mohou kontaktovat i bez znalosti vaší e-mailové adresy.";s:2:"da";s:123:"Tilføjer en formular på din side som tillader besøgende at sende mails til dig, uden at du skal opgive din email-adresse";s:2:"de";s:119:"Fügt ein Formular hinzu, welches Besuchern erlaubt Emails zu schreiben, ohne die Kontakt Email-Adresse offen zu legen.";s:2:"el";s:273:"Προσθέτει μια φόρμα στον ιστότοπό σας που επιτρέπει σε επισκέπτες να σας στέλνουν μηνύμα μέσω email χωρίς να τους αποκαλύπτεται η διεύθυνση του email σας.";s:2:"fa";s:239:"فرم تماس را به سایت اضافه می کند تا مراجعین بتوانند بدون اینکه ایمیل شما را بدانند برای شما پیغام هایی را از طریق ایمیل ارسال نمایند.";s:2:"es";s:156:"Añade un formulario a tu sitio que permitirá a los visitantes enviarte correos electrónicos a ti sin darles tu dirección de correo directamente a ellos.";s:2:"fi";s:128:"Luo lomakkeen sivustollesi, josta kävijät voivat lähettää sähköpostia tietämättä vastaanottajan sähköpostiosoitetta.";s:2:"fr";s:122:"Ajoute un formulaire à votre site qui permet aux visiteurs de vous envoyer un e-mail sans révéler votre adresse e-mail.";s:2:"he";s:155:"מוסיף תופס יצירת קשר לאתר על מנת לא לחסוף כתובת דואר האלקטרוני של האתר למנועי פרסומות";s:2:"id";s:149:"Menambahkan formulir ke dalam situs Anda yang memungkinkan pengunjung untuk mengirimkan email kepada Anda tanpa memberikan alamat email kepada mereka";s:2:"it";s:119:"Aggiunge un modulo al tuo sito che permette ai visitatori di inviarti email senza mostrare loro il tuo indirizzo email.";s:2:"lt";s:124:"Prideda jūsų puslapyje formą leidžianti lankytojams siūsti jums el. laiškus neatskleidžiant jūsų el. pašto adreso.";s:2:"nl";s:125:"Voegt een formulier aan de site toe waarmee bezoekers een email kunnen sturen, zonder dat u ze een emailadres hoeft te tonen.";s:2:"pl";s:126:"Dodaje formularz kontaktowy do Twojej strony, który pozwala użytkownikom wysłanie maila za pomocą formularza kontaktowego.";s:2:"ru";s:234:"Добавляет форму обратной связи на сайт, через которую посетители могут отправлять вам письма, при этом адрес Email остаётся скрыт.";s:2:"sl";s:113:"Dodaj obrazec za kontakt da vam lahko obiskovalci pošljejo sporočilo brez da bi jim razkrili vaš email naslov.";s:2:"tw";s:147:"為您的網站新增「聯絡我們」的功能，對訪客是較為清楚便捷的聯絡方式，也無須您將電子郵件公開在網站上。";s:2:"cn";s:147:"为您的网站新增“联络我们”的功能，对访客是较为清楚便捷的联络方式，也无须您将电子邮件公开在网站上。";s:2:"th";s:316:"เพิ่มแบบฟอร์มในเว็บไซต์ของคุณ ช่วยให้ผู้เยี่ยมชมสามารถส่งอีเมลถึงคุณโดยไม่ต้องเปิดเผยที่อยู่อีเมลของพวกเขา";s:2:"hu";s:156:"Létrehozható vele olyan űrlap, amely lehetővé teszi a látogatók számára, hogy e-mailt küldjenek neked úgy, hogy nem feded fel az e-mail címedet.";s:2:"se";s:53:"Lägger till ett kontaktformulär till din webbplats.";}', 0, 0, 0, '0', 1, 1, 1, 1367836703),
(7, 'a:24:{s:2:"en";s:5:"Files";s:2:"ar";s:16:"الملفّات";s:2:"br";s:8:"Arquivos";s:2:"pt";s:9:"Ficheiros";s:2:"cs";s:7:"Soubory";s:2:"da";s:5:"Filer";s:2:"de";s:7:"Dateien";s:2:"el";s:12:"Αρχεία";s:2:"es";s:8:"Archivos";s:2:"fa";s:13:"فایل ها";s:2:"fi";s:9:"Tiedostot";s:2:"fr";s:8:"Fichiers";s:2:"he";s:10:"קבצים";s:2:"id";s:4:"File";s:2:"it";s:4:"File";s:2:"lt";s:6:"Failai";s:2:"nl";s:9:"Bestanden";s:2:"ru";s:10:"Файлы";s:2:"sl";s:8:"Datoteke";s:2:"tw";s:6:"檔案";s:2:"cn";s:6:"档案";s:2:"hu";s:7:"Fájlok";s:2:"th";s:12:"ไฟล์";s:2:"se";s:5:"Filer";}', 'files', '2.0.0', NULL, 'a:24:{s:2:"en";s:40:"Manages files and folders for your site.";s:2:"ar";s:50:"إدارة ملفات ومجلّدات موقعك.";s:2:"br";s:53:"Permite gerenciar facilmente os arquivos de seu site.";s:2:"pt";s:59:"Permite gerir facilmente os ficheiros e pastas do seu site.";s:2:"cs";s:43:"Spravujte soubory a složky na vašem webu.";s:2:"da";s:41:"Administrer filer og mapper for dit site.";s:2:"de";s:35:"Verwalte Dateien und Verzeichnisse.";s:2:"el";s:100:"Διαχειρίζεται αρχεία και φακέλους για το ιστότοπό σας.";s:2:"es";s:43:"Administra archivos y carpetas en tu sitio.";s:2:"fa";s:79:"مدیریت فایل های چند رسانه ای و فولدر ها سایت";s:2:"fi";s:43:"Hallitse sivustosi tiedostoja ja kansioita.";s:2:"fr";s:46:"Gérer les fichiers et dossiers de votre site.";s:2:"he";s:47:"ניהול תיקיות וקבצים שבאתר";s:2:"id";s:42:"Mengatur file dan folder dalam situs Anda.";s:2:"it";s:38:"Gestisci file e cartelle del tuo sito.";s:2:"lt";s:28:"Katalogų ir bylų valdymas.";s:2:"nl";s:41:"Beheer bestanden en mappen op uw website.";s:2:"ru";s:78:"Управление файлами и папками вашего сайта.";s:2:"sl";s:38:"Uredi datoteke in mape na vaši strani";s:2:"tw";s:33:"管理網站中的檔案與目錄";s:2:"cn";s:33:"管理网站中的档案与目录";s:2:"hu";s:41:"Fájlok és mappák kezelése az oldalon.";s:2:"th";s:141:"บริหารจัดการไฟล์และโฟลเดอร์สำหรับเว็บไซต์ของคุณ";s:2:"se";s:45:"Hanterar filer och mappar för din webbplats.";}', 0, 0, 1, 'content', 1, 1, 1, 1367836703),
(8, 'a:24:{s:2:"en";s:6:"Groups";s:2:"ar";s:18:"المجموعات";s:2:"br";s:6:"Grupos";s:2:"pt";s:6:"Grupos";s:2:"cs";s:7:"Skupiny";s:2:"da";s:7:"Grupper";s:2:"de";s:7:"Gruppen";s:2:"el";s:12:"Ομάδες";s:2:"es";s:6:"Grupos";s:2:"fa";s:13:"گروه ها";s:2:"fi";s:7:"Ryhmät";s:2:"fr";s:7:"Groupes";s:2:"he";s:12:"קבוצות";s:2:"id";s:4:"Grup";s:2:"it";s:6:"Gruppi";s:2:"lt";s:7:"Grupės";s:2:"nl";s:7:"Groepen";s:2:"ru";s:12:"Группы";s:2:"sl";s:7:"Skupine";s:2:"tw";s:6:"群組";s:2:"cn";s:6:"群组";s:2:"hu";s:9:"Csoportok";s:2:"th";s:15:"กลุ่ม";s:2:"se";s:7:"Grupper";}', 'groups', '1.0.0', NULL, 'a:24:{s:2:"en";s:54:"Users can be placed into groups to manage permissions.";s:2:"ar";s:100:"يمكن وضع المستخدمين في مجموعات لتسهيل إدارة صلاحياتهم.";s:2:"br";s:72:"Usuários podem ser inseridos em grupos para gerenciar suas permissões.";s:2:"pt";s:74:"Utilizadores podem ser inseridos em grupos para gerir as suas permissões.";s:2:"cs";s:77:"Uživatelé mohou být rozřazeni do skupin pro lepší správu oprávnění.";s:2:"da";s:49:"Brugere kan inddeles i grupper for adgangskontrol";s:2:"de";s:85:"Benutzer können zu Gruppen zusammengefasst werden um diesen Zugriffsrechte zu geben.";s:2:"el";s:168:"Οι χρήστες μπορούν να τοποθετηθούν σε ομάδες και έτσι να διαχειριστείτε τα δικαιώματά τους.";s:2:"es";s:75:"Los usuarios podrán ser colocados en grupos para administrar sus permisos.";s:2:"fa";s:149:"کاربرها می توانند در گروه های ساماندهی شوند تا بتوان اجازه های مختلفی را ایجاد کرد";s:2:"fi";s:84:"Käyttäjät voidaan liittää ryhmiin, jotta käyttöoikeuksia voidaan hallinnoida.";s:2:"fr";s:82:"Les utilisateurs peuvent appartenir à des groupes afin de gérer les permissions.";s:2:"he";s:62:"נותן אפשרות לאסוף משתמשים לקבוצות";s:2:"id";s:68:"Pengguna dapat dikelompokkan ke dalam grup untuk mengatur perizinan.";s:2:"it";s:69:"Gli utenti possono essere inseriti in gruppi per gestirne i permessi.";s:2:"lt";s:67:"Vartotojai gali būti priskirti grupei tam, kad valdyti jų teises.";s:2:"nl";s:73:"Gebruikers kunnen in groepen geplaatst worden om rechten te kunnen geven.";s:2:"ru";s:134:"Пользователей можно объединять в группы, для управления правами доступа.";s:2:"sl";s:64:"Uporabniki so lahko razvrščeni v skupine za urejanje dovoljenj";s:2:"tw";s:45:"用戶可以依群組分類並管理其權限";s:2:"cn";s:45:"用户可以依群组分类并管理其权限";s:2:"hu";s:73:"A felhasználók csoportokba rendezhetőek a jogosultságok kezelésére.";s:2:"th";s:84:"สามารถวางผู้ใช้ลงในกลุ่มเพื่";s:2:"se";s:76:"Användare kan delas in i grupper för att hantera roller och behörigheter.";}', 0, 0, 1, 'users', 1, 1, 1, 1367836703),
(9, 'a:17:{s:2:"en";s:8:"Keywords";s:2:"ar";s:21:"كلمات البحث";s:2:"br";s:14:"Palavras-chave";s:2:"pt";s:14:"Palavras-chave";s:2:"da";s:9:"Nøgleord";s:2:"el";s:27:"Λέξεις Κλειδιά";s:2:"fa";s:21:"کلمات کلیدی";s:2:"fr";s:10:"Mots-Clés";s:2:"id";s:10:"Kata Kunci";s:2:"nl";s:14:"Sleutelwoorden";s:2:"tw";s:6:"鍵詞";s:2:"cn";s:6:"键词";s:2:"hu";s:11:"Kulcsszavak";s:2:"fi";s:10:"Avainsanat";s:2:"sl";s:15:"Ključne besede";s:2:"th";s:15:"คำค้น";s:2:"se";s:9:"Nyckelord";}', 'keywords', '1.1.0', NULL, 'a:17:{s:2:"en";s:71:"Maintain a central list of keywords to label and organize your content.";s:2:"ar";s:124:"أنشئ مجموعة من كلمات البحث التي تستطيع من خلالها وسم وتنظيم المحتوى.";s:2:"br";s:85:"Mantém uma lista central de palavras-chave para rotular e organizar o seu conteúdo.";s:2:"pt";s:85:"Mantém uma lista central de palavras-chave para rotular e organizar o seu conteúdo.";s:2:"da";s:72:"Vedligehold en central liste af nøgleord for at organisere dit indhold.";s:2:"el";s:181:"Συντηρεί μια κεντρική λίστα από λέξεις κλειδιά για να οργανώνετε μέσω ετικετών το περιεχόμενό σας.";s:2:"fa";s:110:"حفظ و نگهداری لیست مرکزی از کلمات کلیدی برای سازماندهی محتوا";s:2:"fr";s:87:"Maintenir une liste centralisée de Mots-Clés pour libeller et organiser vos contenus.";s:2:"id";s:71:"Memantau daftar kata kunci untuk melabeli dan mengorganisasikan konten.";s:2:"nl";s:91:"Beheer een centrale lijst van sleutelwoorden om uw content te categoriseren en organiseren.";s:2:"tw";s:64:"集中管理可用於標題與內容的鍵詞(keywords)列表。";s:2:"cn";s:64:"集中管理可用于标题与内容的键词(keywords)列表。";s:2:"hu";s:65:"Ez egy központi kulcsszó lista a cimkékhez és a tartalmakhoz.";s:2:"fi";s:92:"Hallinnoi keskitettyä listaa avainsanoista merkitäksesi ja järjestelläksesi sisältöä.";s:2:"sl";s:82:"Vzdržuj centralni seznam ključnih besed za označevanje in ogranizacijo vsebine.";s:2:"th";s:189:"ศูนย์กลางการปรับปรุงคำค้นในการติดฉลากและจัดระเบียบเนื้อหาของคุณ";s:2:"se";s:61:"Hantera nyckelord för att organisera webbplatsens innehåll.";}', 0, 0, 1, 'data', 1, 1, 1, 1367836703),
(10, 'a:15:{s:2:"en";s:11:"Maintenance";s:2:"pt";s:12:"Manutenção";s:2:"ar";s:14:"الصيانة";s:2:"el";s:18:"Συντήρηση";s:2:"hu";s:13:"Karbantartás";s:2:"fa";s:15:"نگه داری";s:2:"fi";s:9:"Ylläpito";s:2:"fr";s:11:"Maintenance";s:2:"id";s:12:"Pemeliharaan";s:2:"it";s:12:"Manutenzione";s:2:"se";s:10:"Underhåll";s:2:"sl";s:12:"Vzdrževanje";s:2:"th";s:39:"การบำรุงรักษา";s:2:"tw";s:6:"維護";s:2:"cn";s:6:"维护";}', 'maintenance', '1.0.0', NULL, 'a:15:{s:2:"en";s:63:"Manage the site cache and export information from the database.";s:2:"pt";s:68:"Gerir o cache do seu site e exportar informações da base de dados.";s:2:"ar";s:81:"حذف عناصر الذاكرة المخبأة عبر واجهة الإدارة.";s:2:"el";s:142:"Διαγραφή αντικειμένων προσωρινής αποθήκευσης μέσω της περιοχής διαχείρισης.";s:2:"id";s:60:"Mengatur cache situs dan mengexport informasi dari database.";s:2:"it";s:65:"Gestisci la cache del sito e esporta le informazioni dal database";s:2:"fa";s:73:"مدیریت کش سایت و صدور اطلاعات از دیتابیس";s:2:"fr";s:71:"Gérer le cache du site et exporter les contenus de la base de données";s:2:"fi";s:59:"Hallinoi sivuston välimuistia ja vie tietoa tietokannasta.";s:2:"hu";s:66:"Az oldal gyorsítótár kezelése és az adatbázis exportálása.";s:2:"se";s:76:"Underhåll webbplatsens cache och exportera data från webbplatsens databas.";s:2:"sl";s:69:"Upravljaj s predpomnilnikom strani (cache) in izvozi podatke iz baze.";s:2:"th";s:150:"การจัดการแคชเว็บไซต์และข้อมูลการส่งออกจากฐานข้อมูล";s:2:"tw";s:45:"經由管理介面手動刪除暫存資料。";s:2:"cn";s:45:"经由管理介面手动删除暂存资料。";}', 0, 0, 1, 'data', 1, 1, 1, 1367836703),
(11, 'a:25:{s:2:"en";s:10:"Navigation";s:2:"ar";s:14:"الروابط";s:2:"br";s:11:"Navegação";s:2:"pt";s:11:"Navegação";s:2:"cs";s:8:"Navigace";s:2:"da";s:10:"Navigation";s:2:"de";s:10:"Navigation";s:2:"el";s:16:"Πλοήγηση";s:2:"es";s:11:"Navegación";s:2:"fa";s:11:"منو ها";s:2:"fi";s:10:"Navigointi";s:2:"fr";s:10:"Navigation";s:2:"he";s:10:"ניווט";s:2:"id";s:8:"Navigasi";s:2:"it";s:11:"Navigazione";s:2:"lt";s:10:"Navigacija";s:2:"nl";s:9:"Navigatie";s:2:"pl";s:9:"Nawigacja";s:2:"ru";s:18:"Навигация";s:2:"sl";s:10:"Navigacija";s:2:"tw";s:12:"導航選單";s:2:"cn";s:12:"导航选单";s:2:"th";s:36:"ตัวช่วยนำทาง";s:2:"hu";s:11:"Navigáció";s:2:"se";s:10:"Navigation";}', 'navigation', '1.1.0', NULL, 'a:25:{s:2:"en";s:78:"Manage links on navigation menus and all the navigation groups they belong to.";s:2:"ar";s:85:"إدارة روابط وقوائم ومجموعات الروابط في الموقع.";s:2:"br";s:91:"Gerenciar links do menu de navegação e todos os grupos de navegação pertencentes a ele.";s:2:"pt";s:93:"Gerir todos os grupos dos menus de navegação e os links de navegação pertencentes a eles.";s:2:"cs";s:73:"Správa odkazů v navigaci a všech souvisejících navigačních skupin.";s:2:"da";s:82:"Håndtér links på navigationsmenuerne og alle navigationsgrupperne de tilhører.";s:2:"de";s:76:"Verwalte Links in Navigationsmenüs und alle zugehörigen Navigationsgruppen";s:2:"el";s:207:"Διαχειριστείτε τους συνδέσμους στα μενού πλοήγησης και όλες τις ομάδες συνδέσμων πλοήγησης στις οποίες ανήκουν.";s:2:"es";s:102:"Administra links en los menús de navegación y en todos los grupos de navegación al cual pertenecen.";s:2:"fa";s:68:"مدیریت منو ها و گروه های مربوط به آنها";s:2:"fi";s:91:"Hallitse linkkejä navigointi valikoissa ja kaikkia navigointi ryhmiä, joihin ne kuuluvat.";s:2:"fr";s:97:"Gérer les liens du menu Navigation et tous les groupes de navigation auxquels ils appartiennent.";s:2:"he";s:73:"ניהול שלוחות תפריטי ניווט וקבוצות ניווט";s:2:"id";s:73:"Mengatur tautan pada menu navigasi dan semua pengelompokan grup navigasi.";s:2:"it";s:97:"Gestisci i collegamenti dei menu di navigazione e tutti i gruppi di navigazione da cui dipendono.";s:2:"lt";s:95:"Tvarkyk nuorodas navigacijų menių ir visas navigacijų grupes kurioms tos nuorodos priklauso.";s:2:"nl";s:92:"Beheer koppelingen op de navigatiemenu&apos;s en alle navigatiegroepen waar ze onder vallen.";s:2:"pl";s:95:"Zarządzaj linkami w menu nawigacji oraz wszystkimi grupami nawigacji do których one należą.";s:2:"ru";s:136:"Управление ссылками в меню навигации и группах, к которым они принадлежат.";s:2:"sl";s:64:"Uredi povezave v meniju in vse skupine povezav ki jim pripadajo.";s:2:"tw";s:72:"管理導航選單中的連結，以及它們所隸屬的導航群組。";s:2:"cn";s:72:"管理导航选单中的连结，以及它们所隶属的导航群组。";s:2:"th";s:108:"จัดการการเชื่อมโยงนำทางและกลุ่มนำทาง";s:2:"se";s:33:"Hantera länkar och länkgrupper.";s:2:"hu";s:100:"Linkek kezelése a navigációs menükben és a navigációs csoportok kezelése, amikhez tartoznak.";}', 0, 0, 1, 'structure', 1, 1, 1, 1367836703),
(12, 'a:25:{s:2:"en";s:5:"Pages";s:2:"ar";s:14:"الصفحات";s:2:"br";s:8:"Páginas";s:2:"pt";s:8:"Páginas";s:2:"cs";s:8:"Stránky";s:2:"da";s:5:"Sider";s:2:"de";s:6:"Seiten";s:2:"el";s:14:"Σελίδες";s:2:"es";s:8:"Páginas";s:2:"fa";s:14:"صفحه ها ";s:2:"fi";s:5:"Sivut";s:2:"fr";s:5:"Pages";s:2:"he";s:8:"דפים";s:2:"id";s:7:"Halaman";s:2:"it";s:6:"Pagine";s:2:"lt";s:9:"Puslapiai";s:2:"nl";s:13:"Pagina&apos;s";s:2:"pl";s:6:"Strony";s:2:"ru";s:16:"Страницы";s:2:"sl";s:6:"Strani";s:2:"tw";s:6:"頁面";s:2:"cn";s:6:"页面";s:2:"hu";s:7:"Oldalak";s:2:"th";s:21:"หน้าเพจ";s:2:"se";s:5:"Sidor";}', 'pages', '2.2.0', NULL, 'a:25:{s:2:"en";s:55:"Add custom pages to the site with any content you want.";s:2:"ar";s:99:"إضافة صفحات مُخصّصة إلى الموقع تحتوي أية مُحتوى تريده.";s:2:"br";s:82:"Adicionar páginas personalizadas ao site com qualquer conteúdo que você queira.";s:2:"pt";s:86:"Adicionar páginas personalizadas ao seu site com qualquer conteúdo que você queira.";s:2:"cs";s:74:"Přidávejte vlastní stránky na web s jakýmkoliv obsahem budete chtít.";s:2:"da";s:71:"Tilføj brugerdefinerede sider til dit site med det indhold du ønsker.";s:2:"de";s:49:"Füge eigene Seiten mit anpassbaren Inhalt hinzu.";s:2:"el";s:152:"Προσθέστε και επεξεργαστείτε σελίδες στον ιστότοπό σας με ό,τι περιεχόμενο θέλετε.";s:2:"es";s:77:"Agrega páginas customizadas al sitio con cualquier contenido que tu quieras.";s:2:"fa";s:96:"ایحاد صفحات جدید و دلخواه با هر محتوایی که دوست دارید";s:2:"fi";s:47:"Lisää mitä tahansa sisältöä sivustollesi.";s:2:"fr";s:89:"Permet d''ajouter sur le site des pages personalisées avec le contenu que vous souhaitez.";s:2:"he";s:35:"ניהול דפי תוכן האתר";s:2:"id";s:75:"Menambahkan halaman ke dalam situs dengan konten apapun yang Anda perlukan.";s:2:"it";s:73:"Aggiungi pagine personalizzate al sito con qualsiesi contenuto tu voglia.";s:2:"lt";s:46:"Pridėkite nuosavus puslapius betkokio turinio";s:2:"nl";s:70:"Voeg aangepaste pagina&apos;s met willekeurige inhoud aan de site toe.";s:2:"pl";s:53:"Dodaj własne strony z dowolną treścią do witryny.";s:2:"ru";s:134:"Управление информационными страницами сайта, с произвольным содержимым.";s:2:"sl";s:44:"Dodaj stran s kakršno koli vsebino želite.";s:2:"tw";s:39:"為您的網站新增自定的頁面。";s:2:"cn";s:39:"为您的网站新增自定的页面。";s:2:"th";s:168:"เพิ่มหน้าเว็บที่กำหนดเองไปยังเว็บไซต์ของคุณตามที่ต้องการ";s:2:"hu";s:67:"Saját oldalak hozzáadása a weboldalhoz, akármilyen tartalommal.";s:2:"se";s:39:"Lägg till egna sidor till webbplatsen.";}', 1, 1, 1, 'content', 1, 1, 1, 1367836703),
(13, 'a:25:{s:2:"en";s:11:"Permissions";s:2:"ar";s:18:"الصلاحيات";s:2:"br";s:11:"Permissões";s:2:"pt";s:11:"Permissões";s:2:"cs";s:12:"Oprávnění";s:2:"da";s:14:"Adgangskontrol";s:2:"de";s:14:"Zugriffsrechte";s:2:"el";s:20:"Δικαιώματα";s:2:"es";s:8:"Permisos";s:2:"fa";s:15:"اجازه ها";s:2:"fi";s:16:"Käyttöoikeudet";s:2:"fr";s:11:"Permissions";s:2:"he";s:12:"הרשאות";s:2:"id";s:9:"Perizinan";s:2:"it";s:8:"Permessi";s:2:"lt";s:7:"Teisės";s:2:"nl";s:15:"Toegangsrechten";s:2:"pl";s:11:"Uprawnienia";s:2:"ru";s:25:"Права доступа";s:2:"sl";s:10:"Dovoljenja";s:2:"tw";s:6:"權限";s:2:"cn";s:6:"权限";s:2:"hu";s:14:"Jogosultságok";s:2:"th";s:18:"สิทธิ์";s:2:"se";s:13:"Behörigheter";}', 'permissions', '1.0.0', NULL, 'a:25:{s:2:"en";s:68:"Control what type of users can see certain sections within the site.";s:2:"ar";s:127:"التحكم بإعطاء الصلاحيات للمستخدمين للوصول إلى أقسام الموقع المختلفة.";s:2:"br";s:68:"Controle quais tipos de usuários podem ver certas seções no site.";s:2:"pt";s:75:"Controle quais os tipos de utilizadores podem ver certas secções no site.";s:2:"cs";s:93:"Spravujte oprávnění pro jednotlivé typy uživatelů a ke kterým sekcím mají přístup.";s:2:"da";s:72:"Kontroller hvilken type brugere der kan se bestemte sektioner på sitet.";s:2:"de";s:70:"Regelt welche Art von Benutzer welche Sektion in der Seite sehen kann.";s:2:"el";s:180:"Ελέγξτε τα δικαιώματα χρηστών και ομάδων χρηστών όσο αφορά σε διάφορες λειτουργίες του ιστοτόπου.";s:2:"es";s:81:"Controla que tipo de usuarios pueden ver secciones específicas dentro del sitio.";s:2:"fa";s:59:"مدیریت اجازه های گروه های کاربری";s:2:"fi";s:72:"Hallitse minkä tyyppisiin osioihin käyttäjät pääsevät sivustolla.";s:2:"fr";s:104:"Permet de définir les autorisations des groupes d''utilisateurs pour afficher les différentes sections.";s:2:"he";s:75:"ניהול הרשאות כניסה לאיזורים מסוימים באתר";s:2:"id";s:76:"Mengontrol tipe pengguna mana yang dapat mengakses suatu bagian dalam situs.";s:2:"it";s:78:"Controlla che tipo di utenti posssono accedere a determinate sezioni del sito.";s:2:"lt";s:72:"Kontroliuokite kokio tipo varotojai kokią dalį puslapio gali pasiekti.";s:2:"nl";s:71:"Bepaal welke typen gebruikers toegang hebben tot gedeeltes van de site.";s:2:"pl";s:79:"Ustaw, którzy użytkownicy mogą mieć dostęp do odpowiednich sekcji witryny.";s:2:"ru";s:209:"Управление правами доступа, ограничение доступа определённых групп пользователей к произвольным разделам сайта.";s:2:"sl";s:85:"Uredite dovoljenja kateri tip uporabnika lahko vidi določena področja vaše strani.";s:2:"tw";s:81:"用來控制不同類別的用戶，設定其瀏覽特定網站內容的權限。";s:2:"cn";s:81:"用来控制不同类别的用户，设定其浏览特定网站内容的权限。";s:2:"hu";s:129:"A felhasználók felügyelet alatt tartására, hogy milyen típusú felhasználók, mit láthatnak, mely szakaszain az oldalnak.";s:2:"th";s:117:"ควบคุมว่าผู้ใช้งานจะเห็นหมวดหมู่ไหนบ้าง";s:2:"se";s:27:"Hantera gruppbehörigheter.";}', 0, 0, 1, 'users', 1, 1, 1, 1367836703),
(14, 'a:24:{s:2:"en";s:9:"Redirects";s:2:"ar";s:18:"التوجيهات";s:2:"br";s:17:"Redirecionamentos";s:2:"pt";s:17:"Redirecionamentos";s:2:"cs";s:16:"Přesměrování";s:2:"da";s:13:"Omadressering";s:2:"el";s:30:"Ανακατευθύνσεις";s:2:"es";s:13:"Redirecciones";s:2:"fa";s:17:"انتقال ها";s:2:"fi";s:18:"Uudelleenohjaukset";s:2:"fr";s:12:"Redirections";s:2:"he";s:12:"הפניות";s:2:"id";s:8:"Redirect";s:2:"it";s:11:"Reindirizzi";s:2:"lt";s:14:"Peradresavimai";s:2:"nl";s:12:"Verwijzingen";s:2:"ru";s:30:"Перенаправления";s:2:"sl";s:12:"Preusmeritve";s:2:"tw";s:6:"轉址";s:2:"cn";s:6:"转址";s:2:"hu";s:17:"Átirányítások";s:2:"pl";s:14:"Przekierowania";s:2:"th";s:42:"เปลี่ยนเส้นทาง";s:2:"se";s:14:"Omdirigeringar";}', 'redirects', '1.0.0', NULL, 'a:24:{s:2:"en";s:33:"Redirect from one URL to another.";s:2:"ar";s:47:"التوجيه من رابط URL إلى آخر.";s:2:"br";s:39:"Redirecionamento de uma URL para outra.";s:2:"pt";s:40:"Redirecionamentos de uma URL para outra.";s:2:"cs";s:43:"Přesměrujte z jedné adresy URL na jinou.";s:2:"da";s:35:"Omadresser fra en URL til en anden.";s:2:"el";s:81:"Ανακατευθείνετε μια διεύθυνση URL σε μια άλλη";s:2:"es";s:34:"Redireccionar desde una URL a otra";s:2:"fa";s:63:"انتقال دادن یک صفحه به یک آدرس دیگر";s:2:"fi";s:45:"Uudelleenohjaa käyttäjän paikasta toiseen.";s:2:"fr";s:34:"Redirection d''une URL à un autre.";s:2:"he";s:43:"הפניות מכתובת אחת לאחרת";s:2:"id";s:40:"Redirect dari satu URL ke URL yang lain.";s:2:"it";s:35:"Reindirizza da una URL ad un altra.";s:2:"lt";s:56:"Peradresuokite puslapį iš vieno adreso (URL) į kitą.";s:2:"nl";s:38:"Verwijs vanaf een URL naar een andere.";s:2:"ru";s:78:"Перенаправления с одного адреса на другой.";s:2:"sl";s:44:"Preusmeritev iz enega URL naslova na drugega";s:2:"tw";s:33:"將網址轉址、重新定向。";s:2:"cn";s:33:"将网址转址、重新定向。";s:2:"hu";s:38:"Egy URL átirányítása egy másikra.";s:2:"pl";s:44:"Przekierowanie z jednego adresu URL na inny.";s:2:"th";s:123:"เปลี่ยนเส้นทางจากที่หนึ่งไปยังอีกที่หนึ่ง";s:2:"se";s:38:"Omdirigera från en URL till en annan.";}', 0, 0, 1, 'structure', 1, 1, 1, 1367836703),
(15, 'a:9:{s:2:"en";s:6:"Search";s:2:"fr";s:9:"Recherche";s:2:"se";s:4:"Sök";s:2:"ar";s:10:"البحث";s:2:"tw";s:6:"搜尋";s:2:"cn";s:6:"搜寻";s:2:"it";s:7:"Ricerca";s:2:"fa";s:10:"جستجو";s:2:"fi";s:4:"Etsi";}', 'search', '1.0.0', NULL, 'a:9:{s:2:"en";s:72:"Search through various types of content with this modular search system.";s:2:"fr";s:84:"Rechercher parmi différents types de contenus avec système de recherche modulaire.";s:2:"se";s:36:"Sök igenom olika typer av innehåll";s:2:"ar";s:102:"ابحث في أنواع مختلفة من المحتوى باستخدام نظام البحث هذا.";s:2:"tw";s:63:"此模組可用以搜尋網站中不同類型的資料內容。";s:2:"cn";s:63:"此模组可用以搜寻网站中不同类型的资料内容。";s:2:"it";s:71:"Cerca tra diversi tipi di contenuti con il sistema di reicerca modulare";s:2:"fa";s:115:"توسط این ماژول می توانید در محتواهای مختلف وبسایت جستجو نمایید.";s:2:"fi";s:76:"Etsi eri tyypistä sisältöä tällä modulaarisella hakujärjestelmällä.";}', 0, 0, 0, '0', 1, 1, 1, 1367836703),
(16, 'a:20:{s:2:"en";s:7:"Sitemap";s:2:"ar";s:23:"خريطة الموقع";s:2:"br";s:12:"Mapa do Site";s:2:"pt";s:12:"Mapa do Site";s:2:"de";s:7:"Sitemap";s:2:"el";s:31:"Χάρτης Ιστότοπου";s:2:"es";s:14:"Mapa del Sitio";s:2:"fa";s:17:"نقشه سایت";s:2:"fi";s:10:"Sivukartta";s:2:"fr";s:12:"Plan du site";s:2:"id";s:10:"Peta Situs";s:2:"it";s:14:"Mappa del sito";s:2:"lt";s:16:"Svetainės medis";s:2:"nl";s:7:"Sitemap";s:2:"ru";s:21:"Карта сайта";s:2:"tw";s:12:"網站地圖";s:2:"cn";s:12:"网站地图";s:2:"th";s:21:"ไซต์แมพ";s:2:"hu";s:13:"Oldaltérkép";s:2:"se";s:9:"Sajtkarta";}', 'sitemap', '1.3.0', NULL, 'a:21:{s:2:"en";s:87:"The sitemap module creates an index of all pages and an XML sitemap for search engines.";s:2:"ar";s:120:"وحدة خريطة الموقع تنشئ فهرساً لجميع الصفحات وملف XML لمحركات البحث.";s:2:"br";s:102:"O módulo de mapa do site cria um índice de todas as páginas e um sitemap XML para motores de busca.";s:2:"pt";s:102:"O módulo do mapa do site cria um índice de todas as páginas e um sitemap XML para motores de busca.";s:2:"da";s:86:"Sitemapmodulet opretter et indeks over alle sider og et XML sitemap til søgemaskiner.";s:2:"de";s:92:"Die Sitemap Modul erstellt einen Index aller Seiten und eine XML-Sitemap für Suchmaschinen.";s:2:"el";s:190:"Δημιουργεί έναν κατάλογο όλων των σελίδων και έναν χάρτη σελίδων σε μορφή XML για τις μηχανές αναζήτησης.";s:2:"es";s:111:"El módulo de mapa crea un índice de todas las páginas y un mapa del sitio XML para los motores de búsqueda.";s:2:"fa";s:150:"ماژول نقشه سایت یک لیست از همه ی صفحه ها به فرمت فایل XML برای موتور های جستجو می سازد";s:2:"fi";s:82:"sivukartta moduuli luo hakemisto kaikista sivuista ja XML sivukartta hakukoneille.";s:2:"fr";s:106:"Le module sitemap crée un index de toutes les pages et un plan de site XML pour les moteurs de recherche.";s:2:"id";s:110:"Modul peta situs ini membuat indeks dari setiap halaman dan sebuah format XML untuk mempermudah mesin pencari.";s:2:"it";s:104:"Il modulo mappa del sito crea un indice di tutte le pagine e una sitemap in XML per i motori di ricerca.";s:2:"lt";s:86:"struktūra modulis sukuria visų puslapių ir XML Sitemap paieškos sistemų indeksas.";s:2:"nl";s:89:"De sitemap module maakt een index van alle pagina''s en een XML sitemap voor zoekmachines.";s:2:"ru";s:144:"Карта модуль создает индекс всех страниц и карта сайта XML для поисковых систем.";s:2:"tw";s:84:"站點地圖模塊創建一個索引的所有網頁和XML網站地圖搜索引擎。";s:2:"cn";s:84:"站点地图模块创建一个索引的所有网页和XML网站地图搜索引擎。";s:2:"th";s:202:"โมดูลไซต์แมพสามารถสร้างดัชนีของหน้าเว็บทั้งหมดสำหรับเครื่องมือค้นหา.";s:2:"hu";s:94:"Ez a modul indexeli az összes oldalt és egy XML oldaltéképet generál a keresőmotoroknak.";s:2:"se";s:86:"Sajtkarta, modulen skapar ett index av alla sidor och en XML-sitemap för sökmotorer.";}', 0, 1, 0, 'content', 1, 1, 1, 1367836703),
(17, 'a:21:{s:2:"en";s:15:"Email Templates";s:2:"ar";s:48:"قوالب الرسائل الإلكترونية";s:2:"br";s:17:"Modelos de e-mail";s:2:"pt";s:17:"Modelos de e-mail";s:2:"da";s:16:"Email skabeloner";s:2:"el";s:22:"Δυναμικά email";s:2:"es";s:19:"Plantillas de email";s:2:"fa";s:26:"قالب های ایمیل";s:2:"fr";s:17:"Modèles d''emails";s:2:"he";s:12:"תבניות";s:2:"id";s:14:"Template Email";s:2:"lt";s:22:"El. laiškų šablonai";s:2:"nl";s:15:"Email sjablonen";s:2:"ru";s:25:"Шаблоны почты";s:2:"sl";s:14:"Email predloge";s:2:"tw";s:12:"郵件範本";s:2:"cn";s:12:"邮件范本";s:2:"hu";s:15:"E-mail sablonok";s:2:"fi";s:25:"Sähköposti viestipohjat";s:2:"th";s:33:"แม่แบบอีเมล";s:2:"se";s:12:"E-postmallar";}', 'templates', '1.1.0', NULL, 'a:21:{s:2:"en";s:46:"Create, edit, and save dynamic email templates";s:2:"ar";s:97:"أنشئ، عدّل واحفظ قوالب البريد الإلكترني الديناميكية.";s:2:"br";s:51:"Criar, editar e salvar modelos de e-mail dinâmicos";s:2:"pt";s:51:"Criar, editar e salvar modelos de e-mail dinâmicos";s:2:"da";s:49:"Opret, redigér og gem dynamiske emailskabeloner.";s:2:"el";s:108:"Δημιουργήστε, επεξεργαστείτε και αποθηκεύστε δυναμικά email.";s:2:"es";s:54:"Crear, editar y guardar plantillas de email dinámicas";s:2:"fa";s:92:"ایحاد، ویرایش و ذخیره ی قالب های ایمیل به صورت پویا";s:2:"fr";s:61:"Créer, éditer et sauver dynamiquement des modèles d''emails";s:2:"he";s:54:"ניהול של תבניות דואר אלקטרוני";s:2:"id";s:55:"Membuat, mengedit, dan menyimpan template email dinamis";s:2:"lt";s:58:"Kurk, tvarkyk ir saugok dinaminius el. laiškų šablonus.";s:2:"nl";s:49:"Maak, bewerk, en beheer dynamische emailsjablonen";s:2:"ru";s:127:"Создавайте, редактируйте и сохраняйте динамические почтовые шаблоны";s:2:"sl";s:52:"Ustvari, uredi in shrani spremenljive email predloge";s:2:"tw";s:61:"新增、編輯與儲存可顯示動態資料的 email 範本";s:2:"cn";s:61:"新增、编辑与储存可显示动态资料的 email 范本";s:2:"hu";s:63:"Csináld, szerkeszd és mentsd el a dinamikus e-mail sablonokat";s:2:"fi";s:66:"Lisää, muokkaa ja tallenna dynaamisia sähköposti viestipohjia.";s:2:"th";s:129:"การสร้างแก้ไขและบันทึกแม่แบบอีเมลแบบไดนามิก";s:2:"se";s:49:"Skapa, redigera och spara dynamiska E-postmallar.";}', 1, 0, 1, 'structure', 1, 1, 1, 1367836703);
INSERT INTO `default_modules` (`id`, `name`, `slug`, `version`, `type`, `description`, `skip_xss`, `is_frontend`, `is_backend`, `menu`, `enabled`, `installed`, `is_core`, `updated_on`) VALUES
(18, 'a:25:{s:2:"en";s:5:"Users";s:2:"ar";s:20:"المستخدمون";s:2:"br";s:9:"Usuários";s:2:"pt";s:12:"Utilizadores";s:2:"cs";s:11:"Uživatelé";s:2:"da";s:7:"Brugere";s:2:"de";s:8:"Benutzer";s:2:"el";s:14:"Χρήστες";s:2:"es";s:8:"Usuarios";s:2:"fa";s:14:"کاربران";s:2:"fi";s:12:"Käyttäjät";s:2:"fr";s:12:"Utilisateurs";s:2:"he";s:14:"משתמשים";s:2:"id";s:8:"Pengguna";s:2:"it";s:6:"Utenti";s:2:"lt";s:10:"Vartotojai";s:2:"nl";s:10:"Gebruikers";s:2:"pl";s:12:"Użytkownicy";s:2:"ru";s:24:"Пользователи";s:2:"sl";s:10:"Uporabniki";s:2:"tw";s:6:"用戶";s:2:"cn";s:6:"用户";s:2:"hu";s:14:"Felhasználók";s:2:"th";s:27:"ผู้ใช้งาน";s:2:"se";s:10:"Användare";}', 'users', '1.1.0', NULL, 'a:25:{s:2:"en";s:81:"Let users register and log in to the site, and manage them via the control panel.";s:2:"ar";s:133:"تمكين المستخدمين من التسجيل والدخول إلى الموقع، وإدارتهم من لوحة التحكم.";s:2:"br";s:125:"Permite com que usuários se registrem e entrem no site e também que eles sejam gerenciáveis apartir do painel de controle.";s:2:"pt";s:125:"Permite com que os utilizadores se registem e entrem no site e também que eles sejam geriveis apartir do painel de controlo.";s:2:"cs";s:103:"Umožňuje uživatelům se registrovat a přihlašovat a zároveň jejich správu v Kontrolním panelu.";s:2:"da";s:89:"Lader brugere registrere sig og logge ind på sitet, og håndtér dem via kontrolpanelet.";s:2:"de";s:108:"Erlaube Benutzern das Registrieren und Einloggen auf der Seite und verwalte sie über die Admin-Oberfläche.";s:2:"el";s:208:"Παρέχει λειτουργίες εγγραφής και σύνδεσης στους επισκέπτες. Επίσης από εδώ γίνεται η διαχείριση των λογαριασμών.";s:2:"es";s:138:"Permite el registro de nuevos usuarios quienes podrán loguearse en el sitio. Estos podrán controlarse desde el panel de administración.";s:2:"fa";s:151:"به کاربر ها امکان ثبت نام و لاگین در سایت را بدهید و آنها را در پنل مدیریت نظارت کنید";s:2:"fi";s:126:"Antaa käyttäjien rekisteröityä ja kirjautua sisään sivustolle sekä mahdollistaa niiden muokkaamisen hallintapaneelista.";s:2:"fr";s:112:"Permet aux utilisateurs de s''enregistrer et de se connecter au site et de les gérer via le panneau de contrôle";s:2:"he";s:62:"ניהול משתמשים: רישום, הפעלה ומחיקה";s:2:"id";s:102:"Memungkinkan pengguna untuk mendaftar dan masuk ke dalam situs, dan mengaturnya melalui control panel.";s:2:"it";s:95:"Fai iscrivere de entrare nel sito gli utenti, e gestiscili attraverso il pannello di controllo.";s:2:"lt";s:106:"Leidžia vartotojams registruotis ir prisijungti prie puslapio, ir valdyti juos per administravimo panele.";s:2:"nl";s:88:"Laat gebruikers registreren en inloggen op de site, en beheer ze via het controlepaneel.";s:2:"pl";s:87:"Pozwól użytkownikom na logowanie się na stronie i zarządzaj nimi za pomocą panelu.";s:2:"ru";s:155:"Управление зарегистрированными пользователями, активирование новых пользователей.";s:2:"sl";s:96:"Dovoli uporabnikom za registracijo in prijavo na strani, urejanje le teh preko nadzorne plošče";s:2:"tw";s:87:"讓用戶可以註冊並登入網站，並且管理者可在控制台內進行管理。";s:2:"cn";s:87:"让用户可以注册并登入网站，并且管理者可在控制台内进行管理。";s:2:"th";s:210:"ให้ผู้ใช้ลงทะเบียนและเข้าสู่เว็บไซต์และจัดการกับพวกเขาผ่านทางแผงควบคุม";s:2:"hu";s:120:"Hogy a felhasználók tudjanak az oldalra regisztrálni és belépni, valamint lehessen őket kezelni a vezérlőpulton.";s:2:"se";s:111:"Låt dina besökare registrera sig och logga in på webbplatsen. Hantera sedan användarna via kontrollpanelen.";}', 0, 0, 1, '0', 1, 1, 1, 1367836703),
(19, 'a:25:{s:2:"en";s:9:"Variables";s:2:"ar";s:20:"المتغيّرات";s:2:"br";s:10:"Variáveis";s:2:"pt";s:10:"Variáveis";s:2:"cs";s:10:"Proměnné";s:2:"da";s:8:"Variable";s:2:"de";s:9:"Variablen";s:2:"el";s:20:"Μεταβλητές";s:2:"es";s:9:"Variables";s:2:"fa";s:16:"متغییرها";s:2:"fi";s:9:"Muuttujat";s:2:"fr";s:9:"Variables";s:2:"he";s:12:"משתנים";s:2:"id";s:8:"Variabel";s:2:"it";s:9:"Variabili";s:2:"lt";s:10:"Kintamieji";s:2:"nl";s:10:"Variabelen";s:2:"pl";s:7:"Zmienne";s:2:"ru";s:20:"Переменные";s:2:"sl";s:13:"Spremenljivke";s:2:"tw";s:12:"系統變數";s:2:"cn";s:12:"系统变数";s:2:"th";s:18:"ตัวแปร";s:2:"se";s:9:"Variabler";s:2:"hu";s:10:"Változók";}', 'variables', '1.0.0', NULL, 'a:25:{s:2:"en";s:59:"Manage global variables that can be accessed from anywhere.";s:2:"ar";s:97:"إدارة المُتغيّرات العامة لاستخدامها في أرجاء الموقع.";s:2:"br";s:61:"Gerencia as variáveis globais acessíveis de qualquer lugar.";s:2:"pt";s:58:"Gerir as variáveis globais acessíveis de qualquer lugar.";s:2:"cs";s:56:"Spravujte globální proměnné přístupné odkudkoliv.";s:2:"da";s:51:"Håndtér globale variable som kan tilgås overalt.";s:2:"de";s:74:"Verwaltet globale Variablen, auf die von überall zugegriffen werden kann.";s:2:"el";s:129:"Διαχείριση μεταβλητών που είναι προσβάσιμες από παντού στον ιστότοπο.";s:2:"es";s:50:"Manage global variables to access from everywhere.";s:2:"fa";s:136:"مدیریت متغییر های جامع که می توانند در هر جای سایت مورد استفاده قرار بگیرند";s:2:"fi";s:66:"Hallitse globaali muuttujia, joihin pääsee käsiksi mistä vain.";s:2:"fr";s:92:"Gérer des variables globales pour pouvoir y accéder depuis n''importe quel endroit du site.";s:2:"he";s:96:"ניהול משתנים גלובליים אשר ניתנים להמרה בכל חלקי האתר";s:2:"id";s:59:"Mengatur variabel global yang dapat diakses dari mana saja.";s:2:"it";s:58:"Gestisci le variabili globali per accedervi da ogni parte.";s:2:"lt";s:64:"Globalių kintamujų tvarkymas kurie yra pasiekiami iš bet kur.";s:2:"nl";s:54:"Beheer globale variabelen die overal beschikbaar zijn.";s:2:"pl";s:86:"Zarządzaj globalnymi zmiennymi do których masz dostęp z każdego miejsca aplikacji.";s:2:"ru";s:136:"Управление глобальными переменными, которые доступны в любом месте сайта.";s:2:"sl";s:53:"Urejanje globalnih spremenljivk za dostop od kjerkoli";s:2:"th";s:148:"จัดการตัวแปรทั่วไปโดยที่สามารถเข้าถึงได้จากทุกที่.";s:2:"tw";s:45:"管理此網站內可存取的全局變數。";s:2:"cn";s:45:"管理此网站内可存取的全局变数。";s:2:"hu";s:62:"Globális változók kezelése a hozzáféréshez, bárhonnan.";s:2:"se";s:66:"Hantera globala variabler som kan avändas över hela webbplatsen.";}', 0, 0, 1, 'data', 1, 1, 1, 1367836703),
(20, 'a:23:{s:2:"en";s:7:"Widgets";s:2:"br";s:7:"Widgets";s:2:"pt";s:7:"Widgets";s:2:"cs";s:7:"Widgety";s:2:"da";s:7:"Widgets";s:2:"de";s:7:"Widgets";s:2:"el";s:7:"Widgets";s:2:"es";s:7:"Widgets";s:2:"fa";s:13:"ویجت ها";s:2:"fi";s:9:"Vimpaimet";s:2:"fr";s:7:"Widgets";s:2:"id";s:6:"Widget";s:2:"it";s:7:"Widgets";s:2:"lt";s:11:"Papildiniai";s:2:"nl";s:7:"Widgets";s:2:"ru";s:14:"Виджеты";s:2:"sl";s:9:"Vtičniki";s:2:"tw";s:9:"小組件";s:2:"cn";s:9:"小组件";s:2:"hu";s:9:"Widget-ek";s:2:"th";s:21:"วิดเจ็ต";s:2:"se";s:8:"Widgetar";s:2:"ar";s:14:"الودجتس";}', 'widgets', '1.2.0', NULL, 'a:23:{s:2:"en";s:69:"Manage small sections of self-contained logic in blocks or "Widgets".";s:2:"ar";s:132:"إدارة أقسام صغيرة من البرمجيات في مساحات الموقع أو ما يُسمّى بالـ"ودجتس".";s:2:"br";s:77:"Gerenciar pequenas seções de conteúdos em bloco conhecidos como "Widgets".";s:2:"pt";s:74:"Gerir pequenas secções de conteúdos em bloco conhecidos como "Widgets".";s:2:"cs";s:56:"Spravujte malé funkční části webu neboli "Widgety".";s:2:"da";s:74:"Håndter små sektioner af selv-opretholdt logik i blokke eller "Widgets".";s:2:"de";s:62:"Verwaltet kleine, eigentständige Bereiche, genannt "Widgets".";s:2:"el";s:149:"Διαχείριση μικρών τμημάτων αυτόνομης προγραμματιστικής λογικής σε πεδία ή "Widgets".";s:2:"es";s:75:"Manejar pequeñas secciones de lógica autocontenida en bloques o "Widgets"";s:2:"fa";s:76:"مدیریت قسمت های کوچکی از سایت به طور مستقل";s:2:"fi";s:81:"Hallitse pieniä osioita, jotka sisältävät erillisiä lohkoja tai "Vimpaimia".";s:2:"fr";s:41:"Gérer des mini application ou "Widgets".";s:2:"id";s:101:"Mengatur bagian-bagian kecil dari blok-blok yang memuat sesuatu atau dikenal dengan istilah "Widget".";s:2:"it";s:70:"Gestisci piccole sezioni di logica a se stante in blocchi o "Widgets".";s:2:"lt";s:43:"Nedidelių, savarankiškų blokų valdymas.";s:2:"nl";s:75:"Beheer kleine onderdelen die zelfstandige logica bevatten, ofwel "Widgets".";s:2:"ru";s:91:"Управление небольшими, самостоятельными блоками.";s:2:"sl";s:61:"Urejanje manjših delov blokov strani ti. Vtičniki (Widgets)";s:2:"tw";s:103:"可將小段的程式碼透過小組件來管理。即所謂 "Widgets"，或稱為小工具、部件。";s:2:"cn";s:103:"可将小段的程式码透过小组件来管理。即所谓 "Widgets"，或称为小工具、部件。";s:2:"hu";s:56:"Önálló kis logikai tömbök vagy widget-ek kezelése.";s:2:"th";s:152:"จัดการส่วนเล็ก ๆ ในรูปแบบของตัวเองในบล็อกหรือวิดเจ็ต";s:2:"se";s:83:"Hantera små sektioner med egen logik och innehåll på olika delar av webbplatsen.";}', 1, 0, 1, 'content', 1, 1, 1, 1367836703),
(21, 'a:9:{s:2:"en";s:7:"WYSIWYG";s:2:"fa";s:7:"WYSIWYG";s:2:"fr";s:7:"WYSIWYG";s:2:"pt";s:7:"WYSIWYG";s:2:"se";s:15:"HTML-redigerare";s:2:"tw";s:7:"WYSIWYG";s:2:"cn";s:7:"WYSIWYG";s:2:"ar";s:27:"المحرر الرسومي";s:2:"it";s:7:"WYSIWYG";}', 'wysiwyg', '1.0.0', NULL, 'a:10:{s:2:"en";s:60:"Provides the WYSIWYG editor for PyroCMS powered by CKEditor.";s:2:"fa";s:73:"ویرایشگر WYSIWYG که توسطCKEditor ارائه شده است. ";s:2:"fr";s:63:"Fournit un éditeur WYSIWYG pour PyroCMS propulsé par CKEditor";s:2:"pt";s:61:"Fornece o editor WYSIWYG para o PyroCMS, powered by CKEditor.";s:2:"el";s:113:"Παρέχει τον επεξεργαστή WYSIWYG για το PyroCMS, χρησιμοποιεί το CKEDitor.";s:2:"se";s:37:"Redigeringsmodul för HTML, CKEditor.";s:2:"tw";s:83:"提供 PyroCMS 所見即所得（WYSIWYG）編輯器，由 CKEditor 技術提供。";s:2:"cn";s:83:"提供 PyroCMS 所见即所得（WYSIWYG）编辑器，由 CKEditor 技术提供。";s:2:"ar";s:76:"توفر المُحرّر الرسومي لـPyroCMS من خلال CKEditor.";s:2:"it";s:57:"Fornisce l''editor WYSIWYG per PtroCMS creato con CKEditor";}', 0, 0, 0, '0', 1, 1, 1, 1367836703),
(26, 'a:1:{s:2:"en";s:6:"PMaker";}', 'pmaker', '1.2.0', NULL, 'a:1:{s:2:"en";s:42:"Add Image Sliders to your website, simple.";}', 0, 0, 1, 'content', 0, 0, 0, 1367829520);

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_groups`
--

CREATE TABLE `default_navigation_groups` (
`id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `abbrev` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_navigation_groups`
--

INSERT INTO `default_navigation_groups` (`id`, `title`, `abbrev`) VALUES
(2, 'Sidebar', 'sidebar'),
(3, 'Footer', 'footer'),
(4, 'user-menu', 'usermenu'),
(5, 'Header', 'header'),
(6, 'top', 'top');

-- --------------------------------------------------------

--
-- Table structure for table `default_navigation_links`
--

CREATE TABLE `default_navigation_links` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL,
  `link_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'uri',
  `page_id` int(11) DEFAULT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `navigation_group_id` int(5) NOT NULL DEFAULT '0',
  `position` int(5) NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_navigation_links`
--

INSERT INTO `default_navigation_links` (`id`, `title`, `parent`, `link_type`, `page_id`, `module_name`, `url`, `uri`, `navigation_group_id`, `position`, `target`, `restricted_to`, `class`) VALUES
(4, 'Profile', NULL, 'uri', 0, '', '', 'my-profile', 4, 1, '', '0', ''),
(5, 'Admin panel', NULL, 'uri', 0, '', '', 'admin', 4, 2, '', '0', ''),
(6, 'Logout', NULL, 'uri', 0, '', '', 'users/logout', 4, 3, '', '0', ''),
(27, 'Categories', 0, 'url', 0, '', '#', '', 5, 1, '', '0', ''),
(28, 'Layouts', 0, 'url', 0, '', '#', '', 5, 2, '', '0', ''),
(29, 'Full width', 28, 'page', 8, '', '', '', 5, 0, '', '0', ''),
(30, 'Right Sidebar', 28, 'page', 10, '', '', '', 5, 1, '', '0', ''),
(31, 'Left Sidebar', 28, 'page', 9, '', '', '', 5, 2, '', '0', ''),
(32, 'Shortcodes', 0, 'url', 0, '', '#', '', 5, 3, '', '0', ''),
(33, 'Dropcaps', 32, 'page', 12, '', '', '', 5, 2, '', '0', ''),
(34, 'Blockquote & highlight', 32, 'page', 13, '', '', '', 5, 3, '', '0', ''),
(35, 'List styles', 32, 'page', 15, '', '', '', 5, 4, '', '0', ''),
(36, 'Tabs & Accordion', 32, 'page', 17, '', '', '', 5, 5, '', '0', ''),
(37, 'Tables', 32, 'page', 16, '', '', '', 5, 6, '', '0', ''),
(38, 'Other elements', 32, 'page', 18, '', '', '', 5, 8, '', '0', ''),
(39, 'Icons', 32, 'page', 11, '', '', '', 5, 0, '', '0', ''),
(40, 'Contact', 0, 'page', 2, '', '', '', 5, 4, '', '0', ''),
(41, 'Tooltips', 32, 'page', 19, '', '', '', 5, 7, '', '0', ''),
(43, 'Help', NULL, 'url', 0, '', '#', '', 6, 1, '', '0', ''),
(44, 'Support', NULL, 'url', 0, '', '#', '', 6, 2, '', '0', ''),
(45, 'Feedback', NULL, 'url', 0, '', '#', '', 6, 3, '', '0', ''),
(46, 'Privacy', NULL, 'url', 0, '', '#', '', 3, 1, '', '0', ''),
(47, 'Terms of service', NULL, 'url', 0, '', '#', '', 3, 2, '', '0', ''),
(48, 'About us', NULL, 'url', 0, '', '#', '', 3, 3, '', '0', ''),
(49, 'Contact us', NULL, 'url', 0, '', '#', '', 3, 4, '', '0', ''),
(50, 'Help', NULL, 'url', 0, '', '#', '', 3, 5, '', '0', ''),
(51, 'Home', 0, 'page', 20, '', '', '', 5, 0, '', '0', ''),
(52, 'Home', 0, 'uri', 0, '0', '', '', 5, 0, '', '0', ''),
(53, 'Beauty', 27, 'uri', 0, '', '', 'blog/category/beauty', 5, 0, '', '0', ''),
(54, 'Design', 27, 'uri', 0, '', '', 'blog/category/design', 5, 1, '', '0', ''),
(55, 'Fashion', 27, 'uri', 0, '', '', 'blog/category/fashion', 5, 2, '', '0', ''),
(56, 'Games', 27, 'uri', 0, '', '', 'blog/category/games', 5, 3, '', '0', ''),
(57, 'Model', 27, 'uri', 0, '', '', 'blog/category/model', 5, 4, '', '0', ''),
(58, 'Style', 27, 'uri', 0, '', '', 'blog/category/style', 5, 5, '', '0', ''),
(59, 'Advertise', NULL, 'url', 0, '', '#', '', 6, 4, '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `default_pages`
--

CREATE TABLE `default_pages` (
`id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uri` text COLLATE utf8_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `type_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css` text COLLATE utf8_unicode_ci,
  `js` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `rss_enabled` int(1) NOT NULL DEFAULT '0',
  `comments_enabled` int(1) NOT NULL DEFAULT '0',
  `status` enum('draft','live') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0',
  `restricted_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_home` int(1) NOT NULL DEFAULT '0',
  `strict_uri` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `meta_robots_no_index` tinyint(1) NOT NULL DEFAULT '0',
  `meta_robots_no_follow` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages`
--

INSERT INTO `default_pages` (`id`, `slug`, `class`, `title`, `uri`, `parent_id`, `type_id`, `entry_id`, `css`, `js`, `meta_title`, `meta_keywords`, `meta_description`, `rss_enabled`, `comments_enabled`, `status`, `created_on`, `updated_on`, `restricted_to`, `is_home`, `strict_uri`, `order`, `meta_robots_no_index`, `meta_robots_no_follow`) VALUES
(1, 'home', '', 'Home', 'home', 0, '11', '1', '', '', '', '', '', 0, 0, 'live', 1367598369, 1426451590, '0', 1, 1, 0, 0, 0),
(2, 'contact', '', 'Contact', 'contact', 0, '1', '2', '', '', '', '', '', 0, 0, 'live', 1365632035, 1367770932, '0', 0, 1, 1, 0, 0),
(3, 'search', '', 'Search', 'search', 0, '1', '3', '', '', '', '', '', 0, 0, 'live', 1365632035, 1367777005, '0', 0, 1, 2, 0, 0),
(4, 'results', '', 'Results', 'search/results', 3, '1', '4', '', '', '', '', '', 0, 0, 'live', 1365632035, 1367777112, '0', 0, 0, 0, 0, 0),
(5, '404', '', 'Page missing', '404', 0, '1', '5', NULL, NULL, NULL, '', NULL, 0, 0, 'live', 1365632035, 0, '', 0, 1, 3, 0, 0),
(8, 'full-width-page', '', 'Full width page', 'full-width-page', 0, '7', '7', '', '', '', '', '', 0, 0, 'live', 1366199277, 1366303067, '0', 0, 1, 4, 0, 0),
(9, 'page-with-left-sidebar', '', 'Page with left Sidebar', 'page-with-left-sidebar', 0, '9', '8', '', '', '', '', '', 0, 0, 'live', 1366302994, 0, '0', 0, 1, 5, 0, 0),
(10, 'page-with-right-sidebar', '', 'Page with right Sidebar', 'page-with-right-sidebar', 0, '10', '9', '', '', '', '', '', 0, 0, 'live', 1366303025, 0, '0', 0, 1, 6, 0, 0),
(11, 'adonis-icons', '', 'Icons', 'adonis-icons', 0, '7', '10', '', '', '', '', '', 0, 0, 'live', 1366305657, 1367770440, '0', 0, 1, 7, 0, 0),
(12, 'dropcaps', '', 'Dropcaps', 'dropcaps', 0, '7', '11', '', '', '', '', '', 0, 0, 'live', 1366353871, 1367822637, '0', 0, 1, 8, 0, 0),
(13, 'blockquote-and-highlight', '', 'Blockquote & highlight', 'blockquote-and-highlight', 0, '7', '12', '', '', '', '', '', 0, 0, 'live', 1366353952, 1367822672, '0', 0, 1, 9, 0, 0),
(15, 'list-styles', '', 'List styles', 'list-styles', 0, '7', '14', '', '', '', '', '', 0, 0, 'live', 1366354048, 0, '0', 0, 1, 11, 0, 0),
(16, 'tables', '', 'Tables', 'tables', 0, '7', '15', '', '', '', '', '', 0, 0, 'live', 1366354104, 0, '0', 0, 1, 12, 0, 0),
(17, 'tabs-and-accordion', '', 'Tabs & Accordion', 'tabs-and-accordion', 0, '7', '16', '', '', '', '', '', 0, 0, 'live', 1366354149, 1366360940, '0', 0, 1, 13, 0, 0),
(18, 'other-elements', '', 'Other elements', 'other-elements', 0, '7', '17', '', '', '', '', '', 0, 0, 'live', 1366354193, 1366365722, '0', 0, 1, 14, 0, 0),
(19, 'tooltips', '', 'Tooltips', 'tooltips', 0, '10', '18', '', '', '', '', '', 0, 0, 'live', 1366454961, 1366455107, '0', 0, 1, 15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_pages_custom_home`
--

CREATE TABLE `default_pages_custom_home` (
`id` int(9) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `contents` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_pages_custom_home`
--

INSERT INTO `default_pages_custom_home` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `contents`) VALUES
(1, '2013-05-03 20:26:09', '2015-03-15 22:33:10', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_page_types`
--

CREATE TABLE `default_page_types` (
`id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `stream_id` int(11) NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `css` text COLLATE utf8_unicode_ci,
  `js` text COLLATE utf8_unicode_ci,
  `theme_layout` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `updated_on` int(11) NOT NULL,
  `save_as_files` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  `content_label` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_page_types`
--

INSERT INTO `default_page_types` (`id`, `slug`, `title`, `description`, `stream_id`, `meta_title`, `meta_keywords`, `meta_description`, `body`, `css`, `js`, `theme_layout`, `updated_on`, `save_as_files`, `content_label`, `title_label`) VALUES
(1, 'default', 'Default', 'A simple page type with a WYSIWYG editor that will get you started adding content.', 2, '', NULL, '', '<div class="boxed-white">\r\n<h2 class="page-title">{{title}}</h2>\r\n{{body}}\r\n</div>', '', '', 'default.html', 1367770561, 'n', '', ''),
(7, 'full_width', 'full width', '', 2, '', NULL, '', '<div class="boxed-white">\r\n<h2 class="page-title">{{title}}</h2>\r\n{{body}}\r\n</div>', '', '', 'full.html', 1367770637, 'n', '', ''),
(8, 'full_width_no_title', 'full width no title', '', 2, '', NULL, '', '{{body}}', '', '', 'full.html', 1366008540, 'n', '', ''),
(9, 'left_side_bar', 'left side bar', '', 2, '', NULL, '', '<h2 class="page-title">{{ title }}</h2>\r\n{{body}}', '', '', 'left_sidebar.html', 1366302858, 'n', '', ''),
(10, 'right_side_bar', 'right side bar', '', 2, '', NULL, '', '<h2 class="page-title">{{ title }}</h2>\r\n{{body}}', '', '', 'right_sidebar.html', 1366302899, 'n', '', ''),
(11, 'custom_home', 'custom home', 'Custom homepage page layout for ProChista', 8, '', NULL, '', '{{ widgets:area slug="home-slider" }}\n<div class="row-fluid">\n    <div class="span9">\n\n        <div id="masonry-categories">\n            {{ blog_cat:cats }}\n            <div class="masonry-category masonry-item">\n\n                <div class="category-title">\n                    <h3><a href="{{url:site uri="blog/category/"slug }}" rel="tooltip" data-placement="bottom" data-title="View all posts in {{title}}">{{title}}</a></h3>\n                </div>\n                <div class="category-posts">\n                    {{ posts }}\n\n                        {{if first == 1}}\n                            <div class="category-post-first">\n                                <div class="post-image">\n                                    <a href="{{url}}">\n                                        <img src={{image:thumb}}/700 alt={{title}}/>\n                                    </a>\n                                </div>\n                                <div class="inside">\n                                    <div class="post-title">\n                                        <h2><a href="{{url}}">{{ title }}</a></h2>\n                                    </div>\n                                    <div class="post-meta-top">\n                                        <span class="post-date"><i class="icon-time"></i>{{ helper:date format="M d Y" timestamp=created_on }}</span>\n                                        <span class="post-author"><i class="icon-pencil"></i>{{ user:display_name user_id=author_id }}</span>\n                                    </div>\n                                  \n                                </div>\n                            </div>\n                        {{else}}\n                            \n                            \n\n\n                        {{ endif }}\n\n                    {{ /posts }}\n                </div>\n\n\n            </div>\n            {{ /blog_cat:cats }}\n        </div>\n    </div>\n    <div class="span3" id="sidebar">\n        {{widgets:area slug="home-sidebar"}}\n    </div>\n</div>\n\n{{contents}}', '', '', 'full.html', 1426452161, 'n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `default_permissions`
--

CREATE TABLE `default_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roles` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_pmsliders`
--

CREATE TABLE `default_pmsliders` (
`id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `creation_date` int(11) NOT NULL,
  `jquery` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_pmsliders`
--

INSERT INTO `default_pmsliders` (`id`, `slug`, `title`, `creation_date`, `jquery`) VALUES
(1, 'home', 'home', 1365687177, 'No'),
(2, 'image-gallery', 'image gallery', 1365757172, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `default_pmslides`
--

CREATE TABLE `default_pmslides` (
`id` int(11) NOT NULL,
  `file_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `html` text,
  `showcaption` tinyint(4) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '#',
  `linkable` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `default_pmslides`
--

INSERT INTO `default_pmslides` (`id`, `file_id`, `slider_id`, `order`, `html`, `showcaption`, `link`, `linkable`) VALUES
(1, 'f73b9620463b27d', 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', 1, '#', 0),
(2, 'fb5d719ae411238', 1, 4, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur', 1, '#', 0),
(3, '01fb2d059454e0f', 2, 0, NULL, 0, '#', 0),
(4, '52118875d18cc22', 2, 1, NULL, 0, '#', 0),
(5, '4907ba3b5cbb52e', 2, 2, NULL, 0, '#', 0),
(6, '994d535ab550410', 2, 3, NULL, 0, '#', 0),
(7, 'c6595829a92111c', 2, 4, NULL, 0, '#', 0),
(8, 'ae99f0c5e034711', 2, 5, NULL, 0, '#', 0),
(9, 'dd2d56512ddf48d', 2, 6, NULL, 0, '#', 0),
(10, 'a51d2e629913fc2', 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore', 1, '#', 0),
(12, 'ab9bf775abea792', 1, 2, NULL, 0, '#', 0);

-- --------------------------------------------------------

--
-- Table structure for table `default_profiles`
--

CREATE TABLE `default_profiles` (
`id` int(9) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `display_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `bio` text COLLATE utf8_unicode_ci,
  `dob` int(11) DEFAULT NULL,
  `gender` set('m','f','') COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_on` int(11) unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_profiles`
--

INSERT INTO `default_profiles` (`id`, `created`, `updated`, `created_by`, `ordering_count`, `user_id`, `display_name`, `first_name`, `last_name`, `company`, `lang`, `bio`, `dob`, `gender`, `phone`, `mobile`, `address_line1`, `address_line2`, `address_line3`, `postcode`, `website`, `updated_on`) VALUES
(1, NULL, NULL, NULL, NULL, 1, 'admin admin', 'admin', 'admin', '', 'en', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `default_redirects`
--

CREATE TABLE `default_redirects` (
`id` int(11) NOT NULL,
  `from` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(3) NOT NULL DEFAULT '302'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_search_index`
--

CREATE TABLE `default_search_index` (
`id` int(10) unsigned NOT NULL,
  `title` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `keyword_hash` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_plural` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_edit_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_delete_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_search_index`
--

INSERT INTO `default_search_index` (`id`, `title`, `description`, `keywords`, `keyword_hash`, `module`, `entry_key`, `entry_plural`, `entry_id`, `uri`, `cp_edit_uri`, `cp_delete_uri`) VALUES
(50, 'Home', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '6', 'home', 'admin/pages/edit/6', 'admin/pages/delete/6'),
(165, 'Contact', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '2', 'contact', 'admin/pages/edit/2', 'admin/pages/delete/2'),
(166, 'Search', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '3', 'search', 'admin/pages/edit/3', 'admin/pages/delete/3'),
(168, 'Results', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '4', 'search/results', 'admin/pages/edit/4', 'admin/pages/delete/4'),
(5, 'Page missing', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '5', '404', 'admin/pages/edit/5', 'admin/pages/delete/5'),
(139, 'Time Travel', 'Vivamus non sem at ante dapibus rhoncus. Aenean a diam sed dolor tristique euismod eu vitae turpis. Sed tincidunt, erat eget elementum pellentesque, arcu magna pharetra ante, non pellentesque ante est eget arcu. Proin ligula tortor, fermentum id cursus ut, vulputate vel velit. Duis vehicula vehicula felis sed scelerisque. Aenean nec mi sapien. Fusce id dictum purus. Aliquam eget varius orci. Sed non purus eu nisi faucibus feugiat. Donec sed lectus nisi, et vestibulum libero. Praesent ullamcorper sem vel arcu vulputate pulvinar. Praesent sollicitudin blandit augue nec eleifend. Aenean euismod, ligula id bibendum tincidunt, massa nibh fermentum mi, quis sodales dolor nisl in ante. Mauris arcu elit, semper at posuere non, placerat nec lectus. Aenean dui lacus, suscipit ut aliquam et, luctus sit amet eros. Nulla magna sapien, sodales at sagittis vel, fermentum a justo. Quisque a risus non ipsum tempus pulvinar eu nec ante.', 'building, fashion', 'ac041a1c2b61483707b8a13b314cf2d5', 'blog', 'blog:post', 'blog:posts', '1', 'blog/2013/04/time-travel', 'admin/blog/edit/1', 'admin/blog/delete/1'),
(138, 'You think water moves fast?', 'Morbi eget quam vel mauris tristique euismod sed at leo. Proin velit justo, dictum ac tempor vitae, scelerisque id odio. Praesent at libero elit, eget hendrerit sapien. Maecenas sed quam eu sapien porttitor sodales eget posuere ligula. Suspendisse potenti. In eget tortor nec nisi mattis venenatis. Duis cursus quam iaculis ante mollis non pharetra odio vulputate. Aenean a lectus at tortor ultricies rhoncus. Praesent in lorem ut risus pharetra ornare. Nunc condimentum lorem sit amet sem malesuada bibendum. Maecenas ligula velit, iaculis non tincidunt ac, faucibus eget tellus. Pellentesque et velit auctor dui consequat porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie auctor varius. Ut vitae diam non nulla pretium commodo at ac purus. Nullam quis magna eu quam porta faucibus sit amet vitae metus.', 'darkness, photography', '45237cafca5897e0ae7e85ce8ced8dba', 'blog', 'blog:post', 'blog:posts', '2', 'blog/2013/04/you-think-water-moves-fast', 'admin/blog/edit/2', 'admin/blog/delete/2'),
(176, 'Cogntingency', 'Praesent non libero augue, nec feugiat turpis. Aenean euismod, orci ac bibendum ullamcorper, augue lorem tempor tellus, id rhoncus felis enim tincidunt nulla. Vestibulum quam justo, luctus sed mollis vel, ornare eget erat. Curabitur tempor, mi vehicula tristique semper, mi est adipiscing mi, ac iaculis mi nibh et lorem. Duis elit diam, vehicula id fringilla a, tincidunt ac erat. Morbi vitae lectus risus. Maecenas at nibh odio. Quisque ut ante sit amet orci sagittis interdum. Duis congue, nisl sed tincidunt molestie, nibh orci porta lectus, at euismod libero diam non diam. Vivamus vehicula felis a massa fringilla dignissim. Vestibulum ac risus odio, sit amet tempor lectus. Ut ornare nisi feugiat enim imperdiet congue ultricies nisi blandit.', 'building, photogrphy', '92bb81118f2686157ff9a6772c4d1853', 'blog', 'blog:post', 'blog:posts', '3', 'blog/2013/04/cogntingency', 'admin/blog/edit/3', 'admin/blog/delete/3'),
(122, 'Tooltips', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '19', 'tooltips', 'admin/pages/edit/19', 'admin/pages/delete/19'),
(136, 'Home', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '20', 'home', 'admin/pages/edit/20', 'admin/pages/delete/20'),
(90, 'Full width page', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '8', 'full-width-page', 'admin/pages/edit/8', 'admin/pages/delete/8'),
(87, 'Page with left Sidebar', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '9', 'page-with-left-sidebar', 'admin/pages/edit/9', 'admin/pages/delete/9'),
(88, 'Page with right Sidebar', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '10', 'page-with-right-sidebar', 'admin/pages/edit/10', 'admin/pages/delete/10'),
(164, 'Icons', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '11', 'adonis-icons', 'admin/pages/edit/11', 'admin/pages/delete/11'),
(169, 'Dropcaps', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '12', 'dropcaps', 'admin/pages/edit/12', 'admin/pages/delete/12'),
(170, 'Blockquote & highlight', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '13', 'blockquote-and-highlight', 'admin/pages/edit/13', 'admin/pages/delete/13'),
(98, 'List styles', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '15', 'list-styles', 'admin/pages/edit/15', 'admin/pages/delete/15'),
(99, 'Tables', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '16', 'tables', 'admin/pages/edit/16', 'admin/pages/delete/16'),
(104, 'Tabs & Accordion', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '17', 'tabs-and-accordion', 'admin/pages/edit/17', 'admin/pages/delete/17'),
(107, 'Other elements', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '18', 'other-elements', 'admin/pages/edit/18', 'admin/pages/delete/18'),
(173, 'Home', '', NULL, NULL, 'pages', 'pages:page', 'pages:pages', '1', 'home', 'admin/pages/edit/1', 'admin/pages/delete/1'),
(177, 'Time Management For Designers', 'Proiciens te princeps ibi Neptune reddens pater. Horreo Athenagora ut diem finito convocatis secessit civitatis intelligitur sicut nec. Tyrium coniugem Jesu Dionysiadem in modo compungi. Mancipia dolor invenerit decoratam esse in fuerat est in fuerat construeret in lucem. Horum tolle mei ad quia ad suis est amet coram te finis laeta gavisus ait. Iusto opes mihi quidditas mihi esse in rei finibus veteres hoc. Taliarchus eius ad te ad te. Accepto coeperunt molestie consetetur sea talenta Carissimi deo adiuves finem volo erat bene nostrae iam adultera in. Video cum autem nobiscum laetitia posset diam dominum oculos rex Dionysiadi suo Nescimus de me vero non potentiae. Stet consequat Apolloni codicellos aperiri sacras mari itaque sed. Apolloni figitur acquievit sed esse ait!\n\nEiusdem ea commotio gaude haec vidit loco. Ait in fuerat est cum obiectum invidunt cum. Accepit corpus Lorem post iactavit ad suis caelo in lucem concitaverunt in. Tyro sed haec aliquam inlido laetare in, vento penitus nec &lsquo;pectore zaetam at actus putabat ut diem anulo sedentem ad nomine. Palpat venas tanquam vero cum unde non solutionem innocentem vis lacrimis ceram mandavit lugentem ubi ait. Taliarche secretum conpaginari tacitus qui. Tum vero non coepit dies tuum filiae. Sit in modo compungi mulierem ubi ait.\n\nScrutor audire nolens mori vere suis alteri ad per animum est in deinde plectrum anni ipsa mihi. Occurrit hoc puella mihi Tyrum in fuerat construeret cena reges undis Tharsiam si. Concita tempestatis cui ubi confudit huc apud libram domine de his carpens introivit gubernum. Supponite facultatibus actum justo forma anima Apollonium contigit cum. Homine nutrix eius est se est in. Quaestiones patre ab adulescentiae discesserunt manu duas particularis, stranguillioni in lucem genero coruscus eum istam vero cum. Tantus nata suum in rei finibus veteres hoc. Audito dolet sit audivit ergo adseris de ascendit. Virginis instaret dolores in deinde cupis hominem in lucem in lucem exempli paupers coniunx rex. Regis ei sed eu fides Concordi fabricata ait est amet Cur meae puer ut libertatem non ait. Spongia non potentiae falsa namque amorem civium currebant in rei sensibilium. Quoque mortalem statuit quod eam sed. Dionysiade in lucem concitaverunt in deinde cepit roseo, post autem illud ad per te. Dicentem cives Tharsis ratio indue villicus Apollonius ut casus tui Dianae autem Apolloni ex civibus unde beata quid.', 'style, time', 'd9726a40fb859c16d0624db9c60e3683', 'blog', 'blog:post', 'blog:posts', '6', 'blog/2013/05/time-management-for-designers', 'admin/blog/edit/6', 'admin/blog/delete/6'),
(156, 'The Dark Knight Rises vs The Avengers', 'Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut\r\n\r\nIn enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.\r\n\r\nPhasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.\r\n\r\nMaecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien.\r\n\r\nVestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu.\r\n\r\nDuis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum.', 'film, movie', 'f8f45b54a9c3d15f05ab41924a4a013f', 'blog', 'blog:post', 'blog:posts', '7', 'blog/2013/05/the-dark-knight-rises-vs-the-avengers', 'admin/blog/edit/7', 'admin/blog/delete/7'),
(157, 'Batman Begins Review', 'Voce clamavimus haec sed esse haec puella eius non coepit dies vero rex Stranguillio sit in lucem concitaverunt in. Nuntiatur hoc Apollonius non solutionem inveni in lucem in fuerat est se sed dominum oculos capillos apto. Statimque assueta cum unde meae ceroma fronte comico hac civitati etenim quid facilisis. Non dum est Apollonius non solutionem invenerunt. Dona abstulit meis caligine templo die antiquis vocans diversificatur subito est cum obiectum ait Cumque hoc Apollonius ut casus. Materia puella eius sed quod tamen adnuente rediens eam sed. Carissimi deo apprehendit in rei civibus laude clamaverunt donavit ipsum, apollonii appropinquat tation ulterius quod eam est se ad suis. Nisi est in deinde cepit roseo. Quos ipsum longinquas Aeolus immanitate excidit ipsum ait mea in modo invenit Boreas quam aniculae morsque nutricem rex.\r\n\r\nInterveniens sed dominum vidit pater ostendit in fuerat. Dabit es illum Apollonii vidit ad suis, horum tolle Adfertur guttae sapientiae decubuerat age. Quid populi cum obiectum aliquip ipsa quod eam sed, x domum in modo cavendum es est cum. Nuptui tradiditque semper vide eis fictas. Secundis sacerdotem filia navem causa alia qui dicens unam emanabat cum magna aliter diligo alii paupertas quantitas non coepit. Filiae multi quia quod tamen sed haec sed haec vidit loco. Ascendi in deinde cupis ei sed, coniungitur vestra nutriendam veni mei ad quia.\r\n\r\nQuoque non coepit dies decora in rei civibus. Eiusdem ea rege Athenagoram homo ad quia ei sed quod tamen sed dominum oculos ut libertatem accipies Tharsos! Cyrenaeorum tertia domina tu tu tu tu secum cogitaverat est amet Cur meae. Domus respexit princeps audito doctrinis paruit unum ad per te princeps audito adsumere proprium rex. Quattuordecim anulum ad per te sed dominum in deinde duas horrido in. &lsquo;Quicumque iactavit ad nomine sed eu fugiens laudo in lucem in rei exultant deo. Dicere Tharsia adulescens qui dicens mea vero non potentiae falsa namque amorem infirmata dictum ait est se vero quo. Vituperia ad quia ei Taliarchum in modo, accepit non coepit cenam ita cum obiectum invidunt! Nubila grata gratias agendi coepit amatrix tolle Adfertur guttae sapientiae decubuerat age meae in rei finibus veteres hoc. Scitote si quod ait regem consolatus dum. Imas rebum scias haec puella. Apollonius ut sua Cumque persequatur sic nec est amet coram te. Acceptis codicello lenonem autem est Apollonius eius ad quia iuvenis.\r\n\r\nTaliarchus eius in fuerat construeret. Plenus vado est cum suam ut casus adprehendens, actum in deinde cupis auras sed quod eam eos. Apertius ingens ferro conparuit Tharsiam in rei completo litus ostendam Apollonio in. Fulgor infaustissimi eum in deinde duas formis ei primum regalibus rerum. Nullam coepit contingere navis famuli curvus in lucem. Concordi fabricata ait Cumque hoc ambulare manu fueris litore iunctionem quae. Praestetur cubiculo ab adulescentiae discesserunt manu duas particularis, dulcius populo magna anima haec. Occurrit erat coram me testatur sed quod ait in modo ad per animum pares terris sidera unam. Ingreditur ad suis caelo dicit pietate dudum sbyssi conturbatum ingreditur ad nomine Hesterna studiis vadem singulas cotidie hoc. Permansit in rei finibus veteres hoc Apollonius in fuerat accidens suos faciam! Dicere nec est in deinde vero rex in rei completo litus Ephesum peteret sua Cumque ego dum miror puella. Musis nihilominus admonendus tu illum vero cum suam vidit ad suis. Maria non ait est in lucem exitum atque armata mare ut libertatem adhuc dicente sicut consideraret celerius in. Stranguillionis in deinde vero non potentiae Apollonium illis ad nomine Hesterna studiis ascende meae in deinde plectrum anni ipsa Invitamus me. Viscera tres latere potentiae Apollonium ut diem finito servis rex in deinde vero diam dominum in.', 'film, model', '492ac93ed14b8572912ae80e88a8911e', 'blog', 'blog:post', 'blog:posts', '8', 'blog/2013/05/batman-begins-review', 'admin/blog/edit/8', 'admin/blog/delete/8'),
(158, 'Rage Of The Winter Skies', 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\r\n\r\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\r\n\r\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut', 'film, games', 'f035bbe0abddef021b12f0eb6cd61882', 'blog', 'blog:post', 'blog:posts', '9', 'blog/2013/05/rage-of-the-winter-skies', 'admin/blog/edit/9', 'admin/blog/delete/9'),
(159, 'Alienware X51 Video Preview', 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\r\n\r\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\r\n\r\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut', 'beauty, film', '5e22ce4a6636bbe3a39b050cd1e810fa', 'blog', 'blog:post', 'blog:posts', '10', 'blog/2013/05/alienware-x51-video-preview', 'admin/blog/edit/10', 'admin/blog/delete/10'),
(160, 'Hilly Landscape Of Tuscany', 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\r\n\r\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\r\n\r\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut', 'beauty, bootstrap', '4073a7e031a62069e1253a60bd318a97', 'blog', 'blog:post', 'blog:posts', '11', 'blog/2013/05/hilly-landscape-of-tuscany', 'admin/blog/edit/11', 'admin/blog/delete/11'),
(161, '10 Tips for Great Photos', 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\r\n\r\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\r\n\r\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut', 'fashion, film, photo', '1920722877131870b58fa38f2bab40be', 'blog', 'blog:post', 'blog:posts', '12', 'blog/2013/05/10-tips-for-great-photos', 'admin/blog/edit/12', 'admin/blog/delete/12'),
(162, 'On The Moring Dew', 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.\r\n\r\nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\r\n\r\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\r\n\r\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut', 'fashion, tag', 'e9e9313927611e2ca96db551e5658007', 'blog', 'blog:post', 'blog:posts', '13', 'blog/2013/05/on-the-moring-dew', 'admin/blog/edit/13', 'admin/blog/delete/13');

-- --------------------------------------------------------

--
-- Table structure for table `default_settings`
--

CREATE TABLE `default_settings` (
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` set('text','textarea','password','select','select-multiple','radio','checkbox') COLLATE utf8_unicode_ci NOT NULL,
  `default` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `options` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_required` int(1) NOT NULL,
  `is_gui` int(1) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_settings`
--

INSERT INTO `default_settings` (`slug`, `title`, `description`, `type`, `default`, `value`, `options`, `is_required`, `is_gui`, `module`, `order`) VALUES
('activation_email', 'Activation Email', 'Send out an e-mail with an activation link when a user signs up. Disable this so that admins must manually activate each account.', 'select', '1', '', '0=activate_by_admin|1=activate_by_email|2=no_activation', 0, 1, 'users', 961),
('addons_upload', 'Addons Upload Permissions', 'Keeps mere admins from uploading addons by default', 'text', '0', '1', '', 1, 0, '', 0),
('admin_force_https', 'Force HTTPS for Control Panel?', 'Allow only the HTTPS protocol when using the Control Panel?', 'radio', '0', '', '1=Yes|0=No', 1, 1, '', 0),
('admin_theme', 'Control Panel Theme', 'Select the theme for the control panel.', '', '', 'pyrocms', 'func:get_themes', 1, 0, '', 0),
('akismet_api_key', 'Akismet API Key', 'Akismet is a spam-blocker from the WordPress team. It keeps spam under control without forcing users to get past human-checking CAPTCHA forms.', 'text', '', '', '', 0, 1, 'integration', 981),
('api_enabled', 'API Enabled', 'Allow API access to all modules which have an API controller.', 'select', '0', '0', '0=Disabled|1=Enabled', 0, 0, 'api', 0),
('api_user_keys', 'API User Keys', 'Allow users to sign up for API keys (if the API is Enabled).', 'select', '0', '0', '0=Disabled|1=Enabled', 0, 0, 'api', 0),
('auto_username', 'Auto Username', 'Create the username automatically, meaning users can skip making one on registration.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 964),
('cdn_domain', 'CDN Domain', 'CDN domains allow you to offload static content to various edge servers, like Amazon CloudFront or MaxCDN.', 'text', '', '', '', 0, 1, 'integration', 1000),
('ckeditor_config', 'CKEditor Config', 'You can find a list of valid configuration items in <a target="_blank" href="http://docs.cksource.com/ckeditor_api/symbols/CKEDITOR.config.html">CKEditor''s documentation.</a>', 'textarea', '', 'var basePath = CKEDITOR.basePath;\r\n   basePath = basePath.substr(0, basePath.indexOf("ckeditor/")); \r\n   (function() {\r\n      CKEDITOR.plugins.addExternal(''bootstrap'',basePath+''../../../../../addons/shared_addons/plugins/'', ''bootstrap-editor.js'');\r\n   })();\r\n \r\n{{# this is a wysiwyg-simple editor customized for the blog module (it allows images to be inserted) #}}\r\n$(''textarea.blog.wysiwyg-simple'').ckeditor({\r\n	toolbar: [\r\n		[''pyroimages''],\r\n		[''Bold'', ''Italic'', ''-'', ''NumberedList'', ''BulletedList'', ''-'', ''Link'', ''Unlink'']\r\n	  ],\r\n	extraPlugins: ''pyroimages,pyrofiles,bootstrap'',\r\n	width: ''99%'',\r\n	height: 100,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});\r\n \r\n{{# this is the config for all wysiwyg-simple textareas #}}\r\n$(''textarea.wysiwyg-simple'').ckeditor({\r\n	toolbar: [\r\n		[''Bold'', ''Italic'', ''-'', ''NumberedList'', ''BulletedList'', ''-'', ''Link'', ''Unlink'']\r\n	  ],\r\n	width: ''99%'',\r\n	height: 100,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});\r\n \r\n{{# and this is the advanced editor #}}\r\n$(''textarea.wysiwyg-advanced'').ckeditor({\r\n	toolbar: [\r\n		[''Maximize''],\r\n		[''pyroimages'', ''pyrofiles''],\r\n		[''Cut'',''Copy'',''Paste'',''PasteFromWord''],\r\n		[''Undo'',''Redo'',''-'',''Find'',''Replace''],\r\n		[''Link'',''Unlink''],\r\n		[''Table'',''HorizontalRule'',''SpecialChar''],\r\n		[''Bold'',''Italic'',''StrikeThrough''],\r\n		[''JustifyLeft'',''JustifyCenter'',''JustifyRight'',''JustifyBlock'',''-'',''BidiLtr'',''BidiRtl''],\r\n		[''Format'', ''FontSize'', ''Subscript'',''Superscript'', ''NumberedList'',''BulletedList'',''Outdent'',''Indent'',''Blockquote''],\r\n		[''ShowBlocks'', ''RemoveFormat'', ''Source'', ''bootstrap'']\r\n	],\r\n	extraPlugins: ''pyroimages,pyrofiles,bootstrap'',\r\n	width: ''99%'',\r\n	height: 400,\r\n	dialog_backgroundCoverColor: ''#000'',\r\n	removePlugins: ''elementspath'',\r\n	defaultLanguage: ''{{ helper:config item="default_language" }}'',\r\n	language: ''{{ global:current_language }}''\r\n});', '', 1, 1, 'wysiwyg', 993),
('comment_markdown', 'Allow Markdown', 'Do you want to allow visitors to post comments using Markdown?', 'select', '0', '0', '0=Text Only|1=Allow Markdown', 1, 1, 'comments', 965),
('comment_order', 'Comment Order', 'Sort order in which to display comments.', 'select', 'ASC', 'ASC', 'ASC=Oldest First|DESC=Newest First', 1, 1, 'comments', 966),
('contact_email', 'Contact E-mail', 'All e-mails from users, guests and the site will go to this e-mail address.', 'text', 'root@dmh.com', '', '', 1, 1, 'email', 979),
('currency', 'Currency', 'The currency symbol for use on products, services, etc.', 'text', '&pound;', '', '', 1, 1, '', 994),
('dashboard_rss', 'Dashboard RSS Feed', 'Link to an RSS feed that will be displayed on the dashboard.', 'text', 'https://www.pyrocms.com/blog/rss/all.rss', '', '', 0, 1, '', 990),
('dashboard_rss_count', 'Dashboard RSS Items', 'How many RSS items would you like to display on the dashboard?', 'text', '5', '5', '', 1, 1, '', 989),
('date_format', 'Date Format', 'How should dates be displayed across the website and control panel? Using the <a target="_blank" href="http://php.net/manual/en/function.date.php">date format</a> from PHP - OR - Using the format of <a target="_blank" href="http://php.net/manual/en/function.strftime.php">strings formatted as date</a> from PHP.', 'text', 'F j, Y', '', '', 1, 1, '', 995),
('default_theme', 'Default Theme', 'Select the theme you want users to see by default.', '', 'default', 'prochista', 'func:get_themes', 1, 0, '', 0),
('enable_comments', 'Enable Comments', 'Enable comments.', 'radio', '1', '1', '1=Enabled|0=Disabled', 1, 1, 'comments', 968),
('enable_profiles', 'Enable profiles', 'Allow users to add and edit profiles.', 'radio', '1', '', '1=Enabled|0=Disabled', 1, 1, 'users', 963),
('enable_registration', 'Enable user registration', 'Allow users to register in your site.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 961),
('files_cache', 'Files Cache', 'When outputting an image via site.com/files what shall we set the cache expiration for?', 'select', '480', '480', '0=no-cache|1=1-minute|60=1-hour|180=3-hour|480=8-hour|1440=1-day|43200=30-days', 1, 1, 'files', 986),
('files_cf_api_key', 'Rackspace Cloud Files API Key', 'You also must provide your Cloud Files API Key. You will find it at the same location as your Username in your Rackspace account.', 'text', '', '', '', 0, 1, 'files', 989),
('files_cf_username', 'Rackspace Cloud Files Username', 'To enable cloud file storage in your Rackspace Cloud Files account please enter your Cloud Files Username. <a href="https://manage.rackspacecloud.com/APIAccess.do">Find your credentials</a>', 'text', '', '', '', 0, 1, 'files', 990),
('files_enabled_providers', 'Enabled File Storage Providers', 'Which file storage providers do you want to enable? (If you enable a cloud provider you must provide valid auth keys below', 'checkbox', '0', '0', 'amazon-s3=Amazon S3|rackspace-cf=Rackspace Cloud Files', 0, 1, 'files', 994),
('files_s3_access_key', 'Amazon S3 Access Key', 'To enable cloud file storage in your Amazon S3 account provide your Access Key. <a href="https://aws-portal.amazon.com/gp/aws/securityCredentials#access_credentials">Find your credentials</a>', 'text', '', '', '', 0, 1, 'files', 993),
('files_s3_geographic_location', 'Amazon S3 Geographic Location', 'Either US or EU. If you change this you must also change the S3 URL.', 'radio', 'US', 'US', 'US=United States|EU=Europe', 1, 1, 'files', 991),
('files_s3_secret_key', 'Amazon S3 Secret Key', 'You also must provide your Amazon S3 Secret Key. You will find it at the same location as your Access Key in your Amazon account.', 'text', '', '', '', 0, 1, 'files', 992),
('files_s3_url', 'Amazon S3 URL', 'Change this if using one of Amazon''s EU locations or a custom domain.', 'text', 'http://{{ bucket }}.s3.amazonaws.com/', 'http://{{ bucket }}.s3.amazonaws.com/', '', 0, 1, 'files', 991),
('files_upload_limit', 'Filesize Limit', 'Maximum filesize to allow when uploading. Specify the size in MB. Example: 5', 'text', '5', '5', '', 1, 1, 'files', 987),
('frontend_enabled', 'Site Status', 'Use this option to the user-facing part of the site on or off. Useful when you want to take the site down for maintenance.', 'radio', '1', '', '1=Open|0=Closed', 1, 1, '', 988),
('ga_email', 'Google Analytic E-mail', 'E-mail address used for Google Analytics, we need this to show the graph on the dashboard.', 'text', '', '', '', 0, 1, 'integration', 983),
('ga_password', 'Google Analytic Password', 'This is also needed to show the graph on the dashboard. You will need to allow access to Google to get this to work. See <a href="https://accounts.google.com/b/0/IssuedAuthSubTokens?hl=en_US" target="_blank">Authorized Access to your Google Account</a>', 'password', '', '', '', 0, 1, 'integration', 982),
('ga_profile', 'Google Analytic Profile ID', 'Profile ID for this website in Google Analytics', 'text', '', '', '', 0, 1, 'integration', 984),
('ga_tracking', 'Google Tracking Code', 'Enter your Google Analytic Tracking Code to activate Google Analytics view data capturing. E.g: UA-19483569-6', 'text', '', '', '', 0, 1, 'integration', 985),
('mail_line_endings', 'Email Line Endings', 'Change from the standard \\r\\n line ending to PHP_EOL for some email servers.', 'select', '1', '1', '0=PHP_EOL|1=\\r\\n', 0, 1, 'email', 972),
('mail_protocol', 'Mail Protocol', 'Select desired email protocol.', 'select', 'mail', 'mail', 'mail=Mail|sendmail=Sendmail|smtp=SMTP', 1, 1, 'email', 977),
('mail_sendmail_path', 'Sendmail Path', 'Path to server sendmail binary.', 'text', '', '', '', 0, 1, 'email', 972),
('mail_smtp_host', 'SMTP Host Name', 'The host name of your smtp server.', 'text', '', '', '', 0, 1, 'email', 976),
('mail_smtp_pass', 'SMTP password', 'SMTP password.', 'password', '', '', '', 0, 1, 'email', 975),
('mail_smtp_port', 'SMTP Port', 'SMTP port number.', 'text', '', '', '', 0, 1, 'email', 974),
('mail_smtp_user', 'SMTP User Name', 'SMTP user name.', 'text', '', '', '', 0, 1, 'email', 973),
('meta_topic', 'Meta Topic', 'Two or three words describing this type of company/website.', 'text', 'Content Management', 'PyroCMS Theme', '', 0, 1, '', 998),
('moderate_comments', 'Moderate Comments', 'Force comments to be approved before they appear on the site.', 'radio', '1', '1', '1=Enabled|0=Disabled', 1, 1, 'comments', 967),
('profile_visibility', 'Profile Visibility', 'Specify who can view user profiles on the public site', 'select', 'public', '', 'public=profile_public|owner=profile_owner|hidden=profile_hidden|member=profile_member', 0, 1, 'users', 960),
('records_per_page', 'Records Per Page', 'How many records should we show per page in the admin section?', 'select', '25', '', '10=10|25=25|50=50|100=100', 1, 1, '', 992),
('registered_email', 'User Registered Email', 'Send a notification email to the contact e-mail when someone registers.', 'radio', '1', '', '1=Enabled|0=Disabled', 0, 1, 'users', 962),
('rss_feed_items', 'Feed item count', 'How many items should we show in RSS/blog feeds?', 'select', '25', '', '10=10|25=25|50=50|100=100', 1, 1, '', 991),
('server_email', 'Server E-mail', 'All e-mails to users will come from this e-mail address.', 'text', 'admin@localhost', '', '', 1, 1, 'email', 978),
('site_lang', 'Site Language', 'The native language of the website, used to choose templates of e-mail notifications, contact form, and other features that should not depend on the language of a user.', 'select', 'en', 'en', 'func:get_supported_lang', 1, 1, '', 997),
('site_name', 'Site Name', 'The name of the website for page titles and for use around the site.', 'text', 'Un-named Website', 'ProChista', '', 1, 1, '', 1000),
('site_public_lang', 'Public Languages', 'Which are the languages really supported and offered on the front-end of your website?', 'checkbox', 'en', 'en', 'func:get_supported_lang', 1, 1, '', 996),
('site_slogan', 'Site Slogan', 'The slogan of the website for page titles and for use around the site', 'text', '', 'Magazin PyroCMS Theme', '', 0, 1, '', 999),
('unavailable_message', 'Unavailable Message', 'When the site is turned off or there is a major problem, this message will show to users.', 'textarea', 'Sorry, this website is currently unavailable.', '', '', 0, 1, '', 987);

-- --------------------------------------------------------

--
-- Table structure for table `default_theme_options`
--

CREATE TABLE `default_theme_options` (
`id` int(11) NOT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` set('text','textarea','password','select','select-multiple','radio','checkbox','colour-picker') COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `is_required` int(1) NOT NULL,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_theme_options`
--

INSERT INTO `default_theme_options` (`id`, `slug`, `title`, `description`, `type`, `default`, `value`, `options`, `is_required`, `theme`) VALUES
(1, 'show_breadcrumbs', 'Show Breadcrumbs', 'Would you like to display breadcrumbs?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'default'),
(2, 'layout', 'Layout', 'Which type of layout shall we use?', 'select', '2 column', 'full-width', '2 column=Two Column|full-width=Full Width|full-width-home=Full Width Home Page', 1, 'default'),
(3, 'cufon_enabled', 'Use Cufon', 'Would you like to use Cufon for titles?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'default'),
(4, 'pyrocms_recent_comments', 'Recent Comments', 'Would you like to display recent comments on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(5, 'pyrocms_news_feed', 'News Feed', 'Would you like to display the news feed on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(6, 'pyrocms_quick_links', 'Quick Links', 'Would you like to display quick links on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(7, 'pyrocms_analytics_graph', 'Analytics Graph', 'Would you like to display the graph on the dashboard?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'pyrocms'),
(8, 'background', 'Background', 'Choose the default background for the theme.', 'select', 'fabric', 'fabric', 'black=Black|fabric=Fabric|graph=Graph|leather=Leather|noise=Noise|texture=Texture', 1, 'base'),
(9, 'slider', 'Slider', 'Would you like to display the slider on the homepage?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'base'),
(10, 'color', 'Default Theme Color', 'This changes things like background color, link colors etc…', 'select', 'pink', 'blue', 'red=Red|orange=Orange|yellow=Yellow|green=Green|blue=Blue|pink=Pink', 1, 'base'),
(11, 'show_breadcrumbs', 'Do you want to show breadcrumbs?', 'If selected it shows a string of breadcrumbs at the top of the page.', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'base'),
(14, 'show_breadcrumbs', 'Show Breadcrumbs', 'Would you like to display breadcrumbs?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'sorena'),
(15, 'layout', 'Layout', 'Which type of layout shall we use?', 'select', 'sidebar-right', 'full-width', 'sidebar-right=Two Column - Sidebar at right |full-width=Full Width|sidebar-left=Two Columns - Sidebar left', 1, 'sorena'),
(16, 'style', 'Style', 'Sorena comes with boxed and full width styles, which one do you like? default is full width', 'select', 'full', 'full', 'full=Full style|boxed=Boxed style', 1, 'sorena'),
(17, 'color', 'Color of the theme', 'Please choose one of the predefined colors. to use your own color consult to documentation', 'select', 'default', 'blue', 'default=Orange|blue=Blue|cyan=Cyan|green=Green|pink=Pink|red=Red', 1, 'sorena'),
(21, 'show_breadcrumbs', 'Show Breadcrumbs', 'Would you like to display breadcrumbs?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'adonis'),
(22, 'layout', 'Layout', 'Which type of layout shall we use?', 'select', 'sidebar-right', 'full-width', 'sidebar-right=Two Column - Sidebar at right |full-width=Full Width|sidebar-left=Two Columns - Sidebar left', 1, 'adonis'),
(23, 'color', 'Color of the theme', 'Please choose one of the predefined colors. to use your own color consult to documentation', 'select', 'default', 'blue', 'default=Red|blue=Blue|cyan=Cyan|green=Green|pink=Pink|brown=Brown', 1, 'adonis'),
(24, 'show_breadcrumbs', 'Show Breadcrumbs', 'Would you like to display breadcrumbs?', 'radio', 'yes', 'yes', 'yes=Yes|no=No', 1, 'prochista'),
(25, 'layout', 'Layout', 'Which type of layout shall we use?', 'select', 'sidebar-right', 'full-width', 'sidebar-right=Two Column - Sidebar at right |full-width=Full Width|sidebar-left=Two Columns - Sidebar left', 1, 'prochista'),
(26, 'color', 'Color of the theme', 'Please choose one of the predefined colors. to use your own color consult to documentation', 'select', 'default', 'blue', 'default=Red|blue=Blue|cyan=Cyan|green=Green|pink=Pink|brown=Brown', 1, 'prochista');

-- --------------------------------------------------------

--
-- Table structure for table `default_users`
--

CREATE TABLE `default_users` (
`id` smallint(5) unsigned NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registered User Information';

--
-- Dumping data for table `default_users`
--

INSERT INTO `default_users` (`id`, `email`, `password`, `salt`, `group_id`, `ip_address`, `active`, `activation_code`, `created_on`, `last_login`, `username`, `forgotten_password_code`, `remember_code`) VALUES
(1, 'root@dmh.com', 'c3cc06f17ebb387c4dd8ac72abd32a56654f1595', '26a8d', 1, '', 1, '', 1365632022, 1426446065, 'admin', NULL, 'bbd280dcae551b7a015fe2dba9e092ce26fb29d6');

-- --------------------------------------------------------

--
-- Table structure for table `default_variables`
--

CREATE TABLE `default_variables` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `default_widgets`
--

CREATE TABLE `default_widgets` (
`id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `enabled` int(1) NOT NULL DEFAULT '1',
  `order` int(10) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_widgets`
--

INSERT INTO `default_widgets` (`id`, `slug`, `title`, `description`, `author`, `website`, `version`, `enabled`, `order`, `updated_on`) VALUES
(1, 'google_maps', 'a:10:{s:2:"en";s:11:"Google Maps";s:2:"el";s:19:"Χάρτης Google";s:2:"nl";s:11:"Google Maps";s:2:"br";s:11:"Google Maps";s:2:"pt";s:11:"Google Maps";s:2:"ru";s:17:"Карты Google";s:2:"id";s:11:"Google Maps";s:2:"fi";s:11:"Google Maps";s:2:"fr";s:11:"Google Maps";s:2:"fa";s:17:"نقشه گوگل";}', 'a:10:{s:2:"en";s:32:"Display Google Maps on your site";s:2:"el";s:78:"Προβάλετε έναν Χάρτη Google στον ιστότοπό σας";s:2:"nl";s:27:"Toon Google Maps in uw site";s:2:"br";s:34:"Mostra mapas do Google no seu site";s:2:"pt";s:34:"Mostra mapas do Google no seu site";s:2:"ru";s:80:"Выводит карты Google на страницах вашего сайта";s:2:"id";s:37:"Menampilkan Google Maps di Situs Anda";s:2:"fi";s:39:"Näytä Google Maps kartta sivustollasi";s:2:"fr";s:42:"Publiez un plan Google Maps sur votre site";s:2:"fa";s:59:"نمایش داده نقشه گوگل بر روی سایت ";}', 'Gregory Athons', 'http://www.gregathons.com', '1.0.0', 1, 1, 1367403674),
(2, 'html', 's:4:"HTML";', 'a:10:{s:2:"en";s:28:"Create blocks of custom HTML";s:2:"el";s:80:"Δημιουργήστε περιοχές με δικό σας κώδικα HTML";s:2:"br";s:41:"Permite criar blocos de HTML customizados";s:2:"pt";s:41:"Permite criar blocos de HTML customizados";s:2:"nl";s:30:"Maak blokken met maatwerk HTML";s:2:"ru";s:83:"Создание HTML-блоков с произвольным содержимым";s:2:"id";s:24:"Membuat blok HTML apapun";s:2:"fi";s:32:"Luo lohkoja omasta HTML koodista";s:2:"fr";s:36:"Créez des blocs HTML personnalisés";s:2:"fa";s:58:"ایجاد قسمت ها به صورت اچ تی ام ال";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 2, 1367403674),
(3, 'login', 'a:10:{s:2:"en";s:5:"Login";s:2:"el";s:14:"Σύνδεση";s:2:"nl";s:5:"Login";s:2:"br";s:5:"Login";s:2:"pt";s:5:"Login";s:2:"ru";s:22:"Вход на сайт";s:2:"id";s:5:"Login";s:2:"fi";s:13:"Kirjautuminen";s:2:"fr";s:9:"Connexion";s:2:"fa";s:10:"لاگین";}', 'a:10:{s:2:"en";s:36:"Display a simple login form anywhere";s:2:"el";s:96:"Προβάλετε μια απλή φόρμα σύνδεσης χρήστη οπουδήποτε";s:2:"br";s:69:"Permite colocar um formulário de login em qualquer lugar do seu site";s:2:"pt";s:69:"Permite colocar um formulário de login em qualquer lugar do seu site";s:2:"nl";s:32:"Toon overal een simpele loginbox";s:2:"ru";s:72:"Выводит простую форму для входа на сайт";s:2:"id";s:32:"Menampilkan form login sederhana";s:2:"fi";s:52:"Näytä yksinkertainen kirjautumislomake missä vain";s:2:"fr";s:54:"Affichez un formulaire de connexion où vous souhaitez";s:2:"fa";s:70:"نمایش یک لاگین ساده در هر قسمتی از سایت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 3, 1367403674),
(4, 'navigation', 'a:10:{s:2:"en";s:10:"Navigation";s:2:"el";s:16:"Πλοήγηση";s:2:"nl";s:9:"Navigatie";s:2:"br";s:11:"Navegação";s:2:"pt";s:11:"Navegação";s:2:"ru";s:18:"Навигация";s:2:"id";s:8:"Navigasi";s:2:"fi";s:10:"Navigaatio";s:2:"fr";s:10:"Navigation";s:2:"fa";s:10:"منوها";}', 'a:10:{s:2:"en";s:40:"Display a navigation group with a widget";s:2:"el";s:100:"Προβάλετε μια ομάδα στοιχείων πλοήγησης στον ιστότοπο";s:2:"nl";s:38:"Toon een navigatiegroep met een widget";s:2:"br";s:62:"Exibe um grupo de links de navegação como widget em seu site";s:2:"pt";s:62:"Exibe um grupo de links de navegação como widget no seu site";s:2:"ru";s:88:"Отображает навигационную группу внутри виджета";s:2:"id";s:44:"Menampilkan grup navigasi menggunakan widget";s:2:"fi";s:37:"Näytä widgetillä navigaatio ryhmä";s:2:"fr";s:47:"Affichez un groupe de navigation dans un widget";s:2:"fa";s:71:"نمایش گروهی از منوها با استفاده از ویجت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.2.0', 1, 4, 1367403674),
(5, 'rss_feed', 'a:10:{s:2:"en";s:8:"RSS Feed";s:2:"el";s:24:"Τροφοδοσία RSS";s:2:"nl";s:8:"RSS Feed";s:2:"br";s:8:"Feed RSS";s:2:"pt";s:8:"Feed RSS";s:2:"ru";s:31:"Лента новостей RSS";s:2:"id";s:8:"RSS Feed";s:2:"fi";s:10:"RSS Syöte";s:2:"fr";s:8:"Flux RSS";s:2:"fa";s:19:"خبر خوان RSS";}', 'a:10:{s:2:"en";s:41:"Display parsed RSS feeds on your websites";s:2:"el";s:82:"Προβάλετε τα περιεχόμενα μιας τροφοδοσίας RSS";s:2:"nl";s:28:"Toon RSS feeds op uw website";s:2:"br";s:48:"Interpreta e exibe qualquer feed RSS no seu site";s:2:"pt";s:48:"Interpreta e exibe qualquer feed RSS no seu site";s:2:"ru";s:94:"Выводит обработанную ленту новостей на вашем сайте";s:2:"id";s:42:"Menampilkan kutipan RSS feed di situs Anda";s:2:"fi";s:39:"Näytä purettu RSS syöte sivustollasi";s:2:"fr";s:39:"Affichez un flux RSS sur votre site web";s:2:"fa";s:46:"نمایش خوراک های RSS در سایت";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.2.0', 1, 5, 1367403674),
(6, 'social_bookmark', 'a:10:{s:2:"en";s:15:"Social Bookmark";s:2:"el";s:35:"Κοινωνική δικτύωση";s:2:"nl";s:19:"Sociale Bladwijzers";s:2:"br";s:15:"Social Bookmark";s:2:"pt";s:15:"Social Bookmark";s:2:"ru";s:37:"Социальные закладки";s:2:"id";s:15:"Social Bookmark";s:2:"fi";s:24:"Sosiaalinen kirjanmerkki";s:2:"fr";s:13:"Liens sociaux";s:2:"fa";s:52:"بوکمارک های شبکه های اجتماعی";}', 'a:10:{s:2:"en";s:47:"Configurable social bookmark links from AddThis";s:2:"el";s:111:"Παραμετροποιήσιμα στοιχεία κοινωνικής δικτυώσης από το AddThis";s:2:"nl";s:43:"Voeg sociale bladwijzers toe vanuit AddThis";s:2:"br";s:87:"Adiciona links de redes sociais usando o AddThis, podendo fazer algumas configurações";s:2:"pt";s:87:"Adiciona links de redes sociais usando o AddThis, podendo fazer algumas configurações";s:2:"ru";s:90:"Конфигурируемые социальные закладки с сайта AddThis";s:2:"id";s:60:"Tautan social bookmark yang dapat dikonfigurasi dari AddThis";s:2:"fi";s:59:"Konfiguroitava sosiaalinen kirjanmerkki linkit AddThis:stä";s:2:"fr";s:43:"Liens sociaux personnalisables avec AddThis";s:2:"fa";s:71:"تنظیم و نمایش لینک های شبکه های اجتماعی";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 6, 1367403675),
(7, 'archive', 'a:8:{s:2:"en";s:7:"Archive";s:2:"br";s:15:"Arquivo do Blog";s:2:"fa";s:10:"آرشیو";s:2:"pt";s:15:"Arquivo do Blog";s:2:"el";s:33:"Αρχείο Ιστολογίου";s:2:"fr";s:16:"Archives du Blog";s:2:"ru";s:10:"Архив";s:2:"id";s:7:"Archive";}', 'a:8:{s:2:"en";s:64:"Display a list of old months with links to posts in those months";s:2:"br";s:95:"Mostra uma lista navegação cronológica contendo o índice dos artigos publicados mensalmente";s:2:"fa";s:101:"نمایش لیست ماه های گذشته به همراه لینک به پست های مربوطه";s:2:"pt";s:95:"Mostra uma lista navegação cronológica contendo o índice dos artigos publicados mensalmente";s:2:"el";s:155:"Προβάλλει μια λίστα μηνών και συνδέσμους σε αναρτήσεις που έγιναν σε κάθε από αυτούς";s:2:"fr";s:95:"Permet d''afficher une liste des mois passés avec des liens vers les posts relatifs à ces mois";s:2:"ru";s:114:"Выводит список по месяцам со ссылками на записи в этих месяцах";s:2:"id";s:63:"Menampilkan daftar bulan beserta tautan post di setiap bulannya";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.0.0', 1, 7, 1367403674),
(8, 'blog_categories', 'a:8:{s:2:"en";s:15:"Blog Categories";s:2:"br";s:18:"Categorias do Blog";s:2:"pt";s:18:"Categorias do Blog";s:2:"el";s:41:"Κατηγορίες Ιστολογίου";s:2:"fr";s:19:"Catégories du Blog";s:2:"ru";s:29:"Категории Блога";s:2:"id";s:12:"Kateori Blog";s:2:"fa";s:28:"مجموعه های بلاگ";}', 'a:8:{s:2:"en";s:30:"Show a list of blog categories";s:2:"br";s:57:"Mostra uma lista de navegação com as categorias do Blog";s:2:"pt";s:57:"Mostra uma lista de navegação com as categorias do Blog";s:2:"el";s:97:"Προβάλει την λίστα των κατηγοριών του ιστολογίου σας";s:2:"fr";s:49:"Permet d''afficher la liste de Catégories du Blog";s:2:"ru";s:57:"Выводит список категорий блога";s:2:"id";s:35:"Menampilkan daftar kategori tulisan";s:2:"fa";s:55:"نمایش لیستی از مجموعه های بلاگ";}', 'Stephen Cozart', 'http://github.com/clip/', '1.0.0', 1, 8, 1367403674),
(9, 'latest_posts', 'a:8:{s:2:"en";s:12:"Latest posts";s:2:"br";s:24:"Artigos recentes do Blog";s:2:"fa";s:26:"آخرین ارسال ها";s:2:"pt";s:24:"Artigos recentes do Blog";s:2:"el";s:62:"Τελευταίες αναρτήσεις ιστολογίου";s:2:"fr";s:17:"Derniers articles";s:2:"ru";s:31:"Последние записи";s:2:"id";s:12:"Post Terbaru";}', 'a:8:{s:2:"en";s:39:"Display latest blog posts with a widget";s:2:"br";s:81:"Mostra uma lista de navegação para abrir os últimos artigos publicados no Blog";s:2:"fa";s:65:"نمایش آخرین پست های وبلاگ در یک ویجت";s:2:"pt";s:81:"Mostra uma lista de navegação para abrir os últimos artigos publicados no Blog";s:2:"el";s:103:"Προβάλει τις πιο πρόσφατες αναρτήσεις στο ιστολόγιό σας";s:2:"fr";s:68:"Permet d''afficher la liste des derniers posts du blog dans un Widget";s:2:"ru";s:100:"Выводит список последних записей блога внутри виджета";s:2:"id";s:51:"Menampilkan posting blog terbaru menggunakan widget";}', 'Erik Berman', 'http://www.nukleo.fr', '1.0.0', 1, 9, 1367403674),
(10, 'flickr_photo', 'a:1:{s:2:"en";s:12:"Flickr photo";}', 'a:1:{s:2:"en";s:44:"Display Recent Flickr photos on your website";}', 'Youhan', 'http:/pyrocms.ir/', '1.0', 1, 10, 1365677593),
(13, 'twitter_feed', 'a:9:{s:2:"en";s:12:"Twitter Feed";s:2:"el";s:14:"Ροή Twitter";s:2:"fr";s:12:"Flux Twitter";s:2:"nl";s:11:"Twitterfeed";s:2:"br";s:15:"Feed do Twitter";s:2:"pt";s:15:"Feed do Twitter";s:2:"ru";s:21:"Лента Twitter''а";s:2:"id";s:12:"Twitter Feed";s:2:"fi";s:14:"Twitter Syöte";}', 'a:9:{s:2:"en";s:37:"Display Twitter feeds on your website";s:2:"el";s:69:"Προβολή των τελευταίων tweets από το Twitter";s:2:"fr";s:49:"Afficher les flux Twitter sur votre site Internet";s:2:"nl";s:31:"Toon Twitterfeeds op uw website";s:2:"br";s:64:"Mostra os últimos tweets de um usuário do Twitter no seu site.";s:2:"pt";s:66:"Mostra os últimos tweets de um utilizador do Twitter no seu site.";s:2:"ru";s:98:"Выводит ленту новостей Twitter на страницах вашего сайта";s:2:"id";s:39:"Menampilkan koleksi Tweet di situs Anda";s:2:"fi";s:35:"Näytä Twitter syöte sivustollasi";}', 'Phil Sturgeon', 'http://philsturgeon.co.uk/', '1.2', 1, 13, 1365818311),
(16, 'latest_stories', 'a:2:{s:2:"en";s:14:"Latest stories";s:2:"fa";s:28:"آخرین داستان ها";}', 'a:1:{s:2:"en";s:45:"Display stories from blog posts with a widget";}', 'Alireza Jahandideh', 'http://www.pyrocms.ir', '1.0.0', 1, 16, 1367598016),
(17, 'blog_slider', 'a:1:{s:2:"en";s:11:"Blog Slider";}', 'a:1:{s:2:"en";s:46:"Display blog posts via an slider to your pages";}', 'Alireza Jahandideh', 'http://www.pyrocms.ir', '1.0.0', 1, 17, 1367738071),
(18, 'newsletter_form', 'a:1:{s:2:"en";s:15:"Newsletter Form";}', 'a:1:{s:2:"en";s:23:"Display Newsletter Form";}', 'Youhan', 'http:/pyrocms.ir/', '1.0', 1, 18, 1426446600),
(19, 'recent_comments', 'a:1:{s:2:"en";s:15:"Recent Comments";}', 'a:1:{s:2:"en";s:37:"Show recent Comments on your website ";}', 'Codedme Team', 'https://twitter.com/CodedmeTeam', '1.0', 1, 19, 1367830040);

-- --------------------------------------------------------

--
-- Table structure for table `default_widget_areas`
--

CREATE TABLE `default_widget_areas` (
`id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_widget_areas`
--

INSERT INTO `default_widget_areas` (`id`, `slug`, `title`) VALUES
(1, 'sidebar', 'Sidebar'),
(3, 'slider', 'slider'),
(4, 'carousel', 'carousel'),
(5, 'footer-col1', 'footer-col1'),
(6, 'footer-col2', 'footer-col2'),
(7, 'footer-col3', 'footer-col3'),
(8, 'blog-sidebar', 'blog-sidebar'),
(9, 'map', 'map'),
(10, 'home-slider', 'home slider'),
(11, 'home-sidebar', 'home sidebar'),
(12, 'header', 'header'),
(13, 'footer-col4', 'footer-col4');

-- --------------------------------------------------------

--
-- Table structure for table `default_widget_instances`
--

CREATE TABLE `default_widget_instances` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  `widget_area_id` int(11) DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(10) NOT NULL DEFAULT '0',
  `created_on` int(11) NOT NULL DEFAULT '0',
  `updated_on` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `default_widget_instances`
--

INSERT INTO `default_widget_instances` (`id`, `title`, `widget_id`, `widget_area_id`, `options`, `order`, `created_on`, `updated_on`) VALUES
(9, 'About bakame', 2, 5, 'a:2:{s:10:"show_title";s:1:"1";s:4:"html";s:36:"<p>IBIJYANYE NA BAKAMEWIZE HANO </p>";}', 1, 1365756103, 1426449944),
(10, 'Photostream', 10, 6, 'a:3:{s:10:"show_title";s:1:"1";s:8:"username";s:12:"71865026@N00";s:6:"number";s:1:"6";}', 1, 1365756335, 1367762044),
(11, 'Recent tweets', 13, 7, 'a:3:{s:10:"show_title";s:1:"1";s:8:"username";s:7:"pyrocms";s:6:"number";s:1:"2";}', 1, 1365757233, 0),
(12, 'Categories', 8, 4, 'a:1:{s:10:"show_title";s:1:"1";}', 1, 1365818437, 1426449671),
(13, 'Latest posts', 9, 8, 'a:2:{s:10:"show_title";s:1:"1";s:5:"limit";s:1:"5";}', 3, 1365818460, 0),
(14, 'Archive', 7, 8, 'a:1:{s:10:"show_title";s:1:"1";}', 5, 1365818479, 0),
(16, 'HTML widget', 2, 8, 'a:2:{s:10:"show_title";s:1:"1";s:4:"html";s:299:"<p>\r\nMauris at blandit erat. Nam vel tortor non quam scelerisque cursus. Praesent nunc vitae magna pellentesque auctor. Quisque id lectus.\r\nMassa, eget eleifend tellus. Proin nec ante leo ssim nunc sit amet velit malesuada pharetra. Nulla neque sapien, sollicitudin non ornare quis, malesuada.\r\n</p>";}', 4, 1365823617, 0),
(17, 'google map', 1, 9, 'a:5:{s:7:"address";s:13:"Kigali,Rwanda";s:5:"width";s:4:"100%";s:6:"height";s:5:"350px";s:4:"zoom";s:2:"16";s:11:"description";s:0:"";}', 1, 1365851858, 1426450124),
(25, 'My name is john doe!', 2, 1, 'a:2:{s:10:"show_title";s:1:"1";s:4:"html";s:2923:"                            <dl class="accordion-wrapper">\r\n								\r\n                                <dt class="accordion-head active">\r\n                                        <a href="#">What venus you were living in!?</a>\r\n                                </dt>\r\n\r\n                                <dd class="accordion-body">\r\n                                        <div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae </div>\r\n                                </dd>\r\n\r\n                                <dt class="accordion-head">\r\n                                        <a href="#">Take one more step</a>\r\n                                </dt>\r\n\r\n                                <dd class="accordion-body" >\r\n                                        <div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae </div>\r\n                                </dd>\r\n\r\n                                <dt class="accordion-head">\r\n                                        <a href="#">You might be unchained</a>\r\n                                </dt>\r\n\r\n                                <dd class="accordion-body" >\r\n                                        <div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae </div>\r\n                                </dd>\r\n\r\n                                <dt class="accordion-head last">\r\n                                        <a href="#">There you go!</a>\r\n                                </dt>\r\n\r\n                                <dd class="accordion-body">\r\n                                        <div class="content">Mauris pellentesque malesuada tristique. Cras quis libero lacus, eu semper tellus. Nam id arcu justo, vel interdum mi. Proin varius mi quis nibh blandit tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eget ligula risus. Sed ante mauris, fermentum et congue vel, vestibulum vitae </div>\r\n                                </dd>\r\n\r\n                        </dl>\r\n                            ";}', 1, 1366000615, 1366000654),
(26, 'Menu', 4, 8, 'a:2:{s:10:"show_title";s:1:"1";s:5:"group";s:6:"footer";}', 6, 1367406803, 0),
(29, 'home Slider', 17, 10, 'a:1:{s:5:"limit";s:1:"3";}', 1, 1367602032, 1426452469),
(30, 'Latest Stories', 16, 11, 'a:2:{s:10:"show_title";s:1:"1";s:5:"limit";s:1:"5";}', 3, 1367738158, 1367738483),
(32, 'header', 2, 12, 'a:1:{s:4:"html";s:705:"<div id="social-stats" class="visible-desktop">\n<ul>\n<li class="ss-twitter">\n   <a href="http://twitter.com/codedmeTeam" rel="nofollow external" target="_blank">   \n         <span class="social-network twitter"></span><large>7,220</large> <small>Twitter Followers</small>\n   </a>\n</li>\n<li class="ss-facebook">\n    <a href="#" rel="nofollow external" target="_blank">\n        <span class="social-network facebook"></span><large>15,493</large> <small>Facebook Fans</small>\n    </a>\n</li>\n<li class="ss-google-plus">\n    <a href="#" rel="nofollow external" target="_blank">\n        <span class="social-network gplus"></span><large>12,666</large> <small>Google+ Followers</small> \n    </a>\n</li>\n</ul>\n</div>";}', 1, 1367753494, 1426452457),
(33, 'Where we are', 2, 13, 'a:2:{s:10:"show_title";s:1:"1";s:4:"html";s:223:"<div class="bottom_map">\r\n\r\n<a class="bottom_map_loc" data-placement="top" data-title="255 Albert Ave, Brooklyn, NY 33412" href="#" rel="tooltip" data-original-title="255 Albert Ave, Brooklyn, NY 33412">&nbsp;</a>\r\n\r\n</div>";}', 1, 1367761610, 1367762199),
(36, 'Recent Comments', 19, 11, 'a:3:{s:10:"show_title";s:1:"1";s:6:"module";s:4:"blog";s:3:"num";s:1:"5";}', 2, 1367767211, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
 ADD PRIMARY KEY (`slug`), ADD UNIQUE KEY `unique - slug` (`slug`), ADD KEY `index - slug` (`slug`);

--
-- Indexes for table `core_sites`
--
ALTER TABLE `core_sites`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `Unique ref` (`ref`), ADD UNIQUE KEY `Unique domain` (`domain`), ADD KEY `ref` (`ref`), ADD KEY `domain` (`domain`);

--
-- Indexes for table `core_users`
--
ALTER TABLE `core_users`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- Indexes for table `default_blog`
--
ALTER TABLE `default_blog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_blog_categories`
--
ALTER TABLE `default_blog_categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique_slug` (`slug`), ADD UNIQUE KEY `unique_title` (`title`), ADD KEY `slug` (`slug`);

--
-- Indexes for table `default_ci_sessions`
--
ALTER TABLE `default_ci_sessions`
 ADD PRIMARY KEY (`session_id`), ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `default_comments`
--
ALTER TABLE `default_comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_comment_blacklists`
--
ALTER TABLE `default_comment_blacklists`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_contact_log`
--
ALTER TABLE `default_contact_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_data_fields`
--
ALTER TABLE `default_data_fields`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_data_field_assignments`
--
ALTER TABLE `default_data_field_assignments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_data_streams`
--
ALTER TABLE `default_data_streams`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_def_page_fields`
--
ALTER TABLE `default_def_page_fields`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_email_templates`
--
ALTER TABLE `default_email_templates`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug_lang` (`slug`,`lang`);

--
-- Indexes for table `default_files`
--
ALTER TABLE `default_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_file_folders`
--
ALTER TABLE `default_file_folders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_groups`
--
ALTER TABLE `default_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_keywords`
--
ALTER TABLE `default_keywords`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_keywords_applied`
--
ALTER TABLE `default_keywords_applied`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_modules`
--
ALTER TABLE `default_modules`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `enabled` (`enabled`);

--
-- Indexes for table `default_navigation_groups`
--
ALTER TABLE `default_navigation_groups`
 ADD PRIMARY KEY (`id`), ADD KEY `abbrev` (`abbrev`);

--
-- Indexes for table `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
 ADD PRIMARY KEY (`id`), ADD KEY `navigation_group_id` (`navigation_group_id`);

--
-- Indexes for table `default_pages`
--
ALTER TABLE `default_pages`
 ADD PRIMARY KEY (`id`), ADD KEY `slug` (`slug`), ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `default_pages_custom_home`
--
ALTER TABLE `default_pages_custom_home`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_page_types`
--
ALTER TABLE `default_page_types`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_permissions`
--
ALTER TABLE `default_permissions`
 ADD PRIMARY KEY (`id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `default_pmsliders`
--
ALTER TABLE `default_pmsliders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_pmslides`
--
ALTER TABLE `default_pmslides`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_profiles`
--
ALTER TABLE `default_profiles`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `default_redirects`
--
ALTER TABLE `default_redirects`
 ADD PRIMARY KEY (`id`), ADD KEY `from` (`from`);

--
-- Indexes for table `default_search_index`
--
ALTER TABLE `default_search_index`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique` (`module`,`entry_key`,`entry_id`(190)), ADD FULLTEXT KEY `full search` (`title`,`description`,`keywords`);

--
-- Indexes for table `default_settings`
--
ALTER TABLE `default_settings`
 ADD PRIMARY KEY (`slug`), ADD UNIQUE KEY `unique_slug` (`slug`), ADD KEY `slug` (`slug`);

--
-- Indexes for table `default_theme_options`
--
ALTER TABLE `default_theme_options`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_users`
--
ALTER TABLE `default_users`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`);

--
-- Indexes for table `default_variables`
--
ALTER TABLE `default_variables`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_widgets`
--
ALTER TABLE `default_widgets`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_widget_areas`
--
ALTER TABLE `default_widget_areas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `default_widget_instances`
--
ALTER TABLE `default_widget_instances`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_sites`
--
ALTER TABLE `core_sites`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `core_users`
--
ALTER TABLE `core_users`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_blog`
--
ALTER TABLE `default_blog`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `default_blog_categories`
--
ALTER TABLE `default_blog_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `default_comments`
--
ALTER TABLE `default_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_comment_blacklists`
--
ALTER TABLE `default_comment_blacklists`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_contact_log`
--
ALTER TABLE `default_contact_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_data_fields`
--
ALTER TABLE `default_data_fields`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `default_data_field_assignments`
--
ALTER TABLE `default_data_field_assignments`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `default_data_streams`
--
ALTER TABLE `default_data_streams`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `default_def_page_fields`
--
ALTER TABLE `default_def_page_fields`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `default_email_templates`
--
ALTER TABLE `default_email_templates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `default_file_folders`
--
ALTER TABLE `default_file_folders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `default_groups`
--
ALTER TABLE `default_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_keywords`
--
ALTER TABLE `default_keywords`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `default_keywords_applied`
--
ALTER TABLE `default_keywords_applied`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `default_modules`
--
ALTER TABLE `default_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `default_navigation_groups`
--
ALTER TABLE `default_navigation_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `default_navigation_links`
--
ALTER TABLE `default_navigation_links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `default_pages`
--
ALTER TABLE `default_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `default_pages_custom_home`
--
ALTER TABLE `default_pages_custom_home`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_page_types`
--
ALTER TABLE `default_page_types`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `default_permissions`
--
ALTER TABLE `default_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_pmsliders`
--
ALTER TABLE `default_pmsliders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `default_pmslides`
--
ALTER TABLE `default_pmslides`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `default_profiles`
--
ALTER TABLE `default_profiles`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_redirects`
--
ALTER TABLE `default_redirects`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_search_index`
--
ALTER TABLE `default_search_index`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `default_theme_options`
--
ALTER TABLE `default_theme_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `default_users`
--
ALTER TABLE `default_users`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `default_variables`
--
ALTER TABLE `default_variables`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `default_widgets`
--
ALTER TABLE `default_widgets`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `default_widget_areas`
--
ALTER TABLE `default_widget_areas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `default_widget_instances`
--
ALTER TABLE `default_widget_instances`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
