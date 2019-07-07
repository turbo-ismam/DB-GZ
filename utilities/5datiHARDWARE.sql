USE [GameZone]
GO

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
GO

