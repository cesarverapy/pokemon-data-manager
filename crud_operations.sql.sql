-- =========================================================
-- archivo: crud_operations.sql
-- descripcion: este script contiene las operaciones crud 
--              para las tablas de la base de datos pokedex.
-- =========================================================

-- =======================
-- operaciones crud para pokemones
-- =======================

-- crear un nuevo pokemon
insert into Pokemones (nombre, tipo, habilidad, estadisticas) values ('Bulbasaur', 'planta', 'clorofila', '45, 49, 49');

-- leer todos los pokemones
select * from Pokemones;

-- actualizar el tipo de un pokemon
update Pokemones set tipo = 'planta/veneno' where nombre = 'Bulbasaur';

-- eliminar un pokemon
delete from Pokemones where nombre = 'Charmander';

-- =======================
-- operaciones crud para entrenadores
-- =======================

-- crear un nuevo entrenador
insert into Entrenadores (nombre, detalles) values ('Brock', 'entrenador de ciudad plateada');

-- leer todos los entrenadores
select * from Entrenadores;

-- actualizar los detalles de un entrenador
update Entrenadores set detalles = 'lider de gimnasio de ciudad plateada' where nombre = 'Brock';

-- eliminar un entrenador
delete from Entrenadores where nombre = 'Misty';

-- =======================
-- operaciones crud para entrenador_pokemon
-- =======================

-- asignar un pokemon a un entrenador
insert into Entrenador_Pokemon (entrenador_id, pokemon_id) values (1, 3);

-- leer todas las relaciones entrenador-pokemon
select * from Entrenador_Pokemon;

-- actualizar la relacion de un pokemon con un entrenador
update Entrenador_Pokemon set pokemon_id = 2 where entrenador_id = 1 and pokemon_id = 3;

-- eliminar una relacion entrenador-pokemon
delete from Entrenador_Pokemon where entrenador_id = 2 and pokemon_id = 2;

-- =======================
-- operaciones crud para batallas
-- =======================

-- registrar una nueva batalla
insert into Batallas (entrenador1_id, entrenador2_id, pokemon1_id, pokemon2_id, fecha, resultado) values (1, 2, 1, 2, '2024-08-01', 'gano misty');

-- leer todas las batallas
select * from Batallas;

-- actualizar el resultado de una batalla
update Batallas set resultado = 'gano brock' where id = 1;

-- eliminar una batalla
delete from Batallas where id = 1;
