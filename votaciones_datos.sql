

INSERT INTO `facultad`(`id`, `nombre`, `created_at`, `updated_at`) VALUES 
(1,'Ingenieria','2018-05-04 03:58:05','2018-05-04 03:58:05');

INSERT INTO `programa`(`id`, `nombre`, `facultad_id`, `created_at`, `updated_at`) VALUES 
(1,'Ingenieria de Sistemas',1,'2018-05-04 03:59:01','2018-05-04 03:59:01');

INSERT INTO `lugar`(`id`, `nombre`, `created_at`, `updated_at`) VALUES 
(1,'lugar 1','2018-05-04 04:06:1organo4','2018-05-04 04:06:14');
 
INSERT INTO `mesa`(`id`, `nombre`, `lugar_id`, `created_at`, `updated_at`) VALUES
(1,'Mesa 001',1,'2018-05-04 04:07:06','2018-05-04 04:07:06'); 

INSERT INTO `rol`(`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES 
('A','Administrador','Es el que tiene el control del sitio','2018-05-04 04:02:21','2018-05-04 04:02:21'),
('V','Votante','Es quien puede votar','2018-05-04 06:01:51','2018-05-04 06:01:51');


INSERT INTO `rol`(`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES 
('J','Jurado','Es el jurado de votacion','2018-05-04 04:02:21','2018-05-04 04:02:22'),
('T','Testigo','Testigo de votacion','2018-05-04 06:01:51','2018-05-04 06:01:52');

INSERT INTO `users`(`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, 
`rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`) VALUES
('2015114010','Juan','Jose','Meza','Gamarra','email@gmail.com','$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq','A',NULL,NULL,NULL,NULL),
('2015114020','Andres','David','Lopez','Martinez','correo@gmail.com','$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2','V',1,'Estudiante','1',1);

INSERT INTO `users`(`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, 
`rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`) VALUES
('2015114030','mario','Jose','Meza','Gamarra','mario@gmail.com','$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq','J',1,'Estudiante','1',1),
('2015114040','alberto','David','Lopez','Martinez','alberto@gmail.com','$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2','V',1,'Estudiante','1',1);

INSERT INTO `users`(`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, 
`rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`) VALUES
('2015114050','jesus','Jose','Meza','Gamarra','jesus@gmail.com','$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq','V',1,'Estudiante','1',1),
('2015114060','ivan','David','Lopez','Martinez','ivan@gmail.com','$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2','T',1,'Estudiante','1',1);

INSERT INTO `users`(`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, 
`rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`) VALUES
('1','blanco','blanco','blanco','blanco','blanco1@gmail.com','$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq','A',NULL,NULL,NULL,NULL),
('2','ivan','David','Lopez','Martinez','blanco2@gmail.com','$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2','A',NULL,NULL,NULL,NULL);

INSERT INTO `users`(`codigo`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `email`, `password`, 
`rol_id`, `programa_id`, `tipo`, `estado`, `mesa_id`) VALUES
('3','blanco','blanco','blanco','blanco','blanco3@gmail.com','$2y$10$OTHjzy2SnEHqTdFm6DnjV.6TwCQMi7XEEMKv0xGwAFbf81aERHMnq','A',NULL,NULL,NULL,NULL),
('4','blanco','blanco','blanco','blanco','blanco4@gmail.com','$2y$10$MILN6G05F6OoPDax8SPXGuxQ26Ck4Gxkzj4AUbKLDLYgjRrR6SGu2','A',NULL,NULL,NULL,NULL);

INSERT INTO `VotacionesUnimag`.`organo` (`id`, `nombre`, `descripcion`) VALUES ('2', 'partido 2', 'partido estudiantes');
INSERT INTO `VotacionesUnimag`.`organo` (`id`, `nombre`, `descripcion`) VALUES ('3', 'partido 3', 'partido docentes');
INSERT INTO `VotacionesUnimag`.`organo` (`id`, `nombre`, `descripcion`) VALUES ('4', 'partido 4', 'partido rectores');

INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('1', 'blanco', '1', 'blanco.jpg');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`, `created_at`, `updated_at`) VALUES ('2', 'blanco', '2', 'blanco.jpg', '', '');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('3', 'blanco', '3', 'blanco.jpg');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('4', 'blanco', '4', 'blanco.jpg');

INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('2015114020', '01', '1', 'candidato_2015114020.jpg');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('2015114040', '02', '2', 'candidato_2015114030.jpg');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('2015114050', '04', '3', 'candidato_2015114040.jpg');
INSERT INTO `VotacionesUnimag`.`candidato` (`id`, `numero`, `organo_id`, `foto`) VALUES ('2015114060', '05', '4', 'candidato_201511400.jpg');
