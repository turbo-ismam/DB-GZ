USE [GameZone]
GO

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
GO

		   



