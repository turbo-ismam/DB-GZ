USE [GameZone]
GO

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
GO


