# **Bank Analytics Project**

## **Overview**
This project involves an analysis of loan data to derive key insights into various aspects of loan distribution, repayments, and customer profiles. It uses advanced data analytics techniques to identify trends and relationships within the data, with a focus on improving decision-making for loan management.

## **Datasets Used**
The following datasets were used for this analysis:
1. `Finance_1`
2. `Finance_2`

## **Column Names**
The datasets contain the following columns, which provide various details related to loans, customers, and their financial activities:
- `id`: Unique identifier for each record
- `member_id`: Unique customer identifier
- `loan_amnt`: Amount of the loan
- `funded_amnt`: Funded loan amount
- `funded_amnt_inv`: Investor funded amount
- `term`: Loan term in months
- `int_rate`: Interest rate on the loan
- `installment`: Monthly installment amount
- `grade`: Loan grade
- `sub_grade`: Loan sub-grade
- `emp_length`: Length of employment
- `home_ownership`: Home ownership status of the borrower
- `annual_inc`: Annual income of the borrower
- `verification_status`: Income verification status (Verified/Non-verified)
- `issue_d`: Loan issue date
- `loan_status`: Status of the loan (Current, Default, Fully Paid, etc.)
- `purpose`: Purpose for taking the loan
- `zip_code`: Borrower’s zip code
- `addr_state`: Borrower’s state
- `dti`: Debt-to-income ratio
- `delinq_2yrs`: Number of delinquencies in the past 2 years
- `earliest_cr_line`: Date of the borrower’s earliest credit line
- `inq_last_6mths`: Number of inquiries in the last 6 months
- `mths_since_last_delinq`: Months since last delinquency
- `mths_since_last_record`: Months since last derogatory public record
- `open_acc`: Number of open credit accounts
- `pub_rec`: Number of derogatory public records
- `revol_bal`: Total revolving credit balance
- `revol_util`: Revolving line utilization rate
- `total_acc`: Total number of credit lines
- `total_pymnt`: Total payment received to date
- `total_pymnt_inv`: Total payment received by investors
- `total_rec_prncp`: Principal received to date
- `total_rec_int`: Interest received to date
- `total_rec_late_fee`: Late fees received
- `recoveries`: Recoveries made from defaulted loans
- `collection_recovery_fee`: Collection recovery fee
- `last_pymnt_d`: Date of the last payment
- `last_pymnt_amnt`: Amount of the last payment
- `last_credit_pull_d`: Date of the last credit pull
- `Loan to Income Ratio`: Calculated as loan amount divided by annual income
- `last_credit_pull_d (Year/Quarter/Month)`: Year, quarter, and month of the last credit pull
- `issue_d (Year/Quarter/Month)`: Year, quarter, and month when the loan was issued
- `last_pymnt_d (Year/Quarter/Month)`: Year, quarter, and month of the last payment
- `issue_d (Month Index)`, `last_credit_pull_d (Month Index)`, `last_pymnt_d (Month Index)`: Month index for time series analysis

## **Key Performance Indicators (KPIs)**
The following KPIs were analyzed to extract insights from the loan data:
1. **Year-wise Loan Amount Statistics**: Analyzing total loan amounts year by year.
2. **Grade and Sub-grade Wise Revolving Balance**: Breakdown of revolving balances by loan grades and sub-grades.
3. **Verified vs Non-Verified Payment Status**: Comparison of total payments for verified and non-verified customers.
4. **State-wise Loan Status**: Analysis of loan status across different states.
5. **Month-wise Loan Status**: Analyzing trends in loan status by month.
6. **Home Ownership vs Last Payment Date Statistics**: Exploring relationships between home ownership status and the last payment date.
7. **Loan Term Distribution**: Distribution of loans by terms (36 months, 60 months, etc.).
8. **Loan Amount to Income Ratio by Employment Length**: Loan amount relative to income categorized by the borrower's employment length.
9. **Average Interest Rate by Loan Grade**: Average interest rate for each loan grade.
10. **Total Late Fees by Loan Purpose**: Analysis of late fees collected, categorized by loan purpose.
11. **Grade-wise Total Recoveries**: Total recoveries made from defaulted loans for each loan grade.
12. **Loan Amount by Location**: Geographic distribution of loan amounts.

## **Tools and Technologies**
This project was completed using the following tools:
- **Excel**: Used for data preprocessing, cleaning, and initial analysis.
- **MySQL**: Database used to store and query the dataset for deeper analysis.
- **Power BI**: For creating insightful visualizations and dashboards to better interpret the data.
- **Python**: Leveraged for advanced data analysis using libraries like Pandas, NumPy, Matplotlib, and Seaborn.

## **Visualizations and Insights**
Visualizations were created to support the KPIs and derive actionable insights, helping decision-makers understand the loan distribution, repayment trends, customer behaviors, and risks associated with different loan statuses and categories.

---

## **Final Note**
This project provides a detailed exploration of loan data, offering insights into customer credit profiles, loan performance, and repayment behaviors. Whether you're analyzing financial data or managing loan portfolios, the insights from this project can guide data-driven decision-making in the banking and finance sector. Feel free to explore the repository and contribute any feedback or suggestions!
