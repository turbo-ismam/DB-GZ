USE [GameZone]
GO

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
GO


