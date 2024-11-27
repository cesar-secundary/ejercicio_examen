CREATE TABLE tarjeta (
    tarjeta_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero_tarjeta TINYINT(10) NOT NULL,
    n_plaza TINYINT (4),
    trastero BOOLEAN,
);

CREATE TABLE plantas (
    id_planta INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    n_planta INT UNSIGNED NOT NULL,
    nombre VARCHAR(50),
    n_habitaciones INT,
)


-- Asi se hace una especializacion entre habitaciones suite y standar 
CREATE TABLE habitaciones (
    habitacion_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tarjeta_id INT UNSIGNED NOT NULL,
    id_planta INT UNSIGNED NOT NULL,
    n_habitacion INT NOT NULL,
    n_personas TINYINT,
    FOREIGN KEY (tarjeta_id)  REFERENCES (tarjeta_id) ON DELETE CASCADE,
    FOREIGN KEY (id_planta) REFERENCES plantas (id_planta)
);

CREATE TABLE suite (
    id_suite  INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    habitacion_id INT UNSIGNED NOT NULL,
    jacuzzi BOOLEAN,
    m_2 INT,
    FOREIGN KEY (habitacion_id) REFERENCES habitaciones (habitacion_id) ON DELETE CASCADE

);

CREATE TABLE standar (
    id_standar  INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    habitacion_id INT UNSIGNED NOT NULL,
    cama_extra BOOLEAN,
    ducha_bañera BOOLEAN,
    FOREIGN KEY (habitacion_id) REFERENCES habitaciones (habitacion_id) ON DELETE CASCADE

);

CREATE TABLE cliente(
   nombre VARCHAR (50),

)

