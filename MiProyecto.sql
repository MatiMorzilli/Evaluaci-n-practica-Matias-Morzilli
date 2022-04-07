DROP DATABASE IF EXISTS notas_db;
CREATE DATABASE notas_db;
USE notas_db;

CREATE TABLE `usuarios` (
  `IdUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci,
  `Email` varchar(100) COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IdUsuario`)
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into `usuarios`  values (1, 'Nicolas', 'NicolasN@gmail.com');
insert into `usuarios` values (2, 'Jorge', 'JorgeJ@gmail.com');
insert into `usuarios` values (3, 'Dario', 'DarioD@gmail.com');
insert into `usuarios`  values (4, 'Roberto', 'RobertoR@gmail.com');
insert into `usuarios`  values (5, 'Catalina', 'CatalinaC@gmail.com');
insert into `usuarios`  values (6, 'Matias', 'MatiasM@gmail.com');
insert into `usuarios` values (7, 'Geronimo', 'GeronimoG@gmail.com');
insert into `usuarios` values (8, 'Sofia', 'Sofia@gmail.com');
insert into `usuarios` values (9, 'Mariana', 'MarianaM@gmail.com');
insert into `usuarios`  values (10, 'Lucas', 'LucasL@gmail.com');
insert into `usuarios` values (11, 'Gonzalo', 'GonzaloG@gmail.com');
insert into `usuarios`  values (12, 'Mauro', 'Mauro@gmail.com');
insert into `usuarios`  values (13, 'Esteban', 'Esteban@gmail.com');
insert into `usuarios`  values (14, 'Marita', 'Marita@gmail.com');
insert into `usuarios`  values (15, 'Stella', 'StellaS@gmail.com');

 
 CREATE TABLE `notas` (
  `Nota_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(10) unsigned NOT NULL,
  `Titulo` varchar(100) COLLATE utf8_unicode_ci,
  `Descripcion` text COLLATE utf8_unicode_ci,
  `CheckBorrado` boolean not NULL default 1,
  `Creado` timestamp NULL DEFAULT NULL,
  `Actualizado` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Nota_id`),
  /*key `usuarios_IdUsuario_foreign` (`IdUsuario`),*/
  CONSTRAINT `usuarios_IdUsuario_foreign` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`)
  
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into notas (Nota_id, IdUsuario, Titulo, Descripcion, CheckBorrado, Creado, Actualizado) values
(1, 1, 'Norma Jean & Marilyn', 'Nondisp fx of olecran pro w intartic extn right ulna, init', false, '2020-04-29 06:00:12', '2019-07-19 18:26:59'),
(2, 1, 'My Mother''s Smile (a.k.a. The Religion Hour) (L''ora di religione) (Il sorriso di mia madre)', 'Sprain of interphalangeal joint of right great toe, subs', true, '2020-04-25 14:45:00', '2019-12-28 18:20:51'),
(3, 1, 'Sea Wolves, The', 'Injury of nerves at ankle and foot level, right leg, subs', true, '2020-01-01 16:03:36', '2020-03-05 13:48:46'),
(4, 1, 'Nightmare Before Christmas, The', 'Nondisp fx of dist phalanx of r thm, 7thG', true, '2020-01-17 00:37:48', '2019-12-08 12:40:43'),
(5, 1, 'Murder on a Sunday Morning (Un coupable id?al)', 'Adverse effect of methadone, sequela', true, '2019-07-27 03:47:16', '2019-09-18 19:07:23'),
(6, 1, 'The Conrad Boys', 'Displ unsp condyle fx low end r femr, 7thE', true, '2019-07-09 21:56:29', '2019-08-30 03:37:55'),
(7, 1, 'Prisoner of Zenda, The', 'Displ suprcndl fx w intrcndl extn low end r femr, 7thD', false, '2019-07-10 19:38:45', '2020-03-23 17:14:12'),
(8, 1, 'Beauty and the Bastard (Tytt? sin? olet t?hti)', 'Poisoning by oth topical agents, accidental, init', false, '2020-01-12 10:42:29', '2020-04-02 02:55:01'),
(9, 1, 'Burn Notice: The Fall of Sam Axe', 'Leucocoria', true, '2020-01-13 06:33:42', '2020-03-31 19:01:20'),
(10, 1, 'Europa Europa (Hitlerjunge Salomon)', 'Milt op w explosn of improv explosv device, civilian, subs', true, '2020-03-13 16:04:15', '2019-10-20 12:12:04');



CREATE TABLE `Categorias` (
  `IdCategorias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci,
  PRIMARY  KEY (`IdCategorias`)
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; 

insert into categorias (IdCategorias, Nombre) values (1, 'Autos');
insert into categorias (IdCategorias, Nombre) values (2, 'Casas');
insert into categorias (IdCategorias, Nombre) values (3, 'Exterior');
insert into categorias (IdCategorias, Nombre) values (4, 'Accesorios');
insert into categorias (IdCategorias, Nombre) values (5, 'Herramientas');
insert into categorias (IdCategorias, Nombre) values (6, 'Deportes');
 
 
CREATE TABLE `categorias_nota` (
  `Id_nota_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdCategorias`  int(10) unsigned NOT NULL,
  `Nota_id`  int(10) unsigned NOT null,
  PRIMARY KEY (`id_nota_categoria`),
  CONSTRAINT `categoria_IdCategorias_foreign` FOREIGN KEY (`IdCategorias`) REFERENCES `Categorias` (`IdCategorias`),
  CONSTRAINT `notas_Nota_id_foreign` FOREIGN KEY (`Nota_id`) REFERENCES `notas` (`Nota_id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 
 insert into categorias_nota (IdCategorias, Nota_id) values 
 (1, 1), (1, 2), (1, 3), (2,4), (2,5), (2,6), (3,7), (4,8), (4, 9), (4,10);

CREATE TABLE `Registro` (
  `RegistroId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nota_id` int(10) unsigned NOT NULL,
  `IdUsuario` int(10) unsigned NOT NULL,
  `Cambio` enum('creación','modificación','eliminación') NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`RegistroId`),
  CONSTRAINT `Registro_notas_Nota_id` FOREIGN KEY (`Nota_id`) REFERENCES `notas` (`Nota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Registro_usuarios_IdUsuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into Registro (Nota_id, IdUsuario, Cambio) values 
(1,1, 'creación' ), (2,1, 'creación' ), (3,1, 'creación' ),
(4,1, 'creación' ), (5,1, 'creación' ), (6,1, 'creación' ),
(7,1, 'creación' ), (8,1, 'creación' ), (9,1, 'creación' ), (10,1, 'creación' );
 


 

 