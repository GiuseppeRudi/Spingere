SELECT u.Username
FROM Utente u
WHERE NOT EXISTS (
    SELECT 1
    FROM Categoria c
    WHERE c.ID_genere = 4
    AND NOT EXISTS (
        SELECT 1
        FROM visualizzare vi
        WHERE vi.Username = u.Username
        AND vi.Cod_video = c.Cod_video
    )
);