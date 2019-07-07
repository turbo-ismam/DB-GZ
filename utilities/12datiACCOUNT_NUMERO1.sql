USE [GameZone2]
GO

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
GO





