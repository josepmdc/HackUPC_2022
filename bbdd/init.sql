SET search_path TO public;

------------------
----- mundimoto_brands -----
------------------
create table mundimoto_brands(
    id bigint primary key,
    name varchar(255) not null
);

INSERT INTO mundimoto_brands (id, name) VALUES (7, 'BMW');
INSERT INTO mundimoto_brands (id, name) VALUES (33, 'PEUGEOT');
INSERT INTO mundimoto_brands (id, name) VALUES (35, 'RENAULT');
INSERT INTO mundimoto_brands (id, name) VALUES (44, 'SUZUKI');
INSERT INTO mundimoto_brands (id, name) VALUES (51, 'ALFER');
INSERT INTO mundimoto_brands (id, name) VALUES (52, 'APRILIA');
INSERT INTO mundimoto_brands (id, name) VALUES (53, 'ATALA');
INSERT INTO mundimoto_brands (id, name) VALUES (54, 'BAJAJ');
INSERT INTO mundimoto_brands (id, name) VALUES (55, 'BENELLI');
INSERT INTO mundimoto_brands (id, name) VALUES (56, 'BETA');
INSERT INTO mundimoto_brands (id, name) VALUES (57, 'BIMOTA');
INSERT INTO mundimoto_brands (id, name) VALUES (59, 'BULTACO');
INSERT INTO mundimoto_brands (id, name) VALUES (60, 'CAGIVA');
INSERT INTO mundimoto_brands (id, name) VALUES (61, 'DAELIM');
INSERT INTO mundimoto_brands (id, name) VALUES (62, 'DERBI');
INSERT INTO mundimoto_brands (id, name) VALUES (63, 'DUCATI');
INSERT INTO mundimoto_brands (id, name) VALUES (64, 'FACTORY BIKE');
INSERT INTO mundimoto_brands (id, name) VALUES (65, 'GAS GAS');
INSERT INTO mundimoto_brands (id, name) VALUES (66, 'GILERA');
INSERT INTO mundimoto_brands (id, name) VALUES (67, 'HARLEY DAVIDSON');
INSERT INTO mundimoto_brands (id, name) VALUES (68, 'HM');
INSERT INTO mundimoto_brands (id, name) VALUES (69, 'HONDA');
INSERT INTO mundimoto_brands (id, name) VALUES (70, 'HUSABERG');
INSERT INTO mundimoto_brands (id, name) VALUES (71, 'HUSQVARNA');
INSERT INTO mundimoto_brands (id, name) VALUES (72, 'HYOSUNG');
INSERT INTO mundimoto_brands (id, name) VALUES (74, 'ITALJET');
INSERT INTO mundimoto_brands (id, name) VALUES (75, 'KAWASAKI');
INSERT INTO mundimoto_brands (id, name) VALUES (76, 'KTM');
INSERT INTO mundimoto_brands (id, name) VALUES (77, 'KYMCO');
INSERT INTO mundimoto_brands (id, name) VALUES (78, 'MALAGUTI');
INSERT INTO mundimoto_brands (id, name) VALUES (79, 'MBK');
INSERT INTO mundimoto_brands (id, name) VALUES (80, 'MONTESA');
INSERT INTO mundimoto_brands (id, name) VALUES (81, 'MOTOGAC');
INSERT INTO mundimoto_brands (id, name) VALUES (82, 'MOTO GUZZI');
INSERT INTO mundimoto_brands (id, name) VALUES (83, 'MOTOR HISPANIA');
INSERT INTO mundimoto_brands (id, name) VALUES (84, 'MV AGUSTA');
INSERT INTO mundimoto_brands (id, name) VALUES (86, 'PGO');
INSERT INTO mundimoto_brands (id, name) VALUES (87, 'PIAGGIO');
INSERT INTO mundimoto_brands (id, name) VALUES (88, 'RIEJU');
INSERT INTO mundimoto_brands (id, name) VALUES (90, 'ROYAL ENFIELD');
INSERT INTO mundimoto_brands (id, name) VALUES (91, 'SCORPA');
INSERT INTO mundimoto_brands (id, name) VALUES (93, 'SIAM');
INSERT INTO mundimoto_brands (id, name) VALUES (95, 'SYM');
INSERT INTO mundimoto_brands (id, name) VALUES (96, 'TM');
INSERT INTO mundimoto_brands (id, name) VALUES (97, 'TRIUMPH');
INSERT INTO mundimoto_brands (id, name) VALUES (99, 'VESPA');
INSERT INTO mundimoto_brands (id, name) VALUES (100, 'VOR');
INSERT INTO mundimoto_brands (id, name) VALUES (101, 'YAMAHA');
INSERT INTO mundimoto_brands (id, name) VALUES (123, 'ZELTECH');
INSERT INTO mundimoto_brands (id, name) VALUES (124, 'BUNKER TRIKE');
INSERT INTO mundimoto_brands (id, name) VALUES (151, 'MOTO MORINI');
INSERT INTO mundimoto_brands (id, name) VALUES (175, 'FANTIC');
INSERT INTO mundimoto_brands (id, name) VALUES (196, 'LAMBRETTA');
INSERT INTO mundimoto_brands (id, name) VALUES (197, 'OSSA');
INSERT INTO mundimoto_brands (id, name) VALUES (199, 'TGB');
INSERT INTO mundimoto_brands (id, name) VALUES (225, 'NORTON');
INSERT INTO mundimoto_brands (id, name) VALUES (232, 'MERLIN');
INSERT INTO mundimoto_brands (id, name) VALUES (253, 'MECATECNO');
INSERT INTO mundimoto_brands (id, name) VALUES (254, 'MUZ');
INSERT INTO mundimoto_brands (id, name) VALUES (271, 'E-TON ');
INSERT INTO mundimoto_brands (id, name) VALUES (276, 'CLIPIC');
INSERT INTO mundimoto_brands (id, name) VALUES (278, 'EXPLORER');
INSERT INTO mundimoto_brands (id, name) VALUES (279, 'LINHAI');
INSERT INTO mundimoto_brands (id, name) VALUES (1200, 'ADLY');
INSERT INTO mundimoto_brands (id, name) VALUES (1233, 'QINGQI');
INSERT INTO mundimoto_brands (id, name) VALUES (1244, 'PUCH');
INSERT INTO mundimoto_brands (id, name) VALUES (1248, 'SUMO');
INSERT INTO mundimoto_brands (id, name) VALUES (1471, 'JINCHENG');
INSERT INTO mundimoto_brands (id, name) VALUES (1497, 'LIFAN');
INSERT INTO mundimoto_brands (id, name) VALUES (1713, 'MACBOR');
INSERT INTO mundimoto_brands (id, name) VALUES (1714, 'AEON');
INSERT INTO mundimoto_brands (id, name) VALUES (1719, 'AIE');
INSERT INTO mundimoto_brands (id, name) VALUES (1737, 'WILDLANDER');
INSERT INTO mundimoto_brands (id, name) VALUES (1963, 'MOBILETTE');
INSERT INTO mundimoto_brands (id, name) VALUES (1971, 'KEEWAY');
INSERT INTO mundimoto_brands (id, name) VALUES (1973, 'MEKO');
INSERT INTO mundimoto_brands (id, name) VALUES (1980, 'FB MONDIAL');
INSERT INTO mundimoto_brands (id, name) VALUES (1991, 'LANVERTTI');
INSERT INTO mundimoto_brands (id, name) VALUES (1993, 'SHERCO');
INSERT INTO mundimoto_brands (id, name) VALUES (1994, 'VESPINO');
INSERT INTO mundimoto_brands (id, name) VALUES (1997, 'LUBE');
INSERT INTO mundimoto_brands (id, name) VALUES (1998, 'AJP');
INSERT INTO mundimoto_brands (id, name) VALUES (1999, 'AZEL');
INSERT INTO mundimoto_brands (id, name) VALUES (2000, 'CSR');
INSERT INTO mundimoto_brands (id, name) VALUES (2001, 'FAZTEK');
INSERT INTO mundimoto_brands (id, name) VALUES (2002, 'GOES');
INSERT INTO mundimoto_brands (id, name) VALUES (2003, 'HRD');
INSERT INTO mundimoto_brands (id, name) VALUES (2004, 'KENROD');
INSERT INTO mundimoto_brands (id, name) VALUES (2005, 'MONKEY BIKE');
INSERT INTO mundimoto_brands (id, name) VALUES (2006, 'MTR');
INSERT INTO mundimoto_brands (id, name) VALUES (2007, 'RSX');
INSERT INTO mundimoto_brands (id, name) VALUES (2008, 'SACHS BIKES');
INSERT INTO mundimoto_brands (id, name) VALUES (2009, 'AIYUMO');
INSERT INTO mundimoto_brands (id, name) VALUES (2010, 'BUELL');
INSERT INTO mundimoto_brands (id, name) VALUES (2011, 'DORTON');
INSERT INTO mundimoto_brands (id, name) VALUES (2012, 'HAMMEL');
INSERT INTO mundimoto_brands (id, name) VALUES (2014, 'LEONART');
INSERT INTO mundimoto_brands (id, name) VALUES (2015, 'MINELLI');
INSERT INTO mundimoto_brands (id, name) VALUES (2017, 'VICTORY');
INSERT INTO mundimoto_brands (id, name) VALUES (2018, 'VOXAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2019, 'ARCTIC CAT');
INSERT INTO mundimoto_brands (id, name) VALUES (2023, 'MASAI');
INSERT INTO mundimoto_brands (id, name) VALUES (2025, 'SUMCO');
INSERT INTO mundimoto_brands (id, name) VALUES (2026, 'VIKERS');
INSERT INTO mundimoto_brands (id, name) VALUES (2027, 'ALPINA RENANIA');
INSERT INTO mundimoto_brands (id, name) VALUES (2028, 'CPI');
INSERT INTO mundimoto_brands (id, name) VALUES (2029, 'UNIVERSAL MOTOR');
INSERT INTO mundimoto_brands (id, name) VALUES (2036, 'MOTOR MANIA');
INSERT INTO mundimoto_brands (id, name) VALUES (2038, 'KINROAD');
INSERT INTO mundimoto_brands (id, name) VALUES (2051, 'YIYING');
INSERT INTO mundimoto_brands (id, name) VALUES (2053, 'TBQ');
INSERT INTO mundimoto_brands (id, name) VALUES (2064, 'COOLTRA');
INSERT INTO mundimoto_brands (id, name) VALUES (2082, 'HUATIAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2084, 'I-MOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2085, 'ADIVA');
INSERT INTO mundimoto_brands (id, name) VALUES (2086, 'LING BEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2093, 'ORION');
INSERT INTO mundimoto_brands (id, name) VALUES (2108, 'INDIAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2110, 'IMR');
INSERT INTO mundimoto_brands (id, name) VALUES (2111, 'DH HAOTIAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2113, 'MXONDA');
INSERT INTO mundimoto_brands (id, name) VALUES (2120, 'PEDA');
INSERT INTO mundimoto_brands (id, name) VALUES (2123, 'GENERIC');
INSERT INTO mundimoto_brands (id, name) VALUES (2124, 'TRAKKER');
INSERT INTO mundimoto_brands (id, name) VALUES (2135, 'MEGELLI');
INSERT INTO mundimoto_brands (id, name) VALUES (2136, 'METRAKIT');
INSERT INTO mundimoto_brands (id, name) VALUES (2140, 'JONWAY');
INSERT INTO mundimoto_brands (id, name) VALUES (2141, 'VECTRIX');
INSERT INTO mundimoto_brands (id, name) VALUES (2143, 'CLARAXAVI');
INSERT INTO mundimoto_brands (id, name) VALUES (2153, 'RAYDAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2154, 'URAL');
INSERT INTO mundimoto_brands (id, name) VALUES (2155, 'SAMADA');
INSERT INTO mundimoto_brands (id, name) VALUES (2160, 'EMF');
INSERT INTO mundimoto_brands (id, name) VALUES (2165, 'RETTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2166, 'ZONGSHEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2167, 'MONTEROSSO');
INSERT INTO mundimoto_brands (id, name) VALUES (2168, 'SHINERAY');
INSERT INTO mundimoto_brands (id, name) VALUES (2169, 'XINGYUE');
INSERT INTO mundimoto_brands (id, name) VALUES (2170, 'YMR');
INSERT INTO mundimoto_brands (id, name) VALUES (2171, 'MTM');
INSERT INTO mundimoto_brands (id, name) VALUES (2173, 'BOSS HOSS');
INSERT INTO mundimoto_brands (id, name) VALUES (2174, 'AMERICAN IRONHORSE');
INSERT INTO mundimoto_brands (id, name) VALUES (2175, 'BIG DOG');
INSERT INTO mundimoto_brands (id, name) VALUES (2176, 'ZNEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2177, 'THUNDER MOUNTAIN');
INSERT INTO mundimoto_brands (id, name) VALUES (2179, 'APACHE');
INSERT INTO mundimoto_brands (id, name) VALUES (2182, 'KANGXIN');
INSERT INTO mundimoto_brands (id, name) VALUES (2183, 'DINO');
INSERT INTO mundimoto_brands (id, name) VALUES (2184, 'AX ROAD');
INSERT INTO mundimoto_brands (id, name) VALUES (2185, 'BAROSSA');
INSERT INTO mundimoto_brands (id, name) VALUES (2186, 'CANNONDALE');
INSERT INTO mundimoto_brands (id, name) VALUES (2188, 'JIANSHE');
INSERT INTO mundimoto_brands (id, name) VALUES (2189, 'KASEA');
INSERT INTO mundimoto_brands (id, name) VALUES (2190, 'KAZUMA');
INSERT INTO mundimoto_brands (id, name) VALUES (2191, 'LEM');
INSERT INTO mundimoto_brands (id, name) VALUES (2218, 'XMOTOS');
INSERT INTO mundimoto_brands (id, name) VALUES (2221, 'CHOPPER NATION');
INSERT INTO mundimoto_brands (id, name) VALUES (2223, 'BERECO');
INSERT INTO mundimoto_brands (id, name) VALUES (2224, 'MOTIVAS');
INSERT INTO mundimoto_brands (id, name) VALUES (2225, 'GOELIX');
INSERT INTO mundimoto_brands (id, name) VALUES (2226, 'VIA SCOOTER');
INSERT INTO mundimoto_brands (id, name) VALUES (2227, 'POLINI');
INSERT INTO mundimoto_brands (id, name) VALUES (2230, 'OSET');
INSERT INTO mundimoto_brands (id, name) VALUES (2231, 'JIN LUN');
INSERT INTO mundimoto_brands (id, name) VALUES (2232, 'CBK');
INSERT INTO mundimoto_brands (id, name) VALUES (2234, 'ZERO');
INSERT INTO mundimoto_brands (id, name) VALUES (2236, 'SENKE');
INSERT INTO mundimoto_brands (id, name) VALUES (2241, 'E-MAX');
INSERT INTO mundimoto_brands (id, name) VALUES (2242, 'LML');
INSERT INTO mundimoto_brands (id, name) VALUES (2243, 'DAK');
INSERT INTO mundimoto_brands (id, name) VALUES (2245, 'RAV');
INSERT INTO mundimoto_brands (id, name) VALUES (2246, 'EASY TRIKE');
INSERT INTO mundimoto_brands (id, name) VALUES (2248, 'REBEL');
INSERT INTO mundimoto_brands (id, name) VALUES (2249, 'DAYUN');
INSERT INTO mundimoto_brands (id, name) VALUES (2251, 'REWACO');
INSERT INTO mundimoto_brands (id, name) VALUES (2252, 'ZERO MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2253, 'CAN-AM');
INSERT INTO mundimoto_brands (id, name) VALUES (2254, 'VIGAR');
INSERT INTO mundimoto_brands (id, name) VALUES (2255, 'XISPA');
INSERT INTO mundimoto_brands (id, name) VALUES (2257, 'RIDLEY MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2258, 'BAOTIAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2259, 'QUANTYA');
INSERT INTO mundimoto_brands (id, name) VALUES (2260, 'DRAGON TT');
INSERT INTO mundimoto_brands (id, name) VALUES (2261, 'IMAX');
INSERT INTO mundimoto_brands (id, name) VALUES (2263, 'ROAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2266, 'BUCCIMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2268, 'INFMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2269, 'XPA');
INSERT INTO mundimoto_brands (id, name) VALUES (2270, 'GARELLI');
INSERT INTO mundimoto_brands (id, name) VALUES (2271, 'WOTTAN');
INSERT INTO mundimoto_brands (id, name) VALUES (2272, 'JTS');
INSERT INTO mundimoto_brands (id, name) VALUES (2273, 'HELECTRA');
INSERT INTO mundimoto_brands (id, name) VALUES (2274, 'XERO');
INSERT INTO mundimoto_brands (id, name) VALUES (2275, 'GOWINN');
INSERT INTO mundimoto_brands (id, name) VALUES (2276, 'NECO');
INSERT INTO mundimoto_brands (id, name) VALUES (2277, 'BRP');
INSERT INTO mundimoto_brands (id, name) VALUES (2278, 'EMOCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2279, 'YCF');
INSERT INTO mundimoto_brands (id, name) VALUES (2280, 'UNORACING');
INSERT INTO mundimoto_brands (id, name) VALUES (2281, 'BATERY');
INSERT INTO mundimoto_brands (id, name) VALUES (2282, 'HSUN');
INSERT INTO mundimoto_brands (id, name) VALUES (2283, 'BTM');
INSERT INTO mundimoto_brands (id, name) VALUES (2285, 'CFMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2287, 'MONSTER PRO');
INSERT INTO mundimoto_brands (id, name) VALUES (2288, 'SINCRO');
INSERT INTO mundimoto_brands (id, name) VALUES (2289, 'QUADRO');
INSERT INTO mundimoto_brands (id, name) VALUES (2290, 'BSG ELECTRICS');
INSERT INTO mundimoto_brands (id, name) VALUES (2292, 'TURBHO');
INSERT INTO mundimoto_brands (id, name) VALUES (2293, 'LEMEV');
INSERT INTO mundimoto_brands (id, name) VALUES (2294, 'VMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2295, 'JTG');
INSERT INTO mundimoto_brands (id, name) VALUES (2299, 'ELECTRIC CITY MOTOR 00');
INSERT INTO mundimoto_brands (id, name) VALUES (2300, 'KUBERG');
INSERT INTO mundimoto_brands (id, name) VALUES (2302, 'ZUAP');
INSERT INTO mundimoto_brands (id, name) VALUES (2303, 'MORIWAKI');
INSERT INTO mundimoto_brands (id, name) VALUES (2304, 'YOUNG RIDER');
INSERT INTO mundimoto_brands (id, name) VALUES (2305, 'WK');
INSERT INTO mundimoto_brands (id, name) VALUES (2307, 'NIMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2310, 'ELMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2314, 'SCUTUM');
INSERT INTO mundimoto_brands (id, name) VALUES (2315, 'SINGAZ');
INSERT INTO mundimoto_brands (id, name) VALUES (2318, 'HANWAY');
INSERT INTO mundimoto_brands (id, name) VALUES (2320, 'BRAMMO');
INSERT INTO mundimoto_brands (id, name) VALUES (2321, 'KSR MOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2323, 'ROKETA MOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2325, 'MASH');
INSERT INTO mundimoto_brands (id, name) VALUES (2327, 'SCOMADI');
INSERT INTO mundimoto_brands (id, name) VALUES (2328, 'INNOCENTI');
INSERT INTO mundimoto_brands (id, name) VALUES (2329, 'RIYA');
INSERT INTO mundimoto_brands (id, name) VALUES (2330, 'ENERGICA');
INSERT INTO mundimoto_brands (id, name) VALUES (2331, 'TRS MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2334, 'APOLLO ORION');
INSERT INTO mundimoto_brands (id, name) VALUES (2336, 'ASTOR');
INSERT INTO mundimoto_brands (id, name) VALUES (2337, 'ORCAL');
INSERT INTO mundimoto_brands (id, name) VALUES (2338, 'TORROT');
INSERT INTO mundimoto_brands (id, name) VALUES (2339, 'CANYON');
INSERT INTO mundimoto_brands (id, name) VALUES (2340, 'HUDSON BOSS');
INSERT INTO mundimoto_brands (id, name) VALUES (2341, 'VERTIGO');
INSERT INTO mundimoto_brands (id, name) VALUES (2343, 'VOLTA MOTORBIKES');
INSERT INTO mundimoto_brands (id, name) VALUES (2344, 'MH MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2345, 'VELIMOTOR');
INSERT INTO mundimoto_brands (id, name) VALUES (2347, 'UM');
INSERT INTO mundimoto_brands (id, name) VALUES (2348, 'SETTER');
INSERT INTO mundimoto_brands (id, name) VALUES (2349, 'ASKOLL');
INSERT INTO mundimoto_brands (id, name) VALUES (2350, 'DOBO');
INSERT INTO mundimoto_brands (id, name) VALUES (2351, 'BRIXTON');
INSERT INTO mundimoto_brands (id, name) VALUES (2352, 'SKYTEAM');
INSERT INTO mundimoto_brands (id, name) VALUES (2353, 'SWM');
INSERT INTO mundimoto_brands (id, name) VALUES (2354, 'NIU ');
INSERT INTO mundimoto_brands (id, name) VALUES (2355, 'QUAZZAR');
INSERT INTO mundimoto_brands (id, name) VALUES (2356, 'RIEJU NUUK');
INSERT INTO mundimoto_brands (id, name) VALUES (2357, 'ZONTES');
INSERT INTO mundimoto_brands (id, name) VALUES (2358, 'EFUN');
INSERT INTO mundimoto_brands (id, name) VALUES (2359, 'FAURO');
INSERT INTO mundimoto_brands (id, name) VALUES (2360, 'MITT');
INSERT INTO mundimoto_brands (id, name) VALUES (2361, 'ASIAWING');
INSERT INTO mundimoto_brands (id, name) VALUES (2362, 'ROYAL ALLOY');
INSERT INTO mundimoto_brands (id, name) VALUES (2363, 'JNEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2364, 'SANBEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2365, 'EBROH');
INSERT INTO mundimoto_brands (id, name) VALUES (2366, 'LEXMOTO');
INSERT INTO mundimoto_brands (id, name) VALUES (2368, 'SCOOLECTRIX');
INSERT INTO mundimoto_brands (id, name) VALUES (2369, 'SUNRA');
INSERT INTO mundimoto_brands (id, name) VALUES (2370, 'SANYOU');
INSERT INTO mundimoto_brands (id, name) VALUES (2371, 'SUPER SOCO');
INSERT INTO mundimoto_brands (id, name) VALUES (2372, 'ECOOTER');
INSERT INTO mundimoto_brands (id, name) VALUES (2373, 'ACCESS');
INSERT INTO mundimoto_brands (id, name) VALUES (2374, 'VOGE');
INSERT INTO mundimoto_brands (id, name) VALUES (2375, 'SILENCE');
INSERT INTO mundimoto_brands (id, name) VALUES (2376, 'MODEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2377, 'URBAN ELECTRIC MOTORS');
INSERT INTO mundimoto_brands (id, name) VALUES (2378, 'HERALD');
INSERT INTO mundimoto_brands (id, name) VALUES (2379, 'NEXT');
INSERT INTO mundimoto_brands (id, name) VALUES (2380, 'INVICTA');
INSERT INTO mundimoto_brands (id, name) VALUES (2381, 'FKM');
INSERT INTO mundimoto_brands (id, name) VALUES (2382, 'QOODER');
INSERT INTO mundimoto_brands (id, name) VALUES (2383, 'IOTOSTARK');
INSERT INTO mundimoto_brands (id, name) VALUES (2384, 'MALCOR');
INSERT INTO mundimoto_brands (id, name) VALUES (2385, 'LVNENG');
INSERT INTO mundimoto_brands (id, name) VALUES (2386, 'HORWIN');
INSERT INTO mundimoto_brands (id, name) VALUES (2387, 'COLIBRI');
INSERT INTO mundimoto_brands (id, name) VALUES (2388, 'SORIANO MOTORI');
INSERT INTO mundimoto_brands (id, name) VALUES (2389, 'JCADI');
INSERT INTO mundimoto_brands (id, name) VALUES (2390, 'LINZE');
INSERT INTO mundimoto_brands (id, name) VALUES (2391, 'SEAT');
INSERT INTO mundimoto_brands (id, name) VALUES (2392, 'SUR-RON');
INSERT INTO mundimoto_brands (id, name) VALUES (2393, 'ELECTRIC MOTION');
INSERT INTO mundimoto_brands (id, name) VALUES (2394, 'VELCA');
INSERT INTO mundimoto_brands (id, name) VALUES (2395, 'MUTT MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2396, 'CHANGJIANG');
INSERT INTO mundimoto_brands (id, name) VALUES (2397, 'RAY ELECTRIC MOTORS');
INSERT INTO mundimoto_brands (id, name) VALUES (2400, 'ELEKTRA');
INSERT INTO mundimoto_brands (id, name) VALUES (2401, 'UBCO');
INSERT INTO mundimoto_brands (id, name) VALUES (2402, 'BULLIT MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2403, 'MOTRON MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2405, 'CAKE MOTORBIKES');
INSERT INTO mundimoto_brands (id, name) VALUES (2406, 'SAKURA');
INSERT INTO mundimoto_brands (id, name) VALUES (2407, 'ARIIC');
INSERT INTO mundimoto_brands (id, name) VALUES (2408, 'LAUGE JENSEN');
INSERT INTO mundimoto_brands (id, name) VALUES (2409, 'FK MOTORS');
INSERT INTO mundimoto_brands (id, name) VALUES (2410, 'CANOMOBILITY');
INSERT INTO mundimoto_brands (id, name) VALUES (2411, 'OX MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2412, 'URBET');
INSERT INTO mundimoto_brands (id, name) VALUES (2413, 'PURSANG MOTORCYCLES');
INSERT INTO mundimoto_brands (id, name) VALUES (2414, 'BENSOM');
INSERT INTO mundimoto_brands (id, name) VALUES (2415, 'BMW');
INSERT INTO mundimoto_brands (id, name) VALUES (2416, 'SUZUKI');

--------------------
----- Versions -----
--------------------
create table versions
(
    id bigint primary key,
    name varchar(255) not null,
    brand_id bigint not null,
    year int null,
    fuel int null,
    price int not null,
    constraint versions_brand_id_foreign foreign key (brand_id) references mundimoto_brands (id)
);

SET search_path TO public;

SELECT * FROM mundimoto_brands;
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
INSERT INTO mundimoto_rangebike(id,cat,low,high)
VALUES  (1,'Urban',0,25),
		(2,'Low distance',26,100),
		(3,'Medium distance',101,200),
		(4,'Long distance',201,500);


------------------------------
------ TABLE mundimoto_brands ----------
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