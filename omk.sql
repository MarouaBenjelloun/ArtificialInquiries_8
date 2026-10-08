-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 09 oct. 2026 à 00:37
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Exercise 8 - Gathering Evidence', 'Exercise 8 - Gathering Evidence\nExercice de collecte de preuves dans lequel plusieurs modèles exécutent des tâches et produisent des réponses.\nexercise-8\nGathering Evidence\nModel 1\nModel 2\nModel 3\nModel 4'),
(2, 'items', 1, 1, 'Partner 1', 'Partner 1\nPartenaire responsable de l\'attribution des codes aux modèles et de la fourniture des tâches.\npartner-1\nPartner 1\nModel 1\nModel 2\nModel 3\nModel 4\nGathering Evidence'),
(3, 'items', 1, 1, 'Model 1', 'Model 1\nModèle d\'IA testé dans le cadre de l\'exercice.\nmodel-1\nModel 1\nGiraffe\nGathering Evidence\nResponse 1'),
(4, 'items', 1, 1, 'Model 2', 'Model 2\nModèle d\'IA testé dans le cadre de l\'exercice.\nmodel-2\nModel 2\nSloth\nGathering Evidence\nResponse 2'),
(5, 'items', 1, 1, 'Model 3', 'Model 3\nModèle d\'IA testé dans le cadre de l\'exercice.\nmodel-3\nModel 3\nDragon\nGathering Evidence\nResponse 3'),
(6, 'items', 1, 1, 'Model 4', 'Model 4\nModèle d\'IA testé dans le cadre de l\'exercice.\nmodel-4\nModel 4\nTurkey\nGathering Evidence\nResponse 4'),
(7, 'items', 1, 1, 'Giraffe', 'Giraffe\nCode animal attribué à un modèle.\ngiraffe'),
(8, 'items', 1, 1, 'Sloth', 'Sloth\nCode animal attribué à un modèle.\nsloth'),
(9, 'items', 1, 1, 'Dragon', 'Dragon\nCode animal attribué à un modèle.\ndragon'),
(10, 'items', 1, 1, 'Turkey', 'Turkey\nCode animal attribué à un modèle.\nturkey'),
(11, 'items', 1, 1, 'Gathering Evidence', 'Gathering Evidence\nTâche de collecte de preuves réalisée par les modèles dans le cadre de l\'exercice.\ntask-1\nGathering Evidence\nCollecter les preuves demandées par l\'exercice et produire une réponse.\nExercice 8 - Formulaire\nResponse 1\nResponse 2\nResponse 3\nResponse 4'),
(12, 'items', 1, 1, 'Exercice 8 - Formulaire', 'Exercice 8 - Formulaire\nDocument associé à l\'exercice de collecte de preuves.\ndocument-1\nExercice 8 - Formulaire\nformulaire'),
(13, 'items', 1, 1, 'Response 1', 'Response 1\nRéponse produite par un modèle dans le cadre de la tâche.\nresponse-1\ntask-1\ngiraffe\nRéponse de test du modèle 1 pour la tâche Gathering Evidence.'),
(14, 'items', 1, 1, 'Response 2', 'Response 2\nRéponse produite par un modèle dans le cadre de la tâche.\nresponse-2\ntask-1\nsloth\nRéponse de test du modèle 2 pour la tâche Gathering Evidence.'),
(15, 'items', 1, 1, 'Response 3', 'Response 3\nRéponse produite par un modèle dans le cadre de la tâche.\nRéponse produite par un modèle dans le cadre de la tâche.\ntask-1\ndragon\nRéponse de test du modèle 3 pour la tâche Gathering Evidence.'),
(16, 'items', 1, 1, 'Response 4', 'Response 4\nRéponse produite par un modèle dans le cadre de la tâche.\nresponse-4\ntask-1\nturkey\nRéponse de test du modèle 4 pour la tâche Gathering Evidence.');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(190) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230124033031'),
('20230410074846'),
('20230523085358'),
('20230601060113'),
('20230713101012'),
('20231016000000'),
('20240103030617'),
('20240219000000'),
('20240614123811');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 5, 'id', 'id', NULL),
(186, 1, 5, 'title', 'title', NULL),
(187, 1, 5, 'description', 'description', NULL),
(188, 1, 5, 'name', 'name', NULL),
(189, 1, 5, 'instructions', 'instructions', NULL),
(190, 1, 5, 'type', 'type', NULL),
(191, 1, 5, 'taskId', 'taskId', NULL),
(192, 1, 5, 'animalCode', 'animalCode', NULL),
(193, 1, 5, 'content', 'content', NULL),
(194, 1, 5, 'contains', 'contains', NULL),
(195, 1, 5, 'tests', 'tests', NULL),
(196, 1, 5, 'assignsCode', 'assigns code', NULL),
(197, 1, 5, 'provides', 'provides', NULL),
(198, 1, 5, 'receives', 'receives', NULL),
(199, 1, 5, 'executes', 'executes', NULL),
(200, 1, 5, 'produces', 'produces', NULL),
(201, 1, 5, 'mayRequire', 'may require', NULL),
(202, 1, 5, 'generates', 'generates', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 106, 2, NULL, 'Exercise 8 - Gathering Evidence', 1, '2026-10-08 15:49:26', '2026-10-08 19:33:05', 'Omeka\\Entity\\Item'),
(2, 1, 107, 3, NULL, 'Partner 1', 1, '2026-10-08 15:52:14', '2026-10-08 22:12:36', 'Omeka\\Entity\\Item'),
(3, 1, 108, 4, NULL, 'Model 1', 1, '2026-10-08 15:55:00', '2026-10-08 20:14:34', 'Omeka\\Entity\\Item'),
(4, 1, 108, 4, NULL, 'Model 2', 1, '2026-10-08 15:56:02', '2026-10-08 20:14:57', 'Omeka\\Entity\\Item'),
(5, 1, 108, 4, NULL, 'Model 3', 1, '2026-10-08 15:56:55', '2026-10-08 20:15:21', 'Omeka\\Entity\\Item'),
(6, 1, 108, 4, NULL, 'Model 4', 1, '2026-10-08 15:57:51', '2026-10-08 20:15:44', 'Omeka\\Entity\\Item'),
(7, 1, 109, 5, NULL, 'Giraffe', 1, '2026-10-08 15:59:21', '2026-10-08 15:59:21', 'Omeka\\Entity\\Item'),
(8, 1, 109, 5, NULL, 'Sloth', 1, '2026-10-08 15:59:55', '2026-10-08 15:59:55', 'Omeka\\Entity\\Item'),
(9, 1, 109, 5, NULL, 'Dragon', 1, '2026-10-08 16:00:33', '2026-10-08 16:00:33', 'Omeka\\Entity\\Item'),
(10, 1, 109, 5, NULL, 'Turkey', 1, '2026-10-08 16:01:20', '2026-10-08 16:01:20', 'Omeka\\Entity\\Item'),
(11, 1, 110, 6, NULL, 'Gathering Evidence', 1, '2026-10-08 16:02:25', '2026-10-08 20:18:15', 'Omeka\\Entity\\Item'),
(12, 1, 111, 7, NULL, 'Exercice 8 - Formulaire', 1, '2026-10-08 16:03:32', '2026-10-08 16:03:32', 'Omeka\\Entity\\Item'),
(13, 1, 112, 8, NULL, 'Response 1', 1, '2026-10-08 16:04:56', '2026-10-08 16:04:56', 'Omeka\\Entity\\Item'),
(14, 1, 112, 8, NULL, 'Response 2', 1, '2026-10-08 16:06:14', '2026-10-08 16:06:14', 'Omeka\\Entity\\Item'),
(15, 1, 112, 8, NULL, 'Response 3', 1, '2026-10-08 16:07:28', '2026-10-08 16:07:28', 'Omeka\\Entity\\Item'),
(16, 1, 112, 8, NULL, 'Response 4', 1, '2026-10-08 16:08:44', '2026-10-08 16:08:44', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Exercise', 'Exercise', NULL),
(107, 1, 5, 'Partner', 'Partner', NULL),
(108, 1, 5, 'Model', 'Model', NULL),
(109, 1, 5, 'AnimalCode', 'AnimalCode', NULL),
(110, 1, 5, 'Task', 'Task', NULL),
(111, 1, 5, 'Document', 'Document', NULL),
(112, 1, 5, 'Response', 'Response', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 106, NULL, NULL, 'Exercise'),
(3, 1, 107, NULL, NULL, 'Partner'),
(4, 1, 108, NULL, NULL, 'Model'),
(5, 1, 109, NULL, NULL, 'AnimalCode'),
(6, 1, 110, NULL, NULL, 'Task'),
(7, 1, 111, NULL, NULL, 'Document'),
(8, 1, 112, NULL, NULL, 'Response');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(21, 2, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(22, 2, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(23, 2, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(24, 2, 194, NULL, NULL, 4, '[\"resource:item\"]', 0, 0, NULL),
(25, 2, 195, NULL, NULL, 5, NULL, 0, 0, NULL),
(26, 3, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(27, 3, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(28, 3, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(29, 3, 188, NULL, NULL, 4, NULL, 0, 0, NULL),
(30, 3, 196, NULL, NULL, 5, '[\"resource:item\"]', 0, 0, NULL),
(31, 3, 197, NULL, NULL, 6, '[\"resource:item\"]', 0, 0, NULL),
(32, 4, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(33, 4, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(34, 4, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(35, 4, 188, NULL, NULL, 4, NULL, 0, 0, NULL),
(36, 4, 198, NULL, NULL, 5, '[\"resource:item\"]', 0, 0, NULL),
(37, 4, 199, NULL, NULL, 6, '[\"resource:item\"]', 0, 0, NULL),
(38, 4, 200, NULL, NULL, 7, '[\"resource:item\"]', 0, 0, NULL),
(39, 5, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(40, 5, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(41, 5, 188, NULL, NULL, 3, NULL, 0, 0, NULL),
(42, 6, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(43, 6, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(44, 6, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(45, 6, 188, NULL, NULL, 4, NULL, 0, 0, NULL),
(46, 6, 189, NULL, NULL, 5, NULL, 0, 0, NULL),
(47, 6, 201, NULL, NULL, 6, '[\"resource:item\"]', 0, 0, NULL),
(48, 7, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(49, 7, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(50, 7, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(51, 7, 188, NULL, NULL, 4, NULL, 0, 0, NULL),
(52, 7, 190, NULL, NULL, 5, NULL, 0, 0, NULL),
(53, 8, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(54, 8, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(55, 8, 185, NULL, NULL, 3, NULL, 0, 0, NULL),
(56, 8, 191, NULL, NULL, 4, NULL, 0, 0, NULL),
(57, 8, 192, NULL, NULL, 5, NULL, 0, 0, NULL),
(58, 8, 193, NULL, NULL, 6, NULL, 0, 0, NULL),
(59, 6, 202, NULL, NULL, 7, '[\"resource:item\"]', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('871612jl4egei5j0daqe38d7o2', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313739313439373535362e3733333337313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2275626c6c37687136706a38626336623376303574666f75767033223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313739313435313132373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313739313534303734383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313739313531363732303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313739313534303732333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226538373461313165313738653032376331663861323330613937373262376566223b733a33323a223765313432613039336464353131323536656635636638376536346136613934223b7d733a343a2268617368223b733a36353a2237653134326130393364643531313235366566356366383765363461366139342d6538373461313165313738653032376331663861323330613937373262376566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37323a7b733a33323a226639616232303733656363393439653036303437363666306163313565613335223b733a33323a226534363334313638663064343438643137346437366639373565663932363165223b733a33323a226461383165306336626465643932633038633436303230396163336536643161223b733a33323a226533363936323563383937346139303132646136336134343563663330623934223b733a33323a223238623763323737653166643764316536383164336134356236646634313631223b733a33323a223735396535613137623866666138323231333431393064313236393863326165223b733a33323a223031373539666137386230623538393262386166663035313838336163313737223b733a33323a226638323165303539336464366631383265323730383932626665376434633630223b733a33323a223630343365613931323366383131623530333030626335323233653933363236223b733a33323a226234656631613363663834366138646239626464313930316564363461616666223b733a33323a223562623038616431663337623338663266653465343132323832376466653035223b733a33323a226365326334306337353066643130343733346363346639613964393533656164223b733a33323a223136376530313838346639613365633631313235626365663532363464623261223b733a33323a226330623138383736346439393164643133323366666263373865633038336537223b733a33323a226662646533346630333930336635666637353661376334346562333533633966223b733a33323a223337306531643266633839643338616338383266613936643132373830343135223b733a33323a223434303038373836633134306331396131613532303037363132613765336266223b733a33323a223466653738306139356664343363323536363033356332643263383265633339223b733a33323a226164376239353566336637666136313962633832616333363038653136316430223b733a33323a223762326132663732353535623137333032393731313433626438343864333337223b733a33323a223036633865393938366636373662343863366461616434656635666466353337223b733a33323a223235666162323233303734623461383937626362303638363038383233623966223b733a33323a223464346339363365323331333463363133386164356465643063613339653532223b733a33323a226337316535613831613936636233616463643138356631363766343835316233223b733a33323a223132373034366430376336613464326237323963616431376564383138396538223b733a33323a223365393231343364653638343435356232326230626435313962363433393165223b733a33323a226338626233636564393364353264656663306431353137346365383434333932223b733a33323a226431336463343230636135363738323636663861323837376531616537336530223b733a33323a223361343936353732303263636638633732633330633364646262353031336234223b733a33323a223965343963366265383735353434336633396631623333373539623666666335223b733a33323a223532316530393739386135643864636630313638363835383831623463663465223b733a33323a223038323564323335373232616466316239643162343834633262386430316265223b733a33323a226538613930326638353335653934623233616666346663636562356638353938223b733a33323a226336343739316230396131653936383037623331633262626561663836383534223b733a33323a226132623337306434303538653136643663343531333630376663363735366238223b733a33323a226639366232323139636465343065353038646238393764623936353538306263223b733a33323a226264653839356265343831323762396564393165343230363734383033383130223b733a33323a226633616434333265363466646461396562663162623663346664623232626336223b733a33323a223135653363313532623061376535366136633166363861346663366335383132223b733a33323a223463336332363763396439323539376237656330343934323461326639653836223b733a33323a226639383966613031663232366230663461346565613561376666646461373765223b733a33323a223132613135386232373738316439343834363039373865373836343630373537223b733a33323a226238343064363165346137306265626232626432386561323232356165323766223b733a33323a223863393865323466663039633564646534303466333437396539353833336235223b733a33323a223561643939373234313965343236326164656236326462616233633966316238223b733a33323a223631666366616463643434643037616564326536643035316235366665643133223b733a33323a223930356430373263323363373439306637643632393135306262626166373663223b733a33323a226563356337613736626263306535663831616430666366656661653031306131223b733a33323a226637613238643836316635393639383062356136336466663437326334303263223b733a33323a223464656565373562613766396361363135623663313134346161353737336234223b733a33323a223338313134326236396232333737376562663336376336653666313236383733223b733a33323a223236393164623035316135666465373836653933313437346639643162366635223b733a33323a223964373962333133373562316564666637323665643333656337626262343365223b733a33323a223065666634376663616162383262326461363333653435393236363032323266223b733a33323a223831383363333630336562663466336430643937653863656261613462373537223b733a33323a223438613139336236313632373037363965626365303530623862373865353535223b733a33323a223131633535383135616137613134633430353962613739636162363633306639223b733a33323a226263343238623439333434326637646535616265623263393337623465306130223b733a33323a223837313839616235613634313638373965633461333139343162653138643534223b733a33323a223833343037666564346162396635633435323931303866626163383236323164223b733a33323a226538623361616566653366383862396638633039626433313764363435363963223b733a33323a223138313364386237383836306664633664613066343235353932383062656135223b733a33323a223162393765346235616130636335383232313561333237323939663730663133223b733a33323a226131303066633662623661343662326363333962343936336462333839636363223b733a33323a223532663662643161343434386264333136376631643830633963623966373134223b733a33323a226162633833643762353739363763333138643265623932326136326563356139223b733a33323a226365306630663634656366646138373238393866353030343738353662623535223b733a33323a223135643061303138656637633463363063396466613534653734363832353461223b733a33323a223737623065363934363465313739346334333835643231313063643464643732223b733a33323a226263323937353439623662363737313365643932646539663732303837663339223b733a33323a223037376561323532386637646361646337643434333866393633613062633938223b733a33323a223935313265333537623565326533333439636138303339643936326435356666223b733a33323a223562336536313836393335313966356663323961383466383963326538336566223b733a33323a223163386331636436326466393739313364353735333465323331353632663733223b733a33323a223162666136636661636337363564366430633437663936666135383833353963223b733a33323a223166656631393239336639626664336237393839336361353235343761643034223b733a33323a226662366366383536343339353837626635623765613464363064326634613735223b733a33323a223033346533623837333664613736353536636431316331303063313333646233223b733a33323a223734393364333734313762623435333065373231626365313466303061653462223b733a33323a226361623234613765663530353861623636616430316631393461663761626365223b733a33323a223963353861336465323837653862633533663464323431366434313133316635223b733a33323a226666336539343166353731366261643065363261383662393738663439353630223b733a33323a223837613338313636643962633731663035613137333066613934623161636662223b733a33323a223261353664316533636632636565633164393735623439366232383962306563223b733a33323a223930393234303337646237333661336435623436363764663266363433306163223b733a33323a223830626261613333316365626233343232343064323032633334323361613131223b733a33323a223736313635666331643537383865663130666463633831373035373332356131223b733a33323a223437356530653061643366656338383131656466633239656461623135323737223b733a33323a223738613463653166383538363737613362396631623164653961346130633161223b733a33323a223762336532393839336161393064306634336161356132373931306137393032223b733a33323a223363643230623165626537363765366534663036626438393832663738343630223b733a33323a223063323737363238396462633433653433666664633135643662333637386336223b733a33323a223631616631386136353761616339623239363064653439623032363435663630223b733a33323a223763303936666465303365393837373937353464303332663036656564666234223b733a33323a226133633238633966656237613866623330383936636463343130646563356663223b733a33323a226239636634373664653236396438306163626237663239323164376564386139223b733a33323a223364663936366636346263353238393231643439323334383138313034366235223b733a33323a223066633664363362303832336664376130326362653030666137386362383235223b733a33323a226630313465316430346138633430633061646264313764313932393165643236223b733a33323a223334343332313236636333346562323831636665363936393433316564623535223b733a33323a223766643861356538386266303632653734666631333762363263383134656137223b733a33323a226666383337356638343839623331396230363632373338366232323739653530223b733a33323a223137366135313962636435336462623136333561623063613533313931306534223b733a33323a226661363932306235653461636232656336663561386331373435393436336537223b733a33323a226637663230326533633136666661666161613063316636643961353861653731223b733a33323a223039333139376230306230303432333864633063643339373365366432343266223b733a33323a223530373964343465386230343363383630346236303165326364396634633335223b733a33323a226137333233383938376531326234316138393537623866386634383866303731223b733a33323a223361633063333166383764336261346239373266643832346538653135316639223b733a33323a223665643236356464316134373430633435623136383861376330313533303930223b733a33323a226464653062383937613064653434613762656130396463663666633739633333223b733a33323a223063663665383835636163346634386137376664303937333565383037663765223b733a33323a226135383636373139366631346461643739303461386635363732346432336162223b733a33323a223330356162613934306162663664613166656235663333333963666636646135223b733a33323a226263323034376330363932663963323161626230613662353662333232633936223b733a33323a226633386232646239303665303963666438626135393364343766646436303164223b733a33323a223337363331383066633565386436353236313237356566653362653131366634223b733a33323a223036613337663932306536326439633035306536313065353037306237396235223b733a33323a226533666138353766643263303539373038376561663038353434346161633633223b733a33323a223963633138356139633536363737393035323139626139343466396533623032223b733a33323a226337303639313732336466666436663638336237343131366634343763393534223b733a33323a226131386631333438333661623130636366306530323264663935643738363362223b733a33323a223938316335363064636534363332666164386636393833633333313037393265223b733a33323a226432646236346463623132653332663837333639313939306539383838393632223b733a33323a226638313964393865343637336262313831363062356438326364376561303466223b733a33323a223132316265346437663839343839326432303333363831346332633137623833223b733a33323a223439373164366531643132653836646661653562633137646536653763343432223b733a33323a223634323239353931396633316465623731343235343231306131373838383336223b733a33323a223036613261353235383861633433363966363232376237313935653232363764223b733a33323a226262386161316533356134396364383132366263613465316332616666363431223b733a33323a223838306633613737626461333834393437636531643235393131623731633139223b733a33323a226532656134333365623865343261366130393832646466303033636661366433223b733a33323a223338316239653838353265633335656632643236306366353965626336376437223b733a33323a223238356162653838326663326262663335353139356239323032356266373638223b733a33323a226663356135383832363366383332653535626136363966306435613235306430223b733a33323a223736613739343066623931663631363236626138613935383466343966643166223b733a33323a223930363139626635663137633134373962366338303131333865383265356361223b733a33323a223736623535646233376635396265356333646136386536323333306131656163223b733a33323a223362333230643164393164303131383966363762363965336665626638623334223b733a33323a226638663264386566343632643038326663616232616639636335316261393437223b733a33323a223861633939633761653564626232313239383961666230303636313833303530223b733a33323a223264376431393265653331386336633338653432663163636361663831366265223b733a33323a223663303464613331323338653230383232303930636631343265353836646265223b733a33323a223433323931333532303763643238373032656563323361613633623661383238223b7d733a343a2268617368223b733a36353a2234333239313335323037636432383730326565633233616136336236613832382d3663303464613331323338653230383232303930636631343265353836646265223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31333a7b733a33323a223066346461643536616336303364303664633363333461626534303939363266223b733a33323a223038363335663730343963623661623666636233633363346538336137363030223b733a33323a223734376133356434306135326564616131633037373136393537613336316462223b733a33323a226633313865643165663662653932666664326334316163653037353662366365223b733a33323a226634323934613835326464323165326264373432613838326561633832333161223b733a33323a226632323539643230383663363866643038333230646536623339326365386361223b733a33323a223961353862666262396265613231383333333562346332663238616461636239223b733a33323a223964353631336434323361623130343963336461646461613932613765356566223b733a33323a223630616538353230646163313864656636363932633337333135646434343737223b733a33323a223265623264343431623739613730323430356162323665643262386166353635223b733a33323a226434306431336130316135613264643066313535313362336335363466333834223b733a33323a226265323966313939623637393036393561623835316162343561653665663865223b733a33323a226536363164363461303431396337626663623762303466333563613965343362223b733a33323a226237393037616431613830323235633135363032626264366663653866623166223b733a33323a226637633332663835343631373038373661613636623736316436386564663334223b733a33323a223334393834643033626438613265666662373336646164636662653466393535223b733a33323a226332633534363532306434633738336535343432323364663762376537393562223b733a33323a223732636430353164356134386161386361326563393732316336353831376138223b733a33323a223533386664626639376637656330363430643635373333653862663465613064223b733a33323a223536363934363363633931303039616162393031396533653463336161653364223b733a33323a226366626236373565303232376234336132656236376439386163383264613066223b733a33323a226430353134366363346536346264663466386532333338383063353165303263223b733a33323a226138393561386530653763643462336136623262383034373063333963323437223b733a33323a223361623563613664633434613135386161643364663038363636323261663336223b733a33323a226364623733313634383133646462303236336632343335366361356139376166223b733a33323a223735353839313837636166663739373764323634626339666338393366336234223b7d733a343a2268617368223b733a36353a2237353538393138376361666637393737643236346263396663383933663362342d6364623733313634383133646462303236336632343335366361356139376166223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3130383a7b733a33323a223737663332316663346461386438303639623030353132623563383962623238223b733a33323a226661356234353861623334376532323061383939313235656365633533653461223b733a33323a226538323863356338383637386535383230393133306163646561313134356132223b733a33323a226463336336356438313632353662396234323032623062383335623836316262223b733a33323a223864346635333565643964386334373065353864633635386232626632346239223b733a33323a226463366465303161646466316436353931363030636331633432653766626235223b733a33323a223061373263326237623361383237643230316564633834333830323038306131223b733a33323a226433326561393237653830646534396635353238383536663432393631316336223b733a33323a223339333538356566303839356135363834666462323433646261633833653963223b733a33323a223534653366653635666236303339633965306337366632313238363136643866223b733a33323a226336306431626334613333636366646332363263633363346130336132383364223b733a33323a223437613066366661356235613363356335366564313762356339366539396338223b733a33323a226261363732353938373161306466303762323232373666353636356461656630223b733a33323a226332643935353966636364353162346330633633393561336531333834373237223b733a33323a223739316131323364623737303061333365656230653663616262653534373535223b733a33323a223033633035663663346266343563383935643934613438353135656338396336223b733a33323a226530613134363564663466396663353136646464326434353864313632393262223b733a33323a223562326435643763353134626439326264393034643735396134376366313032223b733a33323a223434653262333634643536363130643437646234366635303830366561656232223b733a33323a226535393865656536353839366534323930386538653638353938336231303536223b733a33323a223663626564366337653463303433356439376664346230313436653434376334223b733a33323a223531346432633631373065333932346662353137396466363866383133346165223b733a33323a223465303136643366303562643735653434356331386233663532323735386563223b733a33323a226435643335363365373533363762393139323936613130353530636661323966223b733a33323a223539613934366361306334303832393136383132316463643561336465643739223b733a33323a223330613534313139663462316238663261326561303831643633383033616338223b733a33323a223637343765316539643433623962366635396265306631373964643338633864223b733a33323a223339306563383264626263636230306365333734306439623230633962303933223b733a33323a223637393731346137353036616337396331643864323637656164663165613330223b733a33323a223135653831333334383932336536316631626238366637386338323838353766223b733a33323a223161366631373666313062656631663566613561343037396663303633343862223b733a33323a226339316431396231633231386564356436303961373164376264333032363563223b733a33323a226265663165373362626230666262633066373337356131633630613032383061223b733a33323a223964616132633430326433636535666364353866303035333430326232666565223b733a33323a226239396563636631366630386230363335626433343134613639313030333632223b733a33323a226566626630356633656132656337333139643963363430363030373536353866223b733a33323a226135303533336635623463663331383535313862336239313237336365373732223b733a33323a226437356238643266336366333261343637666134373331613732313031313639223b733a33323a226664643933386436613465656631633232393966313635303835653666363066223b733a33323a223538383535336130393530653730623538356138306361346132656565343037223b733a33323a223162373634326138653962343139373062633130633230636634346334313436223b733a33323a226234333135303233626535326463373931623036376237393033356233653333223b733a33323a226162336262633334643435323234613133646535353139663138663439356336223b733a33323a226564646635653436663034336163366539323465626161666332663361316238223b733a33323a226564363164363864653233613132633138646135383438643561646135643636223b733a33323a223835343737363633336561306135373666313163303632633434643763636363223b733a33323a226430616263623638386630363738623938356632643735353239656534626362223b733a33323a226263643662386132306539383431383031376539363139333961363130356434223b733a33323a226633363734636465656264343334353863353264396538326438316434643866223b733a33323a223361616530376564396461643765343235376331303837613632356139313935223b733a33323a223038306166626264303737646436326262643536643933643961386566303633223b733a33323a223237303364386331653961323733643834313030353635313139393062373730223b733a33323a226334303661623333333536346434626165393966653763326234393238663561223b733a33323a226164636237333335353165613136363338303430383933326263353936396463223b733a33323a223335363966643063323732616137376265363039353862303336623130353966223b733a33323a226334323438623233383664396532333733623562663239633839633537303962223b733a33323a223338623366643032333432383665353737396563343238383962636165616638223b733a33323a226334616433343131383231353334393637323538323065393037633539366636223b733a33323a223633343630373465313937353938366466343262316166373361643937653738223b733a33323a223838373936653030333465343538613435646365653937643631396164323264223b733a33323a226331366135316464363966363439383537313535626435646637323438623137223b733a33323a226264326565346133323336313164643435376366386164623533336633646334223b733a33323a223735363939316437616235363237643864343165623235313261333764306636223b733a33323a223433366433326437336631326162393862363130343065353162386334623364223b733a33323a223230666539303530663461363438633265653833363663613430623762363937223b733a33323a223431616462313337346334333937356538313261383430653030363163353838223b733a33323a223733336339373338383938323734313935623233343338616531346334616561223b733a33323a223965393939636236636533623530386664303535376439616332363235343565223b733a33323a226162663837323838333535386132303132356130343632383563333832613866223b733a33323a226533316532323364653634613232396461633036386230666266353966643564223b733a33323a226134383762323432363030313536653432663838663862636562306238663233223b733a33323a223038393232353534663839653162633633633263313865353732323231636264223b733a33323a223062653534393936383163383164396233313430393835303362396431393138223b733a33323a223265343032656136663361643631336466646562623063613237343335633730223b733a33323a223130626132623138313639316438646361336131346237326561316233313232223b733a33323a226364383035303062323763306562363866333162613137386630646265343930223b733a33323a226463373862313835643964643339323139326263626138633939343366343230223b733a33323a223962323164656131303137663638366531656664613338626436373466346639223b733a33323a226635346633336161313463333430363238653065336539623862633232393939223b733a33323a223135306262383933666337333034383030303737643738313232353933303865223b733a33323a223132343561636666393633613632353230313933316637336263633436383032223b733a33323a226434363134633237643963626331626163626134663430316632633538346365223b733a33323a226438653432343033323533316637316339356665363835376463616433343234223b733a33323a226636636139633038306563653565653162656532623737623837306562383765223b733a33323a223232353734626562383066376265303436653564376163323133656163313939223b733a33323a223738303934356562386237323064343862346439303131623935323234633162223b733a33323a223134316638376338633530363239666566326266623737656437343038386261223b733a33323a223237346433313332663662633139666633613035353666643338636662666438223b733a33323a226565346464333931323635333430343635323439376266393034383232306433223b733a33323a226664623334333738303834313733383930616464373938383332306531646666223b733a33323a226361356439656336643530616662353261326234386663336137343661323035223b733a33323a226563343839626135643432616463613933383361356464663261336233636666223b733a33323a223731393138346339626466353134343836323838656436663364313461313262223b733a33323a223330666336623364663230313331313431346261663539366363386261333766223b733a33323a226433373831653439356431623030613237356332383963313835663133636435223b733a33323a223335306430626132393435353331376566643837656535646563623030323632223b733a33323a226563646162343966323531373836613866646365383637386338373830363265223b733a33323a226661646161393164653561303330336161333164623561316331326564643634223b733a33323a223662303063623861646239306532366463643030653837336539613230653462223b733a33323a226664386163343564316536313932653634623139346435373437623433326264223b733a33323a223965343831346336626134343562616330623631633535393336356438633631223b733a33323a223666623337373335646665623836623961313238623134303937333662303765223b733a33323a226233303234653866363139313530633338643332616536346665663966663337223b733a33323a223835373464363162613731343861383164326431633062383462336262343162223b733a33323a226131373236653536306638316338336338656362353336623135626161383861223b733a33323a223766626531613631386339613465396362623835623361333565666635646462223b733a33323a223062343566383430383636363539333338313733666239616233383532396137223b733a33323a223063653138386437663864616536336537613330333730373762383730663431223b733a33323a226531366666613361373934656563613662613562326361633563373033336261223b733a33323a223634393936316562653436646130316330303634353566373732316235383561223b733a33323a223434393635386334393738623033636161313838396564346539373637393664223b733a33323a226562613631656434626534383463303362373237646330333862386364663934223b733a33323a226564333031663634303731383962313265653538306337353064333739623863223b733a33323a223830623436613839663037343433363938303764643737313633633833313266223b733a33323a223235326433323030366239346262323430663136633862323637346632303836223b733a33323a223332363434633236346133666334353065376236623236653261353064633437223b733a33323a223039303836393937303733333065323536323537323230373736643734383336223b733a33323a226236616363663136346362626339653561326230353231303564656134336531223b733a33323a226236626564656630653238343330363531363133326538383339643638636235223b733a33323a226463383138353431343735353638373838386561346164363638663436636337223b733a33323a223437356237633739353038386536353761373439626233343136626464613233223b733a33323a223536653536303530663034626363666238363664363530303537633961666233223b733a33323a223966383663643635303430303763613465376232353336346131303530343637223b733a33323a223761383735643832393330663962366236393665626535313833613138313432223b733a33323a226463303836303738663232633264383166316336633432333536643634633637223b733a33323a226434393534323963653563396136313466633238626534386134633635666635223b733a33323a226434313234353134633662303135623931646363306365393665316431343963223b733a33323a223061303937306232343566633162613337623461396336373630363437303634223b733a33323a223334653663343831636432333964383663646139656261393065383164653731223b733a33323a226562373836383661323363353334633230396638363161646262383766653461223b733a33323a223035303132386231383230386239376531323065383661326137336436613864223b733a33323a223262313637313139323264653031323039383762316633653337623633373863223b733a33323a223535343062633134393961366539633666306365333039303863653736323164223b733a33323a223335656563303838623766646632666264346163323933313064376466333038223b733a33323a223331316661376639626335613831353065393838613432316431353939383365223b733a33323a226339623063336533376563633833356332323762643431623266306362313434223b733a33323a223162323235383230313263356664336137313935666262626337323032386533223b733a33323a223666643964363035353934353064383761343934626537373566366237613039223b733a33323a223364613563666130333532663031653834376138656662323765626361316562223b733a33323a223666393038376135643936623961376633306637353466336531393761303533223b733a33323a223866613862353236386237636339356337376435643330386131396138313663223b733a33323a226231326630303937393038656631343138613834663039623332303032653536223b733a33323a223631326364333862616635626236373862343665303131623831633364653761223b733a33323a226262393033623466663963326437666366623232316166616234386339383630223b733a33323a226561373533616363396264326466376332343337613739313463663961313738223b733a33323a226666396633336336326538363532333863666536363365383530386465386638223b733a33323a223664623439373535646237346432663836643235363863323939393937346238223b733a33323a226563336138613235616133386666303031646430313362633965383839613731223b733a33323a223137356562356633646133623135633966316635643634323163363431313832223b733a33323a223964393633633865366336656434326635336664653738353465383835313162223b733a33323a223331663639636264373963346632313435353164336564613438653264383266223b733a33323a223864323665366430666438626534666665646433376630363661306331643936223b733a33323a223164316335346233326239313365373831323864613832333939656237633733223b733a33323a223931333537353065333163333066306436316561336238343364356633346461223b733a33323a226236333838356162663737323339376130393932386134613139396137323936223b733a33323a226530623131333335343434663337356537643563646564353165383135313965223b733a33323a223862626664663063653961396261393831363365383362323862316535353730223b733a33323a223264373935623334343832306462653139323565633732323366633164663530223b733a33323a223766653163346565313339336632333661323363303839313333373662623264223b733a33323a223730373037663163323961636534333966386231643961353265623739366361223b733a33323a226634346536396662633933626235323132613265623165383064393561306537223b733a33323a223662656262363439623537323731333235356331653337643038663135323839223b733a33323a226162666530663636313935313832363062336338313064646665383236396462223b733a33323a226130626639333666336466633466323662323535353264653733363963363564223b733a33323a223461643833613538636533343431626436653732316263613265323932366632223b733a33323a226235353564326332383161623630316166613563663433393338366336663930223b733a33323a223231316536633232366363643537396333303132633832383833663036643132223b733a33323a226431643066313533636362616431383439646230323637386133383266613437223b733a33323a223538646265323963623033363532643333376563333833396136373866353265223b733a33323a223039616531376235643635383439313664376636303766653838373264636661223b733a33323a226365373839353435643762616361373564393632636163663165623965303732223b733a33323a223664393365356437306636353765366534623136383635303466623336656438223b733a33323a223863623135626438626436663039383866396261623239313636333730656332223b733a33323a223666623032323065643565663437366338346635343634616131373135323730223b733a33323a226466663134343664653135663566383335633633653531353631343732373730223b733a33323a226165613033663861613465366638346634626539303933306262316432376665223b733a33323a226539353433356539646666333532393731356436366533323730303565373265223b733a33323a223732396531633834656134386134386534393065613935303762616232333139223b733a33323a226463656666633835316564303036373966316263326538393265353539653162223b733a33323a223061313539383765393464383535636134636235316664363266303434373637223b733a33323a226339323262656639653962623031396330656334306535613734373239616236223b733a33323a226532623664333666303836303336623235356662656530353064313531666639223b733a33323a226363643265323565303663386361343434333638626136663030633537623330223b733a33323a223031313365376436333932323634336531366265316635353163646631353766223b733a33323a223939316536366134663563356466343762356264323730356463663632636263223b733a33323a223037353765303363356165333539373361643339656162356661623532323133223b733a33323a223166303463383038306338613235356532643039613462343862386361623536223b733a33323a226132396430663130343766613964363365636130396633636436336637663065223b733a33323a223538376562663062656464306538373666313535386536343234313230343231223b733a33323a226135383930313038636135653733373262633561386132353163643231663830223b733a33323a226661383333663433653433636533613266663634613134633464653264336237223b733a33323a226535356438666362643566663231623062306433323730386265356665326162223b733a33323a223834313461626262373436313166303362313664393765343538353363383637223b733a33323a223031343732353465313135303932326138613032633235363037306339653965223b733a33323a223061333533393535316161333235303861313739353935393666613566643031223b733a33323a223432653962326632303733646664326434643734346535333166653961346334223b733a33323a226566343730656333356263313433373934616463646330303438366466333937223b733a33323a226430346234343931363931626332336365396230316138656131373039643261223b733a33323a223135653933333431346463363831616132643339613536653663333132613165223b733a33323a223137373938323238383630383339306338326461646563646133353461616634223b733a33323a226432613034326331303536653936656163386330393462313137386433623263223b733a33323a223530303434336566636135376632366333646235613861663663373462363165223b733a33323a223263363766623537353761393938646437633232313631323864653266656231223b733a33323a226337663833613934346537366536633362656165353861626333643431323532223b733a33323a226436326466303861366239396534353636363964323664373763663230333837223b733a33323a223030653439386231613161353631326530626130346466393234396332303931223b733a33323a226132633331376461386362663737323734363662386263306664656630343633223b733a33323a223166666435663537393734326461623461373339666236373261653164363363223b733a33323a223965663131313437633838656566623735303238656536386637643235663464223b733a33323a226662663165393663376534623164623261656635613761633238323635373165223b733a33323a226235623066323336666536366539346434313432333762313639333630343761223b733a33323a223464356366656634636661643132396633376564663061353830366531333664223b733a33323a223138623736646662666561633163636531306337303166303436613466326261223b733a33323a226433623563326437336539363930343935316536323363663237333336393037223b733a33323a223336386464396134363639663933636265623239343663353966613962303539223b733a33323a223135323939623737393238376338333139663662323331373331306139323664223b7d733a343a2268617368223b733a36353a2231353239396237373932383763383331396636623233313733313061393236642d3336386464396134363639663933636265623239343663353966613962303539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1791497557);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"benjelloun.touimi.maroua@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"webp\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Omeka S Local\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/webp\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"1\"'),
('version', '\"4.2.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'benjelloun.touimi.maroua@gmail.com', 'Maroua Benjelloun Touimi', '2026-10-07 21:18:43', '2026-10-07 21:18:44', '$2y$10$XlTS4JoL8oAQwfcOLymacuZiTAgvKyEm65yW7Iw.gJINRv2pI9yH2', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, NULL, 'literal', '', 'Exercise 8 - Gathering Evidence', NULL, 1),
(2, 1, 4, NULL, NULL, 'literal', '', 'Exercice de collecte de preuves dans lequel plusieurs modèles exécutent des tâches et produisent des réponses.', NULL, 1),
(3, 1, 185, NULL, NULL, 'literal', '', 'exercise-8', NULL, 1),
(4, 2, 1, NULL, NULL, 'literal', '', 'Partner 1', NULL, 1),
(5, 2, 4, NULL, NULL, 'literal', '', 'Partenaire responsable de l\'attribution des codes aux modèles et de la fourniture des tâches.', NULL, 1),
(6, 2, 185, NULL, NULL, 'literal', '', 'partner-1', NULL, 1),
(7, 2, 188, NULL, NULL, 'literal', '', 'Partner 1', NULL, 1),
(8, 3, 1, NULL, NULL, 'literal', '', 'Model 1', NULL, 1),
(9, 3, 4, NULL, NULL, 'literal', '', 'Modèle d\'IA testé dans le cadre de l\'exercice.', NULL, 1),
(10, 3, 185, NULL, NULL, 'literal', '', 'model-1', NULL, 1),
(11, 3, 188, NULL, NULL, 'literal', '', 'Model 1', NULL, 1),
(12, 4, 1, NULL, NULL, 'literal', '', 'Model 2', NULL, 1),
(13, 4, 4, NULL, NULL, 'literal', '', 'Modèle d\'IA testé dans le cadre de l\'exercice.', NULL, 1),
(14, 4, 185, NULL, NULL, 'literal', '', 'model-2', NULL, 1),
(15, 4, 188, NULL, NULL, 'literal', '', 'Model 2', NULL, 1),
(16, 5, 1, NULL, NULL, 'literal', '', 'Model 3', NULL, 1),
(17, 5, 4, NULL, NULL, 'literal', '', 'Modèle d\'IA testé dans le cadre de l\'exercice.', NULL, 1),
(18, 5, 185, NULL, NULL, 'literal', '', 'model-3', NULL, 1),
(19, 5, 188, NULL, NULL, 'literal', '', 'Model 3', NULL, 1),
(20, 6, 1, NULL, NULL, 'literal', '', 'Model 4', NULL, 1),
(21, 6, 4, NULL, NULL, 'literal', '', 'Modèle d\'IA testé dans le cadre de l\'exercice.', NULL, 1),
(22, 6, 185, NULL, NULL, 'literal', '', 'model-4', NULL, 1),
(23, 6, 188, NULL, NULL, 'literal', '', 'Model 4', NULL, 1),
(24, 7, 1, NULL, NULL, 'literal', '', 'Giraffe', NULL, 1),
(25, 7, 4, NULL, NULL, 'literal', '', 'Code animal attribué à un modèle.', NULL, 1),
(26, 7, 188, NULL, NULL, 'literal', '', 'giraffe', NULL, 1),
(27, 8, 1, NULL, NULL, 'literal', '', 'Sloth', NULL, 1),
(28, 8, 4, NULL, NULL, 'literal', '', 'Code animal attribué à un modèle.', NULL, 1),
(29, 8, 188, NULL, NULL, 'literal', '', 'sloth', NULL, 1),
(30, 9, 1, NULL, NULL, 'literal', '', 'Dragon', NULL, 1),
(31, 9, 4, NULL, NULL, 'literal', '', 'Code animal attribué à un modèle.', NULL, 1),
(32, 9, 188, NULL, NULL, 'literal', '', 'dragon', NULL, 1),
(33, 10, 1, NULL, NULL, 'literal', '', 'Turkey', NULL, 1),
(34, 10, 4, NULL, NULL, 'literal', '', 'Code animal attribué à un modèle.', NULL, 1),
(35, 10, 188, NULL, NULL, 'literal', '', 'turkey', NULL, 1),
(36, 11, 1, NULL, NULL, 'literal', '', 'Gathering Evidence', NULL, 1),
(37, 11, 4, NULL, NULL, 'literal', '', 'Tâche de collecte de preuves réalisée par les modèles dans le cadre de l\'exercice.', NULL, 1),
(38, 11, 185, NULL, NULL, 'literal', '', 'task-1', NULL, 1),
(39, 11, 188, NULL, NULL, 'literal', '', 'Gathering Evidence', NULL, 1),
(40, 11, 189, NULL, NULL, 'literal', '', 'Collecter les preuves demandées par l\'exercice et produire une réponse.', NULL, 1),
(41, 12, 1, NULL, NULL, 'literal', '', 'Exercice 8 - Formulaire', NULL, 1),
(42, 12, 4, NULL, NULL, 'literal', '', 'Document associé à l\'exercice de collecte de preuves.', NULL, 1),
(43, 12, 185, NULL, NULL, 'literal', '', 'document-1', NULL, 1),
(44, 12, 188, NULL, NULL, 'literal', '', 'Exercice 8 - Formulaire', NULL, 1),
(45, 12, 190, NULL, NULL, 'literal', '', 'formulaire', NULL, 1),
(46, 13, 1, NULL, NULL, 'literal', '', 'Response 1', NULL, 1),
(47, 13, 4, NULL, NULL, 'literal', '', 'Réponse produite par un modèle dans le cadre de la tâche.', NULL, 1),
(48, 13, 185, NULL, NULL, 'literal', '', 'response-1', NULL, 1),
(49, 13, 191, NULL, NULL, 'literal', '', 'task-1', NULL, 1),
(50, 13, 192, NULL, NULL, 'literal', '', 'giraffe', NULL, 1),
(51, 13, 193, NULL, NULL, 'literal', '', 'Réponse de test du modèle 1 pour la tâche Gathering Evidence.', NULL, 1),
(52, 14, 1, NULL, NULL, 'literal', '', 'Response 2', NULL, 1),
(53, 14, 4, NULL, NULL, 'literal', '', 'Réponse produite par un modèle dans le cadre de la tâche.', NULL, 1),
(54, 14, 185, NULL, NULL, 'literal', '', 'response-2', NULL, 1),
(55, 14, 191, NULL, NULL, 'literal', '', 'task-1', NULL, 1),
(56, 14, 192, NULL, NULL, 'literal', '', 'sloth', NULL, 1),
(57, 14, 193, NULL, NULL, 'literal', '', 'Réponse de test du modèle 2 pour la tâche Gathering Evidence.', NULL, 1),
(58, 15, 1, NULL, NULL, 'literal', '', 'Response 3', NULL, 1),
(59, 15, 4, NULL, NULL, 'literal', '', 'Réponse produite par un modèle dans le cadre de la tâche.', NULL, 1),
(60, 15, 185, NULL, NULL, 'literal', '', 'Réponse produite par un modèle dans le cadre de la tâche.', NULL, 1),
(61, 15, 191, NULL, NULL, 'literal', '', 'task-1', NULL, 1),
(62, 15, 192, NULL, NULL, 'literal', '', 'dragon', NULL, 1),
(63, 15, 193, NULL, NULL, 'literal', '', 'Réponse de test du modèle 3 pour la tâche Gathering Evidence.', NULL, 1),
(64, 16, 1, NULL, NULL, 'literal', '', 'Response 4', NULL, 1),
(65, 16, 4, NULL, NULL, 'literal', '', 'Réponse produite par un modèle dans le cadre de la tâche.', NULL, 1),
(66, 16, 185, NULL, NULL, 'literal', '', 'response-4', NULL, 1),
(67, 16, 191, NULL, NULL, 'literal', '', 'task-1', NULL, 1),
(68, 16, 192, NULL, NULL, 'literal', '', 'turkey', NULL, 1),
(69, 16, 193, NULL, NULL, 'literal', '', 'Réponse de test du modèle 4 pour la tâche Gathering Evidence.', NULL, 1),
(70, 1, 194, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(71, 1, 195, 3, NULL, 'resource', NULL, NULL, NULL, 1),
(72, 1, 195, 4, NULL, 'resource', NULL, NULL, NULL, 1),
(73, 1, 195, 5, NULL, 'resource', NULL, NULL, NULL, 1),
(74, 1, 195, 6, NULL, 'resource', NULL, NULL, NULL, 1),
(75, 2, 196, 3, NULL, 'resource:item', NULL, NULL, NULL, 1),
(76, 2, 196, 4, NULL, 'resource:item', NULL, NULL, NULL, 1),
(77, 2, 196, 5, NULL, 'resource:item', NULL, NULL, NULL, 1),
(78, 2, 196, 6, NULL, 'resource:item', NULL, NULL, NULL, 1),
(79, 2, 197, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(80, 3, 198, 7, NULL, 'resource:item', NULL, NULL, NULL, 1),
(81, 4, 198, 8, NULL, 'resource:item', NULL, NULL, NULL, 1),
(82, 5, 198, 9, NULL, 'resource:item', NULL, NULL, NULL, 1),
(83, 6, 198, 10, NULL, 'resource:item', NULL, NULL, NULL, 1),
(84, 3, 199, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(85, 4, 199, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(86, 5, 199, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(87, 6, 199, 11, NULL, 'resource:item', NULL, NULL, NULL, 1),
(88, 3, 200, 13, NULL, 'resource:item', NULL, NULL, NULL, 1),
(89, 4, 200, 14, NULL, 'resource:item', NULL, NULL, NULL, 1),
(90, 5, 200, 15, NULL, 'resource:item', NULL, NULL, NULL, 1),
(91, 6, 200, 16, NULL, 'resource:item', NULL, NULL, NULL, 1),
(92, 11, 201, 12, NULL, 'resource:item', NULL, NULL, NULL, 1),
(93, 11, 202, 13, NULL, 'resource:item', NULL, NULL, NULL, 1),
(94, 11, 202, 14, NULL, 'resource:item', NULL, NULL, NULL, 1),
(95, 11, 202, 15, NULL, 'resource:item', NULL, NULL, NULL, 1),
(96, 11, 202, 16, NULL, 'resource:item', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'https://humanum-p8.fr/omk_artificialinquiries/onto/artinq#', 'artinq', 'Artificial Inquiries', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`),
  ADD KEY `media_type` (`media_type`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `is_public` (`is_public`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
