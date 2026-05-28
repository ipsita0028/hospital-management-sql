-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : advanced_queries.sql
-- DESC  : Advanced SELECT queries
-- ============================================

-- QUERY 1: Show patients sorted by name
SELECT first_name, last_name, blood_group
FROM PATIENT
ORDER BY first_name;

-- QUERY 2: Show bills highest to lowest
SELECT patient_id, total_amount, paid_status
FROM BILLING
ORDER BY total_amount DESC;

-- QUERY 3: Search patient by name
SELECT * FROM PATIENT
WHERE first_name LIKE 'R%';

-- QUERY 4: Search medicine by name
SELECT * FROM MEDICINE
WHERE medicine_name LIKE 'A%';

-- QUERY 5: Show admitted male patients
SELECT first_name, last_name, gender
FROM PATIENT
WHERE gender = 'M'
AND patient_id IN
(SELECT patient_id FROM ADMISSION
WHERE status = 'Admitted');

-- QUERY 6: Show paid or partial bills
SELECT patient_id, total_amount, paid_status
FROM BILLING
WHERE paid_status = 'Paid'
OR paid_status = 'Partial';

-- QUERY 7: Count patients in each blood group
SELECT blood_group,
       COUNT(*) AS total_patients
FROM PATIENT
GROUP BY blood_group;

-- QUERY 8: Total bill amount per patient
SELECT patient_id,
       SUM(total_amount) AS total_bill
FROM BILLING
GROUP BY patient_id
ORDER BY total_bill DESC;

-- QUERY 9: Count appointments per doctor
SELECT doctor_id,
       COUNT(*) AS total_appointments
FROM APPOINTMENT
GROUP BY doctor_id
ORDER BY total_appointments DESC;

-- QUERY 10: 3 Table JOIN
-- Show patient name, doctor name, diagnosis
SELECT p.first_name AS patient,
       d.first_name AS doctor,
       a.diagnosis,
       a.status
FROM ADMISSION a
JOIN PATIENT p
ON a.patient_id = p.patient_id
JOIN DOCTOR d
ON a.doctor_id = d.doctor_id;