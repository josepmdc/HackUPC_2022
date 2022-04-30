SET search_path TO public;

SELECT * FROM brands;
SELECT * FROM versions;
SELECT * FROM range_bike;
SELECT * FROM clients;
SELECT * FROM logs;
----------------------
----- TABLE RANGE-----
----------------------

-- CREATE NEW TABLE RANGE
CREATE TABLE range_bike(
    id int primary key,
    cat varchar(255) not null,
	low int not null,
	high int not null
);

-- ADD NEW RANGE VALUES
INSERT INTO range_bike(id,cat,low,high)
VALUES  (1,'Urban',0,25),
		(2,'Low distance',26,100),
		(3,'Medium distance',101,200),
		(4,'Long distance',201,500);


------------------------------
------ TABLE brands ----------
------------------------------

-- ADD NEW COLUMN: DISTANCE
ALTER TABLE versions
  ADD COLUMN fk_range int,
  ADD CONSTRAINT add_column_fk_range FOREIGN KEY(fk_range) REFERENCES range_bike(id);
 

-------------------------------
------- FILL fk_range ---------

--DELETE FROM versions;
-- impor version_csv.csv


-------------------------------
---------- TABLE CLIENTS ---------

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
create table clients(
	contact_id uuid DEFAULT uuid_generate_v4 () primary key,
    name varchar(50) not null,
    surname varchar(50) not null,
    email varchar(50) not null,
    dni varchar(10) not null,
    card bigint not null
);
  
SELECT CURRENT_TIMESTAMP(0);
-------------------------------
---------- TABLE LOGS ---------
create table logs
(
	contact_id uuid not null,
	bike_id bigint not null,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	latitud_initial NUMERIC(10,8) not null,
    longitud_initial NUMERIC(10,8) not null,
	latitud_final NUMERIC(10,8) not null,
    longitud_final NUMERIC(10,8) not null,
	price int not null,
	final_at TIMESTAMP not null,
	km_total real not null,
	fuel_level decimal(3,2) not null,
    constraint uuid_fk foreign key (contact_id) references clients (contact_id),
	constraint bike_id_fk foreign key (bike_id) references versions (id)
);
  
  
  
  
