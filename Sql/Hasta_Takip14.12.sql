--CREATE TABLE Hastalar(
--	Hasta_tc bigint NOT NULL PRIMARY KEY CHECK(10000000000<=Hasta_tc AND Hasta_tc<=99999999999),
--	Hasta_Ad varchar(50) NOT NULL,
--	Hasta_Soyad varchar(50) NOT NULL,
--	Hasta_Email varchar(225),
--	Hasta_Tel bigint NOT NULL CHECK(5000000000<=Hasta_Tel AND Hasta_Tel<=6000000000),
--	Hasta_Dogum_Tarihi date,
--	Kan_Grubu VARCHAR(5) NOT NULL CHECK (Kan_Grubu IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'))
--)

--ALTER TABLE Hastalar
--ADD CONSTRAINT CK__Hastalar__Kan_Gr__17F790F9
--ALTER TABLE Hastalar
--ADD CONSTRAINT CK_Kan_Grubu CHECK (Kan_Grubu IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', '0+', '0-'));

--CREATE TABLE Tahlil_Aralikleri(
--	Sonuc_Tipi nvarchar(50)	NOT NULL PRIMARY KEY,
--	Sonuc_Max float NOT NULL,
--	Sonuc_Min float NOT NULL
--)

--tahliller tablosu olu�turma kayboldu

--CREATE TABLE Radyolojik_Goruntuler(
--	tc bigint NOT NULL,
--	Sonuc_Tipi nvarchar(50) NOT NULL CHECK (Sonuc_Tipi IN ('MR', 'R�NTGEN')),
--	Sonuc nvarchar(100) NOT NULL,
--	Tarih datetime NOT NULL,
--	CONSTRAINT fk_tc2 FOREIGN KEY (tc) REFERENCES Hastalar(Hasta_tc)
--) 

--SELECT
--	name AS ConstraintName,
--	definition AS CheckDefinition
--FROM
--	sys.check_constraints
--WHERE
--	parent_object_id = OBJECT_ID('Hastalar') AND definition LIKE '%Kan_Grubu%'