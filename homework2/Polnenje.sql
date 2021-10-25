--Fill the database

INSERT INTO JAZIK(jazik)
VALUES
	('jazik1'),
	('jazik2'),
	('jazik3'),
	('jazik4'),
	('jazik5'),
	('jazik6'),
	('jazik7'),
	('jazik8'),
	('jazik9'),
	('jazik10')

INSERT INTO EMAIL(ime, mail)
VALUES 
  ('Ime1', 'ime1@gmail.com'),
  ('Ime2', 'ime2@gmail.com'),
  ('Ime3', 'ime3@gmail.com'),
  ('Ime4', 'ime4@gmail.com'),
  ('Ime5', 'ime5@gmail.com'),
  ('Ime6', 'ime6@gmail.com'),
  ('Ime7', 'ime7@gmail.com'),
  ('Ime8', 'ime8@gmail.com'),
  ('Ime9', 'ime9@gmail.com'),
  ('Ime10', 'ime10@gmail.com')


INSERT INTO GALERIJA(preview)
VALUES
	('1'),
	('2'),
	('3'),
	('4'),
	('5'),
	('6'),
	('7'),
	('8'),
	('9'),
	('10')

INSERT INTO KADMINISTRATOR(username, password, ime, telefon)
VALUES
	('user1', 'pass1', 'ime1', '949802297'),
	('user2', 'pass2', 'ime2', '778270501'),
	('user3', 'pass3', 'ime3', '728925280'),
	('user4', 'pass4', 'ime4', '425268220'),
	('user5', 'pass5', 'ime5', '246263454'),
	('user6', 'pass6', 'ime6', '979219682'),
	('user7', 'pass7', 'ime7', '291849659'),
	('user8', 'pass8', 'ime8', '294067340'),
	('user9', 'pass9', 'ime9', '406870785'),
	('user10', 'pass10', 'ime10', '222245008')
  
INSERT INTO EMAIL_GRUPA(JAZIK_ID_JAZIKM, NAZIV, aktivna)
VALUES
	('1', 'naziv1', '1'),
	('2', 'naziv2', '1'),
	('3', 'naziv3', '1'),
	('4', 'naziv4', '1'),
	('5', 'naziv5', '1'),
	('6', 'naziv6', '0'),
	('7', 'naziv7', '0'),
	('8', 'naziv8', '0'),
	('9', 'naziv9', '0'),
	('10', 'naziv10', '0')

INSERT INTO GALERIJA_OPIS(gal_id_galerija, JAZIK_ID_JAZIKG, naslov, opis)
VALUES
	('1', '1', 'naslov1', 'opis1'),
	('2', '2', 'naslov2', 'opis2'),
	('3', '3', 'naslov3', 'opis3'),
	('4', '4', 'naslov4', 'opis4'),
	('5', '5', 'naslov5', 'opis5'),
	('6', '6', 'naslov6', 'opis6'),
	('7', '7', 'naslov7', 'opis7'),
	('8', '8', 'naslov8', 'opis8'),
	('9', '9', 'naslov9', 'opis9'),
	('10', '10', 'naslov10', 'opis10')

INSERT INTO GALERIJA_SLIKA(gal_id_galerijas, opisslika, slika, OPISSLIKAENG)
VALUES
	('1', 'opisslika1', 'slika1', 'opisslikaeng1'),
	('2', 'opisslika2', 'slika2', 'opisslikaeng2'),
	('3', 'opisslika3', 'slika3', 'opisslikaeng3'),
	('4', 'opisslika4', 'slika4', 'opisslikaeng4'),
	('5', 'opisslika5', 'slika5', 'opisslikaeng5'),
	('6', 'opisslika6', 'slika6', 'opisslikaeng6'),
	('7', 'opisslika7', 'slika7', 'opisslikaeng7'),
	('8', 'opisslika8', 'slika8', 'opisslikaeng8'),
	('9', 'opisslika9', 'slika9', 'opisslikaeng9'),
	('10', 'opisslika10', 'slika10', 'opisslikaeng10')
	
INSERT INTO KNOVOST(adm_id_admin, jazik_id_jazikn, naslov, opis, datum_od, datum_do)
VALUES
	('1', '1', 'naslov1', 'opis1', '2010-09-01', '2010-09-11'),
	('2', '2', 'naslov2', 'opis2', '2010-09-02', '2010-09-12'),
	('3', '3', 'naslov3', 'opis3', '2010-09-03', '2010-09-13'),
	('4', '4', 'naslov4', 'opis4', '2010-09-04', '2010-09-14'),
	('5', '5', 'naslov5', 'opis5', '2010-09-05', '2010-09-15'),
	('6', '6', 'naslov6', 'opis6', '2010-09-06', '2010-09-16'),
	('7', '7', 'naslov7', 'opis7', '2010-09-07', '2010-09-17'),
	('8', '8', 'naslov8', 'opis8', '2010-09-08', '2010-09-18'),
	('9', '9', 'naslov9', 'opis9', '2010-09-09', '2010-09-19'),
	('10', '10', 'naslov10', 'opis10', '2010-09-10', '2010-09-20')

INSERT INTO KDOKUMENT(naslov, jazik_id_jazikd, dokument, prikaz)
VALUES
	('naslov1', '1', 'dokument1', '1'),
	('naslov2', '2', 'dokument2', '2'),
	('naslov3', '3', 'dokument3', '3'),
	('naslov4', '4', 'dokument4', '4'),
	('naslov5', '5', 'dokument5', '5'),
	('naslov6', '6', 'dokument6', '6'),
	('naslov7', '7', 'dokument7', '7'),
	('naslov8', '8', 'dokument8', '8'),
	('naslov9', '9', 'dokument9', '9'),
	('naslov10', '10', 'dokument10', '10')

INSERT INTO EMAIL_PORAKA(GRUPA_ID_GRUPA, DATUM, NASLOV, TEKST)
VALUES 
  ('1', '2010-09-30' , 'Poraka1', 'Tekst1'),
  ('2','1934-06-01' , 'Poraka2', 'Tekst2'),
  ('3', '1990-01-30' , 'Poraka3', 'Tekst3'),
  ('4', '2015-11-12' , 'Poraka4', 'Tekst4'),
  ('5', '1888-05-28' , 'Poraka5', 'Tekst5'),
  ('6', '1950-09-08' , 'Poraka6', 'Tekst6'),
  ('7', '1979-01-03' , 'Poraka7', 'Tekst7'),
  ('8', '1943-04-17' , 'Poraka8', 'Tekst8'),
  ('9', '1912-10-25' , 'Poraka9', 'Tekst9'),
  ('10', '2012-12-12' , 'Poraka10', 'Tekst10')

INSERT INTO MAILING(EMAIL_ID_POSETITEL, EMAIL_ID_GRUPA)
VALUES
	('1', '1'),
	('2', '2'),
	('3', '3'),
	('4', '4'),
	('5', '5'),
	('6', '6'),
	('7', '7'),
	('8', '8'),
	('9', '9'),
	('10', '10')
