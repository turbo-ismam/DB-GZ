USE [GameZone]
GO

INSERT INTO [dbo].[PERSONA]
           ([CF]
		   ,[Titolo_di_studio]
           ,[Nome]
           ,[Cognome]
           ,[Data_di_nascita]
           ,[Residenza])
     VALUES
           ('1234','Diploma','Mario','Rossi','1996-5-22','Cesena'),
		   ('123','Diploma','Marione','Rossi','1996-7-1','Ravenna'),
		   ('12','Nessuna','Ismam','Abu','1997-12-26','Forl━'),
		   ('1','Nessuna','Dario','Gialli','1996-2-13','Rimini'),
		   ('234','Laurea','Marco','Hu','1996-02-19','Castelbolognese'),
		   ('34','Laurea','Gianni','Corri','1996-8-13','Cesena'),
		   ('4','Laurea','Giovanni','Tri','1991-1-23','Ravenna')
		   
INSERT INTO [dbo].[CASA_PRODUTTRICE]
           ([Partita_iva]
           ,[Nome]
           ,[Sede]
           ,[Bug_fixati])
     VALUES
           ('a','jojoEnterprise','Italia',0),
		   ('b','GameStar','Francia',0),
		   ('c','RiotGames','Germania',0),
		   ('d','SuperCell','Spagna',0),
		   ('e','GameZone','Italia',0),
		   ('f','Bullethead','Germania',0),
		   ('g','Keystone','Germania',0),
		   ('h','AllGames','Forl━',0),
		   ('i','Swift','Forl━',0),
		   ('j','ReadyGo','Forl━',0)

INSERT INTO [dbo].[TIPOLOGIA]
           ([Nome])
     VALUES
           ('Editor testo'),
		   ('Grafica'),
		   ('Cad-cam'),
		   ('produzione foto'),
		   ('produzione video'),
		   ('produzione audio'),
		   ('gioco')
		   
INSERT INTO [dbo].[GIOCO]
           ([Titolo]
           ,[Valutazione]
           ,[Numero_achievement])
     VALUES
           ('clashroyale',4,0),
		   ('lol',4,0),
		   ('warframe',1,0)
		   
INSERT INTO [dbo].[SOFTWARE]
           ([ID_SOF]
           ,[Nome]
           ,[Seriale]
		   ,[Titolo]
           ,[Descrizione]
           ,[Tipologia]
           ,[Modello]
           ,[TIP_Nome]
           ,[Partita_iva])
     VALUES
           (1, 'sublime','s1',NULL,'...', '','', 'Editor testo', 'a' ),
		   (2, 'vim','s2',NULL,'...', '','', 'Editor testo', 'a' ),
		   (3, 'gravit designer','s3',NULL,'...', '','', 'Grafica', 'b' ),
		   (4, 'Inkscape','s4',NULL,'...', '','', 'Grafica', 'c' ),
		   (5, 'Autocad','s5',NULL,'...', '','', 'Cad-cam', 'd' ),
		   (6, 'SolidWorks','s6',NULL,'...', '','', 'Cad-cam', 'e' ),
		   (7, 'Photoshop','s7',NULL,'...', '','', 'produzione foto', 'f' ),
		   (8, 'Audacy','s8',NULL,'...', '','', 'produzione video', 'e' ),
		   (9, 'ClashRoyale','s9','clashroyale','...', '','', 'gioco', 'e' ),
		   (10, 'League of legends','s10','lol','...', '','', 'gioco', 'f' ),
		   (11, 'Warframe','s11','warframe','...', '','', 'gioco', 'e' )
		   
INSERT INTO [dbo].[HARDWARE]
           ([Seriale]
           ,[Nome]
           ,[Descrizione]
           ,[Tipologia]
           ,[Modello]
           ,[Disponibilita]
           ,[Partita_iva])
     VALUES
           ('ha', 'mouse GG', '...', 'mouse', 'GG',10,'a'),
		   ('hb', 'tastiera YY', '...', 'tastiera','YY',15,'c'),
		   ('hc', 'Scheda video XYZ', '...', 'schede','XYZ',5,'g')
		   
		   
INSERT INTO [dbo].[ETICHETTA]
           ([Nome])
     VALUES
           ('Azione'),
		   ('F2P'),
		   ('Avventura'),
		   ('RPG'),
		   ('FPS'),
		   ('TPS'),
		   ('Strategia'),
		   ('Puzzle')
		   
INSERT INTO [dbo].[GENERE]
           ([Nome]
           ,[Titolo])
     VALUES
           ('Azione', 'clashroyale'),
		   ('F2P', 'clashroyale'),
		   ('Azione', 'lol'),
		   ('Strategia', 'lol'),
		   ('F2P', 'warframe'),
		   ('RPG', 'warframe')
		   
INSERT INTO [dbo].[AGGIORNAMENTO]
           ([Versione]
           ,[Descrizione]
           ,[Data]
           ,[Partita_iva]
           ,[ID_SOF])
     VALUES
           ('1.0.0', '...', '2018-11-10','a',1),
		   ('2.0.0', '...', '2019-11-10','c',2),
		   ('3.1.6', '...', '2017-11-10','a',11),
		   ('1.4.2', '...', '2016-11-10','b',7),
		   ('1.0', '...', '2015-11-10','e',1)
		   
INSERT INTO [dbo].[LAVORO]
           ([Partita_iva]
		   ,[Data_assunzione]
           ,[CF])
     VALUES
           ('a', '2000-01-01','1234'),
		   ('a', '2000-01-01','4'),
		   ('b', '2000-01-01','123'),
		   ('b', '2000-01-01','12'),
		   ('c', '2000-01-01','1'),
		   ('d', '2000-01-01','234'),
		   ('e', '2000-01-01','34')
		   
INSERT INTO [dbo].[BUG]
           ([Desrizione]
           ,[Data_riparazione]
           ,[Versione]
           ,[ID_SOF])
     VALUES
           ('...', '2004-12-12','1.0.0',1),
		   ('...', '2005-12-12',NULL,1),
		   ('...', '2005-12-12',NULL,2),
		   ('...', '2005-12-12',NULL,3),
		   ('...', '2005-12-12',NULL,4),
		   ('...', '2005-12-12',NULL,5),
		   ('...', '2005-12-12',NULL,5)
		   
INSERT INTO [dbo].[ACCOUNT2]
           ([email])
     VALUES
           ('marco.hu2@studio.unibo.it'),
		   ('ismam.abu@studio.unibo.it'),
		   ('mario@studio.unibo.it')
	
INSERT INTO [dbo].[ACCOUNT]
           ([email]
           ,[Nickname]
           ,[Data_creazione]
           ,[Saldo_contabile]
           ,[Software_possieduti]
           ,[Numero_amici]
           ,[Achievement_completati]
           ,[CF])
     VALUES
           ('marco.hu2@studio.unibo.it','kid','1996-02-19',100, 0,1,0,'234'),
		   ('ismam.abu@studio.unibo.it','ulqui','1997-12-26',100, 0,1,0,'12'),
		   ('mario@studio.unibo.it','marione','2014-02-08', 10, 0, 0, 0, '1234')
		   
INSERT INTO [dbo].[FRIENDLIST]
           ([F_A_email]
           ,[email]
           ,[Data])
     VALUES
           ('marco.hu2@studio.unibo.it','ismam.abu@studio.unibo.it','2000-02-08')
		   
		   
INSERT INTO [dbo].[ACHIEVEMENT]
           ([Titolo]
           ,[Nome]
           ,[Difficolta]
           ,[Punti_esperienza])
     VALUES
           ('lol', 'Ammazzatore di minion!',0, 10),
		   ('warframe', 'Adventurer',2, 15),
		   ('lol', 'Ammazzadraghi',1, 15),
		   ('clashroyale', 'Domatore!',0, 10),
		   ('clashroyale', '3 corone!',1, 10),
		   ('clashroyale', 'Perfect game!',5, 30)
		   
		   
INSERT INTO [dbo].[LIBRERIA]
           ([ID_SOF]
           ,[email]
           ,[Data_acquisto]
           ,[Ore_di_utilizzo])
     VALUES
           (1, 'marco.hu2@studio.unibo.it', '2010-02-11', 3),
		   (2, 'marco.hu2@studio.unibo.it', '2010-02-11', 0),
		   (3, 'marco.hu2@studio.unibo.it', '2010-02-11', 0),
		   (4, 'marco.hu2@studio.unibo.it', '2010-02-11', 0),
		   (9, 'marco.hu2@studio.unibo.it', '2010-02-11', 3),
		   (10, 'marco.hu2@studio.unibo.it', '2010-02-11', 5),
		   (1, 'ismam.abu@studio.unibo.it', '2010-02-11', 100),
		   (9, 'ismam.abu@studio.unibo.it', '2010-02-11', 5),
		   (11, 'ismam.abu@studio.unibo.it', '2010-02-11', 300)
		   
INSERT INTO [dbo].[TRANSAZIONE]
           ([Numero_prodotti_comprati]
           ,[Data]
           ,[Costo]
           ,[Metodo_pagamento]
           ,[email])
     VALUES
           (1, '2000-01-01', 150, 'carta', 'marco.hu2@studio.unibo.it'),
		   (3, '2000-05-01', 150, 'carta', 'marco.hu2@studio.unibo.it'),
		   (7, '2001-01-01', 500, 'carta', 'ismam.abu@studio.unibo.it')
		   
INSERT INTO [dbo].[VETRINA]
           ([Data_inizio]
           ,[Data_fine]
           ,[Costo]
           ,[Seriale]
           ,[ID_SOF])
     VALUES
           ('2001-04-5', NULL, 10, 'hb', NULL),
		   ('2001-04-5', NULL, 10, 'hc', NULL),
		   ('2001-04-5', NULL, 10, NULL, 8),
		   ('2001-04-5', NULL, 10, NULL, 9)
		   
INSERT INTO [dbo].[ACQUISTO]
           ([Id_transazione]
           ,[Codice])
     VALUES
           (1,1),
		   (2,2),
		   (2,4),
		   (3,1),
		   (3,2),
		   (3,3),
		   (3,4)
GO