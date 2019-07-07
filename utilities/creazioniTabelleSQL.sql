-- *********************************************
-- * Standard SQL generation                   
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.1              
-- * Generator date: Dec  4 2018              
-- * Generation date: Wed Jul  3 13:45:25 2019 
-- * LUN file: C:\Users\ismam\Google Drive\UNIBO\Basi di Dati\PROGETTO\ER_Finale.lun 
-- * Schema: GameZone/SQL 
-- ********************************************* 
Use GameZone
GO

-- Tables Section
-- _____________ 

create table ACCOUNT (
	 email char(30) not null,
     Nickname char(30) not null,
     Data_creazione date not null,
     Saldo_contabile int not null,
     Software_possieduti int not null,
     Numero_amici int not null,
     Achievement_completati int not null,
     CF char(30) not null,
     constraint ID_ACCOUNT_ID primary key (email));

create table ACCOUNT2 (
	 email char(30) not null,
     constraint ID_ACCOUNT2_ID primary key (email));

create table ACHIEVEMENT (
	 Id_Achievement int not null IDENTITY(1,1),
     Titolo char(30) not null,
     Nome char(30) not null,
     Difficolta char(30) not null,
     Punti_esperienza int not null,
     constraint ID_ACHIEVEMENT_ID primary key (Titolo, Nome));

create table ACQUISTO (
     Id_transazione int not null,
     Codice int not null,
     constraint ID_ACQUISTO_ID primary key (Codice, Id_transazione));

create table AGGIORNAMENTO (
	 Versione char(30) not null,
     Descrizione char(30) not null,
     Data date not null,
     Partita_iva char(30) not null,
     ID_SOF numeric(10) not null,
     constraint ID_AGGIORNAMENTO_ID primary key (Versione));

create table BUG (
     Id_bug int not null IDENTITY(1,1), 
     Desrizione char(30) not null,
     Data_riparazione date not null,
     Versione char(30),
     ID_SOF numeric(10) not null,
     constraint ID_BUG_ID primary key (Id_bug));

create table CASA_PRODUTTRICE (
	 Partita_iva char(30) not null,
     Nome char(30) not null,
     Sede char(30) not null,
     Bug_fixati int not null,
     constraint ID_CASA_PRODUTTRICE_ID primary key (Partita_iva));

create table CHIAVI (
     Id_chiave char(30) not null,
     Data_creazione date not null,
     ID_SOF numeric(10) not null,
     constraint ID_CHIAVI_ID primary key (Id_chiave));

create table CONSEGUIMENTO (
     email char(30) not null,
     Titolo char(30) not null,
     Nome char(30) not null,
     Data date not null,
     constraint ID_CONSEGUIMENTO_ID primary key (Titolo, Nome, email));

create table ETICHETTA (
     Nome char(30) not null,
     constraint ID_ETICHETTA_ID primary key (Nome));

create table FRIENDLIST (
     F_A_email char(30) not null,
     email char(30) not null,
     Data date not null,
     constraint ID_FRIENDLIST_ID primary key (email, F_A_email));

create table GENERE (
     Nome char(30) not null,
     Titolo char(30) not null,
     constraint ID_GENERE_ID primary key (Nome, Titolo));

create table GIOCO (
     Titolo char(30) not null,
     Valutazione int not null,
     Numero_achievement int not null,
     constraint ID_GIOCO_ID primary key (Titolo));

create table HARDWARE (
	 Seriale char(30) not null,
     Nome char(30) not null,
     Descrizione char(30) not null,
     Tipologia char(30) not null,
     Modello char(30) not null,
     Disponibilita int not null,
     Partita_iva char(30) not null,
     constraint ID_HARDWARE_ID primary key (Seriale));

create table LAVORO (
     Partita_iva char(30) not null,
	 Data_assunzione date not null,
     CF char(30) not null,
     constraint ID_LAVORO_ID primary key (CF, Partita_iva));

create table LIBRERIA (
     ID_SOF numeric(10) not null,
     email char(30) not null,
     Data_acquisto date not null,
     Ore_di_utilizzo int not null,
     constraint ID_LIBRERIA_ID primary key (ID_SOF, email));

create table PERSONA (
	 CF char(30) not null,
     Titolo_di_studio char(30) not null,
     Nome char(30) not null,
     Cognome char(30) not null,
     Data_di_nascita date not null,
     Residenza char(30) not null,
     constraint ID_PERSONA_ID primary key (CF));

create table RISCATTO (
     Id_chiave char(30) not null,
     Data_riscatto date not null,
     email char(30) not null,
     constraint FKRIS_CHI_ID primary key (Id_chiave));

create table SEGNALAZIONE (
     email char(30) not null,
     Id_bug int not null,
     Data_segnalazione date not null,
     constraint ID_SEGNALAZIONE_ID primary key (Id_bug, email));

create table SOFTWARE (
     ID_SOF numeric(10) not null,
     Nome char(30) not null,
     Seriale char(30) not null,
     Titolo char(30),
     Descrizione char(30) not null,
     Tipologia char(30) not null,
     Modello char(30) not null,
     TIP_Nome char(30) not null,
     Partita_iva char(30) not null,
     constraint ID_ID primary key (ID_SOF),
     constraint SID_SOFTWARE_ID unique (Seriale)
     );

create table TIPOLOGIA (
     Nome char(30) not null,
     constraint ID_TIPOLOGIA_ID primary key (Nome));

create table TRANSAZIONE (
	 Id_transazione int not null IDENTITY(1,1),
     Numero_prodotti_comprati int not null,
     Data date not null,
     Costo int not null,
     Metodo_pagamento char(30) not null,
     email char(30) not null,
     constraint ID_TRANSAZIONE_ID primary key (Id_transazione));

create table VETRINA (
     Codice int not null IDENTITY(1,1),
     Data_inizio date not null,
     Data_fine date,
     Costo int not null,
	 Seriale char(30),
	 ID_SOF numeric(10),
     constraint ID_VETRINA_ID primary key (Codice));


-- Constraints Section
-- ___________________ 

alter table ACCOUNT add constraint FKPROPRIETA_FK
     foreign key (CF)
     references PERSONA;

alter table ACHIEVEMENT add constraint FKCONTENUTO
     foreign key (Titolo)
     references GIOCO;

alter table ACQUISTO add constraint FKACQ_VET
     foreign key (Codice)
     references VETRINA;

alter table ACQUISTO add constraint FKACQ_TRA_FK
     foreign key (Id_transazione)
     references TRANSAZIONE;

alter table AGGIORNAMENTO add constraint FKRILASCIO_FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table AGGIORNAMENTO add constraint FKPATCH_FK
     foreign key (ID_SOF)
     references SOFTWARE;


alter table BUG add constraint FKFIX_FK
     foreign key (Versione)
     references AGGIORNAMENTO;

alter table BUG add constraint FKPRESENTA_FK
     foreign key (ID_SOF)
     references SOFTWARE;


alter table CHIAVI add constraint FKPOSSEDIMENTO_FK
     foreign key (ID_SOF)
     references SOFTWARE;

alter table CONSEGUIMENTO add constraint FKCON_ACH
     foreign key (Titolo, Nome)
     references ACHIEVEMENT;

alter table CONSEGUIMENTO add constraint FKCON_ACC_FK
     foreign key (email)
     references ACCOUNT;

alter table FRIENDLIST add constraint FKFRI_ACC_1
     foreign key (email)
     references ACCOUNT;

alter table FRIENDLIST add constraint FKFRI_ACC_FK
     foreign key (F_A_email)
     references ACCOUNT2;

alter table GENERE add constraint FKGEN_GIO_FK
     foreign key (Titolo)
     references GIOCO;

alter table GENERE add constraint FKGEN_ETI
     foreign key (Nome)
     references ETICHETTA;

alter table HARDWARE add constraint FKPRODUZIONE_HARDWARE_FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table LAVORO add constraint FKLAV_PER
     foreign key (CF)
     references PERSONA;

alter table LAVORO add constraint FKLAV_CAS_FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table LIBRERIA add constraint FKLIB_ACC_FK
     foreign key (email)
     references ACCOUNT;

alter table LIBRERIA add constraint FKLIB_SOF
     foreign key (ID_SOF)
     references SOFTWARE;

alter table RISCATTO add constraint FKRIS_CHI_FK
     foreign key (Id_chiave)
     references CHIAVI;

alter table RISCATTO add constraint FKRIS_ACC_FK
     foreign key (email)
     references ACCOUNT;

alter table SEGNALAZIONE add constraint FKSEG_BUG
     foreign key (Id_bug)
     references BUG;

alter table SEGNALAZIONE add constraint FKSEG_ACC_FK
     foreign key (email)
     references ACCOUNT;

alter table SOFTWARE add constraint FKTIPO_SOFTWARE_FK
     foreign key (TIP_Nome)
     references TIPOLOGIA;

alter table SOFTWARE add constraint FKPRODUZIONE_SOFTWARE_FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table SOFTWARE add constraint FKESTENSIONE_FK
     foreign key (Titolo)
     references GIOCO;

alter table TRANSAZIONE add constraint FKEFFETTUAZIONE_FK
     foreign key (email)
     references ACCOUNT;
	 
alter table VETRINA add constraint REF_VETRI_HARDW_FK
     foreign key (Seriale)
     references HARDWARE;

alter table VETRINA add constraint REF_VETRI_SOFTW_FK
     foreign key (ID_SOF)
     references SOFTWARE;


-- Index Section
-- _____________ 

create unique index ID_ACCOUNT_IND
     on ACCOUNT (email);

create index FKPROPRIETA_IND
     on ACCOUNT (CF);

create unique index ID_ACCOUNT2_IND
     on ACCOUNT2 (email);

create unique index ID_ACHIEVEMENT_IND
     on ACHIEVEMENT (Titolo, Nome);

create unique index ID_ACQUISTO_IND
     on ACQUISTO (Codice, Id_transazione);

create index FKACQ_TRA_IND
     on ACQUISTO (Id_transazione);

create unique index ID_AGGIORNAMENTO_IND
     on AGGIORNAMENTO (Versione);

create index FKRILASCIO_IND
     on AGGIORNAMENTO (Partita_iva);

create index FKPATCH_IND
     on AGGIORNAMENTO (ID_SOF);

create unique index ID_BUG_IND
     on BUG (Id_bug);

create index FKFIX_IND
     on BUG (Versione);

create index FKPRESENTA_IND
     on BUG (ID_SOF);

create unique index ID_CASA_PRODUTTRICE_IND
     on CASA_PRODUTTRICE (Partita_iva);

create unique index ID_CHIAVI_IND
     on CHIAVI (Id_chiave);

create index FKPOSSEDIMENTO_IND
     on CHIAVI (ID_SOF);

create unique index ID_CONSEGUIMENTO_IND
     on CONSEGUIMENTO (Titolo, Nome, email);

create index FKCON_ACC_IND
     on CONSEGUIMENTO (email);

create unique index ID_ETICHETTA_IND
     on ETICHETTA (Nome);

create unique index ID_FRIENDLIST_IND
     on FRIENDLIST (email, F_A_email);

create index FKFRI_ACC_IND
     on FRIENDLIST (F_A_email);

create unique index ID_GENERE_IND
     on GENERE (Nome, Titolo);

create index FKGEN_GIO_IND
     on GENERE (Titolo);

create unique index ID_GIOCO_IND
     on GIOCO (Titolo);

create unique index ID_HARDWARE_IND
     on HARDWARE (Seriale);

create index FKPRODUZIONE_HARDWARE_IND
     on HARDWARE (Partita_iva);

create unique index ID_LAVORO_IND
     on LAVORO (CF, Partita_iva);

create index FKLAV_CAS_IND
     on LAVORO (Partita_iva);

create unique index ID_LIBRERIA_IND
     on LIBRERIA (ID_SOF, email);

create index FKLIB_ACC_IND
     on LIBRERIA (email);

create unique index ID_PERSONA_IND
     on PERSONA (CF);

create unique index FKRIS_CHI_IND
     on RISCATTO (Id_chiave);

create index FKRIS_ACC_IND
     on RISCATTO (email);

create unique index ID_SEGNALAZIONE_IND
     on SEGNALAZIONE (Id_bug, email);

create index FKSEG_ACC_IND
     on SEGNALAZIONE (email);

create unique index ID_IND
     on SOFTWARE (ID_SOF);

create unique index SID_SOFTWARE_IND
     on SOFTWARE (Seriale);

create index FKTIPO_SOFTWARE_IND
     on SOFTWARE (TIP_Nome);

create index FKPRODUZIONE_SOFTWARE_IND
     on SOFTWARE (Partita_iva);

create unique index ID_TIPOLOGIA_IND
     on TIPOLOGIA (Nome);

create unique index ID_TRANSAZIONE_IND
     on TRANSAZIONE (Id_transazione);

create index FKEFFETTUAZIONE_IND
     on TRANSAZIONE (email);

create unique index ID_VETRINA_IND
     on VETRINA (Codice);

create index REF_VETRI_HARDW_IND
     on VETRINA (Seriale);

create index REF_VETRI_SOFTW_IND
     on VETRINA (ID_SOF);
GO
