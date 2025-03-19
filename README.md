# Crop Management and Environmental Monitoring System

## Overview
This project is a database system designed to manage and monitor crop cultivation and environmental factors that affect crop health. The system tracks data related to crops, fields, weather conditions, pest and disease incidents, applications (fertilizers, pesticides, etc.), yield data, and environmental conditions. The database is intended to support farmers, researchers, and agricultural advisors in making data-driven decisions to optimize crop management and minimize environmental impact.

## Database Structure
The database consists of the following tables:

- **Users**: Stores information about users (farmers, researchers, advisors, etc.).
- **Crops**: Contains details about crops, including planting and harvest dates.
- **Fields**: Stores information about fields used for crop cultivation.
- **WeatherData**: Records weather conditions for each field.
- **PestDiseaseData**: Tracks pest and disease incidents in fields.
- **Applications**: Records applications of fertilizers, pesticides, etc., to fields.
- **YieldData**: Stores data about crop yields.
- **EnvironmentalData**: Records environmental conditions affecting crops.

## Key Features
- **Data Tracking**: The database tracks crop growth stages, environmental conditions, and pest/disease incidents.
- **User Management**: Different types of users (farmers, researchers, advisors) can access and manage data relevant to their roles.
- **Weather Monitoring**: Weather data is recorded for each field, helping users optimize irrigation and other practices.
- **Pest and Disease Management**: The system tracks pest and disease incidents, allowing for timely interventions.
- **Yield Analysis**: Yield data is recorded, enabling users to analyze crop performance and make improvements.
- **Environmental Monitoring**: Environmental data such as soil moisture, pH, and pollution levels are recorded to assess their impact on crop health.

## SQL Features
The database implementation includes various SQL features such as:

- **Basic Queries**:
  - `SELECT` statements for fetching data
  - `WHERE` conditions for filtering
  - `ORDER BY` for sorting
  - `GROUP BY` for aggregation
- **Transaction Control**:
  - `COMMIT` and `ROLLBACK` for data integrity
- **Functions**:
  - SQL functions like `UPPER`, `SUBSTR`, `LENGTH`, `CONCAT`, `ROUND`, `NEXT_DAY`, `SUM`, `MAX`, `MIN`, `REGEXP_LIKE`, `REPLACE`, `MOD`, `POWER`, `INITCAP`, `TO_CHAR`
- **Advanced Features**:
  - Sequences for generating unique IDs
  - Indexes for performance optimization
  - Synonyms for aliasing tables
  - Views for simplified data access
  - Joins for combining multiple tables
  - Subqueries for complex data retrieval
  - PL/SQL blocks for procedural data manipulation

## Installation and Usage
1. **Database Setup**:
   - Run the SQL script `DB_Crop_Management_and_Environmental_Monitoring.sql` to create the database tables and insert sample data.
2. **Query Execution**:
   - Use the provided SQL queries to fetch, filter, and analyze data.
3. **PL/SQL Execution**:
   - Execute the PL/SQL blocks for procedural data manipulation.

## Example Queries
### Fetching Weather Data:
```sql
SELECT * FROM WeatherData WHERE Temperature > 15;
```

### Sorting Crops by Name:
```sql
SELECT * FROM Crops ORDER BY CropName ASC;
```

### Grouping Yield Data by Field:
```sql
SELECT FieldID, SUM(Quantity) AS TotalYield 
FROM YieldData 
GROUP BY FieldID;
```

### Top 5 Highest Yielding Crops:
```sql
SELECT c.CropName, SUM(yd.Quantity) AS TotalYield
FROM Crops c
JOIN YieldData yd ON c.CropID = yd.CropID
GROUP BY c.CropName
ORDER BY TotalYield DESC
FETCH FIRST 5 ROWS ONLY;
