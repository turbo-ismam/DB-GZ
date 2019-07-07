-- *********************************************
-- * Standard SQL generation                   
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.1              
-- * Generator date: Dec  4 2018              
-- * Generation date: Sat Jul  6 23:28:32 2019 
-- * LUN file: C:\Users\marco\Downloads\ER_Finale (1).lun 
-- * Schema: GameZone/SQL 
-- ********************************************* 

-- Tables Section
-- _____________ 

create table ACCOUNT (
     Nickname char(1) not null,
     email char(1) not null,
     Data_creazione char(1) not null,
     Saldo_contabile char(1) not null,
     Software_possieduti char(1) not null,
     Numero_amici char(1) not null,
     Achievement_completati char(1) not null,
     CF char(1) not null,
     constraint ID_ACCOUNT_ID primary key (email));

create table ACCOUNT2 (
     Nickname char(1) not null,
     email char(1) not null,
     Data_creazione char(1) not null,
     Saldo_contabile char(1) not null,
     constraint ID_ACCOUNT2_ID primary key (email));

create table ACHIEVEMENT (
     Titolo char(1) not null,
     Nome char(1) not null,
     Difficolta char(1) not null,
     Id_Achievement char(1) not null,
     Punti_esperienza char(1) not null,
     constraint ID_ACHIEVEMENT_ID primary key (Titolo, Nome));

create table ACQUISTO (
     Id_transazione char(1) not null,
     Codice char(1) not null,
     constraint ID_ACQUISTO_ID primary key (Codice, Id_transazione));

create table AGGIORNAMENTO (
     Descrizione char(1) not null,
     Data char(1) not null,
     Versione char(1) not null,
     Partita_iva char(1) not null,
     ID_SOF numeric(10) not null,
     constraint ID_AGGIORNAMENTO_ID primary key (Versione));

create table BUG (
     Id_bug char(1) not null,
     Desrizione char(1) not null,
     Data_riparazione char(1) not null,
     Versione char(1),
     ID_SOF numeric(10) not null,
     constraint ID_BUG_ID primary key (Id_bug));

create table CASA_PRODUTTRICE (
     Nome char(1) not null,
     Sede char(1) not null,
     Partita_iva char(1) not null,
     Bug_fixati char(1) not null,
     constraint ID_CASA_PRODUTTRICE_ID primary key (Partita_iva));

create table CHIAVI (
     Id_chiave char(1) not null,
     Data_creazione char(1) not null,
     ID_SOF numeric(10) not null,
     constraint ID_CHIAVI_ID primary key (Id_chiave));

create table CONSEGUIMENTO (
     email char(1) not null,
     Titolo char(1) not null,
     Nome char(1) not null,
     Data char(1) not null,
     constraint ID_CONSEGUIMENTO_ID primary key (Titolo, Nome, email));

create table ETICHETTA (
     Nome char(1) not null,
     constraint ID_ETICHETTA_ID primary key (Nome));

create table FRIENDLIST (
     F_A_email char(1) not null,
     email char(1) not null,
     Data char(1) not null,
     constraint ID_FRIENDLIST_ID primary key (email, F_A_email));

create table GENERE (
     Nome char(1) not null,
     Titolo char(1) not null,
     constraint ID_GENERE_ID primary key (Nome, Titolo));

create table GIOCO (
     Titolo char(1) not null,
     Valutazione char(1) not null,
     Numero_achievement char(1) not null,
     constraint ID_GIOCO_ID primary key (Titolo));

create table HARDWARE (
     Nome char(1) not null,
     Seriale char(1) not null,
     Descrizione char(1) not null,
     Tipologia char(1) not null,
     Modello char(1) not null,
     Disponibilita char(1) not null,
     Partita_iva char(1) not null,
     constraint ID_HARDWARE_ID primary key (Seriale));

create table LAVORO (
     Partita_iva char(1) not null,
     CF char(1) not null,
     constraint ID_LAVORO_ID primary key (CF, Partita_iva));

create table LIBRERIA (
     ID_SOF numeric(10) not null,
     email char(1) not null,
     Data_acquisto char(1) not null,
     Ore_di_utilizzo char(1) not null,
     constraint ID_LIBRERIA_ID primary key (ID_SOF, email));

create table PERSONA (
     Titolo_di_studio char(1) not null,
     Nome char(1) not null,
     Cognome char(1) not null,
     CF char(1) not null,
     Data_di_nascita char(1) not null,
     Residenza char(1) not null,
     constraint ID_PERSONA_ID primary key (CF));

create table RISCATTO (
     Id_chiave char(1) not null,
     Data_riscatto char(1) not null,
     email char(1) not null,
     constraint ID_RISCA_CHIAV_ID primary key (Id_chiave));

create table SEGNALAZIONE (
     email char(1) not null,
     Id_bug char(1) not null,
     Data_segnalazione char(1) not null,
     constraint ID_SEGNALAZIONE_ID primary key (Id_bug, email));

create table SOFTWARE (
     ID_SOF -- Sequence attribute not implemented -- not null,
     Nome char(1) not null,
     Seriale char(1) not null,
     Titolo char(1),
     Descrizione char(1) not null,
     Tipologia char(1) not null,
     Modello char(1) not null,
     TIP_Nome char(1) not null,
     Partita_iva char(1) not null,
     constraint ID_SOFTWARE_ID primary key (ID_SOF),
     constraint SID_SOFTWARE_ID unique (Seriale),
     constraint SID_SOFTW_GIOCO_ID unique (Titolo));

create table TIPOLOGIA (
     Nome char(1) not null,
     constraint ID_TIPOLOGIA_ID primary key (Nome));

create table TRANSAZIONE (
     Numero_prodotti_comprati char(1) not null,
     Id_transazione char(1) not null,
     Data char(1) not null,
     Costo char(1) not null,
     Metodo_pagamento char(1) not null,
     email char(1) not null,
     constraint ID_TRANSAZIONE_ID primary key (Id_transazione));

create table VETRINA (
     Codice char(1) not null,
     Data_inizio char(1) not null,
     Data_fine char(1) not null,
     Costo char(1) not null,
     Seriale char(1) not null,
     ID_SOF numeric(10) not null,
     constraint ID_VETRINA_ID primary key (Codice));


-- Constraints Section
-- ___________________ 

alter table ACCOUNT add constraint REF_ACCOU_PERSO_FK
     foreign key (CF)
     references PERSONA;

alter table ACHIEVEMENT add constraint REF_ACHIE_GIOCO
     foreign key (Titolo)
     references GIOCO;

alter table ACQUISTO add constraint REF_ACQUI_VETRI
     foreign key (Codice)
     references VETRINA;

alter table ACQUISTO add constraint EQU_ACQUI_TRANS_FK
     foreign key (Id_transazione)
     references TRANSAZIONE;

alter table AGGIORNAMENTO add constraint REF_AGGIO_CASA__FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table AGGIORNAMENTO add constraint REF_AGGIO_SOFTW_FK
     foreign key (ID_SOF)
     references SOFTWARE;

alter table BUG add constraint REF_BUG_AGGIO_FK
     foreign key (Versione)
     references AGGIORNAMENTO;

alter table BUG add constraint REF_BUG_SOFTW_FK
     foreign key (ID_SOF)
     references SOFTWARE; 

alter table CHIAVI add constraint REF_CHIAV_SOFTW_FK
     foreign key (ID_SOF)
     references SOFTWARE;

alter table CONSEGUIMENTO add constraint REF_CONSE_ACHIE
     foreign key (Titolo, Nome)
     references ACHIEVEMENT;

alter table CONSEGUIMENTO add constraint REF_CONSE_ACCOU_FK
     foreign key (email)
     references ACCOUNT;

alter table FRIENDLIST add constraint REF_FRIEN_ACCOU_1
     foreign key (email)
     references ACCOUNT;

alter table FRIENDLIST add constraint REF_FRIEN_ACCOU_FK
     foreign key (F_A_email)
     references ACCOUNT2;

alter table GENERE add constraint EQU_GENER_GIOCO_FK
     foreign key (Titolo)
     references GIOCO;

alter table GENERE add constraint EQU_GENER_ETICH
     foreign key (Nome)
     references ETICHETTA;

alter table HARDWARE add constraint EQU_HARDW_CASA__FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table LAVORO add constraint REF_LAVOR_PERSO
     foreign key (CF)
     references PERSONA;

alter table LAVORO add constraint EQU_LAVOR_CASA__FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table LIBRERIA add constraint REF_LIBRE_ACCOU_FK
     foreign key (email)
     references ACCOUNT;

alter table LIBRERIA add constraint REF_LIBRE_SOFTW
     foreign key (ID_SOF)
     references SOFTWARE;

alter table RISCATTO add constraint ID_RISCA_CHIAV_FK
     foreign key (Id_chiave)
     references CHIAVI;

alter table RISCATTO add constraint REF_RISCA_ACCOU_FK
     foreign key (email)
     references ACCOUNT;

alter table SEGNALAZIONE add constraint EQU_SEGNA_BUG
     foreign key (Id_bug)
     references BUG;

alter table SEGNALAZIONE add constraint REF_SEGNA_ACCOU_FK
     foreign key (email)
     references ACCOUNT;

alter table SOFTWARE add constraint EQU_SOFTW_TIPOL_FK
     foreign key (TIP_Nome)
     references TIPOLOGIA;

alter table SOFTWARE add constraint EQU_SOFTW_CASA__FK
     foreign key (Partita_iva)
     references CASA_PRODUTTRICE;

alter table SOFTWARE add constraint SID_SOFTW_GIOCO_FK
     foreign key (Titolo)
     references GIOCO;

alter table TRANSAZIONE add constraint REF_TRANS_ACCOU_FK
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

create index REF_ACCOU_PERSO_IND
     on ACCOUNT (CF);

create unique index ID_ACCOUNT2_IND
     on ACCOUNT2 (email);

create unique index ID_ACHIEVEMENT_IND
     on ACHIEVEMENT (Titolo, Nome);

create unique index ID_ACQUISTO_IND
     on ACQUISTO (Codice, Id_transazione);

create index EQU_ACQUI_TRANS_IND
     on ACQUISTO (Id_transazione);

create unique index ID_AGGIORNAMENTO_IND
     on AGGIORNAMENTO (Versione);

create index REF_AGGIO_CASA__IND
     on AGGIORNAMENTO (Partita_iva);

create index REF_AGGIO_SOFTW_IND
     on AGGIORNAMENTO (ID_SOF);

create unique index ID_BUG_IND
     on BUG (Id_bug);

create index REF_BUG_AGGIO_IND
     on BUG (Versione);

create index REF_BUG_SOFTW_IND
     on BUG (ID_SOF);

create unique index ID_CASA_PRODUTTRICE_IND
     on CASA_PRODUTTRICE (Partita_iva);

create unique index ID_CHIAVI_IND
     on CHIAVI (Id_chiave);

create index REF_CHIAV_SOFTW_IND
     on CHIAVI (ID_SOF);

create unique index ID_CONSEGUIMENTO_IND
     on CONSEGUIMENTO (Titolo, Nome, email);

create index REF_CONSE_ACCOU_IND
     on CONSEGUIMENTO (email);

create unique index ID_ETICHETTA_IND
     on ETICHETTA (Nome);

create unique index ID_FRIENDLIST_IND
     on FRIENDLIST (email, F_A_email);

create index REF_FRIEN_ACCOU_IND
     on FRIENDLIST (F_A_email);

create unique index ID_GENERE_IND
     on GENERE (Nome, Titolo);

create index EQU_GENER_GIOCO_IND
     on GENERE (Titolo);

create unique index ID_GIOCO_IND
     on GIOCO (Titolo);

create unique index ID_HARDWARE_IND
     on HARDWARE (Seriale);

create index EQU_HARDW_CASA__IND
     on HARDWARE (Partita_iva);

create unique index ID_LAVORO_IND
     on LAVORO (CF, Partita_iva);

create index EQU_LAVOR_CASA__IND
     on LAVORO (Partita_iva);

create unique index ID_LIBRERIA_IND
     on LIBRERIA (ID_SOF, email);

create index REF_LIBRE_ACCOU_IND
     on LIBRERIA (email);

create unique index ID_PERSONA_IND
     on PERSONA (CF);

create unique index ID_RISCA_CHIAV_IND
     on RISCATTO (Id_chiave);

create index REF_RISCA_ACCOU_IND
     on RISCATTO (email);

create unique index ID_SEGNALAZIONE_IND
     on SEGNALAZIONE (Id_bug, email);

create index REF_SEGNA_ACCOU_IND
     on SEGNALAZIONE (email);

create unique index ID_SOFTWARE_IND
     on SOFTWARE (ID_SOF);

create unique index SID_SOFTWARE_IND
     on SOFTWARE (Seriale);

create index EQU_SOFTW_TIPOL_IND
     on SOFTWARE (TIP_Nome);

create index EQU_SOFTW_CASA__IND
     on SOFTWARE (Partita_iva);

create unique index SID_SOFTW_GIOCO_IND
     on SOFTWARE (Titolo);

create unique index ID_TIPOLOGIA_IND
     on TIPOLOGIA (Nome);

create unique index ID_TRANSAZIONE_IND
     on TRANSAZIONE (Id_transazione);

create index REF_TRANS_ACCOU_IND
     on TRANSAZIONE (email);

create unique index ID_VETRINA_IND
     on VETRINA (Codice);

create index REF_VETRI_HARDW_IND
     on VETRINA (Seriale);

create index REF_VETRI_SOFTW_IND
     on VETRINA (ID_SOF);

