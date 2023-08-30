/*Funzione1*/
insert into insegnante values('NOMEPROVA','COGNOMEPROVA','100','PROVAUSER','PROVAPASS');
select username from insegnante where identificativo='100';

/*Funzione2*/
insert into studente values('NOMEPROVA','COGNOMEPROVA','100','PROVAUSER','PROVAPASS');
select username from studente where matricola='100';

/*Funzione3*/
/*ERRATA*/insert into gestione values ('Inserimento','2022-02-23','1','1');
/*GIUSTA*/insert into gestione values ('Inserimento','2022-01-23','1','1');

/*Funzione4*/
select punteggiominpos, punteggiotot, esito
from testscelti natural join test;

/*Funzione5*/
/*ERRATA*/update rispostaaperta set testorisposta='aaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\aaaaaaaaaaaaaaaaaaaaaaaaaaaaa' 
where matricola='1' and idqa='1' and dataconsegna='2022-01-25 14:00:00';
/*GIUSTA*/update rispostaaperta set testorisposta='A' 
where matricola='1' and idqa='1' and dataconsegna='2022-01-25 14:00:00';

/*Funzione6*/
/*ERRATA*/update rispostaaperta set punteggioassegnato='-1' where matricola='1' and idqa='1' and dataconsegna='2022-01-25 14:00:00';
/*ERRATA*/update rispostaaperta set punteggioassegnato='6' where matricola='1' and idqa='1' and dataconsegna='2022-01-25 14:00:00';
/*GIUSTA*/update rispostaaperta set punteggioassegnato='5' where matricola='1' and idqa='1' and dataconsegna='2022-01-25 14:00:00';

/*Funzione7*/
insert into testscelti (dataiscrizione,matricola,idt)values('2022-01-05','100','1');
select idqa,idqm
from rispostaaperta join rispostachiusa on rispostaaperta.matricola=rispostachiusa.matricola
where rispostachiusa.matricola='100' and date(rispostachiusa.dataconsegna)='2022-01-25';

/*Funzione8*/
/*ERRATA*/insert into ammettequiza values('2023-01-23','1','10');
/*GIUSTA*/insert into ammettequiza values('2022-01-23','1','10');

/*Funzione9*/
/*ERRATA*/insert into ammettequizm values('2023-01-23','1','10');
/*GIUSTA*/insert into ammettequizm values('2022-01-23','1','10');

/*Funzione10*/
insert into test(idt, nome, DataTest,  datainizioiscr, datafineiscr, temposvolgimento, punteggiominpos) values (
	'100', 'TestProva','2022-02-28 14:00:00','2022-02-01 08:00:00','2022-02-27 23:00:00','02:35:00','18'
);

/*ERRATA*/insert into testscelti (matricola,idt)values('100','100');
/*GIUSTA*/insert into gestione values ('Modifica',current_date,'1','100');
		  insert into testscelti (dataiscrizione,matricola,idt)values('2022-02-05','100','100');
		 
/*Funzione11*/
/*ERRATA*/update rispostaaperta set testorisposta='Risposta' where matricola='5' and idqa='1' and dataconsegna='2023-01-25 14:00:00';
/*GIUSTA*/update rispostaaperta set testorisposta='Risposta' where matricola='5' and idqa='1' and dataconsegna='2022-01-25 14:00:00';

/*Funzione12*/
/*ERRATA*/update rispostachiusa set testorisposta='4Ff' where matricola='7' and idqm='2' and dataconsegna='2023-02-25 14:00:00';
/*GIUSTA*/update rispostachiusa set testorisposta='4Ff' where matricola='7' and idqm='2' and dataconsegna='2022-01-25 14:00:00';


/*Funzione13*/
insert into test(idt, nome, DataTest,  datainizioiscr, datafineiscr, temposvolgimento, punteggiominpos) values (
	'1000', 'TestProva','2022-02-28 14:00:00','2022-02-01 08:00:00','2022-02-27 23:00:00','02:35:00','18'
);

/*ERRATA*/insert into ammettequizm values(current_date,'1','1000');
/*GIUSTA*/insert into gestione values ('Modifica',current_date,'1','1000');
		  insert into ammettequizm values(current_date,'1','1000');
		  
/*Funzione14*/
insert into test(idt, nome, DataTest,  datainizioiscr, datafineiscr, temposvolgimento, punteggiominpos) values (
	'10000', 'TestProva','2022-02-28 14:00:00','2022-02-01 08:00:00','2022-02-27 23:00:00','02:35:00','18'
);

/*ERRATA*/insert into ammettequizm values(current_date,'1','10000');
/*GIUSTA*/insert into gestione values ('Modifica',current_date,'1','10000');
		  insert into ammettequizm values(current_date,'1','10000');
		  
/*Funzione15*/
insert into test(idt, nome, DataTest,  datainizioiscr, datafineiscr, temposvolgimento, punteggiominpos) values (
	'00', 'TestProva','2022-02-28 14:00:00','2022-02-01 08:00:00','2022-02-27 23:00:00','02:35:00','18'
);
/*ERRATA*/insert into testscelti (dataiscrizione, matricola,idt)values('2022-01-29','100','00');
/*ERRATA*/insert into testscelti (dataiscrizione, matricola,idt)values('2022-02-28','100','00');
/*GIUSTA*/insert into gestione values ('Modifica',current_date,'1','00');
		  insert into testscelti (dataiscrizione, matricola,idt)values('2022-02-15','100','0');

/*Funzione16*/
select punteggiotot from testscelti where matricola='100';
update rispostaaperta set punteggioassegnato='2' where matricola='100' and idqa='1' and dataconsegna='2022-01-25 14:00:00';
select punteggiotot from testscelti where matricola='1';

/*Funzione 17*/
insert into testScelti (DataIscrizione, Matricola, idt, esito)values('2022-02-02 14:00:00','100','100', 'Non disponibile');
/*ERRATA*/insert into testScelti (DataIscrizione, Matricola, idt, esito)values('2022-02-02 14:00:00','100','1000', 'Non disponibile');




/*1*/
create or replace function frisultatitest(risultatitestvista text) returns void as $$
begin
execute risultatitestvista;
end;
$$ language plpgsql;

SELECT frisultatitest('CREATE OR REPLACE VIEW risultatitest AS select matricola, esito, punteggiotot
from testscelti
where idt=1
');
select * from risultatitest;

/*2*/
create or replace function fstudentiesaminati2(studentiesaminativista2 text) returns void as $$
begin
execute studentiesaminativista2;
end;
$$ language plpgsql;

SELECT fstudentiesaminati2('CREATE OR REPLACE VIEW studentiesaminati2 AS select matricola, esito, punteggiotot, idt
from gestione natural join testscelti
where identificativo=1
');
select * from studentiesaminati2;


/*3*/
create or replace function fesamisvolti(esamisvoltivista text) returns void as $$
begin
execute esamisvoltivista;
end;
$$ language plpgsql;

SELECT fesamisvolti('CREATE OR REPLACE VIEW esamisvolti AS select esito, punteggiotot, idt
from testscelti
where matricola=1
');
select * from esamisvolti;


/*4*/
create or replace function fesamigestiti(esamigestitivista text) returns void as $$
begin
execute esamigestitivista;
end;
$$ language plpgsql;

SELECT fesamigestiti('CREATE OR REPLACE VIEW esamigestiti AS select *
from gestione natural join test
where identificativo=1 ');
select * from esamigestiti;
