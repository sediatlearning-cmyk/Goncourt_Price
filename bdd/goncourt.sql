-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 03 sep. 2026 à 06:39
-- Version du serveur : 8.4.7
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `goncourt`
--

-- --------------------------------------------------------

--
-- Structure de la table `go_book`
--

DROP TABLE IF EXISTS `go_book`;
CREATE TABLE IF NOT EXISTS `go_book` (
  `bo_isbn` bigint NOT NULL AUTO_INCREMENT,
  `bo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bo_resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bo_pages_number` int NOT NULL,
  `bo_id_author` int NOT NULL,
  PRIMARY KEY (`bo_isbn`),
  KEY `bo_id_author` (`bo_id_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_book`
--

INSERT INTO `go_book` (`bo_isbn`, `bo_title`, `bo_resume`, `bo_pages_number`, bo_id_author) VALUES
(9782080490896,"L'inconnue du quai de Javel","Le 6 septembre 1949, une jeune femme est retrouvée morte quai de Javel, à Paris, sans sac ni chaussures, manifestement rhabillée à la hâte puis déposée là par son assassin. 
Elle est identifiée le lendemain : c'est Louise Cansot, le modèle le plus demandé par les peintres de Montparnasse. 
Rapidement, quatre suspects se détachent, évidents, presque des archétypes. 
On dirait le début d'un roman de Simenon, mais l'inspecteur-chef Ferrière n'a pas le talent de Maigret, et doit se résoudre à classer l'affaire au bout de six mois, sans avoir arrêté personne.
Soixante-quinze ans plus tard, Philippe Jaenada reprend l'enquête à partir du dossier retrouvé puis, comme à son habitude, sollicite ses contacts aux archives, exhume tous les documents, arpente tous les lieux - remonte le temps.
Pour ce livre, il a lu les soixante-quinze enquêtes de Maigret, s'inspirant humblement et fidèlement des méthodes du commissaire fictif. 
Et il va résoudre ce meurtre bien réel, laissant le lecteur subjugué par la dextérité de son investigation et fasciné par cette jeune femme à laquelle il redonne un visage et une histoire.",528,1),

(9782330225575,"Nous aussi","On fait partie d'une grande famille. On sait qu'on est privilégiés. 
On vit ensemble, dans notre immeuble au centre de Paris, on se retrouve l'été dans notre maison à la montagne. 
On trouve que c'est normal. C'est chez nous, c'est à nous, c'est pour nous. On se ressemble, on se compare, on se confronte, on ne se quitte pas, on se confond, on s'appartient. 
On ne sait pas comment dire je, on n'en a pas besoin, puisqu'on est nous. 
Nous les enfants, les frères et soeurs, les cousins, les cousines, on partage tout, nos écoles, nos chambres, nos habits, nos repas, nos jeux, nos bains, nos lits. 
On est les membres indissociables du grand corps familial. On n'a jamais vécu dehors. On ne sait pas ce que c'est. On n'en est pas capables. On n'en a même pas envie. 
Et tout aurait dû continuer ainsi, dans un même immuable recommencement. Le jour où la façade s'est fissurée, on n'a pas compris. Ça n'aurait pas dû se produire, pas dans notre famille. 
Ce n'était pas possible que ça nous arrive, à nous aussi.",237, 2),

(9782073161925,"La solitude des professeurs est infinie","Jean Deichel, jeune professeur de français, fait son stage dans un collège de la banlieue parisienne. 
La nuit, il loge dans un club de tennis à Deuil-la-Barre ; le jour, il découvre les difficultés du métier en même temps que ses joies profondes, la violence de l'École en même temps que sa beauté.
Jean est aussi un poète ivre d'aventure, attentif à trouver la lumière de la « vraie vie » au coeur du quotidien le plus gris : dans des jardins réels ou rêvés, au bord d'un lac, lors d'évasions à Pompéi et à Tarquinia, mais surtout dans la grâce fragile d'un cours réussi.
Entre réalité politique et mystère existentiel, la vie des profs est un roman.",313,3),

(9782073099945,"Je","JE
« - Que savez-vous de la beauté, Antoinette ? Il se tourna vers moi, suspendu à ma réponse. 
- Pas grand-chose. 
Mais je sais la reconnaître quand elle est là. 
- Eh bien moi, chaque fois que je la vois, elle me blesse. 
Quand je vois votre visage, par exemple, quelque chose en moi se trouve comme ébranlé. »
île de la Jamaïque, 1831. Antoinette Cosway, créole de bonne famille, s'éprend d'Edward Rochester, un Anglais aussi impénétrable que fascinant. 
Mais à la séduction enflammée succèdent rapidement des scènes vénéneuses, où les baisers sont des blessures, où toute une société livre la jeune femme à son bourreau.
Des années plus tard, Antoinette tente de conquérir sa propre histoire.
JE se situe à mi-chemin entre roman victorien et thriller intimiste contemporain. 
Lilia Hassaine s'est inspirée du personnage de la première femme de Rochester dans Jane Eyre, le roman culte de Charlotte Brontë. 
Elle a choisi de lui donner une voix, un corps, une destinée.",248,4),

(9782221286807,"Le fabuleux piano","Après le succès littéraire et commercial de son récit Les Exportés , Sonia Devillers part à la recherche d'un admirable piano à queue, volé par les nazis en 1943. 
Ce qu'elle nous raconte est bouleversant, instructif, et magistralement mené.
Le fabuleux piano est un instrument volé par les Allemands, en 1943, à des juifs qui le cherchent encore... 
Dans ce vide impossible à combler, Sonia Devillers entend une résonance intime, le souvenir d'un instrument que sa propre grand-mère, forcée à l'exil, a regretté toute sa vie. 
Elle part alors sur les traces des pianos fantômes pillés par milliers sous l'Occupation et transportés jusqu'aux confins du IIIe Reich.
Avec cet instrument de concert ressurgit l'incroyable destin d'une famille d'éditeurs de musique, les Enoch. 
Un siècle de partitions, des menuets de Ravel aux ritournelles de Prévert. Les nazis se sont acharnés sur les Enoch, mais ils ont échoué à les réduire au silence. 
Des douleurs de la guerre va naître une chanson portée par Yves Montand, Les Feuilles mortes : un triomphe mondial.
Le piano disparu continue pourtant de hanter les survivants...",280,5),

(9782818063583,"Faire la peau","Je dis que l'une des plus tenaces fictions tient tout entière dans ce mot, mère. 
Que la haine qui circule entre les mères et leurs filles est sauvage, et qu'il faut la regarder droit dans les yeux.",286,6),

(9782073121349,"La guerre éternelle : souvenirs de Troie" ,"La guerre éternelle
« Pour donner à ma longue rêverie la forme d'un livre, j'avais besoin de voir. 
De la terre, des pierres, des arbres, un rivage. J'ai toujours besoin de voir. 
Je suis allé en Troade à la fin d'un mois de juin, alors que les coquelicots jetaient de grandes flaques rouges au milieu des champs de blé et d'oliviers où jadis s'affrontaient les héros. »
Il y a quelque trente-trois siècles, des guerriers grecs ravagent une cité d'Asie Mineure qu'ils appellent Troïa ou Ilios. 
Les hommes sont massacrés, les femmes traînées en esclavage. C'était dans la nuit des temps, mais grâce à l'Iliade cela vit toujours dans notre mémoire. 
C'était, aussi bien, hier, aujourd'hui, demain : la tragédie de la destruction d'une ville n'a cessé d'être réécrite en lettres de feu et de sang depuis Carthage un siècle et demi avant notre ère jusqu'à Dresde et Hiroshima, Marioupol et Gaza de nos jours. 
La guerre de Troie est éternelle, et Troie est la Mère de toutes les villes martyrisées.",219,7),

(9782246846949,"Chronique d'un royaume perdu","Au Bouchon, petit village isolé de l’île Maurice, quatre générations se succèdent depuis le temps de l’esclavage. 
La violence se mêle à l’amour, la tendresse à la haine, les plus nobles passions aux vices les plus vils, les sangs des unes aux sangs des autres…
Les cinq fondateurs viennent d’une plantation lointaine  : trois sont nés dans la puissante et blanche famille Dumontais  ; deux d’une esclave noire. 
Mais les trois blancs sont en vérité le fruit d’une passion entre Madame et le Vieux Bouc, un esclave magnétique qui revendique aussi la paternité des deux derniers. 
Bannis pour s’être liés d’amour et d’amitié, les cinq enfants devenus grands trouvent refuge dans ce lieu perdu dont ils font leur royaume, autarcique et magique, qu’ils défendent d’un seul corps, puisqu’ici sont abolies les frontières entre passé, présent et avenir  ; vie et mort  ; réel et fantastique.
Tel homme entend sans le vouloir tous les péchés humains  ; telle femme meurt et renait en déesse protectrice  ; un enfant vit parmi les oiseaux quand son cousin viole et tue sans frein  ; le moulin est hanté par les voix des fantômes, la nature donne les plus beaux fruits mais décapite la chapelle  ; 
les guerres du monde contemporain rencontrent les combats intérieurs de chaque individu et l’histoire de l’humanité se reproduit dans l’infiniment petit de leurs existences débridées. 
Parmi eux, un enfant timide sera le chroniqueur de ce royaume hors-norme dont il livre les jours de paix, de luttes, et les nuits de folie pour empêcher l’oubli.
Épopée fabuleuse,  mythologie vibrante, fable majestueuse, cette Chronique d’un Royaume perdu est le chef d’œuvre d’Ananda Devi.",454,8),

(9782707358233,"De l'autre côté du lac","« Paola était comme ça. Elle était entière. 
Elle voulait toujours que tout soit vrai, les rapports humains, les discussions, les rencontres, les projets dans lesquels elle s’engageait. 
Elle ne supportait pas les faux-semblants, les demi-mesures. Elle était d’un bloc. Elle disait les mots ont de la valeur. Les actes ont de la valeur. 
Elle voulait qu’il y ait de l’enjeu. C’est dans l’inconfort qu’on se découvre, elle disait. C’est dans l’inconfort qu’on grandit. »
Aux abords d’un lac de haute montagne, à la lisière d’une réserve interdite aux humains, un groupe de chercheurs s’affaire. 
Parmi eux, une photographe aperçoit sur un des versants quelque chose qui échappe au regard de tous les autres. 
Les signes étranges s’accumulent, un corps est retrouvé. La photographe décide de rester là-haut, seule. 
Quelques mois plus tard, c’est elle qui, à son tour, disparaît. 
Avec ce roman tout en tension, Sylvain Prudhomme approfondit plusieurs thèmes qui lui sont chers : le désir d’intensité, l’appel du sauvage, le rêve d’une vie vraie.",279,9),

(9782073162854,"Choses que je croyais perdues","« Je voulais te dire : sans le faire exprès, j'ai cassé le verre à moutarde Musclor que lu aimais bien. 
Le prince sous stéroïdes mal imprimé a perdu sa tête, mais il continue de flatter d'une main distraite l'encolure de son tigre vert de compagnie, Tu avais trouvé ce verre dans un vide-greniers où les gens vendaient pas cher de jolies choses. 
Après l'avoir regardé longtemps, avec intensité, tu l'avais négocié à deux euros. 
C'était un souvenir d'enfance et ta joie m'avait attendrie. Ça allait encore entre nous à ce moment-là, enfin je crois. »
Seule dans son appartement, une jeune femme emballe ses affaires. Demain, des déménageurs emporteront ces traces fragiles de son existence. 
Elle pense à l'homme dont elle vient de se séparer, et des histoires surgissent des objets qu'elle manipule. 
Une assiette au filet d'or, un ensemble H&M couleur poil de chameau, un rouleau de Sopalin : ces témoins d'une vie ordinaire ont autant à raconter qu'un trépidant roman d'aventures...
Que reste-t-il de ce que nous avons vécu ? De quelles légendes sommes-nous faits ? 
Les grandes amours comme les petits riens, les désillusions et les désirs sont au coeur de ce roman plein de surprises, à la fantaisie incomparable.",162,10),

(9782226511874,"Minotaure","« Être l'indésiré, né hors du désir du père, voilà mon acte de naissance. 
J'y réponds par un désir extrême, une surenchère d'histoires vécues... ou racontées. 
Après tout, le Minotaure est un Forçat du sentiment. Forcé d'aimer tous ceux qu'il rencontre. 
Avant de les dévorer. »",242,11),

(9782226499523,"Une forêt ","« Le capitaine Lenz finissait par se prendre au jeu. 
S'il n'avait aucun intérêt dans l'affaire, c'est qu'il ne la comprenait pas. 
Mais sa curiosité était piquée. 
Et puis, défendre la cause de ces oiseaux allemands, démontrer qu'ils n'étaient pas de fervents nazis représentait somme toute une occupation préférable à l'ennui. »",106,12),

(9782378805975,"Joseph dans la nuit","Voyageur épris d'ailleurs, de stop et de liberté, Olivier est en route vers Lahore pour fêter la nouvelle année sur une plage indienne. 
En traversant l'Iran, il est arrêté à Chiraz alors qu'explose le mouvement Femme, Vie, Liberté. Accusé d'espionnage, il reste deux ans et demi en prison.
Olivier est un poète, habitué à vivre de peu, sans confort ni téléphone portable. 
En cellule, il mobilise tout ce qui peut lui apporter de la lumière, la poésie persane comme les chansons de Britney Spears.
Derrière ses paupières, installé dans un cinéma dont il est le seul spectateur, il se projette des films. 
La nuit, il convoque dans ses rêves les êtres aimés.
Un récit lumineux et bouleversant qui nous dit que, même dans la nuit, quelque chose en nous refusera toujours de céder. 
La découverte d'un écrivain.",	230,13),

(9782378562953,"N'efface pas mes cercles","1980, une femme se suicide dans un appartement cossu. 
Dans les années cinquante, elle s'était unie avec un jeune homme à qui tout l'opposait.
Explorant son histoire familiale, la narratrice tente de démêler les raisons de ce drame et dresse ce faisant le portrait d'une société aux prises avec ses démons : le patriarcat, la guerre, la colonisation, les injonctions à la réussite et au bonheur.
N'efface pas mes cercles remonte le temps à la recherche des destins brisés et restitue avec force l'atmosphère des époques traversées. 
Cette saga bouleversante confirme le grand art d'Emma Marsantes.",153,14),

(9782862316857,"Bataille au procès","En 1956, Georges Bataille est appelé à témoigner au procès de Jean-Jacques Pauvert, poursuivi pour avoir publié les œuvres de Sade. 
L’auteur d'Histoire de l'oeil comprend que la morale menace de mort la littérature. L’audience devient le miroir de sa propre vie. 
Les souvenirs affluent : enfance marquée par la folie d’un père aveugle et paralytique, l’indifférence d’une mère réfugiée dans la religion. 
Des événements qui ont émaillé son parcours surgissent : expériences limites dans ses amours placées sous l’égide de la transgression, visions de guerre et de sacrifice qui le hantent, traversée du mal, liens tourmentés avec le parti communiste, haine du fascisme… 
Réflexions et fulgurances se mêlent en un vertige où pensée et vie s’entrelacent, entre érotisme et sacré, extase et mort. Mais derrière ces éclats affleure aussi une énigme plus obscure. 
Refusera-t-elle de se dévoiler ?À travers cet épisode de la vie littéraire, Patrice Trigano accompagne Bataille au plus près de son vertige intérieur. 
Il explore ce point où l’écriture n’obéit plus à l’auteur, où l’œuvre surgit comme une puissance étrangère, excessive, qui le dépasse.
Patrice Trigano a fait des études de droit et de philosophie avant de consacrer sa vie à l’art en tant que galeriste, écrivain et dramaturge. 
Ses livres sont publiés aux éditions de la Différence, Léo Scheer, Mercure de France et Maurice Nadeau. 
Il a publié en 2024, La Promesse de l’art, Mémoires d’un galeriste aux Éditions du Canoë.",136,15),

(9782246847069,"C'était ça ou mourir","Le premier roman de Thélyson Orélien est déjà le phénomène littéraire de l’année 2026. 
En cours de traduction dans plus d’une vingtaine de langues, C’était ça ou mourir a conquis le Québec et bientôt le monde entier, en racontant l’Odyssée de Jonas Dorléon.
Après l’embrasement de son quartier de Port-au-Prince, Jonas n’emporte presque rien avec lui en quittant Haïti : un diplôme, un cahier de poèmes, la photo de sa mère. 
Toute une vie dans un sac plastique. 
Se réfugiant d’abord en République dominicaine, puis au Brésil et au Mexique, ce professeur d’histoire franchit les frontières tantôt à bord d’un autobus surchauffé, tantôt en affrontant les profondeurs de la jungle. 
À chaque étape des visages surgissent, des corps tombent, des solidarités se nouent puis se brisent. 
Dans l’espoir d’atteindre le Canada et le peu de famille qu’il lui reste, Jonas se retrouve aux portes des États-Unis, seul face aux agents de l’ICE et d’une administration prête à tout pour mener sa chasse aux migrants.
Avec la trajectoire de Jonas, c’est une cartographie intime de la survie qui se dévoile. 
Aussi contemporain qu’universel, ce roman raconte les migrations au présent — non comme un concept, mais comme une expérience physique : marcher, avoir faim, se blesser, rire devant l’horreur pour ne pas abandonner. 
Thélyson Orélien y déploie une écriture foisonnante, traversée d’humour et de poésie, une langue d’exil qui s’apprend « sans grammaire, sans dictionnaire, juste avec les os et la peau ».
Porté par un souffle narratif irrésistible, C’était ça ou mourir est un premier roman bouleversant qui révèle un écrivain majeur de notre temps.",266,16);

-- --------------------------------------------------------

--
-- Structure de la table `go_book_editor`
--

DROP TABLE IF EXISTS `go_book_editor`;
CREATE TABLE IF NOT EXISTS `go_book_editor` (
  `bo_ed_isbn` bigint NOT NULL,
  `bo_ed_id_editor` int NOT NULL,
  `bo_ed_editor_price` decimal(10,2) NOT NULL,
  `bo_ed_publication_date` datetime NOT NULL,
  PRIMARY KEY (`bo_ed_isbn`,`bo_ed_id_editor`),
  KEY `bo_ed_id_editor` (`bo_ed_id_editor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_book_editor`
--

INSERT INTO `go_book_editor` (`bo_ed_isbn`, `bo_ed_id_editor`, `bo_ed_editor_price`, `bo_ed_publication_date`) VALUES
(9782080490896,1,23.00,Date(2026-8-12)),
(9782330225575,2,20.00,Date(2026-8-19)),
(9782073161925,3,21.50,Date(2026-8-20)),
(9782073099945,3,21.00,Date(2026-8-20)),
(9782221286807,4,21.00,Date(2026-8-27)),
(9782818063583,5,21.00,Date(2026-8-20)),
(9782073121349,3,20.00,Date(2026-8-20)),
(9782246846949,6,24.00,Date(2026-8-19)),
(9782707358233,7,22.00,Date(2026-8-27)),
(9782073162854,3,19.00,Date(2026-8-20)),
(9782226511874,8,20.90,Date(2026-8-19)),
(9782226499523,8,16.90,Date(2026-1-2)),
(9782378805975,9,19.90,Date(2026-8-20)),
(9782378562953,10,19.50,Date(2026-8-20)),
(9782862316857,11,19.00,Date(2026-8-21)),
(9782246847069,6,21.50,Date(2026-8-19));

-- --------------------------------------------------------

--
-- Structure de la table `go_editor`
--

DROP TABLE IF EXISTS `go_editor`;
CREATE TABLE IF NOT EXISTS `go_editor` (
  `ed_id_editor` int NOT NULL AUTO_INCREMENT,
  `ed_editor_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY editor (`ed_id_editor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_editor`
--

INSERT INTO `go_editor` (`ed_id_editor`, `ed_editor_name`) VALUES
(1,"Flammarion"), 
(2,"Actes Sud"),
(3,"Gallimard"),
(4,"R. Laffont"), 
(5,"POL"),
(6,"Grasset"),
(7,"Minuit"),
(8,"Albin Michel"),
(9,"l'Iconoclaste"),
(10,"Verdier"),
(11,"M. Nadeau");

-- --------------------------------------------------------

--
-- Structure de la table `go_author`
--

DROP TABLE IF EXISTS `go_author`;
CREATE TABLE IF NOT EXISTS `go_author` (
  `au_id_author` int NOT NULL AUTO_INCREMENT,
  `au_biography` text,
  `au_id_user` int NOT NULL,
  PRIMARY KEY (`au_id_author`),
  KEY `au_id_user` (`au_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_author`
--

INSERT INTO `go_author` (`au_id_author`, `au_biography`, au_id_user) VALUES
(1,'',1),
(2,'',2),
(3,'',3),
(4,'',4),
(5,'',5),
(6,'',6),
(7,'',7),
(8,'',8),
(9,'',9),
(10,'',10),
(11,'',11),
(12,'',12),
(13,'',13),
(14,'',14),
(15,'',15),
(16,'',16);

-- --------------------------------------------------------

--
-- Structure de la table `go_user`
--

DROP TABLE IF EXISTS `go_user`;
CREATE TABLE IF NOT EXISTS `go_user` (
  `us_id_user` int NOT NULL AUTO_INCREMENT,
  `us_lastname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_firstname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`us_id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_user`
--

INSERT INTO `go_user` (`us_id_user`, `us_lastname`, `us_firstname`) VALUES
(1,"JAENADA","PHILIPPE"),
(2,"GODART","ANNE"),
(3,"HAENEL","YANNICK"),
(4,"HASSAINE","LILIA"),
(5,"DEVILLERS","SONIA"),
(6,"CHENNEVIERE","LOUISE"),
(7,"ROLIN","OLIVIER"),
(8,"DEVI","ANANDA"),
(9,"PRUDHOMME","SYLVAIN"),
(10,"MELOIS","CLEMENTINE"),
(11,"BERGMANN","BORIS"),
(12,"JOUANNAIS","JEAN-YVES"),
(13,"GRONDEAU","OLIVIER"),
(14,"MARSANTES","EMMA"),
(15,"TRIGANO","PATRICE"),
(16,"ORELIEN","THELYSON"),
(17,"DECOIN","DIDIER"),
(18,"CHANDERNAGOR","FRANCOISE"),
(19,"BEN JELLOUM","TAHAR"),
(20,"CONSTANT","PAULE"),
(21,"CLAUDEL","PHILIPPE"),
(22,"ASSOULINE","PIERRE"),
(23,"SCHMITT","ERIC-EMMANUEL"),
(24,"LAURENS","CAMILLE"),
(25,"BRUCKNER","PASCAL"),
(26,"ANGOT","CHRISTINE");

-- --------------------------------------------------------

--
-- Structure de la table `go_character`
--

DROP TABLE IF EXISTS `go_character`;
CREATE TABLE IF NOT EXISTS `go_character` (
  `cha_id_character` int NOT NULL AUTO_INCREMENT,
  `cha_character_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cha_isbn` bigint NOT NULL,
  PRIMARY KEY (`cha_id_character`),
  KEY `cha_isbn` (`cha_isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_character`
--

INSERT INTO `go_character` (`cha_id_character`, `cha_character_name`, `cha_isbn`) VALUES
(1,"Louise Cansot",9782080490896),
(2,"L'inspecteur-chef Ferrière",9782080490896),
(3,"Le narrateur",9782330225575),
(4,"Jean Deichel",9782073161925),
(5,"Antoinette Cosway",9782073099945),
(6,"Edward Rochester",9782073099945),
(7,"La grand mère",9782221286807),
(8,"Sonia Devillers",9782221286807),
(9,"La famille Enoch",9782221286807),
(10,"Le narrateur",9782818063583),
(11,"Le narrateur",9782073121349),
(12,"Le narrateur",9782246846949),
(13,"Les cinq fondateurs",9782246846949),
(14,"Paola",9782707358233),
(15,"une jeune femme",9782073162854),
(16,"Le narrateur",9782226511874),
(17,"Le capitaine Lenz",9782226499523),
(18,"Olivier",9782378805975),
(19,"La narratrice",9782378562953),
(20,"Georges Bataille",9782862316857),
(21,"Jean-Jacques Pauvert",9782862316857),
(22,"un père aveugle et paralytique",9782862316857),
(23,"une mère réfugiée dans la religion",9782862316857),
(24," Jonas Dorléon",9782246847069);
-- --------------------------------------------------------

--
-- Structure de la table `go_jury_member`
--

DROP TABLE IF EXISTS `go_jury_member`;
CREATE TABLE IF NOT EXISTS `go_jury_member` (
  `jumem_id_jury_member` int NOT NULL AUTO_INCREMENT,
  `jumem_is_president` boolean  NOT NULL,
  `jumem_is_member` boolean  NOT NULL,
  `jumem_id_user` int NOT NULL,
  PRIMARY KEY (`jumem_id_jury_member`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_jury_member`
--

INSERT INTO `go_jury_member` (`jumem_id_jury_member`, `jumem_is_president`, `jumem_is_member`, `jumem_id_user`) VALUES
(1,false,true,17),
(2,false,true,18),
(3,false,true,19),
(4,false,true,20),
(5,true,true,21),
(6,false,true,22),
(7,false,true,23),
(8,false,true,24),
(9,false,true,25),
(10,false,true,26);

-- --------------------------------------------------------

--
-- Structure de la table `go_prize`
--

DROP TABLE IF EXISTS `go_prize`;
CREATE TABLE IF NOT EXISTS `go_prize` (
  `pri_id_prize` int NOT NULL AUTO_INCREMENT,
  `pri_year` int NOT NULL,
  PRIMARY KEY (`pri_id_prize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_prize`
--

INSERT INTO `go_prize` (`pri_id_prize`, `pri_year`) VALUES
(1,2026);

-- --------------------------------------------------------

--
-- Structure de la table `go_jury_member_prize`
--

DROP TABLE IF EXISTS `go_jury_member_prize`;
CREATE TABLE IF NOT EXISTS `go_jury_member_prize` (
  `jumem_pri_id_jury_member` int NOT NULL AUTO_INCREMENT,
  `jumem_pri_voice_number_for` int NOT NULL,
  `jumem_pri_voice_number_against` int NOT NULL,
  `jumem_pri_id_prize` int NOT NULL,
  PRIMARY KEY (`jumem_pri_id_jury_member`),
  KEY  `jumem_pri_id_prize` ( `jumem_pri_id_prize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_jury_member_prize`
--

INSERT INTO `go_jury_member_prize` (`jumem_pri_id_jury_member`, `jumem_pri_voice_number_for`,`jumem_pri_voice_number_against`, `jumem_pri_id_prize`) VALUES
(5,6,5,1);

-- --------------------------------------------------------

--
-- Structure de la table `go_selection`
--

DROP TABLE IF EXISTS `go_selection`;
CREATE TABLE IF NOT EXISTS `go_selection` (
  `sel_id_selection` int NOT NULL AUTO_INCREMENT,
  `sel_selection_date` date NOT NULL,
  `sel_winner_book` int NOT NULL,
  PRIMARY KEY (`sel_id_selection`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_selection`
--

INSERT INTO `go_selection` (`sel_id_selection`, `sel_selection_date`, `sel_winner_book`) VALUES
(1, Date(2026-9-2),   1),
(2, Date(2026-9-2),   2),
(3, Date(2026-9-2),   3),
(4, Date(2026-9-2),   4),
(5, Date(2026-9-2),   5),
(6, Date(2026-9-2),   6),
(7, Date(2026-9-2),   7),
(8, Date(2026-9-2),   8),
(9, Date(2026-9-2),   9),
(10,Date(2026-9-2),  10),
(11,Date(2026-9-2),  11),
(12,Date(2026-9-2),  12),
(13,Date(2026-9-2),  13),
(14,Date(2026-9-2),  14),
(15,Date(2026-9-2),  15),
(16,Date(2026-9-2),  16),
(17,Date(2026-10-6),  1),
(18,Date(2026-10-6),  3),
(19,Date(2026-10-6),  4),
(20,Date(2026-10-6),  5),
(21,Date(2026-10-6),  9),
(22,Date(2026-10-6), 13),
(23,Date(2026-10-6), 14),
(24,Date(2026-10-6), 16),
(25,Date(2026-10-27), 1),
(26,Date(2026-10-27), 9),
(27,Date(2026-10-27),14),
(28,Date(2026-10-27),16),
(29,Date(2026-11-3),  9);

-- --------------------------------------------------------

--
-- Structure de la table `go_jury_member_selection`
--

DROP TABLE IF EXISTS `go_jury_member_selection`;
CREATE TABLE IF NOT EXISTS `go_jury_member_selection` (
  `jumem_sel_id_jury_member` int NOT NULL,
  `jumem_sel_id_selection` int NOT NULL,
  PRIMARY KEY (`jumem_sel_id_jury_member`,`jumem_sel_id_selection`),
  KEY `jumem_sel_id_selection` (`jumem_sel_id_selection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_jury_member_selection`
--

INSERT INTO `go_jury_member_selection` (`jumem_sel_id_jury_member`, `jumem_sel_id_selection`) VALUES
(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),
(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),
(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),
(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),
(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20),(5,21),
(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),(6,21),
(7,14),(7,15),(7,16),(7,17),(7,18),(7,19),(7,20),(7,21),
(8,14),(8,15),(8,16),(8,17),(8,18),(8,19),(8,20),(8,21),
(9,14),(9,15),(9,16),(9,17),(9,18),(9,19),(9,20),(9,21),
(10,14),(10,15),(10,16),(10,17),(10,18),(10,19),(10,20),(10,21),
(1,22),(1,23),(1,24),(1,25),
(2,22),(2,23),(2,24),(2,25),
(3,22),(3,23),(3,24),(3,25),
(4,22),(4,23),(4,24),(4,25),
(5,22),(5,23),(5,24),(5,25),
(6,22),(6,23),(6,24),(6,25),
(7,22),(7,23),(7,24),(7,25),
(8,22),(8,23),(8,24),(8,25),
(9,22),(9,23),(9,24),(9,25),
(10,22),(10,23),(10,24),(10,25),
(1,26),
(2,26),
(3,26),
(4,26),
(5,26),
(6,26),
(7,26),
(8,26),
(9,26),
(10,26);

-- --------------------------------------------------------

--
-- Structure de la table `go_jury_member_book`
--

DROP TABLE IF EXISTS `go_jury_member_book`;
CREATE TABLE IF NOT EXISTS `go_jury_member_book` (
  `jumem_bo_isbn` bigint NOT NULL,
  `jumem_bo_id_jury_member` int NOT NULL,
  PRIMARY KEY (`jumem_bo_isbn`,`jumem_bo_id_jury_member`),
  KEY `jumem_bo_id_jury_member` (`jumem_bo_id_jury_member`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_jury_member_book`
--

INSERT INTO `go_jury_member_book` (`jumem_bo_isbn`, `jumem_bo_id_jury_member`) VALUES
(9782080490896,1),(9782080490896,2),(9782080490896,3),(9782080490896,4),(9782080490896,5),(9782080490896,6),(9782080490896,7),(9782080490896,8),(9782080490896,9),(9782080490896,10),
(9782330225575,1),(9782330225575,2),(9782330225575,3),(9782330225575,4),(9782330225575,5),(9782330225575,6),(9782330225575,7),(9782330225575,8),(9782330225575,9),(9782330225575,10),
(9782073161925,1),(9782073161925,2),(9782073161925,3),(9782073161925,4),(9782073161925,5),(9782073161925,6),(9782073161925,7),(9782073161925,8),(9782073161925,9),(9782073161925,10),
(9782073099945,1),(9782073099945,2),(9782073099945,3),(9782073099945,4),(9782073099945,5),(9782073099945,6),(9782073099945,7),(9782073099945,8),(9782073099945,9),(9782073099945,10),
(9782221286807,1),(9782221286807,2),(9782221286807,3),(9782221286807,4),(9782221286807,5),(9782221286807,6),(9782221286807,7),(9782221286807,8),(9782221286807,9),(9782221286807,10),
(9782818063583,1),(9782818063583,2),(9782818063583,3),(9782818063583,4),(9782818063583,5),(9782818063583,6),(9782818063583,7),(9782818063583,8),(9782818063583,9),(9782818063583,10),
(9782073121349,1),(9782073121349,2),(9782073121349,3),(9782073121349,4),(9782073121349,5),(9782073121349,6),(9782073121349,7),(9782073121349,8),(9782073121349,9),(9782073121349,10),
(9782246846949,1),(9782246846949,2),(9782246846949,3),(9782246846949,4),(9782246846949,5),(9782246846949,6),(9782246846949,7),(9782246846949,8),(9782246846949,9),(9782246846949,10),
(9782707358233,1),(9782707358233,2),(9782707358233,3),(9782707358233,4),(9782707358233,5),(9782707358233,6),(9782707358233,7),(9782707358233,8),(9782707358233,9),(9782707358233,10),
(9782073162854,1),(9782073162854,2),(9782073162854,3),(9782073162854,4),(9782073162854,5),(9782073162854,6),(9782073162854,7),(9782073162854,8),(9782073162854,9),(9782073162854,10),
(9782226511874,1),(9782226511874,2),(9782226511874,3),(9782226511874,4),(9782226511874,5),(9782226511874,6),(9782226511874,7),(9782226511874,8),(9782226511874,9),(9782226511874,10),
(9782226499523,1),(9782226499523,2),(9782226499523,3),(9782226499523,4),(9782226499523,5),(9782226499523,6),(9782226499523,7),(9782226499523,8),(9782226499523,9),(9782226499523,10),
(9782378805975,1),(9782378805975,2),(9782378805975,3),(9782378805975,4),(9782378805975,5),(9782378805975,6),(9782378805975,7),(9782378805975,8),(9782378805975,9),(9782378805975,10),
(9782378562953,1),(9782378562953,2),(9782378562953,3),(9782378562953,4),(9782378562953,5),(9782378562953,6),(9782378562953,7),(9782378562953,8),(9782378562953,9),(9782378562953,10),
(9782862316857,1),(9782862316857,2),(9782862316857,3),(9782862316857,4),(9782862316857,5),(9782862316857,6),(9782862316857,7),(9782862316857,8),(9782862316857,9),(9782862316857,10),
(9782246847069,1),(9782246847069,2),(9782246847069,3),(9782246847069,4),(9782246847069,5),(9782246847069,6),(9782246847069,7),(9782246847069,8),(9782246847069,9),(9782246847069,10);

-- --------------------------------------------------------

--
-- Structure de la table `go_author_prize`
--

DROP TABLE IF EXISTS `go_author_prize`;
CREATE TABLE IF NOT EXISTS `go_author_prize` (
  `au_pri_id_author` int NOT NULL,
  `au_pri_id_prize` int NOT NULL,
  PRIMARY KEY (`au_pri_id_author`,`au_pri_id_prize`),
  KEY `au_pri_id_prize` (`au_pri_id_prize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `go_author_prize`
--

INSERT INTO `go_author_prize` (`au_pri_id_author`, `au_pri_id_prize`) VALUES
(9,1);

--
-- Contraintes pour les tables déchargées
--
--
-- Contraintes pour la table `go_book`
--
ALTER TABLE `go_book`
  ADD CONSTRAINT `go_book_ibfk_author` FOREIGN KEY (`bo_id_author`) REFERENCES `go_author` (`au_id_author`);

--
-- Contraintes pour la table `go_author`
--
ALTER TABLE `go_author`
  ADD CONSTRAINT `go_author_ibfk_user` FOREIGN KEY (`au_id_user`) REFERENCES `go_user` (`us_id_user`);

--
-- Contraintes pour la table `go_book_editor`
--
ALTER TABLE `go_book_editor`
  ADD CONSTRAINT `go_book_editor_ibfk_isbn` FOREIGN KEY (`bo_ed_isbn`) REFERENCES `go_book` (`bo_isbn`),
  ADD CONSTRAINT `go_book_editor_ibfk_editor` FOREIGN KEY (`bo_ed_id_editor`) REFERENCES `go_editor` (`ed_id_editor`);

--
-- Contraintes pour la table `go_character`
--
ALTER TABLE `go_character`
  ADD CONSTRAINT `go_character_ibfk_isbn` FOREIGN KEY (`cha_isbn`) REFERENCES `go_book` (`bo_isbn`);
  
--
-- Contraintes pour la table `go_jury_member_selection`
--
ALTER TABLE `go_jury_member_selection`
  ADD CONSTRAINT `go_jury_member_selection_ibfk_jury_member` FOREIGN KEY (`jumem_sel_id_jury_member`) REFERENCES `go_jury_member` (`jumem_id_jury_member`),
  ADD CONSTRAINT `go_jury_member_selection_ibfk_selection` FOREIGN KEY (`jumem_sel_id_selection`) REFERENCES `go_selection` (`sel_id_selection`);

--
-- Contraintes pour la table `go_jury_member_book`
--
ALTER TABLE `go_jury_member_book`
  ADD CONSTRAINT `go_jury_member_book_ibfk_isbn` FOREIGN KEY (`jumem_bo_isbn`) REFERENCES `go_book` (`bo_isbn`),
  ADD CONSTRAINT `go_jury_member_book_ibfk_jury_member` FOREIGN KEY (`jumem_bo_id_jury_member`) REFERENCES `go_jury_member` (`jumem_id_jury_member`);

--
-- Contraintes pour la table `go_author_prize`
--
ALTER TABLE `go_author_prize`
  ADD CONSTRAINT `gd_stock_ibfk_author` FOREIGN KEY (`au_pri_id_author`) REFERENCES `go_author` (`au_id_author`),
  ADD CONSTRAINT `gd_stock_ibfk_prize` FOREIGN KEY (`au_pri_id_prize`) REFERENCES `go_prize` (`pri_id_prize`);
  
  --
-- Contraintes pour la table `go_jury_member_prize`
--
ALTER TABLE `go_jury_member_prize`
  ADD CONSTRAINT `go_jury_member_prize_ibfk_prize` FOREIGN KEY (`jumem_pri_id_prize`) REFERENCES `go_prize` (`pri_id_prize`);
  
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
