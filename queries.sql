-- Fråga 1: Vilka filmer som firman äger, inklusive data om filmen.

SELECT * FROM vw_company_owns_movies;

-- Fråga 2: Vilka filmer som finns i en viss genre.

SELECT * FROM vw_movies_in_genre; -- Genre: Adventure

-- Fråga 3: Vilka filmer som är uthyrda, vem som hyrde dem (kund) och vem som hyrde ut dem (anställd).

SELECT * FROM vw_rented_movies;

-- Fråga 4: Vilka filmer som har gått över tiden, dvs filmer som inte har blivit återlämnade trots att de borde vara det, tillsammans med namnet på kunden som har hyrt den.

SELECT * FROM vw_overdue_movies;

-- Fråga 5: En lista över alla anställda och hur många filmer varje anställd har hyrt ut.

SELECT * FROM vw_employee_rentals;

-- Fråga 6: En lista med statistik över de mest uthyrda filmerna den senaste månaden. Se fråga 10.

SELECT * FROM vw_months_top_movies;

-- Fråga 7: En Stored Procedure som ska köras när en film lämnas ut. Ska alltså sätta filmen till uthyrd, vem som hyrt den osv.

-- För den sp jag skapat anger man en films id så hittar sp:n en ledig kopia av filmen om det finns en, annars meddelar den att det inte finns någon ledig kopia.
CALL sp_rent_movie(1, 1, 1, 'DVD', @result); -- (movieID, customerID, employeeID, format, OUT parameter from SP: success/failure)

SELECT @result; -- Show success/failure message

-- Fråga 8: Gör en funktion som tar en film som parameter och returnerar olika värden beroende på om filmen är sent inlämnad eller inte. Dvs, om du matar in film nr 345 ska du få tillbaka TRUE om filmen är uthyrd men borde vara tillbakalämnad, annars FALSE. (1 och 0 funkar också om det är lättare.)

SELECT f_is_movie_late(23);

-- Fråga 9: En Stored Procedure som ska köras när en film lämnas tillbaka. Den ska använda sig av ovanstående funktion för att göra någon form av markering/utskrift om filmen är återlämnad för sent.

CALL sp_return_movie(3);

-- Fråga 10: Du ska underhålla en statistiktabell med hjälp av triggers. När du lämnar ut en fil ska det göras en notering om det i din statistiktabell. Du får inte lägga till informationen från din SP ovan, det ska skötas med triggers.

CALL sp_rent_movie(6, 1, 1, 'BLU-RAY', @result); -- (movieID, customerID, employeeID, format, OUT parameter from SP: success/failure)

SELECT @result;

