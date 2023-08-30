/*Indice DatabaseSQLFinale*/

--Riga 28 Creazione tabella INSEGNANTE e relativi vincoli
--Riga 58 Creazione tabella STUDENTE e relativi vincoli
--Riga 88 Creazione tabella TEST e relativi vincoli
--Riga 117 Creazione tabella QUIZMULTIPLA e relativi vincoli
--Riga 147 Creazione tabella QUIZAPERTA e relativi vincoli
--Riga 184 Creazione tabella GESTIONE e relativi vincoli
--Riga 209 Creazione tabella TESTSCELTI e relativi vincoli
--Riga 239 Creazione tabella RISPOSTACHIUSA e relativi vincoli
--Riga 271 Creazione tabella RISPOSTAAPERTA e relativi vincoli
--Riga 310 Creazione tabella AMMETTEQUIZA e relativi vincoli
--Riga 338 Creazione tabella AMMETTEQUIZM e relativi vincoli


/*Idice FunzioniSQL*/

/*----------------------------------------------------------------------*/
--Riga 3
--Funzione che aggiunge il prefisso ins_ a username
--Trigger che gestisce la funzione e abilitazione



--Riga 32
--Funzione che aggiunge il prefisso stud_ a username
--Trigger che gestisce la funzione e abilitazione



--Riga 61
--Funzione che  controlla che dataoperazione<datatest
--Trigger che gestisce la funzione e abilitazione



--Riga 98
--Funzione che controlla che l'esito sia aggiornato in base al punteggiominpos
--Trigger che gestisce la funzione e abilitazione



--Riga 140
--Funzione che calcola che testo domanda sia <maxcaratteri
--Trigger che gestisce la funzione e abilitazione



--Riga 174
--Funzione che controlla che punteggiomin<punteggioassegnato<punteggiomax
--Trigger che gestisce la funzione e abilitazione



--Riga 223
--Funzione che inserisce dopo insert su testScelti mat e idqm/idqa e dataconsegna in rispostaAperta e chiusa. Aggiungere dataconsegna come DataTest, dataconsegna verrà aggiornato quando inseriremo i testorisposta
--Trigger che gestisce la funzione e abilitazione



--Riga 284
--Funzione che controlla che dataoperazione sia minore di datatest su AmmettequizA
--Trigger che gestisce la funzione e abilitazione



--Riga 320
--Funzione che controlla che dataoperazione sia minore di datatest su AmmettequizM
--Trigger che gestisce la funzione e abilitazione



--Riga 357
--Funzione che mi fa inserire in testscelti solo se il test è stato modificato da insegnante in gestione
--Trigger che gestisce la funzione e abilitazione



--Riga 392
--Funzione che calcola tempo su dataconsegna RA
--Trigger che gestisce la funzione e abilitazione



--Riga 433
--Funzione che calcola tempo su dataconsegna RC
--Trigger che gestisce la funzione e abilitazione



--Riga 473
--Funzione che mi fa inserire in ammettequiza solo se il test è stato modificato da insegnante in gestione
--Trigger che gestisce la funzione e abilitazione



--Riga 507
--Funzione che mi fa inserire in ammettequiza solo se il test è stato modificato da insegnante in gestione
--Trigger che gestisce la funzione e abilitazione



--Riga 540
--Funzione che calcola che dataiscrizione sia nei limiti
--Trigger che gestisce la funzione e abilitazione



--Riga 576
--Funzione che calcola punteggiotot
--Trigger che gestisce la funzione e abilitazione



--Riga 662
--Funzione che non mi fa svolgere due test nello stesso giorno
--Trigger che gestisce la funzione e abilitazione



/*VISTE SQL*/

--Riga 710
/*1) Vista per vedere gli studenti esaminati ai test}*/


--Riga719
/*2) Vista per vedere i quiz multipli che formano i test}*/


--Riga 728
/*3) Vista per vedere i quiz a risposta aperta che formano i test*/

	





