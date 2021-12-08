CREATE DATABASE bibliotheque;
USE bibliotheque;
CREATE TABLE utilisateur(
                            id_utilisateur Int  Auto_increment  NOT NULL ,
                            nom            Varchar (50) NOT NULL ,
                            prenom         Varchar (50) NOT NULL ,
                            email          Varchar (75) NOT NULL ,
                            telephone      Varchar (75) NOT NULL
    ,CONSTRAINT utilisateur_PK PRIMARY KEY (id_utilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: livre
#------------------------------------------------------------

CREATE TABLE livre(
                      id_livre      Int  Auto_increment  NOT NULL ,
                      titre         Varchar (75) NOT NULL ,
                      auteur        Varchar (50) NOT NULL ,
                      date_parution Date NOT NULL ,
                      stock         Int NOT NULL ,
                      disponible    Bool NOT NULL
    ,CONSTRAINT livre_PK PRIMARY KEY (id_livre)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: emprunter
#------------------------------------------------------------

CREATE TABLE emprunter(
                          id_livre       Int NOT NULL ,
                          id_utilisateur Int NOT NULL ,
                          date_emprunt   Date NOT NULL
    ,CONSTRAINT emprunter_PK PRIMARY KEY (id_livre,id_utilisateur)

    ,CONSTRAINT emprunter_livre_FK FOREIGN KEY (id_livre) REFERENCES livre(id_livre)
    ,CONSTRAINT emprunter_utilisateur0_FK FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur)
)ENGINE=InnoDB;




insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (1, 'Turmell', 'Dale', 'dturmell0@delicious.com', '5362140862');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (2, 'Klimpke', 'Afton', 'aklimpke1@slideshare.net', '5473965337');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (3, 'Lauga', 'Jenni', 'jlauga2@yahoo.co.jp', '3517845686');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (4, 'Stoacley', 'Sylvester', 'sstoacley3@thetimes.co.uk', '6734404162');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (5, 'Tibols', 'Rosco', 'rtibols4@goodreads.com', '2518027502');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (6, 'Badini', 'Garrik', 'gbadini5@ustream.tv', '6437639123');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (7, 'Sarchwell', 'Aindrea', 'asarchwell6@e-recht24.de', '3745006121');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (8, 'Outlaw', 'Berni', 'boutlaw7@yolasite.com', '5282295642');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (9, 'Saterweyte', 'Mireille', 'msaterweyte8@parallels.com', '8463713045');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (10, 'McDougald', 'Heloise', 'hmcdougald9@newsvine.com', '2399436532');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (11, 'Burnsell', 'Robbi', 'rburnsella@about.com', '3298715055');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (12, 'Ridings', 'Doroteya', 'dridingsb@psu.edu', '2059231602');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (13, 'Fowkes', 'Donia', 'dfowkesc@berkeley.edu', '8997949750');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (14, 'Buist', 'Seline', 'sbuistd@newyorker.com', '5004741474');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (15, 'Kollatsch', 'Lenore', 'lkollatsche@prweb.com', '2634579282');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (16, 'Morfett', 'Janice', 'jmorfettf@hubpages.com', '5474567576');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (17, 'Beesley', 'Nickolai', 'nbeesleyg@uol.com.br', '1749593400');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (18, 'Jimpson', 'Elton', 'ejimpsonh@alibaba.com', '5789331587');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (19, 'Willcock', 'Iseabal', 'iwillcocki@thetimes.co.uk', '7326458061');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (20, 'Owlner', 'Ardene', 'aowlnerj@goo.ne.jp', '7807619460');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (21, 'Douce', 'Garrot', 'gdoucek@google.com.br', '5297509704');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (22, 'Deaconson', 'Aleece', 'adeaconsonl@imgur.com', '9046534359');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (23, 'Mauvin', 'Kerry', 'kmauvinm@hatena.ne.jp', '5938501414');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (24, 'Milner', 'Lion', 'lmilnern@businessinsider.com', '2685156089');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (25, 'Alliban', 'Keven', 'kallibano@usa.gov', '2979809552');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (26, 'Lanfear', 'Carole', 'clanfearp@seesaa.net', '9225245799');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (27, 'Chidlow', 'Consuela', 'cchidlowq@yahoo.co.jp', '8759188689');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (28, 'Test', 'Lara', 'ltestr@cornell.edu', '1332869977');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (29, 'Youel', 'Buffy', 'byouels@sogou.com', '1743835294');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (30, 'MacDermott', 'Georgeanna', 'gmacdermottt@ow.ly', '7515531989');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (31, 'Rodman', 'Hillery', 'hrodmanu@homestead.com', '9731372349');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (32, 'Caldayrou', 'Ilise', 'icaldayrouv@spiegel.de', '6696907987');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (33, 'Zaple', 'Emmalynn', 'ezaplew@nps.gov', '7236599398');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (34, 'Smeall', 'Allx', 'asmeallx@bandcamp.com', '6911158157');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (35, 'Laverock', 'Hester', 'hlaverocky@theglobeandmail.com', '8001017846');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (36, 'Tiebe', 'Franzen', 'ftiebez@army.mil', '7225634420');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (37, 'Minchi', 'Armstrong', 'aminchi10@unc.edu', '1461097025');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (38, 'Gabbitis', 'Angil', 'agabbitis11@usda.gov', '3971356394');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (39, 'Truggian', 'Danya', 'dtruggian12@ucla.edu', '9681003786');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (40, 'Arrundale', 'Sharron', 'sarrundale13@a8.net', '7995440910');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (41, 'Bartlam', 'Skippie', 'sbartlam14@mediafire.com', '6117675938');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (42, 'Mitkov', 'Tawnya', 'tmitkov15@unblog.fr', '9129049489');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (43, 'Awde', 'Sansone', 'sawde16@globo.com', '1352023196');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (44, 'Arington', 'Owen', 'oarington17@upenn.edu', '7548262442');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (45, 'Abrahart', 'Paton', 'pabrahart18@boston.com', '1295378469');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (46, 'McCrorie', 'Hermina', 'hmccrorie19@flickr.com', '5994299322');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (47, 'Sharphurst', 'Alan', 'asharphurst1a@gravatar.com', '4379355349');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (48, 'Qusklay', 'Karlen', 'kqusklay1b@irs.gov', '8753161525');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (49, 'Jurisch', 'Bald', 'bjurisch1c@ezinearticles.com', '2089354077');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (50, 'Edkins', 'Fair', 'fedkins1d@themeforest.net', '2993722971');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (51, 'Rawood', 'Don', 'drawood1e@ucla.edu', '4428549139');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (52, 'Maydwell', 'Cammy', 'cmaydwell1f@pinterest.com', '3928233888');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (53, 'Whitter', 'Nichole', 'nwhitter1g@uiuc.edu', '5511840866');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (54, 'Costall', 'Fabien', 'fcostall1h@bbc.co.uk', '9967686504');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (55, 'Peverell', 'Care', 'cpeverell1i@facebook.com', '1028196093');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (56, 'Meachan', 'Germain', 'gmeachan1j@psu.edu', '1973905596');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (57, 'Laughton', 'Viola', 'vlaughton1k@earthlink.net', '2567844474');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (58, 'Sinnett', 'Antons', 'asinnett1l@yandex.ru', '7333001725');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (59, 'Renahan', 'Jennette', 'jrenahan1m@prlog.org', '7209026937');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (60, 'MacNeilly', 'Brucie', 'bmacneilly1n@upenn.edu', '7064226959');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (61, 'Towsie', 'Pepita', 'ptowsie1o@youtu.be', '4613648117');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (62, 'Sorensen', 'Britt', 'bsorensen1p@netvibes.com', '9525809674');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (63, 'Sweynson', 'Tandy', 'tsweynson1q@linkedin.com', '2327760906');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (64, 'Owthwaite', 'Corrianne', 'cowthwaite1r@barnesandnoble.com', '5182397682');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (65, 'Meiklejohn', 'Brand', 'bmeiklejohn1s@etsy.com', '2684619264');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (66, 'Arnson', 'Ruy', 'rarnson1t@china.com.cn', '6768288972');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (67, 'Miliffe', 'Arluene', 'amiliffe1u@auda.org.au', '2074238877');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (68, 'Towers', 'Ram', 'rtowers1v@prnewswire.com', '3718631788');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (69, 'Dur', 'Matias', 'mdur1w@netlog.com', '5468448435');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (70, 'Casellas', 'Carmelita', 'ccasellas1x@vk.com', '5672344275');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (71, 'Loyns', 'Staci', 'sloyns1y@umn.edu', '2016640812');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (72, 'Damp', 'Joni', 'jdamp1z@theguardian.com', '8894509740');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (73, 'MacNeely', 'Jarred', 'jmacneely20@themeforest.net', '9645780804');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (74, 'Haselgrove', 'Wiatt', 'whaselgrove21@globo.com', '2067983937');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (75, 'Lorne', 'Carly', 'clorne22@cbc.ca', '1572054075');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (76, 'Churching', 'Amie', 'achurching23@icio.us', '2174631727');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (77, 'Maypother', 'Melantha', 'mmaypother24@google.com.au', '4559317928');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (78, 'Weatherell', 'Karyn', 'kweatherell25@bloomberg.com', '3158575687');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (79, 'Glancy', 'Rey', 'rglancy26@sun.com', '3233542654');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (80, 'Durden', 'Duff', 'ddurden27@bigcartel.com', '8501037677');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (81, 'Einchcombe', 'Lisette', 'leinchcombe28@oakley.com', '6416240148');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (82, 'Owen', 'Alexandre', 'aowen29@loc.gov', '5742626383');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (83, 'Wathan', 'Rancell', 'rwathan2a@tuttocitta.it', '3523490772');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (84, 'Colliford', 'Garey', 'gcolliford2b@java.com', '3656931961');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (85, 'Cropton', 'Hazel', 'hcropton2c@clickbank.net', '4852043598');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (86, 'Loosmore', 'Elnar', 'eloosmore2d@liveinternet.ru', '6373206877');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (87, 'Rocca', 'Shane', 'srocca2e@hhs.gov', '5829736682');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (88, 'Todeo', 'Branden', 'btodeo2f@alexa.com', '4738403487');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (89, 'Casarili', 'Novelia', 'ncasarili2g@baidu.com', '4274670061');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (90, 'Flew', 'Catherina', 'cflew2h@dedecms.com', '5482103690');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (91, 'Varnes', 'Ernest', 'evarnes2i@pagesperso-orange.fr', '9358802133');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (92, 'MacDavitt', 'Amii', 'amacdavitt2j@google.co.jp', '1105397553');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (93, 'Danford', 'Anatola', 'adanford2k@theglobeandmail.com', '1468879087');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (94, 'Dumbellow', 'Rosaleen', 'rdumbellow2l@bravesites.com', '1579468940');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (95, 'Tame', 'Magdaia', 'mtame2m@mashable.com', '1134646249');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (96, 'Kedwell', 'Jens', 'jkedwell2n@pagesperso-orange.fr', '3328828262');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (97, 'Forsey', 'Geoff', 'gforsey2o@nps.gov', '9709808863');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (98, 'Konig', 'Wake', 'wkonig2p@privacy.gov.au', '4563731634');
insert into utilisateur (id_utilisateur, nom, prenom, email, telephone) values (99, 'Shew', 'Basia', 'bshew2q@technorati.com', '3121185793');


insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (1, 'Mrs', 'Mada Ferreiro', '27.6.2021', 26, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (2, 'Dr', 'Raynor O''Hingerty', '20.8.2021', 58, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (3, 'Honorable', 'Felicity Bailes', '16.3.2021', 50, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (4, 'Mrs', 'Shelby McPherson', '16.4.2021', 30, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (5, 'Ms', 'Beret Redford', '28.8.2021', 67, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (6, 'Dr', 'Dylan Digwood', '14.9.2021', 32, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (7, 'Rev', 'Mellie Hollindale', '27.7.2021', 78, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (8, 'Rev', 'Kenton Gail', '12.8.2021', 39, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (9, 'Mrs', 'Phillie Finn', '30.4.2021', 13, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (10, 'Honorable', 'Perry Askell', '16.4.2021', 30, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (11, 'Mrs', 'Kelli Gillions', '6.1.2021', 56, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (12, 'Rev', 'Evangelina Coleson', '23.6.2021', 43, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (13, 'Mrs', 'Bernardo Pannett', '9.1.2021', 89, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (14, 'Honorable', 'Sonya Cotelard', '11.4.2021', 67, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (15, 'Ms', 'Tasia Widmoor', '5.3.2021', 57, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (16, 'Mr', 'Stevy Staner', '5.8.2021', 82, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (17, 'Mr', 'Armstrong Tatchell', '10.4.2021', 21, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (18, 'Mr', 'Woody Prettyjohn', '7.10.2021', 40, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (19, 'Rev', 'Rebbecca Alexsandrowicz', '17.7.2021', 21, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (20, 'Mrs', 'Sibyl Hampstead', '20.9.2021', 68, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (21, 'Mrs', 'Aleda Boldison', '9.12.2020', 86, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (22, 'Rev', 'Kenon Fernyhough', '16.5.2021', 60, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (23, 'Mrs', 'Bride Morfey', '10.10.2021', 89, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (24, 'Dr', 'Beth Ebenezer', '5.12.2021', 17, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (25, 'Mr', 'Faustina Edinboro', '24.3.2021', 57, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (26, 'Mrs', 'Letti Ander', '9.12.2020', 88, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (27, 'Mrs', 'Jory Silverston', '22.3.2021', 25, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (28, 'Dr', 'Carmine Lusher', '25.12.2020', 52, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (29, 'Mr', 'Violante Fairlam', '1.4.2021', 66, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (30, 'Honorable', 'Ingrid Jerrim', '13.9.2021', 88, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (31, 'Honorable', 'Melissa Elintune', '30.11.2021', 27, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (32, 'Mr', 'Claudianus Franzewitch', '25.9.2021', 80, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (33, 'Rev', 'Edmon Tregale', '28.1.2021', 22, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (34, 'Mr', 'Honoria McCreadie', '15.6.2021', 93, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (35, 'Rev', 'Barbara-anne Breckell', '30.6.2021', 66, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (36, 'Mrs', 'Tatiana Steger', '6.2.2021', 64, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (37, 'Rev', 'Carlota Wild', '8.1.2021', 30, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (38, 'Rev', 'Wilow Bohea', '11.3.2021', 87, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (39, 'Dr', 'Morgun Malthus', '9.6.2021', 16, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (40, 'Rev', 'Finn Moors', '22.2.2021', 38, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (41, 'Ms', 'Gretchen Gammel', '13.8.2021', 22, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (42, 'Ms', 'Gabriela Etienne', '5.1.2021', 56, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (43, 'Dr', 'Walden Strute', '2.3.2021', 26, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (44, 'Mrs', 'Drusilla Cuckoo', '18.11.2021', 20, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (45, 'Mrs', 'Jo ann Odhams', '7.6.2021', 65, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (46, 'Mr', 'Valencia Crampton', '22.8.2021', 86, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (47, 'Honorable', 'Remus Wellum', '20.10.2021', 26, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (48, 'Rev', 'Donnie Grzeszczyk', '8.9.2021', 100, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (49, 'Rev', 'Brewster Dawidowicz', '18.3.2021', 82, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (50, 'Mr', 'Darn Brayley', '30.1.2021', 81, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (51, 'Honorable', 'Norri MacKissack', '30.6.2021', 77, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (52, 'Honorable', 'Jenni Ricardet', '3.1.2021', 19, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (53, 'Ms', 'Currey Pigott', '11.10.2021', 66, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (54, 'Honorable', 'Kai Biggin', '29.3.2021', 89, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (55, 'Honorable', 'Daron Cardow', '18.8.2021', 88, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (56, 'Dr', 'Gwyneth Exposito', '29.3.2021', 62, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (57, 'Dr', 'Sandro Cawtheray', '28.11.2021', 64, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (58, 'Rev', 'Daveen Coale', '22.9.2021', 27, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (59, 'Mr', 'Bruce Laven', '29.9.2021', 70, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (60, 'Honorable', 'Kattie Blanche', '14.11.2021', 4, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (61, 'Mrs', 'Maximilianus Bryde', '10.3.2021', 63, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (62, 'Mr', 'Britt Fozard', '15.5.2021', 9, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (63, 'Honorable', 'Rolf Vanns', '5.3.2021', 74, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (64, 'Rev', 'Daria Whistlecroft', '27.1.2021', 96, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (65, 'Ms', 'Bowie Rudiger', '12.5.2021', 43, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (66, 'Ms', 'Curcio Vowells', '1.10.2021', 79, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (67, 'Ms', 'Shellie Sylvaine', '14.10.2021', 38, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (68, 'Dr', 'Heywood Kinnock', '26.7.2021', 42, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (69, 'Mr', 'Emlyn Doogood', '4.5.2021', 47, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (70, 'Ms', 'Fabien Janosevic', '2.2.2021', 94, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (71, 'Ms', 'Mayer Kalkofer', '13.6.2021', 59, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (72, 'Dr', 'Willie Longstaffe', '29.5.2021', 41, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (73, 'Mrs', 'Ulrica Crosscombe', '30.4.2021', 12, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (74, 'Mr', 'Windy Culver', '2.8.2021', 7, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (75, 'Ms', 'Bradan Driffe', '27.1.2021', 85, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (76, 'Dr', 'Hamel Tiffin', '2.7.2021', 23, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (77, 'Rev', 'Clo Stafford', '5.8.2021', 72, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (78, 'Dr', 'Roseanne Mulvany', '3.1.2021', 21, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (79, 'Ms', 'Shara Grossier', '20.12.2020', 2, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (80, 'Honorable', 'Piper Orneblow', '17.5.2021', 94, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (81, 'Mr', 'Courtenay McParlin', '20.12.2020', 12, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (82, 'Dr', 'Damon Sturm', '11.1.2021', 36, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (83, 'Dr', 'Eduard Schuster', '21.12.2020', 78, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (84, 'Ms', 'Jessica Wharby', '8.7.2021', 30, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (85, 'Dr', 'Kurt Bedle', '3.6.2021', 72, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (86, 'Mrs', 'Amalea Beaglehole', '27.10.2021', 97, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (87, 'Honorable', 'Curry Jenkison', '21.12.2020', 78, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (88, 'Rev', 'Rasla Bestiman', '28.2.2021', 17, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (89, 'Rev', 'Ferrel Witcomb', '20.9.2021', 20, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (90, 'Dr', 'Sasha Atkinson', '24.6.2021', 5, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (91, 'Ms', 'Antony Babst', '15.12.2020', 48, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (92, 'Mr', 'Edee Durrans', '6.12.2021', 8, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (93, 'Ms', 'Drew Tante', '18.11.2021', 81, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (94, 'Mrs', 'Niki Braunle', '2.9.2021', 9, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (95, 'Mr', 'Pennie Ingleton', '16.6.2021', 32, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (96, 'Dr', 'Sutton Kobera', '27.8.2021', 27, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (97, 'Ms', 'Trudi MacArthur', '28.2.2021', 7, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (98, 'Mrs', 'Levi Henric', '25.11.2021', 73, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (99, 'Rev', 'Stanislas Lorek', '17.7.2021', 55, true);
insert into livre (id_livre, titre, auteur, date_parution, stock, disponible) values (100, 'Rev', 'Zandra Dallow', '29.1.2021', 28, true);


