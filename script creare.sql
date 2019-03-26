DROP TABLE PASSENGERS CASCADE CONSTRAINTS
/
DROP TABLE AIRLINES CASCADE CONSTRAINTS
/
DROP TABLE BOUGHT_CARDS CASCADE CONSTRAINTS
/
DROP TABLE DISCOUNT_CARDS CASCADE CONSTRAINTS
/
DROP TABLE FLIGHTS CASCADE CONSTRAINTS
/
DROP TABLE BOOKINGS CASCADE CONSTRAINTS
/
DROP TABLE AIRPORTS CASCADE CONSTRAINTS
/
DROP TABLE AIRLINE_ACCOUNTS CASCADE CONSTRAINTS
/


CREATE TABLE PASSENGERS(
id INT NOT NULL PRIMARY KEY,
CNP number(13) not null,
first_name varchar2(50),
last_name varchar2(50),
gender varchar2(10),
birth_date date,
nationality varchar2(50),
email varchar2(50)
)
/

CREATE TABLE AIRLINES(
id INT NOT NULL PRIMARY KEY,
name VARCHAR2(25) NOT NULL
)
/

CREATE TABLE AIRLINE_ACCOUNTS(
airline_id INT NOT NULL,
username VARCHAR2(30) NOT NULL,
airline_password VARCHAR2(25) NOT NULL,
CONSTRAINT fk_airline_accounts_airline_id FOREIGN KEY (airline_id) REFERENCES airlines(id)
)
/

CREATE TABLE airports(
id number(2) not null primary key,
name varchar2(50),
city varchar2(40),
country varchar2(40)
)
/

CREATE TABLE Discount_cards(
id number(3) not null primary key,
airline_id number(2),
name varchar2(20),
discount number(2),
price number(4),
validity number(3),
CONSTRAINT fk_discount_cards_airline_id FOREIGN KEY (airline_id) REFERENCES airlines(id)
)
/

CREATE TABLE bought_cards(
passenger_id INT NOT NULL,
id_card number(3),
expiration_date date,
CONSTRAINT fk_bought_cards_id_card FOREIGN KEY (id_card) REFERENCES discount_cards(id),
CONSTRAINT fk_bought_cards_passenger_id FOREIGN KEY (passenger_id) REFERENCES passengers(id)
)
/

CREATE TABLE flights(
id number(5) not null primary key,
airline_id number(2),
origin number(2),
destination number(2),
departure_date date,
arrival_date date,
base_price number(4),
number_tickets number(3),
ensurance_price number(3),
CONSTRAINT fk_flight_airline_id FOREIGN KEY (airline_id) REFERENCES airlines(id),
CONSTRAINT fk_flight_origin FOREIGN KEY (origin) REFERENCES airports(id),
CONSTRAINT fk_flight_destination FOREIGN KEY (destination) REFERENCES airports(id)
)
/

CREATE TABLE bookings(
id number(7) not null primary key,
flight_id number(5),
passenger_id INT NOT NULL,
airline_id number(2),
final_price number(4),
ensurance number(4),
luggace number(2),
seat number(3),
CONSTRAINT fk_booking_flight_id FOREIGN KEY (flight_id) REFERENCES flights(id),
CONSTRAINT fk_booking_passenger_id FOREIGN KEY (passenger_id) REFERENCES passengers(id),
CONSTRAINT fk_booking_airline_id FOREIGN KEY (airline_id) REFERENCES airlines(id)
)
/


declare
--Passenger
last_names vc_arr:=vc_arr('Mantz','Jerratsch','Formigli','McCrann','Blasgen','Adamthwaite','Redihough','Thoumasson','Southward','Chaney','Harrod','Cianni','Kmiec','Delgaty','Fanner','Stitle','Gownge','Chubb','Glendining','Kingsnoad','Snadden','Dungay','Torrejon','Want','Naptine','Rushforth','Elmore','Brookfield','Disbrey','Gorvette','Betterton','Lightoller','Kordova','Prescote','Landell','Beals','Colqueran','Youel','Wurz','Bolesworth','McVee','Kless','Kenny','Ghirigori','Lantiff','Burras','Middas','Huggons','Wasielewicz','Northage','Watford','Stennett','Reubel','Mc Coughan','Zielinski','Littler','Voice','Houltham','Skells','Cheesley','Burnep','Pasticznyk','Van Der Walt','Carverhill','Manston','Hasel','Bilston','Breeds','Betho','Chaytor','Dougary','Duxfield','Renshall','Yanyshev','Shrimpton','Chidler','Stapforth','Bemand','Mueller','Rene','Shakesby','Quarrell','Lock','Bowering','Hazeman','Inglese','Cunah','Torns','Mackerel','Apfel','Local','Lupton','Burnie','Skoof','Pindell','Headington','Kenford','Bladesmith','Cannop','Eltun','Barthrup','Wiggington','Deave','Liebrecht','Scrowby','Mounch','Somersett','Sherred','De Malchar','Okell','Maddie','Petrasso','Lahrs','Blagbrough','Dameisele','Sheivels','Arnault','Goldsbury','Frankland','Scoble','McAndie','Cumberledge','Bucktrout','Wondraschek','Cuddy','Vigneron','Norwood','Hamlet','Camden','Dytham','Blackie','Bedham','Bowra','Dimmack','Clemoes','Barneveld','De Micoli','Etchell','Bolgar','Shawdforth','Hunnaball','Mein','Ludmann','Shrimpling','McShirie','Tabner','Iveagh','Slyne','Nesey','Hofer','St. Quintin','Splain','Sambiedge','Scattergood','Farington','Matton','Give','Fyers','Sabate','Dumphreys','Punton','Averies','Reichert','Prazer','Stanyer','Grinham','Weinberg','Norssister','Reubel','Pleasaunce','Canner','Tatlowe','Ilson','Reford','Lorincz','Crumley','Prevost','Kinsella','Grigore','Rosgen','Knox','Manach','Tedman','Dyett','Aldie','Rivitt','Acom','Austen','Robers','Coggins','Leathe','Gritton','Lanfere','Michie','Cantua','Raiker','Laughtisse','Oxborrow','Rigglesford','Songust','Stewart','Risely','Perone','Winterbottom','Stonehewer','Dorkins','De la Yglesia','Vickery','Lynam','Hammerberger','Drewery','Sartain','MacGilmartin','Smerdon','Duckels','Phizackarley','Fassam','Rickman','Whewell','Mattacks','Ruffle','Nibloe','Samsworth','Lunny','Grinham','Karel','Brownlee','Duffer','Evanson','Caldecutt','Sprouls','Braun','Macari','Burgess','Kordova','Innot','Woltman','McFarland','Deble','Smalcombe','Elen','McRannell','De Angelis','Storry','Gartland','Fassbender','Connechie','Merfin','Yaus','Pharrow','Worvill','McDyer','Taaffe','Amoore','Cricket','Letherbury','Glasheen','MacRanald','Gehricke','Symondson','Grote','Surpliss','Bradfield','Charleston','Beament','Dundredge','Busfield','Christophle','Danahar','Middup','Simeonov','Jackes','Shew','Idle','Goldston','Salazar','Biggadike','Medcraft','Bosomworth','Beardall','Cottom','Wharrier','Gopsall','Winnard','Vischi','Barbera','McFadin','Alejandro','Johnikin','Lincke','Roderham','Bruckent','Honacker','Scanlin','Cassin','Oakes','Lamberth','Szwandt','Lutwyche','Duerden','Runsey','Redemile','Gorler','Geke','Dossett','Musson','Striker','Jiggen','Leall','Whittlesey','Harle','Mace','Montague','MacPadene','Julian','Peinton','Craigie','Dunne','McQuillan','Biggen','Niesing','Mafham','Moorfield','Kimbrough','Gazey','Willisch','Wildman','Riding','Digle','Caselli','Coltart','Basset','Jozefiak','Rake','Jakubovitch','Andreotti','Morrice','Coggin','Royle','Seide','Melpuss','Tunsley','Coverly','Cootes','Ritchings','Denniston','Warrack','Anten','Wayman','Brophy','Bagnall','Klimpke','Alvarado','Selbie','Gosford','Yu','Egle','Pordal','Shrigley','Rosgen','Sheriff','Gumbley','Covely','Gillett','Statton','Braham','Kalvin','Careless','Sheringham','Slainey','Sherlock','Myderscough','Blonden','Danilin','McGhee','Gonnel','Noblet','Curtis','Thying','Weafer','Fosh','Armell','Lishman','Petrus','Jearum','Risborough','Gooday','Beauvais','Twigley','Jekyll','Loveredge','Richardes','Southers','Litzmann','Chaloner','Ferroli','Wilshin','Payton','Rief','Adran','Valance','Longmire','Everill','Godier','Charlewood','Tippler','Midlane','Barizeret','McMorran','Gepheart','Billings','Grishenkov','Lethibridge','Treacy','Ingarfield','Adamolli','Etheridge','Poyser','Harmston','Archibald','Murrigans','Alesin','Rowell','Hlavac','Charsley','Wreath','Renner','Dursley','Sommers','Paulson','Blenkinsopp','Aldwich','Serrels','Hattersley','Vedntyev','Goodright','Beltzner','Wainwright','Sabbatier','Kimbrey','Grzelak','Postgate','Moverley','Becker','Strattan','Fonzone','Dring','Frankcombe','Bugdall','Imloch','Este','Laird','Sprague','Troth','Bond','Litel','Cow','Bucknall','Matveyev','Calcut','Andren','Corran','MacTavish','Liddell','Castri','Dennerly','Steels','Peverell','Jackways','Lattos','Extill','Codi','Cruess','Lopes','Flarity','MacConnal','Woolaghan','Stainson','Osboldstone','Dybald','Rudkin','Dicty','Brewers','Donizeau','Bernard','Kubanek','Elford','Brymham','Kentish','Dedden','Ibotson','Vuittet','Bendixen','Pidwell','Tue','Cottey','Stickles','Moller','Hughlock','Pabel','Gabbitas','Ilett','Whitcombe','Vinau','Terrington','Pickup','Laven','Twallin','Rickword','Valler','Prozescky','Wrightim','Gonnel','Cordet','Cathrae','Philippsohn','Seavers','Hillburn','Stieger','Carass','Cheney','Izakoff','Bradbury','Tavernor','Colicot','Priestnall','Hodge','Turfitt','Fleckney','Bengal','Clougher','Duplain','Saddleton','Queenborough','Arangy','Piggford','Flukes','Sayward','Radke','Hayward','Joreau','Buer','Athy','Patkin','Vondrak','Ambrogioni','Barnard','Whereat','Jado','Kingsman','McElvine','Prestland','Beech','Jinkins','Sims','Martineau','Varns','Cellone','Maskall','Greenwell','Powdrell','Ducker','Lobb','Aurelius','Cockle','Gaywood','Seath','Bazoge','McConnell','Clewlowe','Rustadge','Capozzi','Ricards','Boardman','Siney','Burrett','Potzold','Cholmondeley','Harnott','Devenport','Vern','Liebermann','Biscomb','Haggata','Pritty','Houtby','Steaning','McGrae','Braybrookes','MacAlpin','Beining','Gilbey','Hebborn','Schuricht','Londsdale','Hurch','Kohnemann','Aughton','Sneath','Rogliero','McGillacoell','Sambells','Tremoille','Mucci','Bubbings','Bramley','Bowcock','Edis','Joberne','Willers','Redwin','Adamovicz','Arkow','Kevlin','Elton','Weatherill','Matyushkin','Doumerque','Drieu','Kleint','McElane','Merrall','Blencoe','Attlee','Akeherst','Mattussevich','Caiger','Pendrid','Yandell','Galvan','Langtry','Jannequin','Queste','Connealy','Mongan','McWaters','Dusey','Grzelak','Reignould','Fochs','Moorerud','Excell','Alabaster','Burress','Stronge','Wilstead','Tesyro','Fenech','Mattheeuw','Woodus','McGucken','Trowell','Alans','Lambotin','Grisenthwaite','Schmidt','Pirazzi','Bootman','Pirri','Chidler','Spanswick','Everton','Dufton','Copnar','Lowton','Hoonahan','Gilbee','Worden','Di Bartolommeo','Gatherer','Martinets','Walburn','Canelas','Petersen','Haberfield','Meneer','Nazareth','Bockman','Delle','Featherby','Bendare','Mayberry','Nolda','Maccari','Lundon','Jillett','Briscam','Pieter','Bute','Krishtopaittis','Buten','Fearnsides','Winter','Hubbard','Knaggs','Timblett','Fleote','Sumpter','Halliwell','Kleinstein','Husby','Bourner','Troup','Petche','Jankiewicz','Reef','Rothert','Smowton','De Vere','Rubinsztein','Livett','Kuban','Orritt','Cumbes','Sans','Meugens','Dowgill','Cecchetelli','Cridland','Jirak','Hutable','Mattheissen','Walworche','Covill','Roaf','Stenett','Marousek','Ducroe','Banton','Pullen','Gillhespy','Probert','Muddicliffe','Critten','Giraldon','Collens','Leathlay','Fernely','Feldberger','Cheverell','Axford','Spoure','Osgordby','Chugg','Mattson','Milesap','Eyres','Newlove','Tease','Romanski','De Meyer','Sayer','Vinsen','Fillery','Claffey','Patroni','Brotheridge','Wakefield','Seeks','Edgerley','Donson','Tremlett','Hoolaghan','Crossthwaite','Totton','Ferrarese','Drews','Wesson','Brownbill','Peachey','Linfield','Seally','Cracoe','Blumsom','Bellsham','Jone','Canto','Pietroni','Manis','Hatzar','Hanretty','Barstock','Andreassen','Vanes','Forbes','Philippard','Winterflood','Dunhill','Ohlsen','Stobart','Souness','Ellcome','Burkett','Dominici','Froud','Tadd','Alekhov','Branson','Alywen','Tabert','Iohananof','Chong','Giacomi','Brunning','Stockton','Marklow','Neat','Balls','Rickson','Putnam','Bumpass','Burnep','Kittoe','Trangmar','Gotch','Sodo','Jodrelle','Talton','Charer','Barroux','Millmoe','Joerning','Meech','Stockle','Santora','Chastan','Henriet','Fernanando','Scoffins','Matt','Simoncello','Mapston','Isakov','Westmorland','Manktelow','Shreenan','Stener','Yeowell','Nehls','Crosseland','Camm','Watting','Albone','Gurling','Creaser','Noads','Kinnie','Pleager','Denness','Cutting','Emanueli','Chisolm','Willavize','Zorzi','Leithgoe','Buye','Marklow','Haggie','Briggs','Foucar','Houlston','Streather','Askin','Willoughey','Albone','Scrimshire','Hessel','Tancock','Seal','Gregolotti','Fransoni','Paulo','Heselwood','Kew','Fishwick','Hammerich','Aloshikin','Slowan','Mordacai','Kester','Tomaszek','Cromett','Earpe','Woolger','Butt Gow','Liebermann','Wrench','Gilliard','Merring','Mulliss','Gurling','Cisar','Jurca','Headan','Beaby','Kubacek','Tuite','Strowther','Cogar','Cunah','Macklam','Feehely','Binne','Pargeter','Hellewell','Cordingly','Skittrell','Glasscock','McComiskie','Powe','Sinderson','Oddie','Kleinlerer','Towner','Basset','Bottlestone','Evison','Fonteyne','Pashbee','Leefe','Dicey','Althrop','Fishbourn','Larrett','Meert','Walton','Dulanty','Prop','Lockley','Richfield','Jalland','Trimmell','Eger','Sinnett','Stringfellow','Bartke','Van de Castele','Windows','Gypson','Birkenshaw','Leaver','Esplin','Collaton','Caddick','Rekes','Trevna','Naile','Briscoe','Wait','Nacey','Marking','Campling','Bentinck','Kirrage','Lovewell','Ivanyukov','Hayley','Golding','Revitt','Crawshay','Mion','Jiroudek','Oake','Tadd','Beniesh','Adamowicz','Buchanan','Pettus','Bento','Gritland','Kemson','Tapenden','While','Vance','Fuge','Guile','Tamburo','Badsworth','Lockey','Surfleet','MacKissack','Sebire','Gowland','Heinonen','Iianon','Schwandt','McNickle','Walsh','Zylbermann','Sedworth');
first_names_male vc_arr:=vc_arr('Sergeant','Roberto','Vasili','Fonz','Kaspar','Siffre','Alick','Adriano','Briant','Duffie','Ximenez','Porty','Sigismondo','Silvain','Chan','Bil','Tomlin','Peter','Iver','Horst','Jacobo','Wolfgang','Chariot','Hobard','Tobin','Al','Selby','Hewe','Wilmar','Alan','Lev','Isidor','Augustin','Gardie','Bar','Cristian','Townsend','Lazaro','Findlay','Myrvyn','Ikey','Johnathon','Curran','Werner','Egan','Harmon','Leupold','Tabb','Woodie','Aksel','Benedicto','Frasquito','Kerwin','Isiahi','Ollie','Valle','Gradey','Kerby','Gallard','Kipper','Terencio','Tyrus','Jules','Barrett','Bartholomew','Elston','Domenic','Berkly','Ker','Marietta','Cleon','Zeke','Monte','Fran','Leonid','Rustie','Aguistin','Jarret','Jack','Vincenty','Raffarty','Cesare','Cully','Norrie','Budd','Jermaine','Cece','Leeland','Artur','Jethro','Darren','Bondie','Skyler','Stevie','Padget','Urbano','Parker','Jayson','Dewie','Jamil','Gilburt','Eziechiele','Malchy','Darbee','Onfre','Thor','Cece','Wit','Zachariah','Barclay','Mac','Chancey','Garreth','Rustie','Grange','Bill','Gavin','Adrian','Engelbert','Willem','Raphael','Emory','Bobby','Gabriello','Ave','Thatcher','Hy','King','Britt','Henderson','Gael','Jammal','Kimbell','Ricardo','Gal','Derrik','Franklyn','Wolf','Giffer','Keen','Shannon','Earlie','Wolfie','Claiborne','Maxwell','Rusty','Murry','Jacobo','Marlin','Keefe','Cleon','Silvester','Kerr','Mikael','Trumaine','Kris','Reginauld','Dana','Bennett','Tye','Parrnell','Saw','Alleyn','Barnebas','Stefano','Kennith','Ruddie','Peder','Goober','Waylin','Nye','Jean','Carmine','Sigismondo','Pacorro','Ellary','Elwood','Edan','Blaine','Fairleigh','Kaleb','Robert','Eb','Vlad','Victor','Rube','Grenville','Hyman','Liam','Erick','Norton','Johnathan','Gayler','Devlin','Zolly','Beltran','Addie','Konrad','Noby','Flemming','Gawen','Grant','Jim','Hubie','Hogan','Danie','Randal','Wolfgang','Merell','Ulberto','Morten','Nahum','Miller','Gael','Garv','Austen','Bertram','Lazare','Frederik','Ogdan','Otto','Augy','Gibbie','Blane','Torin','Thomas','Abner','Gram','Phil','Cosimo','Roger','Lou','Leroy','Carr','Hanson','Harper','Damian','Lemar','Noby','Grace','Ferguson','Shell','Verney','Rab','Koenraad','Adolph','Alvis','Sarge','Lutero','Ailbert','Hunter','Bryant','Brendin','Leigh','Jeno','Andrew','Decca','Silvano','Wilbur','Saundra','Hamel','Isac','Findley','Ryan','Anton','Hewitt','Elwyn','Ari','Tedie','Marsh','Roger','Dominik','Walker','Gerald','Frederic','Sheffie','Wallache','Ephrayim','Mikey','Skell','Jarid','Conrado','Jae','Evered','Philip','Wilbert','Eric','Colan','Hillel','Etienne','Ruttger','Verney','Sigmund','Solomon','Ferd','Hillel','North','Silvanus','Hillary','Peyter','Kristo','Maurits','Marv','Lisle','Addy','Alvin','Aleksandr','Chase','Brian','Adelbert','Sholom','Ken','Sasha','Hadlee','Tobiah','Gabriele','Gerek','Rourke','Karel','Lawrence','Wyndham','Marlow','Gualterio','Artemas','Ryun','Brandyn','Dugald','Toddie','Red','Chaim','Skippie','Waylan','Levy','Giacomo','Delano','Berkly','Rodge','Melvin','Niel','Dom','Noll','Tiler','Loy','Humbert','Arnaldo','Morey','Lemar','Isidoro','Heriberto','Mohandas','Hardy','Karlens','Jarret','Vladimir','Bruno','Prentiss','Alexandro','Charlton','Lorne','Arel','Edlin','Julie','Saunders','Karlik','El','Morie','Lauritz','Clay','Keir','Elliott','Webb','Arin','Raynard','Lin','Keefe','Nichole','Myron','Salvidor','Mata','Porter','Fax','Scottie','Wallie','Maxim','Hugues','Neddie','Shurwood','George','Byram','Vic','Granville','Dilan','Ody','Byrom','Claire','Saul','Jackson','Vernen','Damian','Zeke','Martie','Lennard','Domingo','Kain','Dimitri','Lawry','Garald','Raimund','Augustus','Thaddus','Gannie','Jorge','Bernarr','Iosep','Austin','Tamas','Court','Fabien','Nefen','Ryan','Garrick','Hyatt','Norby','Dougie','Herby','Ford','Goraud','Perceval','Holden','Arley','Aubrey','Man','Garrett','Devland','Daniel','Hastings','Nathaniel','Casar','Greggory','Erasmus','Tailor','Bartolemo','Buddy','Gonzalo','Ramon','Haleigh','Moe','Tomkin','Ulberto','Angus','Vasily','Dru','Ware','Amory','Clyde','Brady','Bruce','Denney','Adams','Anatollo','Langsdon','Forbes','Reider','Dirk','Marcos','Carmine','Ferdinand','Alonso','Ber','Glen','Amble','Sal','Cart','Isiahi','Arther','Rossy','Mordy','Rollins','Fields','Riccardo','Eduardo','Witty','Padgett','Cirstoforo','Bern','Walden','Barnabas','Moses','Flint','Thomas','Urban','Daniel','Mendel','Vern','Justus','Matteo','Early','Jack','Gustavus','Eward');
first_names_female vc_arr:=vc_arr('Candace','Joela','Edita','Vyky','Novelia','Jaquelin','Barbette','Gretal','Kessiah','Lolly','Colline','Daryl','Loleta','Emiline','Sonni','Myrtie','Marthe','Taryn','Mari','Fayette','Haily','Aurelie','Angele','Marianna','Candide','Shannen','Blanca','Eryn','Janean','Nadine','Kristina','Teirtza','Mariann','Harrietta','Carin','Georgia','Hermia','Indira','Candra','Clemence','Daisie','Ferne','Cassy','Adelina','Mil','Anya','Simone','Meredithe','Bellina','Josefina','Jerrie','Pen','Marilyn','Albina','Hailee','Bobbye','Chloris','Kris','Janeczka','Vida','Meriel','Della','Blinni','Marcellina','Lizzy','Karina','Lethia','Dorolisa','Tamma','Mia','Suzette','Ediva','Gertrud','Jehanna','Theo','Celisse','Dinny','Chrissy','Sidonnie','Carolee','Wendie','Valencia','Hannah','Sonja','Karylin','Darline','Doralynne','Colene','Elysee','Erma','Melinda','Aigneis','Ki','Jerry','Sarita','Marja','Griselda','Marcie','Allie','Gail','Sydney','Meaghan','Jemimah','Adriane','Viv','Noni','Arleyne','Nettle','Alene','Denna','Isis','Henrietta','Rea','Violette','Yasmeen','Jonie','Charlena','Crista','Maible','Daffy','Fallon','Darline','Valeria','Cathyleen','Gerry','Theressa','Norine','Germaine','Nady','Ruby','Beatriz','Nomi','Charin','Elfreda','Brandais','Maegan','Olympe','Hedi','Lora','Tiphany','Bendite','Malva','Juditha','Kathie','Dody','Blair','Merci','Trina','Dolorita','Damita','Shirlee','Kimbra','Laurianne','Johannah','Gypsy','Sallie','Elayne','Marys','Saraann','Daniela','Zorine','Ava','Cory','Tamma','Jemmy','Ranique','Talya','Sisely','Abbye','Kira','Camile','Annalise','Carlynn','Eolande','Cassi','Fernanda','Shina','Abbey','Elle','Tildi','Birgit','Kassie','Britta','Kellyann','Lorrayne','Jodie','Arielle','Nicki','Pierrette','Ardath','Lissie','Sharona','Cindi','Jess','Laurice','Lynne','Dorrie','Chrissy','Christian','Jeannine','Babbette','Janifer','Dix','Ramona','Adda','Pietra','Lori','Ailina','Cynde','Emlyn','Zondra','Jo','Christina','Rici','Abra','Dusty','Alejandrina','Leah','Rosalie','Riva','Bekki','Tiffany','Ania','Ingaberg','Carolann','Odele','Guillema','Dominga','Catharine','Josy','Winnah','Delila','Morgan','Giovanna','Marie-ann','Geri','Loni','Rhea','Kally','Allx','Aleta','Gert','Tybi','Gertrudis','Caril','Nicoli','Tiff','Devondra','Reeta','Vally','Willow','Ardeen','Giovanna','Claudia','Donia','Claudie','Ambur','Aubrey','Lonee','Hildagarde','Josselyn','Karen','Livvie','Therese','Christal','Marlene','Caressa','Mellisa','Jeannie','Dinah','Abagail','Halli','Lidia','Karola','Lilian','Sonny','Mariele','Lynnea','Gwenora','Ingrid','Hope','Abigael','Gillian','Rhiamon','Isis','Alethea','Tresa','Tedi','Angela','Bettye','Myrle','Tess','Wally','Isabelle','Daile','Nata','Gwennie','Daveen','Bab','Eleonore','Emeline','Michell','Vinita','Horatia','Myra','Therese','Aloisia','Hedda','Latia','Lynelle','Corene','Consuela','Candida','Alexandrina','Charil','Tommie','Rafa','Germana','Mirelle','Desiri','Joanie','Kelsi','Pearline','Irita','Darcy','Nona','Ami','Davina','Robin','Lianna','Edithe','Concordia','Karol','Susy','Cami','Aeriell','Rhody','Naoma','Kylie','Agata','Rhetta','Jessalin','Lilyan','Diane-marie','Conny','Sisile','Demetris','Coriss','Rene','Ame','Aprilette','Ange','Minnie','Winne','Annadiana','Tessa','Regan','Malynda','Nedda','Ethelyn','Aarika','Elene','Minetta','Daveta','Brita','Blondell','Odilia','Charmion','Nonnah','Roxine','Valera','Kristy','Lynn','Shandie','Odille','Euphemia','Carrissa','Darda','Cthrine','Karisa','Maddi','Nevsa','Dorie','Nessy','Tobe','Midge','Berni','Ania','Caria','Ashlan','Mignon','Yetty','Jacquetta','Carmella','Gilda','Ashleigh','Roxana','Kial','Shaylynn','Angeline','Leena','Blake','Amelia','Mariska','Donielle','Sheeree','Libbey','Fiann','Elysee','Gilligan','Jacynth','Catha','Kimmie','Marris','Katina','Blanch','Allyn','Etheline','Dania','Karita','Bellina','Salome','Charisse','Dyane','Estella','Patience','Chastity','Lindsy','Lissa','Gunilla','Celina','Henrie','Dani','Bonnee','Harley','Clemmie','Vonnie','Catha','Winifred','Lorilyn','Natalee','Merlina','Laurie','Daryn','Lizabeth','Diannne','Trescha','Raine','Sigrid','Eleen','Zorana','Megen','Phillis','Bobbi','Shari','Dulcy','Doti','Anneliese','Darelle','Shari','Amaleta','Blakeley','Donnamarie','Courtnay','Angeline','Ninetta','Marta','Sammy','Lari','Dennie','Merola','Gypsy','Missie','Adore','Maudie','Layne','Katharine','Ulrica','Dinny','Rosalinde','Denise','Rubina','Valina','Terrye','Opalina','Devonne','Krissie','Alfi','Fredra','Cleo','Sheeree','Rochella','Dorri','Margot','Fanechka','Camille','Saudra','Barb','Rosanna','Madeline');
nationalities vc_arr:=vc_arr('romanian','english','mexican','nigerian','irish','iranian','indian','chinese','japanese','russian','columbian','italian','portuguese','lithuanian','french','swiss','swede','turk','bulgarian','dominican','greek','korean','kenyan','egyptian');
mail_domains vc_arr:=vc_arr('gmail.com','yahoo.com','yahoo.ro','rocketmail.com','hotmail.com','aol.com','hotmail.co.uk','hotmail.fr','msn.com','hotmail.fr');

v_cnp number(13):=1000000000000;
v_last_name varchar2(50);
v_first_name varchar2(50);
v_gender varchar2(10);
v_birth_date DATE;
v_nationality varchar2(50);
v_email varchar2(80);

--Airline
airline_names vc_arr:=vc_arr('Wizz Air','Blue Air','Ryanair','Turkish Airlines','EasyJet','Lufthansa','Pegas Fly','Eurowings','British Airways','Air France-KLM');
v_airline_name varchar2(40);

--Airport
airport_names vc_arr:=vc_arr('Henri Coanda International Airport','Iasi International Airport','Avram Iancu International Airport Cluj','Orio al Serio International Airport','Malpensa Airport','Dublin Airport','Brussels Airport','Charles de Gaulle Airport','Barcelona�El Prat Airport','Lisbon Portela Airport','London City Airport','Sofia International Airport','Haneda Airport','John F. Kennedy International Airport','Toronto Pearson International Airport');
airport_cities vc_arr:=vc_arr('Bucharest','Iasi','Cluj-Napoca','Milan','Milan','Dublin','Brussel','Paris','Barcelona','Lisbon','London','Sofia','Tokyo','New York City','Mississauga');
airport_countries vc_arr:=vc_arr('Romania','Romania','Romania','Italia','Italia','Ireland','Belgium','France','Spain','Portugal','United Kingdom','Bulgaria','Japan','New York','Canada');

v_airport_name varchar2(50);
v_airport_city varchar2(20);
v_airport_country varchar2(20);

--Discount_card
card_names vc_arr:=vc_arr('Discount Club','Fidelity Club','Priority Club');

v_discount number(2);
v_price number(2);
v_validity number(3);
v_card_name varchar2(25);

--Bought_cards
v_expiration_date DATE;
v_count_passengers number(8);
v_count_cards number(8);
v_id_card number(8);
v_id_passenger number(8);

--Flight
v_count_airline number(8);
v_count_airport number(8);
v_airline_id number(8);
v_airport_id number(8);
v_airport_id2 number(8);
v_departure_date DATE;
v_arrival_date DATE;
v_rand_float float;
v_base_price number(3);
v_tickets number(3);
v_ensurance number(2);

--Booking
v_final_price number(4);
v_ensurance_pay number(8);
v_luggage number(2);
v_seat number(3);
v_count_flight number(8);
v_id_flight number(8);

--Airline account
v_username varchar2(30);
v_password varchar2(25);

v_rand_val number(10);
begin
DBMS_OUTPUT.PUT_LINE('Inserare 1_000_000 pasageri');
FOR v_i IN 1..1000 LOOP

v_last_name:=last_names(DBMS_RANDOM.VALUE(1,last_names.count));
v_rand_val:= DBMS_RANDOM.VALUE(1,2);
if v_rand_val=1 then
v_first_name:=first_names_male(DBMS_RANDOM.VALUE(1,first_names_male.count));
v_gender:='male';
else
v_first_name:=first_names_female(DBMS_RANDOM.VALUE(1,first_names_male.count));
v_gender:='female';
end if;
v_birth_date:=to_date('1950-01-01', 'yyyy-mm-dd')+trunc(dbms_random.value(1,364*55));
v_nationality:=nationalities(DBMS_RANDOM.VALUE(1,nationalities.count));
v_rand_val:= DBMS_RANDOM.VALUE(1,99);
v_email:= lower(v_first_name)||'.'||lower(v_last_name)||v_rand_val||'@'||mail_domains(DBMS_RANDOM.VALUE(1,mail_domains.count));

v_cnp:=v_cnp+1;

insert into passengers values(v_i,v_cnp,v_first_name,v_last_name,v_gender,v_birth_date,v_nationality,v_email);

END LOOP;
--Airline
DBMS_OUTPUT.PUT_LINE('Inseram '|| airline_names.count||' firme de zbor');
FOR v_i IN 1..airline_names.count LOOP
v_airline_name:=airline_names(v_i);
insert into airlines values(v_i,v_airline_name);
end loop;
--Airport
DBMS_OUTPUT.PUT_LINE('Inseram '|| airport_names.count||' aeroporturi');
for v_i in 1..airport_names.count loop
v_airport_name:=airport_names(v_i);
v_airport_city:=airport_cities(v_i);
v_airport_country:=airport_countries(v_i);
insert into airports values(v_i,v_airport_name,v_airport_city,v_airport_country);
end loop;
--Discount_card
DBMS_OUTPUT.PUT_LINE('Inseram '|| airline_names.count*3||' carduri reducere');
for v_i in 1..airline_names.count loop
  for v_j in 1..3 loop
    v_card_name:=card_names(v_j);
    v_discount:=DBMS_RANDOM.VALUE(5,15);
    v_price:=DBMS_RANDOM.VALUE(10,60);
    v_validity:=DBMS_RANDOM.VALUE(180,365);
    insert into discount_cards values((v_i-1)*3+v_j,v_i,v_card_name,v_discount,v_price,v_validity);
  end loop;
end loop;

--Bought_cards
select count(*)into v_count_passengers from passengers;
select count(*)into v_count_cards from discount_cards;
for v_i in 1..250 loop
v_expiration_date:=to_date('2019-07-01','yyyy-mm-dd')+trunc(dbms_random.value(1,365));
v_id_passenger:=dbms_random.value(1,v_count_passengers);
v_id_card:=dbms_random.value(1,v_count_cards);
insert into bought_cards values(v_id_passenger,v_id_card,v_expiration_date);
end loop;

--Flight
select count(*) into v_count_airline from airlines;
select count(*) into v_count_airport from airports;
for v_i in 1..250 loop
v_airline_id:=dbms_random.value(1,v_count_airline);
v_airport_id:=dbms_random.value(1,v_count_airport);
v_airport_id2:=dbms_random.value(1,v_count_airport);
while v_airport_id=v_airport_id2 loop
v_airport_id2:=dbms_random.value(1,v_count_airport);
end loop;
v_rand_val:=dbms_random.value(10,365);
v_rand_float:=dbms_random.value(1.00, 24.00);
v_departure_date:= SYSDATE + v_rand_val + v_rand_float/24;
v_rand_float:=dbms_random.value(3.00, 8.00);
v_arrival_date:=v_departure_date+v_rand_float/24;
v_base_price:=dbms_random.value(50,500);
v_tickets:=dbms_random.value(100,200);
v_ensurance:=dbms_random.value(30,80);
insert into flights values(v_i,v_airline_id,v_airport_id,v_airport_id2,v_departure_date,v_arrival_date,v_base_price,v_tickets,v_ensurance);
end loop;
--Booking
select count(*) into v_count_flight from flights;
for v_i in 1..10000 loop
--v_final_price dbms_random.value(50,500);
--v_ensurance_pay number(3);
v_id_flight:=dbms_random.value(1,v_count_flight);
v_id_passenger:=dbms_random.value(1,v_count_passengers);
v_airline_id:=dbms_random.value(1,v_count_airline);
select base_price into v_final_price from flights where id=v_id_flight;
v_final_price:=v_final_price+ dbms_random.value(50,100);
select ensurance_price into v_ensurance_pay from flights where id=v_id_flight;
v_ensurance_pay:=dbms_random.value(0,1)*v_ensurance_pay*10;
v_luggage:=round(dbms_random.value(1,2))*10;
select number_tickets into v_seat from flights where id=v_id_flight;
v_seat:=dbms_random.value(1,v_seat);
insert into bookings values(v_i,v_id_flight,v_id_passenger,v_airline_id,v_final_price,v_ensurance_pay,v_luggage,v_seat);
end loop;

for v_i in 1..v_count_airline loop
v_rand_val:=dbms_random.value(1,247);
v_password:='password'||v_rand_val;
SELECT lower(REPLACE(name,' ', '_')) into v_username from airlines where id=v_i;
insert into airline_accounts values(v_i,v_username,v_password);
end loop;
end;
