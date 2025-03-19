--Creating and Inseting values to the tables

--Table 1: Users
CREATE TABLE Users (
    UserID NUMBER PRIMARY KEY,
    UserType VARCHAR2(20) NOT NULL,
    UserName VARCHAR2(50) NOT NULL,
    ContactEmail VARCHAR2(50) NOT NULL UNIQUE,
    RegistrationDate DATE DEFAULT SYSDATE
);

INSERT ALL
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate) 
    VALUES (1, 'Farmer', 'Altin Asllani', 'altinasllani@gmail.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (2, 'Farmer', 'Edison Camaj', 'edisoncamaj@yahoo.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (3, 'Researcher', 'Jetmir Hoxha', 'jetmirhoxha@outlook.com', DATE '2024-06-30')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (4, 'Researcher', 'Klodian Aliaj', 'klodianaliaj@gmail.com', DATE '2024-06-30')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (5, 'Farmer', 'Arjeta Krasniqi', 'arjetakrasniqi@yahoo.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (6, 'Advisor', 'Erzen Gashi', 'erzengashi@outlook.com', DATE '2024-06-25')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (7, 'Advisor', 'Erjona Deda', 'erjondeda@gmail.com', DATE '2024-06-25')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (8, 'Distributor', 'Luan Shehu', 'luanshehu@yahoo.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (9, 'Distributor', 'Mentor Hajdari', 'mentorhajdari@outlook.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (10, 'Farmer', 'Maringlen Deda', 'maringlend@gmail.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (11, 'Advisor', 'Esmeralda Aliaj', 'esmeraldaaliaj@yahoo.com', DATE '2024-06-25')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (12, 'Supplier', 'Visar Rama', 'visarrama@outlook.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (13, 'Supplier', 'Xhevdet Kurti', 'xhevkurti@gmail.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (14, 'Supplier', 'Ismail Berisha', 'ismailb@yahoo.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (15, 'Distributor', 'Elda Rama', 'eldarama@gmail.com', DATE '2024-07-05')
    INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
    VALUES (16, 'Researcher', 'Romeo Shehu', 'romeoshehu@yahoo.com', DATE '2024-06-30')
SELECT * FROM DUAL;


--Table 2: Crops
CREATE TABLE Crops (
    CropID NUMBER(5) PRIMARY KEY,
    CropName VARCHAR2(50) NOT NULL,
    Variety VARCHAR2(50),
    PlantingDate DATE NOT NULL,
    HarvestDate DATE,
    CONSTRAINT check_harvest_date CHECK (HarvestDate > PlantingDate)
);

INSERT ALL
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (1, 'Wheat', 'Hard Red Spring', DATE '2024-10-01', DATE '2025-02-01')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (2, 'Corn', 'Sweet Corn', DATE '2024-09-01', DATE '2025-01-01')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (3, 'Rice', 'Basmati', DATE '2024-08-01', DATE '2024-12-01')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (4, 'Barley', 'Winter Barley', DATE '2024-09-15', DATE '2025-03-15') 
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (5, 'Soybean', 'Edamame', DATE '2024-05-15', DATE '2024-10-15')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (6, 'Potato', 'Russet Burbank', DATE '2024-04-15', DATE '2024-08-15')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (7, 'Tomato', 'Beefsteak', DATE '2024-05-01', DATE '2024-09-15')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (8, 'Cucumber', 'English', DATE '2024-05-15', DATE '2024-08-15')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (9, 'Pepper', 'Bell Pepper', DATE '2024-05-15', DATE '2024-09-15')
    INTO Crops (CropID, CropName, Variety, PlantingDate, HarvestDate)
    VALUES (10, 'Onion', 'Yellow Onion', DATE '2024-04-01', DATE '2024-08-01')
SELECT * FROM dual;


--Table 3: Fields
CREATE TABLE Fields (
    FieldID NUMBER(4) PRIMARY KEY, 
    FieldLocation VARCHAR2(100) NOT NULL,
    FieldSize NUMBER(5, 2) NOT NULL, 
    SoilType VARCHAR2(50) NOT NULL,
    IrrigationMethod VARCHAR2(50) NOT NULL,
    CONSTRAINT check_size_positive CHECK (FieldSize > 0) 
);

INSERT ALL
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (1, 'North Field', 15.50, 'Loam', 'Drip')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (2, 'South Field', 20.00, 'Clay', 'Sprinkler')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (3, 'East Field', 10.00, 'Silt', 'Flood')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (4, 'West Field', 12.50, 'Sandy Loam', 'Drip')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (5, 'North-East Field', 8.00, 'Clay', 'Sprinkler')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (6, 'South-West Field', 18.00, 'Loam', 'Flood')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (7, 'Central Field', 25.00, 'Silt', 'Drip')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (8, 'North-West Corner', 5.00, 'Sandy Loam', 'Sprinkler')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (9, 'South-East Corner', 7.50, 'Clay', 'Flood')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (10, 'Hillside Field', 11.00, 'Loam', 'Drip')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (11, 'Riverbank Field', 16.00, 'Silt', 'Sprinkler')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (12, 'Forest Edge Field', 4.00, 'Sandy Loam', 'Flood')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (13, 'Lower Field', 22.00, 'Clay', 'Drip')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (14, 'Upper Field', 9.00, 'Loam', 'Sprinkler')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (15, 'Back Field', 14.00, 'Silt', 'Flood')
INTO Fields (FieldID, FieldLocation, FieldSize, SoilType, IrrigationMethod) 
VALUES (16, 'New Field', 3.50, 'Sandy Loam', 'Drip')
SELECT * FROM dual;


--Table 4: WeatherData
CREATE TABLE WeatherData (
    WeatherDataID NUMBER PRIMARY KEY,
    FieldID NUMBER NOT NULL,
    WeatherDate DATE NOT NULL,
    Temperature NUMBER NOT NULL,
    Humidity NUMBER CHECK (Humidity BETWEEN 0 AND 100),
    Rainfall NUMBER CHECK (Rainfall >= 0),
    CONSTRAINT weather_field_fk FOREIGN KEY (FieldID) REFERENCES Fields(FieldID)
);

INSERT ALL
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (1, 1, DATE '2025-01-01', 18, 75, 12)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (2, 2, DATE '2025-01-02', 20, 80, 15)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (3, 3, DATE '2025-01-03', 22, 60, 10)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (4, 1, DATE '2025-01-04', 15, 85, 8)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (5, 2, DATE '2025-01-05', 17, 78, 10)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (6, 3, DATE '2025-01-06', 21, 65, 5)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (7, 1, DATE '2025-01-07', 19, 72, 12)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (8, 2, DATE '2025-01-08', 16, 82, 15)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (9, 3, DATE '2025-01-09', 23, 58, 8)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (10, 1, DATE '2025-01-10', 14, 90, 18)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (11, 2, DATE '2025-01-11', 18, 75, 12)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (12, 3, DATE '2025-01-12', 20, 68, 10)
INTO WeatherData (WeatherDataID, FieldID, WeatherDate, Temperature, Humidity, Rainfall)
VALUES (13, 1, DATE '2025-01-13', 16, 88, 15)
SELECT * FROM dual;


--Table 5: PestDiseaseData
CREATE TABLE PestDiseaseData (
    IncidentID NUMBER PRIMARY KEY,
    FieldID NUMBER NOT NULL,
    DetectionDate DATE NOT NULL,
    PestDiseaseType VARCHAR2(50) NOT NULL,
    Severity VARCHAR2(15) CHECK (Severity IN ('mild', 'moderate', 'severe')),
    Treatment VARCHAR2(100),
    CONSTRAINT pest_field_fk FOREIGN KEY (FieldID) REFERENCES Fields(FieldID)
);

INSERT ALL 
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (1, 1, DATE '2025-01-01', 'Aphids', 'mild', 'Neem Oil')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (2, 2, DATE '2025-01-02', 'Blight', 'moderate', 'Fungicide')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (3, 3, DATE '2025-01-03', 'Root Rot', 'severe', 'Soil Amendment')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (4, 1, DATE '2025-01-05', 'Leafhoppers', 'mild', 'Insecticide')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (5, 2, DATE '2025-01-07', 'Rust', 'moderate', 'Fungicide Spray')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (6, 3, DATE '2025-01-09', 'Nematodes', 'severe', 'Soil Solarization')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (7, 1, DATE '2025-01-11', 'Caterpillars', 'mild', 'Biological Control')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (8, 2, DATE '2025-01-13', 'Powdery Mildew', 'moderate', 'Sulfur Dusting')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (9, 3, DATE '2025-01-15', 'Drought Stress', 'severe', 'Irrigation Adjustment')
INTO PestDiseaseData (IncidentID, FieldID, DetectionDate, PestDiseaseType, Severity, Treatment)
VALUES (10, 1, DATE '2025-01-17', 'Aphids', 'mild', 'Neem Oil Spray')
SELECT * FROM dual;


--Table 6: Applications
CREATE TABLE Applications (
    ApplicationID NUMBER PRIMARY KEY,
    FieldID NUMBER NOT NULL,
    CropID NUMBER NOT NULL,
    ApplicationType VARCHAR2(50) NOT NULL,
    Amount NUMBER CHECK (Amount > 0),
    ApplicationDate DATE NOT NULL,
    CONSTRAINT application_field_fk FOREIGN KEY (FieldID) REFERENCES Fields(FieldID),
    CONSTRAINT application_crop_fk FOREIGN KEY (CropID) REFERENCES Crops(CropID)
);

INSERT ALL 
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (1, 1, 1, 'Fertilizer', 50, DATE '2024-12-15')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (2, 2, 2, 'Pesticide', 30, DATE '2024-12-20')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (3, 3, 3, 'Fertilizer', 40, DATE '2024-12-25')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (4, 1, 4, 'Pesticide', 35, DATE '2025-01-05')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (5, 2, 5, 'Fungicide', 25, DATE '2025-01-10')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (6, 3, 6, 'Herbicide', 45, DATE '2025-01-15')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (7, 4, 7, 'Fungicide', 55, DATE '2025-01-20')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (8, 5, 8, 'Insecticide', 60, DATE '2025-01-25')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (9, 6, 9, 'Fertilizer', 70, DATE '2025-01-30')
INTO Applications (ApplicationID, FieldID, CropID, ApplicationType, Amount, ApplicationDate)
VALUES (10, 7, 10, 'Fungicide', 80, DATE '2025-02-05')
SELECT * FROM dual;


--Table 7: YieldData
CREATE TABLE YieldData (
    YieldID NUMBER PRIMARY KEY,
    FieldID NUMBER NOT NULL,
    CropID NUMBER NOT NULL,
    Quantity NUMBER CHECK (Quantity > 0),
    Quality VARCHAR2(20),
    HarvestDate DATE NOT NULL,
    CONSTRAINT yield_field_fk FOREIGN KEY (FieldID) REFERENCES Fields(FieldID),
    CONSTRAINT yield_crop_fk FOREIGN KEY (CropID) REFERENCES Crops(CropID)
);

INSERT ALL
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (1, 1, 1, 1000, 'High', DATE '2025-02-01')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (2, 2, 2, 1500, 'Medium', DATE '2025-01-01')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (3, 3, 3, 1200, 'Low', DATE '2024-12-01')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (4, 4, 4, 1100, 'Medium', DATE '2025-03-01')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (5, 5, 5, 1400, 'High', DATE '2025-03-05')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (6, 6, 6, 1300, 'High', DATE '2025-02-20')
    INTO YieldData (YieldID, FieldID, CropID, Quantity, Quality, HarvestDate)
    VALUES (7, 7, 7, 1600, 'Low', DATE '2025-04-01')
SELECT * FROM dual;


--Table 8: EnvironmentalData
CREATE TABLE EnvironmentalData (
    DataID NUMBER(10) PRIMARY KEY,
    CropID NUMBER(5) NOT NULL,
    DateRecorded DATE NOT NULL,
    SoilMoisture NUMBER(5, 2) NOT NULL CHECK (SoilMoisture BETWEEN 0 AND 100),
    SoilPH NUMBER(4, 2) CHECK (SoilPH BETWEEN 0 AND 14),
    Temperature NUMBER(5, 2),
    Rainfall NUMBER(5, 2) CHECK (Rainfall >= 0),
    PollutionLevel NUMBER(5, 2) CHECK (PollutionLevel >= 0),
    CONSTRAINT environmental_crop_fk FOREIGN KEY (CropID) REFERENCES Crops(CropID)
);

INSERT ALL
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (1, 1, DATE '2024-12-10', 60, 6.5, 18, 5, 2)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (2, 2, DATE '2024-12-11', 55, 6.8, 20, 8, 3)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (3, 3, DATE '2024-12-12', 70, 7.0, 22, 10, 1)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (4, 4, DATE '2024-12-13', 65, 6.2, 19, 7, 4)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (5, 5, DATE '2024-12-14', 72, 6.9, 21, 9, 2)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (6, 6, DATE '2024-12-15', 58, 6.6, 23, 11, 3)
INTO EnvironmentalData (DataID, CropID, DateRecorded, SoilMoisture, SoilPH, Temperature, Rainfall, PollutionLevel)
VALUES (7, 7, DATE '2024-12-16', 75, 7.1, 24, 6, 5)
SELECT * FROM dual;


--SELECT STATEMENTS


--Basic SELECT statements to fetch data.

SELECT * FROM Users;

SELECT * FROM Fields;

SELECT CropID, CropName FROM Crops;

SELECT WeatherDataID, WeatherDate, Temperature, Humidity FROM WeatherData;


--Restricting rows with WHERE conditions 

SELECT * FROM WeatherData WHERE Temperature > 15;

SELECT * FROM Crops WHERE HarvestDate > TO_DATE('01-JAN-2025', 'DD-MON-YYYY');

SELECT * FROM Fields WHERE IrrigationMethod = 'Drip';

SELECT CropID, DateRecorded, SoilMoisture, Temperature
FROM EnvironmentalData
WHERE SoilMoisture > 60 AND Temperature < 25;


--Sorting results using ORDER BY.

SELECT * FROM Users ORDER BY RegistrationDate DESC;

SELECT * FROM Crops ORDER BY CropName ASC;

SELECT FieldLocation, FieldSize FROM Fields ORDER BY FieldSize ASC;


--Grouping data using GROUP BY

SELECT FieldID, COUNT(*) AS WeatherDataCount
FROM WeatherData
GROUP BY FieldID;

SELECT FieldID, CropID, SUM(Quantity) AS TotalYield
FROM YieldData
GROUP BY FieldID, CropID
ORDER BY TotalYield DESC;


SELECT PestDiseaseType, COUNT(*) AS IncidentCount
FROM PestDiseaseData
GROUP BY PestDiseaseType;


--Transaction Control

INSERT INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
VALUES (22, 'Farmer', 'Sara Abazi', 'sara.abazi@gmail.com', DATE '2024-06-25');
COMMIT;

INSERT INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate)
VALUES (3, 'Farmer', 'Not a user', 'not_an_email', TO_DATE('15-JAN-2025', 'DD-MON-YYYY'));
ROLLBACK;


--Functions

SELECT UserID, UPPER(UserName) AS CapitalizedName FROM Users;

SELECT UserID, 
       ContactEmail, 
       SUBSTR(ContactEmail, INSTR(ContactEmail, '@') + 1) AS EmailDomain 
FROM Users;

SELECT CropID, 
       LENGTH(CropName) AS CropNameLength, 
       CONCAT(CropName, ' - ' || Variety) AS CropDetails 
FROM Crops;

SELECT UserID, 
       RegistrationDate, 
       ROUND(CURRENT_DATE - RegistrationDate) AS DaysSinceRegistration 
FROM Users;

SELECT CropID, 
       CropName, 
       NEXT_DAY(CURRENT_DATE, 'Sunday') AS NextHarvestDay 
FROM Crops 
WHERE HarvestDate > CURRENT_DATE;

SELECT FieldID, 
       SUM(Quantity) AS TotalYield 
FROM YieldData 
GROUP BY FieldID;

SELECT FieldID, 
       MAX(Temperature) AS MaxTemperature, 
       MIN(Temperature) AS MinTemperature 
FROM WeatherData 
GROUP BY FieldID;

SELECT IncidentID, FieldID, PestDiseaseType, Severity 
FROM PestDiseaseData 
WHERE REGEXP_LIKE(Severity, '^severe$', 'i');

SELECT FieldID, 
       REPLACE(SoilType, 'loam', 'rich loam') AS UpdatedSoilType 
FROM Fields;

SELECT FieldID, 
       MOD(FieldID, 2) AS OddOrEven 
FROM Fields;

SELECT CropID, 
       POWER(Quantity, 2) AS QuantitySquared 
FROM YieldData;

SELECT UserID, 
       INITCAP(UserName) AS FormattedName, 
       TO_CHAR(RegistrationDate, 'DD-MON-YYYY') AS RegistrationDate 
FROM Users;

--session variable

ACCEPT CropIDValue CHAR PROMPT 'Enter the CropID: ';

DEFINE CropIDValue = '&CropIDValue';

SELECT DataID, 
       CropID, 
       SoilPH, 
       CASE 
           WHEN SoilPH > 7 THEN 'Alkaline'
           WHEN SoilPH = 7 THEN 'Neutral'
           ELSE 'Acidic'
       END AS PHStatus 
FROM EnvironmentalData 
WHERE CropID = &CropIDValue;


--sequences

CREATE SEQUENCE UserID_Sequence
START WITH 1
INCREMENT BY 1
NOCACHE; 


CREATE SEQUENCE DataID_Sequence
START WITH 1
INCREMENT BY 1
MAXVALUE 1000
MINVALUE 1
CYCLE
CACHE 20
ORDER;

SELECT * FROM user_sequences;


--indexes

CREATE INDEX WeatherFieldID_index 
ON WeatherData (FieldID);

CREATE INDEX PestSeverity_idx
ON PestDiseaseData (Severity);


SELECT INDEX_NAME, TABLE_NAME, COLUMN_NAME
FROM USER_IND_COLUMNS
WHERE INDEX_NAME = 'WEATHERFIELDID_INDEX';

SELECT INDEX_NAME, TABLE_NAME, COLUMN_NAME
FROM USER_IND_COLUMNS
WHERE INDEX_NAME = 'PESTSEVERITY_IDX';

--synonym

CREATE SYNONYM Users_Synonym
FOR Users;

SELECT * FROM Users_Synonym
WHERE UserType = 'Farmer';


--VIEWS

CREATE OR REPLACE VIEW FieldWeatherView AS
SELECT 
  f.FieldLocation, 
  f.FieldSize, 
  f.SoilType, 
  f.IrrigationMethod,
  w.Temperature, 
  w.Humidity, 
  w.Rainfall
FROM Fields f
JOIN WeatherData w ON f.FieldID = w.FieldID;


SELECT * FROM FieldWeatherView;


CREATE VIEW FieldWeatherSummary AS
SELECT  
  f.FieldID, 
  f.FieldLocation, 
  f.FieldSize, 
  f.SoilType, 
  f.IrrigationMethod, 
  COUNT(w.WeatherDataID) AS TotalWeatherRecords, 
  AVG(w.Temperature) AS AvgTemperature, 
  AVG(w.Humidity) AS AvgHumidity, 
  AVG(w.Rainfall) AS AvgRainfall
FROM Fields f
LEFT JOIN WeatherData w ON f.FieldID = w.FieldID 
GROUP BY f.FieldID, f.FieldLocation, f.FieldSize, f.SoilType, f.IrrigationMethod
ORDER BY f.FieldSize DESC, AvgTemperature DESC;

SELECT * FROM FieldWeatherSummary;


--JOINS

SELECT f.FieldLocation, w.Temperature, w.Humidity, w.Rainfall
FROM WeatherData w
JOIN Fields f ON w.FieldID = f.FieldID;


SELECT 
  f.FieldLocation, 
  f.SoilType, 
  w.Temperature, 
  w.Humidity, 
  w.Rainfall
FROM Fields f
LEFT JOIN WeatherData w ON f.FieldID = w.FieldID;


--subqueries

SELECT UserName
FROM Users
WHERE UserID IN (
    SELECT UserID
    FROM Crops
    WHERE PlantingDate > TO_DATE('2023-07-03', 'YYYY-MM-DD')
);


SELECT 
    UserName,
    (SELECT MAX(PlantingDate) 
     FROM Crops 
     WHERE Crops.CropID IN 
     (SELECT CropID FROM Users WHERE Users.UserName = UserName)) 
     AS LatestPlantingDate
FROM Users;


--PL/SQL Block

SET SERVEROUTPUT ON; 
--to print statement of temperature

DECLARE
    v_field_id NUMBER(3) := 101; 
    v_new_temp NUMBER(5,2) := 25; 
BEGIN
    UPDATE WeatherData
    SET Temperature = v_new_temp
    WHERE FieldID = v_field_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Temperature updated successfully.'); 
END;


DECLARE 
v_user_id NUMBER := 20; 
v_user_type VARCHAR2(20) := 'Distributor'; 
v_user_name VARCHAR2(50) := 'Gilda Shehu'; 
v_contact_email VARCHAR2(50) := 'gildashehu@yahoo.com'; 
v_registration_date DATE := DATE '2024-07-05'; 
BEGIN 
    INSERT INTO Users (UserID, UserType, UserName, ContactEmail, RegistrationDate) 
    VALUES (v_user_id, v_user_type, v_user_name, v_contact_email, v_registration_date); 
COMMIT; 
END;


--bonus

SELECT c.CropName, SUM(yd.Quantity) AS TotalYield
FROM Crops c
JOIN YieldData yd ON c.CropID = yd.CropID
GROUP BY c.CropName
ORDER BY TotalYield DESC
FETCH FIRST 5 ROWS ONLY;

SELECT f.FieldID, f.FieldLocation, AVG(yd.Quantity) AS AvgYield
FROM Fields f
JOIN YieldData yd ON f.FieldID = yd.FieldID
GROUP BY f.FieldID, f.FieldLocation;

SELECT TO_CHAR(w.WeatherDate, 'MM-YYYY') AS Month, SUM(w.Rainfall) AS TotalRainfall
FROM WeatherData w
GROUP BY TO_CHAR(w.WeatherDate, 'MM-YYYY')
ORDER BY Month;

SELECT f.FieldID, f.FieldLocation, COUNT(*) AS IncidentCount
FROM Fields f
JOIN PestDiseaseData pd ON f.FieldID = pd.FieldID
GROUP BY f.FieldID, f.FieldLocation
ORDER BY IncidentCount DESC;
