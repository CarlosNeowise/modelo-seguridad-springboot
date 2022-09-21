show tables;


/*Crear tabla*/
CREATE TABLE USERS (

	id int,
	name varchar(255),
	lastname varchar(255),
	username varchar(20),
	pass    varchar(100),
	tipDoc  char(5),
	nroDoc  varchar(20),
	enable  int
)

/* Añadimos id como primary Key*/
ALTER TABLE USERS ADD PRIMARY KEY (id) ;

/* Hacemos el campo id autoincremental y que no permita registros null*/
ALTER TABLE USERS MODIFY COLUMN id int auto_increment NOT NULL;





/*Insertar*/
INSERT INTO USERS (name,lastname,username,pass,tipDoc,nroDoc,enable)
VALUES ('Jose','Zuniga','DNI73267572','123456','DNI','73267572',1);


INSERT INTO USERS (name,lastname,username,pass,tipDoc,nroDoc,enable)
VALUES ('Maria','Santillan','DNI46299021','123456','DNI','46299021',1);



/*Actualizar*/
UPDATE USERS SET name='Mariana' WHERE username ='DNI46299021';


/*Eliminar*/
DELETE FROM USERS WHERE username='DNI73267572';


/*Consultar*/
SELECT * FROM USERS
