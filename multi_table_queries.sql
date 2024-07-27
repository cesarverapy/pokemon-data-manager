-- =========================================================
-- archivo: multi_table_queries.sql
-- descripcion: este script contiene consultas multi-table 
--              para las tablas de la base de datos pokedex.
-- =========================================================

-- mostrar todos los pokémon con sus entrenadores
select e.nombre as entrenador, p.nombre as pokemon 
from Entrenadores e 
join Entrenador_Pokemon ep on e.id = ep.entrenador_id 
join Pokemones p on ep.pokemon_id = p.id;

-- mostrar detalles de las batallas
select b.fecha, e1.nombre as entrenador1, e2.nombre as entrenador2, p1.nombre as pokemon1, p2.nombre as pokemon2, b.resultado
from Batallas b
join Entrenadores e1 on b.entrenador1_id = e1.id
join Entrenadores e2 on b.entrenador2_id = e2.id
join Pokemones p1 on b.pokemon1_id = p1.id
join Pokemones p2 on b.pokemon2_id = p2.id;
