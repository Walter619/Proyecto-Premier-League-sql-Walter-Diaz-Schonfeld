create schema premier_league_23_24; 
use premier_league_23_24; 


Create table Campeonato (
Equipo_id INT PRIMARY KEY AUTO_INCREMENT,
Nombre_equipo_id int(50) not null,
Puntuacion int(3),
temporadas_en_primera int(2),
Partidos_ganados int(2),
Partidos_perdidos int(2),
Partidos_empatados int(2),
Goles_a_favor int(2),
Goles_en_contra int (3),
FOREIGN KEY (Nombre_equipo_id) REFERENCES Club (club_id)
);

Create table Jugador( 
Jugador_id INT PRIMARY KEY AUTO_INCREMENT,
nombre varchar (30) not null,
apellido varchar (30),
Nacionalidad varchar(30),
Edad int(2),
Altura int(3),
partidos_jugados int(2),
Fecha_nacimiento int(10),
Peso varchar(3)
);

create table goleador(
goleador_id INT PRIMARY KEY AUTO_INCREMENT,
minutos_disputados int(4),
ocasion_por_partido int(2),
Valor int(8),
Partido_jugados int(2),
jugador_id int not null,
Dominio_De_Pie enum('Derecha' , 'Izquierda'),
 FOREIGN KEY (jugador_id) REFERENCES Jugador(Jugador_id)
 );
 
 
create table asistente(
asistencia_id INT PRIMARY KEY AUTO_INCREMENT,
minutos_disputados int(4),
ocasion_por_partido int(2),
Valor int(8),
Partido_jugados int(2),
jugador_id int not null,
Dominio_De_Pie enum('Derecha' , 'Izquierda'),
 FOREIGN KEY (jugador_id) REFERENCES jugador (Jugador_id)
 );



create table arquero(
asistencia_id INT PRIMARY KEY AUTO_INCREMENT,
minutos_disputados int(4),
ocasion_por_partido int(2),
Valor int(8),
Partido_jugados int(2),
jugador_id int not null,
Dominio_De_Pie enum('Derecha' , 'Izquierda'),
 FOREIGN KEY (jugador_id) REFERENCES jugador (Jugador_id)
 );


create table Club(
club_id INT PRIMARY KEY AUTO_INCREMENT,
Nacionalidades varchar(25),
direccion varchar(20),
jugador_id varchar(20),
Valor_equipo int(10),
Division varchar(3),
Publicidad varchar(10),
Año_Fundacion date,
FOREIGN KEY (jugador_id) REFERENCES jugador (Jugador_id)
); 

Create table Patrocinante(
patrocinante_id INT PRIMARY KEY AUTO_INCREMENT,
nacionalidad varchar(3),
valor int,
club_id int,
Camisetas_vendidas int,
Nombre_patrocinante varchar (2),
FOREIGN KEY (club_id) REFERENCES Club (club_id)
);


Create table Arbitro(
arbitro_id INT PRIMARY KEY AUTO_INCREMENT,
Nacionalidad varchar(2),
Edad int,
Nombre varchar(3),
Apellido varchar(3),
Años_En_Actividad int,
Finales_dirigidas int,
Tarjetas_por_partido int,
Jugadores_expulsados int
);







