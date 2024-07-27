-- =========================================================
-- archivo: create_tables.sql
-- descripcion: este script crea nuevas tablas para la base de datos pokedex.
-- =========================================================

-- crear tabla de pokemones
create table Pokemones (
    id serial primary key,
    nombre varchar(255) not null,
    tipo varchar(255) not null,
    habilidad varchar(255),
    estadisticas varchar(255)
);

-- crear tabla de entrenadores
create table Entrenadores (
    id serial primary key,
    nombre varchar(255) not null,
    detalles varchar(255)
);

-- crear tabla de relacion entrenador-pokemon
create table Entrenador_Pokemon (
    entrenador_id integer not null,
    pokemon_id integer not null,
    primary key (entrenador_id, pokemon_id),
    foreign key (entrenador_id) references Entrenadores(id) on delete cascade,
    foreign key (pokemon_id) references Pokemones(id) on delete cascade
);

-- crear tabla de batallas
create table Batallas (
    id serial primary key,
    entrenador1_id integer not null,
    entrenador2_id integer not null,
    pokemon1_id integer not null,
    pokemon2_id integer not null,
    fecha date not null,
    resultado varchar(255) not null,
    foreign key (entrenador1_id) references Entrenadores(id) on delete cascade,
    foreign key (entrenador2_id) references Entrenadores(id) on delete cascade,
    foreign key (pokemon1_id) references Pokemones(id) on delete cascade,
    foreign key (pokemon2_id) references Pokemones(id) on delete cascade
);
