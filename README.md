# Spingere

# Piattaforma di Streaming - Progetto Database

Questo progetto riguarda la progettazione e gestione del database per una piattaforma di streaming, che consente agli utenti di accedere a contenuti video gratuiti o a pagamento.

## Struttura del Database
Abbiamo progettato il database per supportare la gestione degli utenti, dei contenuti video, degli abbonamenti e delle transazioni economiche. Il progetto include:
- **Schema ER**: Rappresentazione concettuale delle entità e delle loro relazioni.
- **Schema Relazionale**: Traduzione dello schema ER in un modello relazionale per la gestione con un DBMS.
- **SQL DDL**: Definizione delle tabelle e delle chiavi primarie/esterne per la persistenza dei dati.
- **Vincoli di integrità**: Implementazione di regole per garantire coerenza nei dati.

## Funzionalità e Operazioni sui Dati
1. Inserimento di nuovi utenti con validazione delle credenziali.
2. Modifica del link della scheda descrittiva di un video.
3. Recupero dell’ultimo video guardato/scaricato da un utente.
4. Conteggio delle visualizzazioni per episodio di ogni serie.
5. Calcolo dei guadagni derivanti dagli account premium.
6. Identificazione degli utenti autorizzati al download.
7. Visualizzazione dei contenuti caricati da un determinato autore.
8. Conteggio totale dei video presenti sulla piattaforma e durata complessiva.
9. Identificazione degli episodi con meno visualizzazioni rispetto alla media della serie.
10. Trigger per marcare automaticamente una serie come "per adulti" se un episodio è classificato come tale.
11. Processo schedulato per azzerare il conteggio dei download ogni mese.

## Tecnologia Utilizzata
- **DBMS**: MySQL / MariaDB
- **Modellazione**: Strumenti come MySQL Workbench o DB Designer
- **SQL**: Creazione e gestione delle strutture dati tramite script SQL

Il progetto si concentra esclusivamente sulla progettazione del database e non include implementazione software o interfaccia utente.
