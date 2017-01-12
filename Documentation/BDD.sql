#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

DROP DATABASE IF EXISTS football_manager;

CREATE DATABASE football_manager;

USE football_manager;

#------------------------------------------------------------
# Table: equipe
#------------------------------------------------------------

CREATE TABLE equipe(
        id           int (11) Auto_increment  NOT NULL ,
        nom          Varchar (50) NOT NULL ,
        budget       Int ,
        point_de_ligue Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: joueur
#------------------------------------------------------------

CREATE TABLE joueur(
        id             int (11) Auto_increment  NOT NULL ,
        prenom         Varchar (50) NOT NULL ,
        nom            Varchar (50) NOT NULL ,
        valeur         Int ,
        titularisation Bool ,
        niveau         Int ,
        id_equipe      Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: match
#------------------------------------------------------------

CREATE TABLE rencontre(
        id           int (11) Auto_increment  NOT NULL ,
        equipe_1      Int ,
        equipe_2      Int ,
        score_equipe_1 Int ,
        score_equipe_2 Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: joue
#------------------------------------------------------------

CREATE TABLE joue(
        date_match Date ,
        id        Int NOT NULL ,
        id_rencontre  Int NOT NULL ,
        PRIMARY KEY (id ,id_rencontre )
)ENGINE=InnoDB;

ALTER TABLE joueur ADD CONSTRAINT FK_joueur_id_equipe FOREIGN KEY (id_equipe) REFERENCES equipe(id);
ALTER TABLE joue ADD CONSTRAINT FK_joue_id FOREIGN KEY (id) REFERENCES equipe(id);
ALTER TABLE joue ADD CONSTRAINT FK_joue_id_rencontre FOREIGN KEY (id_rencontre) REFERENCES rencontre(id);


INSERT INTO equipe (id,nom,budget,point_de_ligue)VALUES
(1,"Stade Rennais",44000000,0),
(2,"En Avant Guigamp",25000000,0),
(3,"Paris Saint Germain",500000000,0),
(4,"Olympique Lyonnais",250000000,0),
(5,"AS Monaco",300000000,0),
(6,"Olympique De Marseille",150000000,0);

INSERT INTO joueur (id,prenom,nom,valeur,niveau,titularisation,id_equipe)VALUES
(1,"Benjamin","Andre",5000000,73,true,1),
(2,"Gelson","Fernandes",4500000,69,true,1),
(3,"Benoit","Costil",7000000,80,true,1),
(4,"Giovanni","Sio",6500000,70,true,1),
(5,"Joris","Gnagnon",100000,71,true,1),
(6,"Yohann","Gourcuff",10000000,83,true,1),
(7,"Romain","Danze",3000000,69,true,1),
(8,"Ludovic","Baal",1500000,70,true,1),
(9,"Pedro","Mendes",1000000,70,true,1),
(10,"Ousmane","Dembele",1000000000,100,true,1),
(11,"Paul George","N'tep",8500000,85,true,1),
(12,"Paul","Nardi",300000,63,false,1),
(13,"Sylvain","Armand",10000,50,false,1),
(14,"Steven","Moreira",120000,65,false,1),
(15,"Wesley","Said",1200000,69,false,1),
(16,"Jasper","Hanssen",2500000,70,true,2),
(17,"Dorian","Leveque",100000,68,true,2),
(18,"Jeremy","Sorbon",1500000,73,true,2),
(19,"Christophe","Kerbrat",4000000,74,true,2),
(20,"Daren","Jacobsen",1500000,70,true,2),
(21,"Nicolas","Benezet",6000000,75,true,2),
(22,"Lucas","Deaux",3500000,69,true,2),
(23,"Etienne","Didot",2200000,71,true,2),
(24,"Jimmy","Briand",9000000,78,true,2),
(25,"Lionel","Mathis",20000,62,true,2),
(26,"Sloan","Privat",7500000,65,true,2),
(27,"Isaac","Isaksson",2000,59,false,2),
(28,"Vincent","Bessat",5000,65,false,2),
(29,"Kaiser","Sose",20000000,88,false,2),
(30,"Jean Pierre","Chevenement",3,2,false,2),
(31,"Alphonse","Aerola",10000000,83,true,3),
(32,"Serge","Aurier",15000000,84,true,3),
(33,"Thiago","Silva",30000000,88,true,3),
(34,"Marcos","Marquinhos",25000000,78,true,3),
(35,"Layvin","Kurzawa",25000000,79,true,3),
(36,"Adrien","Rabiot",22000000,81,true,3),
(37,"Marco","Verratti",40000000,85,true,3),
(38,"Blaise","Matuidi",8000000,84,true,3),
(39,"Angel","Di Maria",75000000,88,true,3),
(40,"Edinson","Cavani",50000000,91,true,3),
(41,"Julian","Draxler",44000000,85,true,3),
(42,"Kevin","Trapp",20000000,80,false,3),
(43,"Presnel","Kimpembe",12000000,76,false,3),
(44,"Thiago","Motta",1200,81,false,3),
(45,"Jonathan","Ikone",6000000,70,false,3),
(46,"Anthony","Lopes",12000000,81,true,4),
(47,"Christophe","Jallet",3000000,74,true,4),
(48,"Mouctar","Diakhaby",2500000,75,true,4),
(49,"Nicolas","N'koulou",10000000,78,true,4),
(50,"Maciej","Rybus",4000000,75,true,4),
(51,"Maxime","Gonalons",10000000,81,true,4),
(52,"Corentin","Tolisso",30000000,80,true,4),
(53,"Sergi","Darder",15000000,83,true,4),
(54,"Nabil","Fekir",25000000,85,true,4),
(55,"Alexandre","Lacazette",70000000,89,true,4),
(56,"Mathieu","Valbuena",3000000,79,true,4),
(57,"Mathieu","Georgelin",200000,62,false,4),
(58,"Rafael","da Silva",12000000,75,false,4),
(59,"Rachid","Ghezzal",13000000,76,false,4),
(60,"Emanuel","Mammana",8000000,75,false,4),
(61,"Danjel","Subasic",12000000,81,true,5),
(62,"Fabio","Fabinho",40000000,88,true,5),
(63,"Kamil","Glik",15000000,83,true,5),
(64,"Jemerson","Nascimento",20000000,79,true,5),
(65,"Benjamin","Mendy",10000000,75,true,5),
(66,"Tiemoue","Bakayoko",12000000,79,true,5),
(67,"Joao","Moutinho",25000000,84,true,5),
(68,"Thomas","Lemar",40000000,83,true,5),
(69,"Kylian","Mbappe",5000000,74,true,5),
(70,"Radamael","Falcao",40000000,89,true,5),
(71,"Valere","Germain",15000000,79,true,5),
(72,"Morgan","DeSanctis",200000,75,false,5),
(73,"Nabil","Dirar",5000000,73,false,5),
(74,"Andre","Raggi",3000000,76,false,5),
(75,"Guido","Carillo",9000000,75,false,5),
(76,"Yohan","Pele",2000000,72,true,6),
(77,"Hiroki","Sakai",6000000,71,true,6),
(78,"Matheus","Doria",12000000,73,true,6),
(79,"Jorge Pires","Rolando",5000000,75,true,6),
(80,"Lassana","Diarra",12000000,80,true,6),
(81,"Maxime","Lopes",16000000,80,true,6),
(82,"Remy","Cabella",20000000,80,true,6),
(83,"Florian","Thauvin",15000000,80,true,6),
(84,"Romain","Alessandrini",8000000,75,true,6),
(85,"Bafetimbi","Gomis",12000000,81,true,6),
(86,"Clinton","Njie",10000000,79,true,6),
(87,"Steve","Mandanda",9000000,84,false,6),
(88,"William","Vainqueur",6000000,75,false,6),
(89,"Rod","Fanni",200000,73,false,6),
(90,"Thomas","Hubocan",6000000,76,false,6),
(91,"Zlatan","Ibrahimovitch",30000000,92,false,NULL),
(92,"Cristiano","Ronaldo",40000000,93,false,NULL),
(93,"Leo","Messi",60000000,95,false,NULL),
(94,"Paul","Pogba",105000000,98,false,NULL),
(95,"Zinedine","Zidane",120000000,100,false,NuLL),
(96,"Kingsley","Coman",20000000,80,false,NULL),
(97,"Antoine","Griezmann",15000000,85,false,NULL),
(98,"Hugo","LLoris",25000000,82,false,NULL),
(99,"Olivier","Atton",5000000,96,false,NULL),
(100,"Edson","Pele",550000000,99,false,NULL);