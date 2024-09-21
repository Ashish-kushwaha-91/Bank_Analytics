create database Bank_Analytics;
use Bank_Analytics;
select * from finance_1;
select * from finance_2;

/*
-- Year wise loan amount Stats
-- Grade and sub grade wise revol_bal
-- Total Payment for Verified Status Vs Total Payment for Non Verified Status
-- State wise loan status
-- Month wise loan status
-- Get more insights based on your understanding of the data
*/
-- Year wise loan amount Stats------------------------------------------------------------------------------------------------------------------------------------------------

select year(issue_d) as Year_of_issue_d, sum(loan_amnt) as Total_Loan_amnt
from finance_1
group by Year_of_issue_d
order by Year_of_issue_d;

-- Grade and sub grade wise revol_bal-----------------------------------------------------------------------------------------------------------------------------------------

select grade, sub_grade, sum(revol_bal) as total_revol_bal
from finance_1 inner join finance_2
on(finance_1.id = finance_2.id)
group by grade, sub_grade
order by grade, sub_grade;

-- Total Payment for Verified Status Vs Total Payment for Non Verified Status--------------------------------------------------------------------------------------------------

select verification_status, round(sum(total_pymnt),2) as total_payment
from finance_1 inner join finance_2
on(finance_1.id = finance_2.id)
group by verification_status;

-- State wise loan status-------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT addr_state, MAX(loan_status) AS loan_status
FROM Finance_1
INNER JOIN Finance_2 ON Finance_1.id = Finance_2.id
GROUP BY addr_state
ORDER BY addr_state;

-- Month wise loan status-------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT last_credit_pull_d, MAX(loan_status) AS loan_status
FROM Finance_1
INNER JOIN Finance_2 ON Finance_1.id = Finance_2.id
GROUP BY last_credit_pull_d
ORDER BY last_credit_pull_d;

-- State wise and Month wise Loan status together-------------------------------------------------------------------------------------------------------------------------------


SELECT DISTINCT addr_state, last_credit_pull_d, loan_status
FROM Finance_1 
INNER JOIN Finance_2 ON Finance_1.id = Finance_2.id
ORDER BY last_credit_pull_d;



-- Get more insights based on your understanding of the data---------------------------------------------------------------------------------------------------------------------
-- Home ownership vs Last payment date stats-------------------------------------------------------------------------------------------------------------------------------------


select home_ownership,last_pymnt_d,
concat('$', format(round(sum(last_pymnt_amnt)/10000,2),2), 'K') as total_payment
FROM Finance_1 INNER JOIN Finance_2
on(Finance_1.id = Finance_2.id)
group by home_ownership, last_pymnt_d
order by home_ownership, last_pymnt_d;


-- Loan Term Distribution-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.term, 
       COUNT(f1.id) AS loan_count
FROM finance_1 f1
GROUP BY f1.term;


-- Loan Amount to Income Ratio by Employment Length-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.emp_length, 
       AVG(f1.loan_amnt / f1.annual_inc) AS avg_loan_to_income_ratio
FROM finance_1 f1
GROUP BY f1.emp_length;


-- Average Interest Rate by Loan Grade-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.grade, 
       AVG(f1.int_rate) AS avg_int_rate
FROM finance_1 f1
GROUP BY f1.grade;


-- Total Late Fees by Loan Purpose-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.purpose, 
       SUM(f2.total_rec_late_fee) AS total_late_fees
FROM finance_1 f1
JOIN finance_2 f2 ON f1.id = f2.id
GROUP BY f1.purpose;


-- Grade-wise Total Recoveries-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.grade, 
       SUM(f2.recoveries) AS total_recoveries
FROM finance_1 f1
JOIN finance_2 f2 ON f1.id = f2.id
GROUP BY f1.grade;


-- Loan Amount by Location-------------------------------------------------------------------------------------------------------------------------------------

SELECT f1.addr_state, 
       f1.zip_code, 
       SUM(f1.loan_amnt) AS total_loan_amount
FROM finance_1 f1
GROUP BY f1.addr_state, f1.zip_code
ORDER BY f1.addr_state, f1.zip_code;












