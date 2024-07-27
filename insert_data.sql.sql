-- =========================================================
-- archivo: insert_data.sql
-- descripcion: este script inserta nuevos datos en las tablas 
--              de la base de datos pokedex.
-- =========================================================

-- insertar datos en la tabla pokemones
insert into Pokemones (nombre, tipo, habilidad, estadisticas) values 
('Pikachu', 'electrico', 'rayo', '50, 60, 40'),
('Charmander', 'fuego', 'llamarada', '52, 43, 39');

-- insertar datos en la tabla entrenadores
insert into Entrenadores (nombre, detalles) values 
('Ash', 'entrenador de pueblo paleta'),
('Misty', 'entrenadora de ciudad celeste');

-- insertar datos en la tabla entrenador_pokemon
insert into Entrenador_Pokemon (entrenador_id, pokemon_id) values 
(1, 1),
(2, 2);

-- insertar datos en la tabla batallas
insert into Batallas (entrenador1_id, entrenador2_id, pokemon1_id, pokemon2_id, fecha, resultado) values 
(1, 2, 1, 2, '2024-07-24', 'gano ash');
