--proceduri
--Picture name, description, gallery id, but input parameter should be
--id language


--SELECT slika, opisslika, id_galerija
--FROM [dbo].GALERIJA_SLIKA AS GS
--    INNER JOIN
--    [dbo].[GALERIJA] AS G
--        ON GS.gal_id_galerijas = G.Id_galerija
--    INNER JOIN
--    [dbo].[GALERIJA_OPIS] AS GOP
--        ON GOP.gal_id_galerija = G.Id_galerija
--WHERE gop.jazik_id_jazikg = @idLang

DECLARE @idLang AS INT
SET @idLang = 5
EXEC findPic @idLang

--Language and administrator who entered some article (news), with
--it’s Id.
--SELECT JAZIK, username, naslov, id_novost
--FROM [dbo].JAZIK AS J
--    INNER JOIN
--    [dbo].KNOVOST AS KN
--        ON KN.jazik_id_jazikn = J.id_jazik
--    INNER JOIN
--    [dbo].KADMINISTRATOR AS K
--        ON K.Id_admin = KN.adm_id_admin
--WHERE KN.id_novost = @idNovost

DECLARE @idNovost AS INT
SET @idNovost = 5
EXEC Procedura2 @idNovost

--For every visitor, all it’s groups that is member of

--SELECT ime, naziv
--FROM dbo.EMAIL as E
--	INNER JOIN 
--	dbo.MAILING as M
--		ON E.id_posetitel = M.EMAIL_ID_POSETITEL
--	INNER JOIN
--	DBO.EMAIL_GRUPA AS EG
--		ON EG.ID_GRUPA = M.EMAIL_ID_GRUPA
--WHERE E.id_posetitel = @idPosetitel

DECLARE @idPosetitel AS INT
SET @idPosetitel = 5
EXEC Procedura3 @idPosetitel

--SELECT ID_GRUPA, NASLOV, TEKST
--FROM DBO.EMAIL_GRUPA AS EG
--	INNER JOIN
--	DBO.EMAIL_PORAKA AS EP
--		ON EG.ID_GRUPA = EP.GRUPA_ID_GRUPA
--WHERE aktiva = @idAktiv

DECLARE @idAktiv AS INT
SET @idAktiv = 5
EXEC Procedura4 @idAktiv