-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : insert_data.sql
-- DAY   : Day 2
-- DESC  : Sample data for all 10 tables
-- ============================================

-- DEPARTMENTS
INSERT INTO DEPARTMENT VALUES (dept_seq.NEXTVAL, 'Cardiology',  'Block A', NULL);
INSERT INTO DEPARTMENT VALUES (dept_seq.NEXTVAL, 'Neurology',   'Block B', NULL);
INSERT INTO DEPARTMENT VALUES (dept_seq.NEXTVAL, 'Orthopedics', 'Block C', NULL);
INSERT INTO DEPARTMENT VALUES (dept_seq.NEXTVAL, 'Pediatrics',  'Block D', NULL);
INSERT INTO DEPARTMENT VALUES (dept_seq.NEXTVAL, 'General',     'Block E', NULL);

-- WARDS
INSERT INTO WARD VALUES (ward_seq.NEXTVAL, 'Heart Ward',   'ICU',     10, 8,  1);
INSERT INTO WARD VALUES (ward_seq.NEXTVAL, 'Neuro Ward',   'General', 20, 15, 2);
INSERT INTO WARD VALUES (ward_seq.NEXTVAL, 'Ortho Ward',   'Private', 15, 10, 3);
INSERT INTO WARD VALUES (ward_seq.NEXTVAL, 'Kids Ward',    'General', 25, 20, 4);
INSERT INTO WARD VALUES (ward_seq.NEXTVAL, 'General Ward', 'General', 50, 40, 5);

-- DOCTORS
INSERT INTO DOCTOR VALUES (doctor_seq.NEXTVAL, 'Anil',   'Sharma', 'Cardiologist', '9876543210', 'anil@hosp.com',   120000, 1, SYSDATE);
INSERT INTO DOCTOR VALUES (doctor_seq.NEXTVAL, 'Priya',  'Mehta',  'Neurologist',  '9876543211', 'priya@hosp.com',  115000, 2, SYSDATE);
INSERT INTO DOCTOR VALUES (doctor_seq.NEXTVAL, 'Ramesh', 'Gupta',  'Orthopedic',   '9876543212', 'ramesh@hosp.com', 110000, 3, SYSDATE);
INSERT INTO DOCTOR VALUES (doctor_seq.NEXTVAL, 'Sneha',  'Joshi',  'Pediatrician', '9876543213', 'sneha@hosp.com',  105000, 4, SYSDATE);
INSERT INTO DOCTOR VALUES (doctor_seq.NEXTVAL, 'Vikram', 'Singh',  'General',      '9876543214', 'vikram@hosp.com', 100000, 5, SYSDATE);

-- NURSES
INSERT INTO NURSE VALUES (nurse_seq.NEXTVAL, 'Rani',   'Patel', '9000000010', 'Morning', 1, 1);
INSERT INTO NURSE VALUES (nurse_seq.NEXTVAL, 'Sunita', 'Rao',   '9000000011', 'Evening', 2, 2);
INSERT INTO NURSE VALUES (nurse_seq.NEXTVAL, 'Kavya',  'Nair',  '9000000012', 'Night',   3, 3);
INSERT INTO NURSE VALUES (nurse_seq.NEXTVAL, 'Pooja',  'Shah',  '9000000013', 'Morning', 4, 4);
INSERT INTO NURSE VALUES (nurse_seq.NEXTVAL, 'Divya',  'Iyer',  '9000000014', 'Evening', 5, 5);

-- PATIENTS
INSERT INTO PATIENT VALUES (patient_seq.NEXTVAL, 'Ravi',  'Kumar', TO_DATE('1990-05-10','YYYY-MM-DD'), 'M', '9111111111', 'Chennai', 'O+',  SYSDATE);
INSERT INTO PATIENT VALUES (patient_seq.NEXTVAL, 'Meena', 'Iyer',  TO_DATE('1985-08-22','YYYY-MM-DD'), 'F', '9111111112', 'Mumbai',  'A+',  SYSDATE);
INSERT INTO PATIENT VALUES (patient_seq.NEXTVAL, 'Arjun', 'Das',   TO_DATE('2000-01-15','YYYY-MM-DD'), 'M', '9111111113', 'Delhi',   'B+',  SYSDATE);
INSERT INTO PATIENT VALUES (patient_seq.NEXTVAL, 'Sita',  'Verma', TO_DATE('1975-11-30','YYYY-MM-DD'), 'F', '9111111114', 'Pune',    'AB-', SYSDATE);
INSERT INTO PATIENT VALUES (patient_seq.NEXTVAL, 'Kiran', 'Reddy', TO_DATE('1995-03-18','YYYY-MM-DD'), 'M', '9111111115', 'Hyd',     'O-',  SYSDATE);

-- APPOINTMENTS
INSERT INTO APPOINTMENT VALUES (appt_seq.NEXTVAL, 1001, 101, SYSDATE, '10:00 AM', 'Scheduled', 'Chest pain check');
INSERT INTO APPOINTMENT VALUES (appt_seq.NEXTVAL, 1002, 102, SYSDATE, '11:00 AM', 'Scheduled', 'Headache followup');
INSERT INTO APPOINTMENT VALUES (appt_seq.NEXTVAL, 1003, 103, SYSDATE, '12:00 PM', 'Completed', 'Knee pain');
INSERT INTO APPOINTMENT VALUES (appt_seq.NEXTVAL, 1004, 104, SYSDATE, '02:00 PM', 'Scheduled', 'Child fever');
INSERT INTO APPOINTMENT VALUES (appt_seq.NEXTVAL, 1005, 105, SYSDATE, '03:00 PM', 'Cancelled', 'General checkup');

-- MEDICINES
INSERT INTO MEDICINE VALUES (med_seq.NEXTVAL, 'Paracetamol',  'Painkiller', 500, 5.00,  TO_DATE('2027-12-01','YYYY-MM-DD'));
INSERT INTO MEDICINE VALUES (med_seq.NEXTVAL, 'Amoxicillin',  'Antibiotic', 300, 15.00, TO_DATE('2027-10-01','YYYY-MM-DD'));
INSERT INTO MEDICINE VALUES (med_seq.NEXTVAL, 'Atorvastatin', 'Cardiac',    200, 25.00, TO_DATE('2028-01-01','YYYY-MM-DD'));
INSERT INTO MEDICINE VALUES (med_seq.NEXTVAL, 'Ibuprofen',    'Painkiller', 400, 8.00,  TO_DATE('2027-06-01','YYYY-MM-DD'));
INSERT INTO MEDICINE VALUES (med_seq.NEXTVAL, 'Amoxicillin',  'Antibiotic', 150, 20.00, TO_DATE('2027-08-01','YYYY-MM-DD'));

-- ADMISSIONS
INSERT INTO ADMISSION VALUES (admit_seq.NEXTVAL, 1001, 1, 101, SYSDATE, NULL, 'Chest Pain',  'Admitted');
INSERT INTO ADMISSION VALUES (admit_seq.NEXTVAL, 1002, 2, 102, SYSDATE, NULL, 'Migraine',    'Admitted');
INSERT INTO ADMISSION VALUES (admit_seq.NEXTVAL, 1003, 3, 103, SYSDATE, NULL, 'Knee Injury', 'Admitted');
INSERT INTO ADMISSION VALUES (admit_seq.NEXTVAL, 1004, 4, 104, SYSDATE, NULL, 'Child Fever', 'Discharged');
INSERT INTO ADMISSION VALUES (admit_seq.NEXTVAL, 1005, 5, 105, SYSDATE, NULL, 'Flu',         'Discharged');

-- PRESCRIPTIONS
INSERT INTO PRESCRIPTION VALUES (presc_seq.NEXTVAL, 1001, 101, 1, SYSDATE, '1 tablet twice a day',  5);
INSERT INTO PRESCRIPTION VALUES (presc_seq.NEXTVAL, 1002, 102, 2, SYSDATE, '1 tablet at night',     7);
INSERT INTO PRESCRIPTION VALUES (presc_seq.NEXTVAL, 1003, 103, 4, SYSDATE, '2 tablets after meals', 5);
INSERT INTO PRESCRIPTION VALUES (presc_seq.NEXTVAL, 1004, 104, 1, SYSDATE, '1 tablet morning',      3);
INSERT INTO PRESCRIPTION VALUES (presc_seq.NEXTVAL, 1005, 105, 2, SYSDATE, '1 tablet twice a day',  5);

-- BILLING
INSERT INTO BILLING VALUES (bill_seq.NEXTVAL, 1001, 1, SYSDATE, 5000, 200, 1500, 6700, 'Unpaid');
INSERT INTO BILLING VALUES (bill_seq.NEXTVAL, 1002, 2, SYSDATE, 3000, 100, 1000, 4100, 'Paid');
INSERT INTO BILLING VALUES (bill_seq.NEXTVAL, 1003, 3, SYSDATE, 4000, 300, 1200, 5500, 'Unpaid');
INSERT INTO BILLING VALUES (bill_seq.NEXTVAL, 1004, 4, SYSDATE, 2000, 150, 800,  2950, 'Paid');
INSERT INTO BILLING VALUES (bill_seq.NEXTVAL, 1005, 5, SYSDATE, 1500, 100, 600,  2200, 'Partial');

COMMIT;