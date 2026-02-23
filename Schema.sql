CREATE DATABASE cancer_pred;
USE cancer_pred;

create table oral_cancer (
ID INT,
country VARCHAR(100),
age INT,
gender VARCHAR(100), 
tobacco VARCHAR(100),
alcohol VARCHAR(100),
HPV_infect VARCHAR(100),
betel VARCHAR(100),
sun_exposure VARCHAR(100),
poor_hygiene VARCHAR(100),
diet VARCHAR(100), 
family_cancer VARCHAR(100),
immune_compromised VARCHAR(100),
lesions VARCHAR(100),
bleeding VARCHAR(100), 
diff_swallowing VARCHAR(100),
patches VARCHAR(100),
tumor_size float,
stage int,
treatment VARCHAR(100),
survival_rate float,
cost DECIMAL(10,2), 
day_burden VARCHAR(100),
early_diagn VARCHAR(100),
diagnosis VARCHAR(100));

-- DROP DATABASE cancer_pred;