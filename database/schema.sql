-- Creazione della tabella Clienti
CREATE TABLE IF NOT EXISTS clienti (
    id BIGSERIAL PRIMARY KEY,           -- Corrisponde a int8 (chiave primaria)
    nome TEXT NOT NULL,                 -- Nome del cliente
    stato_pagamento BOOLEAN DEFAULT false, -- Corrisponde a bool (TRUE = pagato, FALSE = non pagato)
    telefono TEXT NOT NULL,             -- Numero di telefono (usato per il riconoscimento)
    data_pagamento DATE                 -- Data dell'ultimo pagamento
);

-- Inserimento di alcuni dati di esempio (opzionale, utile per testare il bot)
INSERT INTO clienti (nome, stato_pagamento, telefono, data_pagamento) VALUES 
('Mario Rossi', true, '+393331234567', '2026-03-15'),
('Luigi Verdi', false, '+393459876543', '2026-02-10');
