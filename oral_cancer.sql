use cancer_pred;

-- check database:

select * from oral_cancer;

-- see how many has diagnosis or not

select count(diagnosis)
from oral_cancer
group by diagnosis;

-- how many of the diagnosed has each type of treatment?
SELECT
  treatment,
  COUNT(*) AS n_cases
FROM oral_cancer
WHERE diagnosis = 'Yes'
GROUP BY treatment
ORDER BY n_cases DESC;

-- avg survival and avg cost in each tretment type
SELECT
  treatment,
  COUNT(*) AS n,
  AVG(survival_rate) AS avg_survival,
  AVG(cost) AS avg_cost
FROM oral_cancer
GROUP BY treatment
ORDER BY avg_survival DESC;


-- survival in each treatment and stage
SELECT
  stage,
  treatment,
  COUNT(*) AS n,
  AVG(survival_rate) AS avg_survival
FROM oral_cancer
GROUP BY stage, treatment
ORDER BY stage, avg_survival DESC;


SELECT
  early_diagn  AS early_dx,
  COUNT(*) AS n,
  AVG(survival_rate) AS avg_survival
FROM oral_cancer
GROUP BY early_diagn;

-- By stage
SELECT
  stage,
  early_diagn AS early_dx,
  AVG(survival_rate) AS avg_survival
FROM oral_cancer
GROUP BY stage, early_diagn
ORDER BY stage, early_dx;

