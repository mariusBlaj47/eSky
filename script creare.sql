DROP TABLE PASSENGER CASCADE CONSTRAINTS
/
DROP TABLE AIRLINE CASCADE CONSTRAINTS
/
DROP TABLE BOUGHT CASCADE CONSTRAINTS
/
DROP TABLE DISCOUNT_CARD CASCADE CONSTRAINTS
/
DROP TABLE FLIGHT CASCADE CONSTRAINTS
/
DROP TABLE BOOKING CASCADE CONSTRAINTS
/
DROP TABLE AIRPORT CASCADE CONSTRAINTS
/

CREATE TABLE AIRLINE(
id INT NOT NULL PRIMARY KEY,
nume VARCHAR2(25) NOT NULL UNIQUE
)

create or replace type vc_arr as table of varchar2(50);

set serveroutput on;

declare
--Passenger
last_names vc_arr:=vc_arr('Mantz','Jerratsch','Formigli','McCrann','Blasgen','Adamthwaite','Redihough','Thoumasson','Southward','Chaney','Harrod','Cianni','Kmiec','Delgaty','Fanner','Stitle','Gownge','Chubb','Glendining','Kingsnoad','Snadden','Dungay','Torrejon','Want','Naptine','Rushforth','Elmore','Brookfield','Disbrey','Gorvette','Betterton','Lightoller','Kordova','Prescote','Landell','Beals','Colqueran','Youel','Wurz','Bolesworth','McVee','Kless','Kenny','Ghirigori','Lantiff','Burras','Middas','Huggons','Wasielewicz','Northage','Watford','Stennett','Reubel','Mc Coughan','Zielinski','Littler','Voice','Houltham','Skells','Cheesley','Burnep','Pasticznyk','Van Der Walt','Carverhill','Manston','Hasel','Bilston','Breeds','Betho','Chaytor','Dougary','Duxfield','Renshall','Yanyshev','Shrimpton','Chidler','Stapforth','Bemand','Mueller','Rene','Shakesby','Quarrell','Lock','Bowering','Hazeman','Inglese','Cunah','Torns','Mackerel','Apfel','Local','Lupton','Burnie','Skoof','Pindell','Headington','Kenford','Bladesmith','Cannop','Eltun','Barthrup','Wiggington','Deave','Liebrecht','Scrowby','Mounch','Somersett','Sherred','De Malchar','Okell','Maddie','Petrasso','Lahrs','Blagbrough','Dameisele','Sheivels','Arnault','Goldsbury','Frankland','Scoble','McAndie','Cumberledge','Bucktrout','Wondraschek','Cuddy','Vigneron','Norwood','Hamlet','Camden','Dytham','Blackie','Bedham','Bowra','Dimmack','Clemoes','Barneveld','De Micoli','Etchell','Bolgar','Shawdforth','Hunnaball','Mein','Ludmann','Shrimpling','McShirie','Tabner','Iveagh','Slyne','Nesey','Hofer','St. Quintin','Splain','Sambiedge','Scattergood','Farington','Matton','Give','Fyers','Sabate','Dumphreys','Punton','Averies','Reichert','Prazer','Stanyer','Grinham','Weinberg','Norssister','Reubel','Pleasaunce','Canner','Tatlowe','Ilson','Reford','Lorincz','Crumley','Prevost','Kinsella','Grigore','Rosgen','Knox','Manach','Tedman','Dyett','Aldie','Rivitt','Acom','Austen','Robers','Coggins','Leathe','Gritton','Lanfere','Michie','Cantua','Raiker','Laughtisse','Oxborrow','Rigglesford','Songust','Stewart','Risely','Perone','Winterbottom','Stonehewer','Dorkins','De la Yglesia','Vickery','Lynam','Hammerberger','Drewery','Sartain','MacGilmartin','Smerdon','Duckels','Phizackarley','Fassam','Rickman','Whewell','Mattacks','Ruffle','Nibloe','Samsworth','Lunny','Grinham','Karel','Brownlee','Duffer','Evanson','Caldecutt','Sprouls','Braun','Macari','Burgess','Kordova','Innot','Woltman','McFarland','Deble','Smalcombe','Elen','McRannell','De Angelis','Storry','Gartland','Fassbender','Connechie','Merfin','Yaus','Pharrow','Worvill','McDyer','Taaffe','Amoore','Cricket','Letherbury','Glasheen','MacRanald','Gehricke','Symondson','Grote','Surpliss','Bradfield','Charleston','Beament','Dundredge','Busfield','Christophle','Danahar','Middup','Simeonov','Jackes','Shew','Idle','Goldston','Salazar','Biggadike','Medcraft','Bosomworth','Beardall','Cottom','Wharrier','Gopsall','Winnard','Vischi','Barbera','McFadin','Alejandro','Johnikin','Lincke','Roderham','Bruckent','Honacker','Scanlin','Cassin','Oakes','Lamberth','Szwandt','Lutwyche','Duerden','Runsey','Redemile','Gorler','Geke','Dossett','Musson','Striker','Jiggen','Leall','Whittlesey','Harle','Mace','Montague','MacPadene','Julian','Peinton','Craigie','Dunne','McQuillan','Biggen','Niesing','Mafham','Moorfield','Kimbrough','Gazey','Willisch','Wildman','Riding','Digle','Caselli','Coltart','Basset','Jozefiak','Rake','Jakubovitch','Andreotti','Morrice','Coggin','Royle','Seide','Melpuss','Tunsley','Coverly','Cootes','Ritchings','Denniston','Warrack','Anten','Wayman','Brophy','Bagnall','Klimpke','Alvarado','Selbie','Gosford','Yu','Egle','Pordal','Shrigley','Rosgen','Sheriff','Gumbley','Covely','Gillett','Statton','Braham','Kalvin','Careless','Sheringham','Slainey','Sherlock','Myderscough','Blonden','Danilin','McGhee','Gonnel','Noblet','Curtis','Thying','Weafer','Fosh','Armell','Lishman','Petrus','Jearum','Risborough','Gooday','Beauvais','Twigley','Jekyll','Loveredge','Richardes','Southers','Litzmann','Chaloner','Ferroli','Wilshin','Payton','Rief','Adran','Valance','Longmire','Everill','Godier','Charlewood','Tippler','Midlane','Barizeret','McMorran','Gepheart','Billings','Grishenkov','Lethibridge','Treacy','Ingarfield','Adamolli','Etheridge','Poyser','Harmston','Archibald','Murrigans','Alesin','Rowell','Hlavac','Charsley','Wreath','Renner','Dursley','Sommers','Paulson','Blenkinsopp','Aldwich','Serrels','Hattersley','Vedntyev','Goodright','Beltzner','Wainwright','Sabbatier','Kimbrey','Grzelak','Postgate','Moverley','Becker','Strattan','Fonzone','Dring','Frankcombe','Bugdall','Imloch','Este','Laird','Sprague','Troth','Bond','Litel','Cow','Bucknall','Matveyev','Calcut','Andren','Corran','MacTavish','Liddell','Castri','Dennerly','Steels','Peverell','Jackways','Lattos','Extill','Codi','Cruess','Lopes','Flarity','MacConnal','Woolaghan','Stainson','Osboldstone','Dybald','Rudkin','Dicty','Brewers','Donizeau','Bernard','Kubanek','Elford','Brymham','Kentish','Dedden','Ibotson','Vuittet','Bendixen','Pidwell','Tue','Cottey','Stickles','Moller','Hughlock','Pabel','Gabbitas','Ilett','Whitcombe','Vinau','Terrington','Pickup','Laven','Twallin','Rickword','Valler','Prozescky','Wrightim','Gonnel','Cordet','Cathrae','Philippsohn','Seavers','Hillburn','Stieger','Carass','Cheney','Izakoff','Bradbury','Tavernor','Colicot','Priestnall','Hodge','Turfitt','Fleckney','Bengal','Clougher','Duplain','Saddleton','Queenborough','Arangy','Piggford','Flukes','Sayward','Radke','Hayward','Joreau','Buer','Athy','Patkin','Vondrak','Ambrogioni','Barnard','Whereat','Jado','Kingsman','McElvine','Prestland','Beech','Jinkins','Sims','Martineau','Varns','Cellone','Maskall','Greenwell','Powdrell','Ducker','Lobb','Aurelius','Cockle','Gaywood','Seath','Bazoge','McConnell','Clewlowe','Rustadge','Capozzi','Ricards','Boardman','Siney','Burrett','Potzold','Cholmondeley','Harnott','Devenport','Vern','Liebermann','Biscomb','Haggata','Pritty','Houtby','Steaning','McGrae','Braybrookes','MacAlpin','Beining','Gilbey','Hebborn','Schuricht','Londsdale','Hurch','Kohnemann','Aughton','Sneath','Rogliero','McGillacoell','Sambells','Tremoille','Mucci','Bubbings','Bramley','Bowcock','Edis','Joberne','Willers','Redwin','Adamovicz','Arkow','Kevlin','Elton','Weatherill','Matyushkin','Doumerque','Drieu','Kleint','McElane','Merrall','Blencoe','Attlee','Akeherst','Mattussevich','Caiger','Pendrid','Yandell','Galvan','Langtry','Jannequin','Queste','Connealy','Mongan','McWaters','Dusey','Grzelak','Reignould','Fochs','Moorerud','Excell','Alabaster','Burress','Stronge','Wilstead','Tesyro','Fenech','Mattheeuw','Woodus','McGucken','Trowell','Alans','Lambotin','Grisenthwaite','Schmidt','Pirazzi','Bootman','Pirri','Chidler','Spanswick','Everton','Dufton','Copnar','Lowton','Hoonahan','Gilbee','Worden','Di Bartolommeo','Gatherer','Martinets','Walburn','Canelas','Petersen','Haberfield','Meneer','Nazareth','Bockman','Delle','Featherby','Bendare','Mayberry','Nolda','Maccari','Lundon','Jillett','Briscam','Pieter','Bute','Krishtopaittis','Buten','Fearnsides','Winter','Hubbard','Knaggs','Timblett','Fleote','Sumpter','Halliwell','Kleinstein','Husby','Bourner','Troup','Petche','Jankiewicz','Reef','Rothert','Smowton','De Vere','Rubinsztein','Livett','Kuban','Orritt','Cumbes','Sans','Meugens','Dowgill','Cecchetelli','Cridland','Jirak','Hutable','Mattheissen','Walworche','Covill','Roaf','Stenett','Marousek','Ducroe','Banton','Pullen','Gillhespy','Probert','Muddicliffe','Critten','Giraldon','Collens','Leathlay','Fernely','Feldberger','Cheverell','Axford','Spoure','Osgordby','Chugg','Mattson','Milesap','Eyres','Newlove','Tease','Romanski','De Meyer','Sayer','Vinsen','Fillery','Claffey','Patroni','Brotheridge','Wakefield','Seeks','Edgerley','Donson','Tremlett','Hoolaghan','Crossthwaite','Totton','Ferrarese','Drews','Wesson','Brownbill','Peachey','Linfield','Seally','Cracoe','Blumsom','Bellsham','Jone','Canto','Pietroni','Manis','Hatzar','Hanretty','Barstock','Andreassen','Vanes','Forbes','Philippard','Winterflood','Dunhill','Ohlsen','Stobart','Souness','Ellcome','Burkett','Dominici','Froud','Tadd','Alekhov','Branson','Alywen','Tabert','Iohananof','Chong','Giacomi','Brunning','Stockton','Marklow','Neat','Balls','Rickson','Putnam','Bumpass','Burnep','Kittoe','Trangmar','Gotch','Sodo','Jodrelle','Talton','Charer','Barroux','Millmoe','Joerning','Meech','Stockle','Santora','Chastan','Henriet','Fernanando','Scoffins','Matt','Simoncello','Mapston','Isakov','Westmorland','Manktelow','Shreenan','Stener','Yeowell','Nehls','Crosseland','Camm','Watting','Albone','Gurling','Creaser','Noads','Kinnie','Pleager','Denness','Cutting','Emanueli','Chisolm','Willavize','Zorzi','Leithgoe','Buye','Marklow','Haggie','Briggs','Foucar','Houlston','Streather','Askin','Willoughey','Albone','Scrimshire','Hessel','Tancock','Seal','Gregolotti','Fransoni','Paulo','Heselwood','Kew','Fishwick','Hammerich','Aloshikin','Slowan','Mordacai','Kester','Tomaszek','Cromett','Earpe','Woolger','Butt Gow','Liebermann','Wrench','Gilliard','Merring','Mulliss','Gurling','Cisar','Jurca','Headan','Beaby','Kubacek','Tuite','Strowther','Cogar','Cunah','Macklam','Feehely','Binne','Pargeter','Hellewell','Cordingly','Skittrell','Glasscock','McComiskie','Powe','Sinderson','Oddie','Kleinlerer','Towner','Basset','Bottlestone','Evison','Fonteyne','Pashbee','Leefe','Dicey','Althrop','Fishbourn','Larrett','Meert','Walton','Dulanty','Prop','Lockley','Richfield','Jalland','Trimmell','Eger','Sinnett','Stringfellow','Bartke','Van de Castele','Windows','Gypson','Birkenshaw','Leaver','Esplin','Collaton','Caddick','Rekes','Trevna','Naile','Briscoe','Wait','Nacey','Marking','Campling','Bentinck','Kirrage','Lovewell','Ivanyukov','Hayley','Golding','Revitt','Crawshay','Mion','Jiroudek','Oake','Tadd','Beniesh','Adamowicz','Buchanan','Pettus','Bento','Gritland','Kemson','Tapenden','While','Vance','Fuge','Guile','Tamburo','Badsworth','Lockey','Surfleet','MacKissack','Sebire','Gowland','Heinonen','Iianon','Schwandt','McNickle','Walsh','Zylbermann','Sedworth');
first_names_male vc_arr:=vc_arr('Sergeant','Roberto','Vasili','Fonz','Kaspar','Siffre','Alick','Adriano','Briant','Duffie','Ximenez','Porty','Sigismondo','Silvain','Chan','Bil','Tomlin','Peter','Iver','Horst','Jacobo','Wolfgang','Chariot','Hobard','Tobin','Al','Selby','Hewe','Wilmar','Alan','Lev','Isidor','Augustin','Gardie','Bar','Cristian','Townsend','Lazaro','Findlay','Myrvyn','Ikey','Johnathon','Curran','Werner','Egan','Harmon','Leupold','Tabb','Woodie','Aksel','Benedicto','Frasquito','Kerwin','Isiahi','Ollie','Valle','Gradey','Kerby','Gallard','Kipper','Terencio','Tyrus','Jules','Barrett','Bartholomew','Elston','Domenic','Berkly','Ker','Marietta','Cleon','Zeke','Monte','Fran','Leonid','Rustie','Aguistin','Jarret','Jack','Vincenty','Raffarty','Cesare','Cully','Norrie','Budd','Jermaine','Cece','Leeland','Artur','Jethro','Darren','Bondie','Skyler','Stevie','Padget','Urbano','Parker','Jayson','Dewie','Jamil','Gilburt','Eziechiele','Malchy','Darbee','Onfre','Thor','Cece','Wit','Zachariah','Barclay','Mac','Chancey','Garreth','Rustie','Grange','Bill','Gavin','Adrian','Engelbert','Willem','Raphael','Emory','Bobby','Gabriello','Ave','Thatcher','Hy','King','Britt','Henderson','Gael','Jammal','Kimbell','Ricardo','Gal','Derrik','Franklyn','Wolf','Giffer','Keen','Shannon','Earlie','Wolfie','Claiborne','Maxwell','Rusty','Murry','Jacobo','Marlin','Keefe','Cleon','Silvester','Kerr','Mikael','Trumaine','Kris','Reginauld','Dana','Bennett','Tye','Parrnell','Saw','Alleyn','Barnebas','Stefano','Kennith','Ruddie','Peder','Goober','Waylin','Nye','Jean','Carmine','Sigismondo','Pacorro','Ellary','Elwood','Edan','Blaine','Fairleigh','Kaleb','Robert','Eb','Vlad','Victor','Rube','Grenville','Hyman','Liam','Erick','Norton','Johnathan','Gayler','Devlin','Zolly','Beltran','Addie','Konrad','Noby','Flemming','Gawen','Grant','Jim','Hubie','Hogan','Danie','Randal','Wolfgang','Merell','Ulberto','Morten','Nahum','Miller','Gael','Garv','Austen','Bertram','Lazare','Frederik','Ogdan','Otto','Augy','Gibbie','Blane','Torin','Thomas','Abner','Gram','Phil','Cosimo','Roger','Lou','Leroy','Carr','Hanson','Harper','Damian','Lemar','Noby','Grace','Ferguson','Shell','Verney','Rab','Koenraad','Adolph','Alvis','Sarge','Lutero','Ailbert','Hunter','Bryant','Brendin','Leigh','Jeno','Andrew','Decca','Silvano','Wilbur','Saundra','Hamel','Isac','Findley','Ryan','Anton','Hewitt','Elwyn','Ari','Tedie','Marsh','Roger','Dominik','Walker','Gerald','Frederic','Sheffie','Wallache','Ephrayim','Mikey','Skell','Jarid','Conrado','Jae','Evered','Philip','Wilbert','Eric','Colan','Hillel','Etienne','Ruttger','Verney','Sigmund','Solomon','Ferd','Hillel','North','Silvanus','Hillary','Peyter','Kristo','Maurits','Marv','Lisle','Addy','Alvin','Aleksandr','Chase','Brian','Adelbert','Sholom','Ken','Sasha','Hadlee','Tobiah','Gabriele','Gerek','Rourke','Karel','Lawrence','Wyndham','Marlow','Gualterio','Artemas','Ryun','Brandyn','Dugald','Toddie','Red','Chaim','Skippie','Waylan','Levy','Giacomo','Delano','Berkly','Rodge','Melvin','Niel','Dom','Noll','Tiler','Loy','Humbert','Arnaldo','Morey','Lemar','Isidoro','Heriberto','Mohandas','Hardy','Karlens','Jarret','Vladimir','Bruno','Prentiss','Alexandro','Charlton','Lorne','Arel','Edlin','Julie','Saunders','Karlik','El','Morie','Lauritz','Clay','Keir','Elliott','Webb','Arin','Raynard','Lin','Keefe','Nichole','Myron','Salvidor','Mata','Porter','Fax','Scottie','Wallie','Maxim','Hugues','Neddie','Shurwood','George','Byram','Vic','Granville','Dilan','Ody','Byrom','Claire','Saul','Jackson','Vernen','Damian','Zeke','Martie','Lennard','Domingo','Kain','Dimitri','Lawry','Garald','Raimund','Augustus','Thaddus','Gannie','Jorge','Bernarr','Iosep','Austin','Tamas','Court','Fabien','Nefen','Ryan','Garrick','Hyatt','Norby','Dougie','Herby','Ford','Goraud','Perceval','Holden','Arley','Aubrey','Man','Garrett','Devland','Daniel','Hastings','Nathaniel','Casar','Greggory','Erasmus','Tailor','Bartolemo','Buddy','Gonzalo','Ramon','Haleigh','Moe','Tomkin','Ulberto','Angus','Vasily','Dru','Ware','Amory','Clyde','Brady','Bruce','Denney','Adams','Anatollo','Langsdon','Forbes','Reider','Dirk','Marcos','Carmine','Ferdinand','Alonso','Ber','Glen','Amble','Sal','Cart','Isiahi','Arther','Rossy','Mordy','Rollins','Fields','Riccardo','Eduardo','Witty','Padgett','Cirstoforo','Bern','Walden','Barnabas','Moses','Flint','Thomas','Urban','Daniel','Mendel','Vern','Justus','Matteo','Early','Jack','Gustavus','Eward');
first_names_female vc_arr:=vc_arr('Candace','Joela','Edita','Vyky','Novelia','Jaquelin','Barbette','Gretal','Kessiah','Lolly','Colline','Daryl','Loleta','Emiline','Sonni','Myrtie','Marthe','Taryn','Mari','Fayette','Haily','Aurelie','Angele','Marianna','Candide','Shannen','Blanca','Eryn','Janean','Nadine','Kristina','Teirtza','Mariann','Harrietta','Carin','Georgia','Hermia','Indira','Candra','Clemence','Daisie','Ferne','Cassy','Adelina','Mil','Anya','Simone','Meredithe','Bellina','Josefina','Jerrie','Pen','Marilyn','Albina','Hailee','Bobbye','Chloris','Kris','Janeczka','Vida','Meriel','Della','Blinni','Marcellina','Lizzy','Karina','Lethia','Dorolisa','Tamma','Mia','Suzette','Ediva','Gertrud','Jehanna','Theo','Celisse','Dinny','Chrissy','Sidonnie','Carolee','Wendie','Valencia','Hannah','Sonja','Karylin','Darline','Doralynne','Colene','Elysee','Erma','Melinda','Aigneis','Ki','Jerry','Sarita','Marja','Griselda','Marcie','Allie','Gail','Sydney','Meaghan','Jemimah','Adriane','Viv','Noni','Arleyne','Nettle','Alene','Denna','Isis','Henrietta','Rea','Violette','Yasmeen','Jonie','Charlena','Crista','Maible','Daffy','Fallon','Darline','Valeria','Cathyleen','Gerry','Theressa','Norine','Germaine','Nady','Ruby','Beatriz','Nomi','Charin','Elfreda','Brandais','Maegan','Olympe','Hedi','Lora','Tiphany','Bendite','Malva','Juditha','Kathie','Dody','Blair','Merci','Trina','Dolorita','Damita','Shirlee','Kimbra','Laurianne','Johannah','Gypsy','Sallie','Elayne','Marys','Saraann','Daniela','Zorine','Ava','Cory','Tamma','Jemmy','Ranique','Talya','Sisely','Abbye','Kira','Camile','Annalise','Carlynn','Eolande','Cassi','Fernanda','Shina','Abbey','Elle','Tildi','Birgit','Kassie','Britta','Kellyann','Lorrayne','Jodie','Arielle','Nicki','Pierrette','Ardath','Lissie','Sharona','Cindi','Jess','Laurice','Lynne','Dorrie','Chrissy','Christian','Jeannine','Babbette','Janifer','Dix','Ramona','Adda','Pietra','Lori','Ailina','Cynde','Emlyn','Zondra','Jo','Christina','Rici','Abra','Dusty','Alejandrina','Leah','Rosalie','Riva','Bekki','Tiffany','Ania','Ingaberg','Carolann','Odele','Guillema','Dominga','Catharine','Josy','Winnah','Delila','Morgan','Giovanna','Marie-ann','Geri','Loni','Rhea','Kally','Allx','Aleta','Gert','Tybi','Gertrudis','Caril','Nicoli','Tiff','Devondra','Reeta','Vally','Willow','Ardeen','Giovanna','Claudia','Donia','Claudie','Ambur','Aubrey','Lonee','Hildagarde','Josselyn','Karen','Livvie','Therese','Christal','Marlene','Caressa','Mellisa','Jeannie','Dinah','Abagail','Halli','Lidia','Karola','Lilian','Sonny','Mariele','Lynnea','Gwenora','Ingrid','Hope','Abigael','Gillian','Rhiamon','Isis','Alethea','Tresa','Tedi','Angela','Bettye','Myrle','Tess','Wally','Isabelle','Daile','Nata','Gwennie','Daveen','Bab','Eleonore','Emeline','Michell','Vinita','Horatia','Myra','Therese','Aloisia','Hedda','Latia','Lynelle','Corene','Consuela','Candida','Alexandrina','Charil','Tommie','Rafa','Germana','Mirelle','Desiri','Joanie','Kelsi','Pearline','Irita','Darcy','Nona','Ami','Davina','Robin','Lianna','Edithe','Concordia','Karol','Susy','Cami','Aeriell','Rhody','Naoma','Kylie','Agata','Rhetta','Jessalin','Lilyan','Diane-marie','Conny','Sisile','Demetris','Coriss','Rene','Ame','Aprilette','Ange','Minnie','Winne','Annadiana','Tessa','Regan','Malynda','Nedda','Ethelyn','Aarika','Elene','Minetta','Daveta','Brita','Blondell','Odilia','Charmion','Nonnah','Roxine','Valera','Kristy','Lynn','Shandie','Odille','Euphemia','Carrissa','Darda','Cthrine','Karisa','Maddi','Nevsa','Dorie','Nessy','Tobe','Midge','Berni','Ania','Caria','Ashlan','Mignon','Yetty','Jacquetta','Carmella','Gilda','Ashleigh','Roxana','Kial','Shaylynn','Angeline','Leena','Blake','Amelia','Mariska','Donielle','Sheeree','Libbey','Fiann','Elysee','Gilligan','Jacynth','Catha','Kimmie','Marris','Katina','Blanch','Allyn','Etheline','Dania','Karita','Bellina','Salome','Charisse','Dyane','Estella','Patience','Chastity','Lindsy','Lissa','Gunilla','Celina','Henrie','Dani','Bonnee','Harley','Clemmie','Vonnie','Catha','Winifred','Lorilyn','Natalee','Merlina','Laurie','Daryn','Lizabeth','Diannne','Trescha','Raine','Sigrid','Eleen','Zorana','Megen','Phillis','Bobbi','Shari','Dulcy','Doti','Anneliese','Darelle','Shari','Amaleta','Blakeley','Donnamarie','Courtnay','Angeline','Ninetta','Marta','Sammy','Lari','Dennie','Merola','Gypsy','Missie','Adore','Maudie','Layne','Katharine','Ulrica','Dinny','Rosalinde','Denise','Rubina','Valina','Terrye','Opalina','Devonne','Krissie','Alfi','Fredra','Cleo','Sheeree','Rochella','Dorri','Margot','Fanechka','Camille','Saudra','Barb','Rosanna','Madeline');
nationalities vc_arr:=vc_arr('romanian','english','mexican','nigerian','irish','iranian','indian','chinese','japanese','russian','columbian','italian','portuguese','lithuanian','french','swiss','swede','turk','bulgarian','dominican','greek','korean','kenyan','egyptian');
mail_domains vc_arr:=vc_arr('gmail.com','yahoo.com','yahoo.ro','rocketmail.com','hotmail.com','aol.com','hotmail.co.uk','hotmail.fr','msn.com','hotmail.fr');

v_cnp number(13):=1000000000000;
v_last_name varchar2(35);
v_first_name varchar2(35);
v_gender varchar2(10);
v_birth_date DATE;
v_nationality varchar2(25);
v_email varchar2(50);

--Airline
airline_names vc_arr:=vc_arr('Wizz Air','Blue Air','Ryanair','Turkish Airlines','EasyJet','Lufthansa','Pegas Fly','Eurowings','British Airways','Air France-KLM');
v_airline_name varchar2(40);

--Airport
airport_names vc_arr:=vc_arr('Henri Coand? International Airport','Iasi International Airport','Avram Iancu International Airport Cluj','Orio al Serio International Airport','Malpensa Airport','Dublin Airport','Brussels Airport','Charles de Gaulle Airport','Barcelona–El Prat Airport','Lisbon Portela Airport','London City Airport','Sofia International Airport','Haneda Airport','John F. Kennedy International Airport','Toronto Pearson International Airport');
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

--Bought
v_expiration_date DATE;

v_rand_val number(5);
begin
DBMS_OUTPUT.PUT_LINE('Inserare 1_000_000 pasageri');
FOR v_i IN 1..1025 LOOP

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


DBMS_OUTPUT.PUT_LINE(v_cnp||' '||v_first_name||' '||v_last_name||' '||v_gender||' '||v_birth_date||' '||v_nationality||' '||v_email);

v_cnp:=v_cnp+DBMS_RANDOM.VALUE(1,47474747);

END LOOP;
--Airline
DBMS_OUTPUT.PUT_LINE('Inseram '|| airline_names.count||' firme de zbor');
FOR v_i IN 1..airline_names.count LOOP
v_airline_name:=airline_names(v_i);
DBMS_OUTPUT.PUT_LINE(v_airline_name);
end loop;
--Airport
DBMS_OUTPUT.PUT_LINE('Inseram '|| airport_names.count||' aeroporturi');
for v_i in 1..airport_names.count loop
v_airport_name:=airport_names(v_i);
v_airport_city:=airport_cities(v_i);
v_airport_country:=airport_countries(v_i);
DBMS_OUTPUT.PUT_LINE(v_airport_name||' '||v_airport_city||' '||v_airport_country);
end loop;
--Discount_card
DBMS_OUTPUT.PUT_LINE('Inseram '|| airline_names.count*3||' carduri reducere');
for v_i in 1..airline_names.count loop
  for v_j in 1..3 loop
    v_card_name:=card_names(v_j);
    v_discount:=DBMS_RANDOM.VALUE(5,15);
    v_price:=DBMS_RANDOM.VALUE(10,60);
    v_validity:=DBMS_RANDOM.VALUE(180,365);
    DBMS_OUTPUT.PUT_LINE(v_card_name||' '||v_discount||' '||v_price||' '||v_validity);
  end loop;
end loop;
v_expiration_date:=to_date('2019-07-01','yyyy-mm-dd')+trunc(dbms_random.value(1,365));
end;


//tester

declare
--v_rand_val number(5);
begin
--v_rand_val:= DBMS_RANDOM.VALUE(1,2);
DBMS_OUTPUT.PUT_LINE(to_date('1950-01-01', 'yyyy-mm-dd')+trunc(dbms_random.value(1,364*55)));
end;

--endsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsfendsadsafaasfsasgafasfsfafsf

SET SERVEROUTPUT ON;
DECLARE
  create or replace type vc_arr as table of varchar2(35);
  first_names varr := varr('Ababei','Acasandrei','Adascalitei','Afanasie','Agafitei','Agape','Aioanei','Alexandrescu','Alexandru','Alexe','Alexii','Amarghioalei','Ambroci','Andonesei','Andrei','Andrian','Andrici','Andronic','Andros','Anghelina','Anita','Antochi','Antonie','Apetrei','Apostol','Arhip','Arhire','Arteni','Arvinte','Asaftei','Asofiei','Aungurenci','Avadanei','Avram','Babei','Baciu','Baetu','Balan','Balica','Banu','Barbieru','Barzu','Bazgan','Bejan','Bejenaru','Belcescu','Belciuganu','Benchea','Bilan','Birsanu','Bivol','Bizu','Boca','Bodnar','Boistean','Borcan','Bordeianu','Botezatu','Bradea','Braescu','Budaca','Bulai','Bulbuc-aioanei','Burlacu','Burloiu','Bursuc','Butacu','Bute','Buza','Calancea','Calinescu','Capusneanu','Caraiman','Carbune','Carp','Catana','Catiru','Catonoiu','Cazacu','Cazamir','Cebere','Cehan','Cernescu','Chelaru','Chelmu','Chelmus','Chibici','Chicos','Chilaboc','Chile','Chiriac','Chirila','Chistol','Chitic','Chmilevski','Cimpoesu','Ciobanu','Ciobotaru','Ciocoiu','Ciofu','Ciornei','Citea','Ciucanu','Clatinici','Clim','Cobuz','Coca','Cojocariu','Cojocaru','Condurache','Corciu','Corduneanu','Corfu','Corneanu','Corodescu','Coseru','Cosnita','Costan','Covatariu','Cozma','Cozmiuc','Craciunas','Crainiceanu','Creanga','Cretu','Cristea','Crucerescu','Cumpata','Curca','Cusmuliuc','Damian','Damoc','Daneliuc','Daniel','Danila','Darie','Dascalescu','Dascalu','Diaconu','Dima','Dimache','Dinu','Dobos','Dochitei','Dochitoiu','Dodan','Dogaru','Domnaru','Dorneanu','Dragan','Dragoman','Dragomir','Dragomirescu','Duceac','Dudau','Durnea','Edu','Eduard','Eusebiu','Fedeles','Ferestraoaru','Filibiu','Filimon','Filip','Florescu','Folvaiter','Frumosu','Frunza','Galatanu','Gavrilita','Gavriliuc','Gavrilovici','Gherase','Gherca','Ghergu','Gherman','Ghibirdic','Giosanu','Gitlan','Giurgila','Glodeanu','Goldan','Gorgan','Grama','Grigore','Grigoriu','Grosu','Grozavu','Gurau','Haba','Harabula','Hardon','Harpa','Herdes','Herscovici','Hociung','Hodoreanu','Hostiuc','Huma','Hutanu','Huzum','Iacob','Iacobuta','Iancu','Ichim','Iftimesei','Ilie','Insuratelu','Ionesei','Ionesi','Ionita','Iordache','Iordache-tiroiu','Iordan','Iosub','Iovu','Irimia','Ivascu','Jecu','Jitariuc','Jitca','Joldescu','Juravle','Larion','Lates','Latu','Lazar','Leleu','Leon','Leonte','Leuciuc','Leustean','Luca','Lucaci','Lucasi','Luncasu','Lungeanu','Lungu','Lupascu','Lupu','Macariu','Macoveschi','Maftei','Maganu','Mangalagiu','Manolache','Manole','Marcu','Marinov','Martinas','Marton','Mataca','Matcovici','Matei','Maties','Matrana','Maxim','Mazareanu','Mazilu','Mazur','Melniciuc-puica','Micu','Mihaela','Mihai','Mihaila','Mihailescu','Mihalachi','Mihalcea','Mihociu','Milut','Minea','Minghel','Minuti','Miron','Mitan','Moisa','Moniry-abyaneh','Morarescu','Morosanu','Moscu','Motrescu','Motroi','Munteanu','Murarasu','Musca','Mutescu','Nastaca','Nechita','Neghina','Negrus','Negruser','Negrutu','Nemtoc','Netedu','Nica','Nicu','Oana','Olanuta','Olarasu','Olariu','Olaru','Onu','Opariuc','Oprea','Ostafe','Otrocol','Palihovici','Pantiru','Pantiruc','Paparuz','Pascaru','Patachi','Patras','Patriche','Perciun','Perju','Petcu','Pila','Pintilie','Piriu','Platon','Plugariu','Podaru','Poenariu','Pojar','Popa','Popescu','Popovici','Poputoaia','Postolache','Predoaia','Prisecaru','Procop','Prodan','Puiu','Purice','Rachieru','Razvan','Reut','Riscanu','Riza','Robu','Roman','Romanescu','Romaniuc','Rosca','Rusu','Samson','Sandu','Sandulache','Sava','Savescu','Schifirnet','Scortanu','Scurtu','Sfarghiu','Silitra','Simiganoschi','Simion','Simionescu','Simionesei','Simon','Sitaru','Sleghel','Sofian','Soficu','Sparhat','Spiridon','Stan','Stavarache','Stefan','Stefanita','Stingaciu','Stiufliuc','Stoian','Stoica','Stoleru','Stolniceanu','Stolnicu','Strainu','Strimtu','Suhani','Tabusca','Talif','Tanasa','Teclici','Teodorescu','Tesu','Tifrea','Timofte','Tincu','Tirpescu','Toader','Tofan','Toma','Toncu','Trifan','Tudosa','Tudose','Tuduri','Tuiu','Turcu','Ulinici','Unghianu','Ungureanu','Ursache','Ursachi','Urse','Ursu','Varlan','Varteniuc','Varvaroi','Vasilache','Vasiliu','Ventaniuc','Vicol','Vidru','Vinatoru','Vlad','Voaides','Vrabie','Vulpescu','Zamosteanu','Zazuleac');
  lista_prenume_fete varr := varr('Adina','Alexandra','Alina','Ana','Anca','Anda','Andra','Andreea','Andreia','Antonia','Bianca','Camelia','Claudia','Codrina','Cristina','Daniela','Daria','Delia','Denisa','Diana','Ecaterina','Elena','Eleonora','Elisa','Ema','Emanuela','Emma','Gabriela','Georgiana','Ileana','Ilona','Ioana','Iolanda','Irina','Iulia','Iuliana','Larisa','Laura','Loredana','Madalina','Malina','Manuela','Maria','Mihaela','Mirela','Monica','Oana','Paula','Petruta','Raluca','Sabina','Sanziana','Simina','Simona','Stefana','Stefania','Tamara','Teodora','Theodora','Vasilica','Xena');
  
  lista_materii_an_1 varr := varr('Logicã', 'Matematicã', 'Introducere în programare', 'Arhitectura calculatoarelor ºi sisteme de operare', 'Sisteme de operare', 'Programare orientatã-obiect', 'Fundamente algebrice ale informaticii', 'Probabilitã?i ºi statisticã');
  lista_materii_an_2 varr := varr('Re?ele de calculatoare', 'Baze de date', 'Limbaje formale, automate ºi compilatoare', 'Algoritmica grafurilor', 'Tehnologii WEB', 'Programare avansatã', '	Ingineria Programãrii', 'Practicã SGBD');
  lista_materii_an_3 varr := varr('Învã?are automatã', 'Securitatea informa?iei', 'Inteligen?ã artificialã', 'Practicã - Programare în Python', 'Calcul numeric', 'Graficã pe calculator', 'Managementul clasei de elevi', 'Re?ele Petri ºi aplica?ii');
  lista_grade_diactice varr := varr('Colaborator','Asistent','Lector','Conferentiar','Profesor');
      
  v_nume VARCHAR2(255);
  v_prenume VARCHAR2(255);
  v_prenume1 VARCHAR2(255);
  v_prenume2 VARCHAR2(255);
  v_matr VARCHAR2(6);
  v_matr_aux VARCHAR2(6);
  v_temp int;
  v_temp1 int;
  v_temp2 int;
  v_temp3 int;
  v_temp_date date;
  v_an int;
  v_grupa varchar2(2);
  v_bursa int;
  v_data_nastere date;  
  v_email varchar2(40);
BEGIN
  
   DBMS_OUTPUT.PUT_LINE('Inserarea a 1025 studenti...');
   FOR v_i IN 1..1025 LOOP
      --SELECT SUBSTR(NAME, INSTR(NAME,' ')) INTO v_nume FROM (SELECT * FROM USERS WHERE INSTR(NAME,' ')>1 ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM=1;
      --IF length(v_nume)>20 then v_nume:=substr(v_nume,1,20); end if;
      v_nume := lista_nume(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume.count))+1);
      IF (DBMS_RANDOM.VALUE(0,100)<50) THEN      
         v_prenume1 := lista_prenume_fete(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_fete.count))+1);
         LOOP
            v_prenume2 := lista_prenume_fete(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_fete.count))+1);
            exit when v_prenume1<>v_prenume2;
         END LOOP;
       ELSE
         v_prenume1 := lista_prenume_baieti(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_baieti.count))+1);
         LOOP
            v_prenume2 := lista_prenume_baieti(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_baieti.count))+1);
            exit when v_prenume1<>v_prenume2;
         END LOOP;       
       END IF;
     
     IF (DBMS_RANDOM.VALUE(0,100)<60) THEN  
        IF LENGTH(v_prenume1 || ' ' || v_prenume2) <= 20 THEN
          v_prenume := v_prenume1 || ' ' || v_prenume2;
        END IF;
        else 
           v_prenume:=v_prenume1;
      END IF;       
       
      LOOP
         v_matr := FLOOR(DBMS_RANDOM.VALUE(100,999)) || CHR(FLOOR(DBMS_RANDOM.VALUE(65,91))) || CHR(FLOOR(DBMS_RANDOM.VALUE(65,91))) || FLOOR(DBMS_RANDOM.VALUE(0,9));
         select count(*) into v_temp from studenti where nr_matricol = v_matr;
         exit when v_temp=0;
      END LOOP;
              
      LOOP      
        v_an := TRUNC(DBMS_RANDOM.VALUE(0,3))+1;
        v_grupa := chr(TRUNC(DBMS_RANDOM.VALUE(0,2))+65) || chr(TRUNC(DBMS_RANDOM.VALUE(0,6))+49);
        select count(*) into v_temp from studenti where an=v_an and grupa=v_grupa;
        exit when v_temp < 30;
      END LOOP;
      
      v_bursa := '';
      IF (DBMS_RANDOM.VALUE(0,100)<10) THEN
         v_bursa := TRUNC(DBMS_RANDOM.VALUE(0,10))*100 + 500;
      END IF;
      
      v_data_nastere := TO_DATE('01-01-1974','MM-DD-YYYY')+TRUNC(DBMS_RANDOM.VALUE(0,365));
      
      v_temp:='';
      v_email := lower(v_nume ||'.'|| v_prenume1);
      LOOP         
         select count(*) into v_temp from studenti where email = v_email||v_temp;
         exit when v_temp=0;
         v_temp :=  TRUNC(DBMS_RANDOM.VALUE(0,100));
      END LOOP;    
      
      if (TRUNC(DBMS_RANDOM.VALUE(0,2))=0) then v_email := v_email ||'@gmail.com';
         else v_email := v_email ||'@info.ro';
      end if;
                      
      --DBMS_OUTPUT.PUT_LINE (v_i||' '||v_matr||' '||v_nume||' '||v_prenume ||' '|| v_an ||' '|| v_grupa||' '|| v_bursa||' '|| to_char(v_data_nastere, 'DD-MM-YYYY')||' '|| v_email);      
      insert into studenti values(v_i, v_matr, v_nume, v_prenume, v_an, v_grupa, v_bursa, v_data_nastere, v_email, sysdate, sysdate);
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('Inserarea a 1025 studenti... GATA !');
   
   
   
   /*
   
   -- this runs slow
   select count(*) into v_temp from studenti;
   FOR v_i IN 1..30000 LOOP          
       v_temp1 :=  TRUNC(DBMS_RANDOM.VALUE(0,v_temp-1))+1;
       v_temp2 :=  TRUNC(DBMS_RANDOM.VALUE(0,v_temp-1))+1;
       select count(*) into v_temp3 from prieteni where id_student1=v_temp1 and id_student2=v_temp2;
       IF (v_temp3=0) THEN 
          v_data_nastere := (sysdate-TRUNC(DBMS_RANDOM.VALUE(0,1000)));
          insert into prieteni values(v_i, v_temp1, v_temp2, v_data_nastere, v_data_nastere);          
       END IF;
   END LOOP;

   -- de refacut bucata de mai sus
   */
   -- this runs faster
   select count(*) into v_temp from studenti;
   FOR v_i IN 1..20000 LOOP   
       LOOP
          v_temp1 :=  TRUNC(DBMS_RANDOM.VALUE(0,v_temp-1))+1;
          v_temp2 :=  TRUNC(DBMS_RANDOM.VALUE(0,v_temp-1))+1;
          EXIT WHEN v_temp1<>v_temp2;
       END LOOP;
       DECLARE 
       BEGIN
          --DBMS_OUTPUT.PUT_LINE(v_temp1 || ' ' || v_temp2);
          v_data_nastere := (sysdate-TRUNC(DBMS_RANDOM.VALUE(0,1000)));
          insert into prieteni values(v_i, v_temp1, v_temp2, v_data_nastere, v_data_nastere); 
          exception 
             when OTHERS then null;
       END;
   END LOOP;   
      
   
   DBMS_OUTPUT.PUT_LINE('Inserarea matreriilor...');
   FOR v_i IN 1..8 LOOP
      IF (v_i<5) THEN v_temp := 1; ELSE v_temp := 2; END IF;
      IF (v_i IN (2,3,6,7)) THEN v_temp1 := 5; END IF; 
      IF (v_i IN (1,5)) THEN v_temp1 := 4; END IF; 
      IF (v_i IN (4,8)) THEN v_temp1 := 6; END IF; 
      insert into cursuri values (v_i, lista_materii_an_1(v_i), 1, v_temp, v_temp1, sysdate-1200, sysdate-1200);
   END LOOP;
   
   FOR v_i IN 1..8 LOOP
      IF (v_i<5) THEN v_temp := 1; ELSE v_temp := 2; END IF;
      IF (v_i IN (2,3,6,7)) THEN v_temp1 := 5; END IF; 
      IF (v_i IN (1,5)) THEN v_temp1 := 4; END IF; 
      IF (v_i IN (4,8)) THEN v_temp1 := 6; END IF; 
      insert into cursuri values (v_i+8, lista_materii_an_2(v_i), 2, v_temp, v_temp1, sysdate-1200, sysdate-1200);
   END LOOP;
   
   FOR v_i IN 1..8 LOOP
      IF (v_i<5) THEN v_temp := 1; ELSE v_temp := 2; END IF;
      IF (v_i IN (2,3,6,7)) THEN v_temp1 := 5; END IF; 
      IF (v_i IN (1,5)) THEN v_temp1 := 4; END IF; 
      IF (v_i IN (4,8)) THEN v_temp1 := 6; END IF; 
      insert into cursuri values (v_i+16, lista_materii_an_3(v_i), 3, v_temp, v_temp1, sysdate-1200, sysdate-1200);
   END LOOP;       
   DBMS_OUTPUT.PUT_LINE('Inserarea matreriilor... GATA !');  
   
   
   DBMS_OUTPUT.PUT_LINE('Inserare note...');
   
   v_temp3 := 1;   
   FOR v_i IN 1..1025 LOOP
       select an into v_temp from studenti where id = v_i;
       if (v_temp=1) then
          FOR v_temp1 IN 1..8 LOOP
            if (v_temp1 IN (1,2,3,4)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365;
               ELSE v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365;
            END IF;
            insert into note values (v_temp3, v_i, v_temp1, TRUNC(DBMS_RANDOM.VALUE(0,7)) + 4, v_temp_date, v_temp_date, v_temp_date);
            v_temp3 := v_temp3+1;
          END LOOP;  
       end if;
       if (v_temp=2) then
          FOR v_temp1 IN 1..16 LOOP
            if (v_temp1 IN (1,2,3,4)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-730; END IF;
            if (v_temp1 IN (5,6,7,8)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-730; END IF;          
            if (v_temp1 IN (9,10,11,12)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365; END IF;
            if (v_temp1 IN (13,14,15,16)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365; END IF;                                   
            insert into note values (v_temp3, v_i, v_temp1, TRUNC(DBMS_RANDOM.VALUE(0,7)) + 4, v_temp_date, v_temp_date, v_temp_date);
            v_temp3 := v_temp3+1;
          END LOOP;  
       end if;  
       
       if (v_temp=3) then
          FOR v_temp1 IN 1..24 LOOP
            if (v_temp1 IN (1,2,3,4)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-1095; END IF;
            if (v_temp1 IN (5,6,7,8)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-1095; END IF;          
            if (v_temp1 IN (9,10,11,12)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-730; END IF;
            if (v_temp1 IN (13,14,15,16)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-730; END IF;                                   
            if (v_temp1 IN (17,18,19,20)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(40+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365; END IF;
            if (v_temp1 IN (21,22,23,24)) THEN v_temp_date := to_date(to_char(sysdate,'YYYY')||'-01-01','YYYY-MM-DD')+(180+TRUNC(DBMS_RANDOM.VALUE(0,14)))-365; END IF;                                   
            
            insert into note values (v_temp3, v_i, v_temp1, TRUNC(DBMS_RANDOM.VALUE(0,6)) + 4, v_temp_date, v_temp_date, v_temp_date);
            v_temp3 := v_temp3+1;
          END LOOP;  
       end if;                
   END LOOP;
   
   DBMS_OUTPUT.PUT_LINE('Inserare note... GATA!');
   
   
   DBMS_OUTPUT.PUT_LINE('Inserare profesori...');
   
   FOR v_i IN 1..30 LOOP
      v_nume := lista_nume(TRUNC(DBMS_RANDOM.VALUE(0,lista_nume.count))+1);
      IF (DBMS_RANDOM.VALUE(0,100)<50) THEN      
         v_prenume1 := lista_prenume_fete(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_fete.count))+1);
         LOOP
            v_prenume2 := lista_prenume_fete(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_fete.count))+1);
            exit when v_prenume1<>v_prenume2;
         END LOOP;
       ELSE
         v_prenume1 := lista_prenume_baieti(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_baieti.count))+1);
         LOOP
            v_prenume2 := lista_prenume_baieti(TRUNC(DBMS_RANDOM.VALUE(0,lista_prenume_baieti.count))+1);
            exit when v_prenume1<>v_prenume2;
         END LOOP;       
       END IF;
       
       IF (DBMS_RANDOM.VALUE(0,100)<60) THEN  
          IF LENGTH(v_prenume1 || ' ' || v_prenume2) <= 20 THEN
            v_prenume := v_prenume1 || ' ' || v_prenume2;
          END IF;
          else 
             v_prenume:=v_prenume1;
        END IF;           
        INSERT INTO profesori values (v_i, v_nume, v_prenume, lista_grade_diactice(TRUNC(DBMS_RANDOM.VALUE(0,5))+1), sysdate-1000, sysdate-1000);       
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('Inserare profesori... GATA!');  
    
    
    DBMS_OUTPUT.PUT_LINE('Asocierea profesorilor cu cursurile...');
    v_temp3:=1;
    FOR v_i IN 1..24 LOOP
       INSERT INTO didactic values(v_temp3,v_i, v_i, sysdate-1000, sysdate-1000);
       v_temp3:=v_temp3+1;
    END LOOP;
    
    FOR v_i IN 1..50 LOOP
       INSERT INTO didactic values(v_temp3,(TRUNC(DBMS_RANDOM.VALUE(0,30))+1), (TRUNC(DBMS_RANDOM.VALUE(0,24))+1), sysdate-1000, sysdate-1000);
       v_temp3:=v_temp3+1;
    END LOOP;
    
    
    DBMS_OUTPUT.PUT_LINE('Asocierea profesorilor cu cursurile... GATA!');      
    
END;
/