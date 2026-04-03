# 📞 SmartCall CRM Agent
**THIS FILES ARE MEANT FOR PERSONAL USE. DO NOT DISCLOSE THIS FILES AS YOURS**

**Arricchimento chiamate in tempo reale con AI (Grok) e n8n**

SmartCall CRM Agent è un sistema automatizzato che riconosce istantaneamente i dipendenti, i partner o i clienti che chiamano l'azienda. Intercettando la chiamata in entrata, il sistema interroga un database per verificare lo stato dell'abbonamento e gli ultimi pagamenti, generando un messaggio personalizzato tramite Intelligenza Artificiale che appare sullo schermo all'inizio della telefonata.

---

## 🔄 Flusso dei Dati (Come Funziona)
1. **Intercettazione Chiamata:** L'applicazione **Automate** rileva una chiamata in entrata sul telefono aziendale.
2. **Estrazione Numero:** Automate estrae il numero di telefono e lo invia tramite Webhook a n8n.
3. **Controllo Database:** L'orchestrazione su **n8n** interroga il database per verificare se il numero è associato a un partner/dipendente e controlla lo storico dei pagamenti.
4. **Generazione Messaggio (AI):** Se il numero è presente, i dati vengono passati a una LLM (**Modello Grok di xAI**) che elabora un breve testo riassuntivo (es: *"Abbonamento attivo, ultimo pagamento 02/04. Cliente affidabile"*).
5. **Notifica su Schermo:** n8n risponde al Webhook di Automate, che fa apparire un messaggio rapido (pop-up) sullo schermo all'inizio della chiamata.

---

## 🛠️ Tech Stack
* **Rilevamento Chiamate:** [Automate](https://llamalab.com/automate/) (per Android)
* **Orchestrazione & Logica:** [n8n](https://n8n.io/)
* **Database:** SQL / PostgreSQL (Gestione anagrafiche e pagamenti)
* **Cervello AI:** Modello LLM di **Grok (xAI)** per la sintesi dei dati
* **Protocollo di Comunicazione:** Webhooks (HTTP REST API)

---

## 🚀 Funzionalità Principali
* **Riconoscimento Istantaneo:** Identifica chi chiama prima ancora di rispondere.
* **Prevenzione del Rischio:** Evidenzia subito se un partner ha pagamenti in sospeso o abbonamenti scaduti.
* **Sintesi Intelligente:** L'AI non mostra dati grezzi, ma crea un riassunto discorsivo, amichevole e facile da leggere in pochissimi secondi.
* **Zero Latenza:** Progettato per essere eseguito nei pochissimi secondi tra lo squillo e la risposta.

---

## 📁 Struttura della Repository
* `workflows/`: Contiene il file `.json` dell'automazione n8n.
* `database/`: Contiene lo script `.sql` per creare la tabella dei partner/dipendenti e dei pagamenti.
* `automate/`: Contiene il flusso di Automate (se esportabile).

---

> **Nota:** Questo progetto dimostra competenze avanzate nell'integrazione tra sistemi mobile, database locali/cloud e modelli linguistici di ultima generazione (LLM).
