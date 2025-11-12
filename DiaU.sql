drop database if exists DiaUBAM;
create database DiaUBAM;
use DiaUBAM;

create table Estudiante(
    idEs int auto_increment primary key not null, 
    NombreEs varchar(25) not null, 
    Turno varchar(10) default 'Matutino' not null,
    Carrera varchar(10) default 'ISC' not null,
    NCuatrimestre varchar(20) default '4cuatrimestre' not null,
    Edad int not null,
    Sexo varchar(10) default 'Mas' not null,
    CanPagado int default 120 not null
);
insert into Estudiante (NombreEs,Turno,Carrera,NCuatrimestre,Edad,Sexo,CanPagado) values 
('Axel_Mejia',default,default,default,25,default,default),
('Anahy_Alvarez',default,default,default,20,'Fem',100),
('Pichardo_Zuñiga',default,'IMA','10cuatrimestre',22,default,default),
('Alexis_Osorio',default,default,'1cuatrimestre',18,default,110),
('Axel_Compatitla',default,default,default,21,default,80),
('Jose_Cardenas',default,default,'1cuatrimestre',23,default,default),
('Casandra_Jimenez','Vespertino','IMA','8cuatrimestre',20,'Fem',default),
('Jimena_Jimenez','Vespertino',default,'1cuatrimestre',22,'Fem',90),
('Stephany_Rodriguez','Vespertino','LCPYF',default,19,'Fem',115),
('Ado_Velazquez','Vespertino','LRI',default,28,'Fem',default),
('Mitzy_Vicencio','Vespertino','ILT','12cuatrimestre',27,'Fem',50);
select * from Estudiante;
select * from Estudiante order by Edad asc,CanPagado desc;
select * from Estudiante order by Edad desc,CanPagado asc;
select max(Edad),min(CanPagado) from Estudiante;
select min(Edad),max(CanPagado) from Estudiante;
select avg(Edad),avg(CanPagado) from Estudiante;
select * from Estudiante where Sexo = 'Fem';
select * from Estudiante where Carrera = 'ISC';

create table Puesto (
    idPuesto int auto_increment primary key not null,
    TipoDePuesto varchar(10) default 'Comida' not null,
    NomPuesto varchar(30) not null,
    Encargado varchar(60),
    Estado varchar(20) default 'Activo',
    Capacidad int default 10 not null,
    Precio Decimal(10,2) default 130.50 not null,
    TiempoEstimado varchar(10) default '1hr' not null
);
insert into Puesto (TipoDePuesto,NomPuesto,Encargado,Estado,Capacidad,Precio,TiempoEstimado) values
(default,'Crepas','Juan_Jimenez',default,default,default,default),
('Juego','Gotcha','Pedro_Patan',default,15,0.00,default),
(default,'Tacos','Mariano_Ozorio','Cerrado',5,105.30,default),
('Bebida','Jugo','Wendy_Jimenez',default,3,default,'2hr'),
(default,'Alitas','Pedro_Pereira',default,15,default,'2hr'),
('Juego','CarritosChocones','Julian_Jurado',default,default,0.00,'1.5hr'),
(default,'Hot_Dogs','Esperanza_Lopez',default,default,default,default),
('Bebida','Licuados_Locos','Carlos_Vazquez','Cerrado',default,default,default),
(default,'Hamburguesa','Joaquin_Fenix','Cerrado',default,60.50,'2hr'),
('Juego','TiroAlBlanco','Patricia_Jimenez','Cerrado',default,0.00,'30min');
select * from Puesto;
select * from Puesto order by Precio asc,Capacidad desc;
select * from Puesto order by Precio desc,Capacidad asc;
select max(Capacidad),min(Precio) from Puesto;
select min(Capacidad),max(Precio) from Puesto;
select avg(Capacidad),avg(Precio) from Puesto;
select * from Puesto where TiempoEstimado = '1hr';
select * from Puesto where Estado = 'Activo';

create table Tienda(
    idTienda int auto_increment primary key not null,
    NomTienda varchar(50) not null,
    TipTienda varchar(50) not null,
    Responsable varchar(50) not null,
    Estado varchar(20) default 'Cerrado' not null,
    Ubicacion varchar(50) not null,
    Capacidad int default 20 not null,
    PrecioPeomedio decimal(10,2) default 120.50 not null
);
insert into Tienda (NomTienda, TipTienda, Responsable, Estado, Ubicacion, Capacidad, PrecioPeomedio) values
('SouvenirsUBAM','Souvenirs','Ana_Lopez','Abierta','PlazaCentral',default,75.80),
('LibrosUBAM','Material Escolar','Carlos_Perez',default,'Aula1',15,default),
('MerchUBAM','Merchandising','Wendy_Jimenez','Abierta','PatioCentral',default,150.60),
('TecnologiaUBAM','Gadgets','Miguel_Soto',default,'SalonPrincipal',10,default),
('PapeleriaUBAM','Papeleria','Joaquin_Fenix','Abierta','Aula3',default,60.60),
('RopaUBAM','Ropa','Esperanza_Lopez',default,'PatioB',default,200.10),
('SnacksUBAM','Comida','Pedro_Pereira','Abierta','PlazaSur',15,35.50),
('JugueteriaUBAM','Juguetes','Julian_Jurado','Abierta','PatioNorte',15,145.40),
('ArteUBAM','Arte','Patricia_Jimenez',default,'Galeria',10,default),
('AccesoriosUBAM','Accesorios','Pedro_Patan','Abierta','Aula5',20,80.10);
select * from Tienda;
select * from Tienda order by PrecioPeomedio asc, Capacidad desc;
select * from Tienda order by PrecioPeomedio desc, Capacidad asc;
select max(Capacidad), min(PrecioPeomedio) from Tienda;
select min(Capacidad), max(PrecioPeomedio) from Tienda;
select avg(Capacidad), avg(PrecioPeomedio) from Tienda;
select * from Tienda where Estado = 'Cerrado';
select * from Tienda where PrecioPeomedio = 120.50;

create table Asistentes (
    idAsistente int auto_increment primary key not null,
    nombre varchar(60) not null,
    grupo varchar(10),
    carrera varchar(50),
    tipo varchar(20) default 'Alumno',
    montoGastado decimal(10,2) default 0.00 not null,
    actividadFavorita varchar(30),
    estado varchar(10) default 'Presente' not null
);
insert into Asistentes (nombre, grupo, carrera, tipo, montoGastado, actividadFavorita) values
('AxelMejia','6IM','Programación', default, 80.50,'TiroAlBlanco'),
('DanielaTorres','6IM', 'Programación', default, 150.00,'Ruleta'),
('LuisGomez','4TA', 'Administración', default,default,'JuegoMecanico'),
('SofiaRamirez','5CC', 'Contabilidad',default, 95.40,'TiendaOficial'),
('MarioCruz', '4TA', 'Administración',default, 120.60,'PuestitoDeComida'),
('Profa.LauraSalinas', null, null, 'docente', default,'VisitaGeneral'),
('Lic.RobertoOrtega', null, null, 'administrativo', 45.90,'TiendaOficial'),
('Ing.PabloHerrera', null, null, 'docente',default,'TiroAlBlanco'),
('Profe: JosePerez', null, null, 'docente', 60.70,'Ruleta'),
('Profe:AnaRivas', null, null, 'docente', default,'Recorrido');
select * from Asistentes;
select * from Asistentes order by montoGastado asc;
select * from Asistentes order by montoGastado desc;
select max(montoGastado), min(montoGastado) from Asistentes;
select avg(montoGastado) from Asistentes;
select * from Asistentes where tipo = 'Alumno';
select * from Asistentes where montoGastado = 120.50;

select a.nombre, a.carrera, a.actividadFavorita, p.NomPuesto, p.TipoDePuesto, p.Precio
from Asistentes a
inner join Puesto p on a.actividadFavorita = p.NomPuesto;
select a.nombre, a.tipo, a.montoGastado,
       e.NombreEs, e.Carrera
from Asistentes a
left join Estudiante e on a.carrera = e.Carrera;
select a.nombre, a.tipo, a.montoGastado,
       p.NomPuesto, p.Precio
from Asistentes a
right join Puesto p on a.actividadFavorita = p.NomPuesto;
select a.nombre as Asistente, p.NomPuesto as Puesto
from Asistentes a
cross join Puesto p
limit 10;
select a.nombre as Asistente, p.NomPuesto as Puesto
from Asistentes a
left join Puesto p on a.actividadFavorita = p.NomPuesto
union
select a.nombre as Asistente, p.NomPuesto as Puesto
from Asistentes a
right join Puesto p on a.actividadFavorita = p.NomPuesto;

select a.nombre, a.tipo, a.montoGastado,
       e.NombreEs, e.Carrera,
       p.NomPuesto, p.Precio,
       t.NomTienda, t.PrecioPeomedio
from Asistentes a
left join Estudiante e on a.carrera = e.Carrera
left join Puesto p on a.actividadFavorita = p.NomPuesto
left join Tienda t on a.actividadFavorita = t.NomTienda;
