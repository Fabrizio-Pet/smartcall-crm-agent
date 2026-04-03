# 📞 SmartCall CRM Agent
**Real-time call enrichment using AI (Grok) and n8n automation**

SmartCall CRM Agent is an automated system designed to instantly identify employees, partners, or customers during incoming calls. By intercepting calls, the system queries a database to verify subscription status and payment history, generating an AI-powered summary that pops up on the screen before the operator even answers.

---

## 🔄 Data Flow & Architecture
1. **Call Interception:** The **Automate** app (Android) detects an incoming call.
2. **Data Extraction:** Automate extracts the phone number and sends it via **Webhook** to n8n.
3. **Database Lookup:** The **n8n** workflow queries the database (PostgreSQL/SQL) to match the number with a partner profile and retrieve payment logs.
4. **AI Processing:** Data is passed to the **Grok (xAI)** LLM, which synthesizes a concise, actionable brief (e.g., *"Active partner, last payment received on April 1st. No outstanding balance."*).
5. **Instant HUD:** n8n sends the response back to Automate, which triggers a high-priority notification (pop-up) on the device screen.

---

## 🛠️ Tech Stack
* **Call Handling:** [Automate for Android](https://llamalab.com/automate/)
* **Logic Orchestration:** [n8n](https://n8n.io/)
* **Database:** PostgreSQL / Supabase (CRM data & Ledger)
* **AI Engine:** **Grok (xAI)** Large Language Model
* **Communication:** REST API / Webhooks

---

## 🚀 Key Features
* **Zero-Latency Insights:** Designed to process and display data within the first few rings.
* **Risk Mitigation:** Highlights overdue payments or expired subscriptions instantly.
* **Intelligent Summarization:** Instead of raw data, the agent provides a natural language brief, making it easy for the user to read while the phone is ringing.
* **Seamless Integration:** Bridges the gap between mobile telephony and corporate databases.

---

## 📁 Repository Structure
* `workflows/`: n8n automation `.json` files.
* `database/`: SQL scripts for table schemas (Partners & Payments).
* `automate/`: Exported Automate flows.
  
---

> **Note:** This project showcases advanced skills in CTI (Computer Telephony Integration), database management, and LLM implementation.
