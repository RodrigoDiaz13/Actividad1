CREATE DATABASE Trabajo1;
USE Trabajo1

CREATE TABLE tb_empleados(
id_empleado int primary key, 
nombre_empleado VARCHAR (30),
apellido_empleado VARCHAR (30),
salario DOUBLE,
fecha_inicio DATE,
id_cargo INT, CONSTRAINT c_id_cargo FOREIGN KEY (id_cargo) REFERENCES tb_cargos (id_cargo),
id_departamento INT, CONSTRAINT c_id_departamento FOREIGN KEY (id_departamento) REFERENCES tb_departamentos (id_departamento),
id_proyecto INT, CONSTRAINT c_id_proyecto FOREIGN KEY (id_proyecto) REFERENCES tb_proyectos (id_proyecto) 
);
CREATE TABLE tb_cargos (
id_cargo int primary key,
cargo varchar (50)  
);
CREATE TABLE tb_departamentos (
id_departamento INT PRIMARY KEY,
nombre_departamento varchar (50)

);
CREATE TABLE tb_proyectos(
id_proyecto INT PRIMARY KEY,
nombre_proyecto VARCHAR (50)
);

CREATE TABLE tb_empleado_proyecto (
id_empleado_proyecto INT PRIMARY KEY,
id_empleado INT, CONSTRAINT c_id_empleado FOREIGN KEY (id_empleado) REFERENCES tb_empleados (id_empleado),
id_proyecto INT, CONSTRAINT c_id_proyecto2 FOREIGN KEY (id_proyecto) REFERENCES tb_proyectos (id_proyecto)

);





