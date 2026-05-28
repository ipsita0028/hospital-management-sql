-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : basic_queries.sql
-- ============================================

-- QUERY 1: Show all patients
SELECT * FROM PATIENT;

-- QUERY 2: Show all doctors
SELECT * FROM DOCTOR;

-- QUERY 2B: Show only name and speciality
SELECT first_name, last_name, speciality
FROM DOCTOR;

-- QUERY 3: Show all departments
SELECT * FROM DEPARTMENT;

-- QUERY 3B: Show only name and location
SELECT dept_name, location
FROM DEPARTMENT;

-- QUERY 4: Show all wards
SELECT * FROM WARD;

-- QUERY 4B: Show ward name and beds
SELECT ward_name, ward_type,
       total_beds, available_beds
FROM WARD;

-- QUERY 5: Show all medicines
SELECT * FROM MEDICINE;

-- QUERY 5B: Show medicine name and price
SELECT medicine_name, category,
       unit_price, stock_qty
FROM MEDICINE;

-- QUERY 6: Show only admitted patients
SELECT * FROM ADMISSION
WHERE status = 'Admitted';

-- QUERY 7: Show only unpaid bills
SELECT * FROM BILLING
WHERE paid_status = 'Unpaid';

-- QUERY 8: Show doctors in Cardiology
SELECT first_name, last_name, speciality
FROM DOCTOR
WHERE dept_id = 1;

-- QUERY 9: Show doctor name with department
SELECT d.first_name,
       d.last_name,
       d.speciality,
       dp.dept_name
FROM DOCTOR d
JOIN DEPARTMENT dp
ON d.dept_id = dp.dept_id;

-- QUERY 10: Show patient with appointment
SELECT p.first_name,
       p.last_name,
       a.appt_date,
       a.appt_time,
       a.status
FROM PATIENT p
JOIN APPOINTMENT a
ON p.patient_id = a.patient_id;

-- QUERY 11: Show patient with bill amount
SELECT p.first_name,
       p.last_name,
       b.total_amount,
       b.paid_status
FROM PATIENT p
JOIN BILLING b
ON p.patient_id = b.patient_id;