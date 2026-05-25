-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE    : 02_create_tables.sql
-- DAY 1   : CREATE ALL 10 TABLES
-- ============================================

-- TABLE 1: DEPARTMENT
-- Stores all hospital departments
CREATE TABLE DEPARTMENT (
  dept_id      NUMBER PRIMARY KEY,
  dept_name    VARCHAR2(100) NOT NULL,
  location     VARCHAR2(100),
  head_doctor  NUMBER
);

-- TABLE 2: DOCTOR
-- Stores all doctor details
CREATE TABLE DOCTOR (
  doctor_id    NUMBER PRIMARY KEY,
  first_name   VARCHAR2(50) NOT NULL,
  last_name    VARCHAR2(50) NOT NULL,
  speciality   VARCHAR2(100),
  phone        VARCHAR2(15),
  email        VARCHAR2(100) UNIQUE,
  salary       NUMBER(10,2),
  dept_id      NUMBER REFERENCES DEPARTMENT(dept_id),
  join_date    DATE DEFAULT SYSDATE
);

-- TABLE 3: PATIENT
-- Stores all patient details
CREATE TABLE PATIENT (
  patient_id   NUMBER PRIMARY KEY,
  first_name   VARCHAR2(50) NOT NULL,
  last_name    VARCHAR2(50) NOT NULL,
  dob          DATE,
  gender       CHAR(1) CHECK (gender IN ('M','F','O')),
  phone        VARCHAR2(15),
  address      VARCHAR2(200),
  blood_group  VARCHAR2(5),
  reg_date     DATE DEFAULT SYSDATE
);

-- TABLE 4: WARD
-- Stores hospital rooms and beds
CREATE TABLE WARD (
  ward_id         NUMBER PRIMARY KEY,
  ward_name       VARCHAR2(100),
  ward_type       VARCHAR2(50) CHECK (ward_type IN
                  ('General','ICU','Private')),
  total_beds      NUMBER,
  available_beds  NUMBER,
  dept_id         NUMBER REFERENCES DEPARTMENT(dept_id)
);

-- TABLE 5: APPOINTMENT
-- Stores doctor and patient meetings
CREATE TABLE APPOINTMENT (
  appt_id      NUMBER PRIMARY KEY,
  patient_id   NUMBER REFERENCES PATIENT(patient_id),
  doctor_id    NUMBER REFERENCES DOCTOR(doctor_id),
  appt_date    DATE NOT NULL,
  appt_time    VARCHAR2(10),
  status       VARCHAR2(20) CHECK (status IN
               ('Scheduled','Completed','Cancelled')),
  notes        VARCHAR2(300)
);

-- TABLE 6: ADMISSION
-- Stores patient admitted to ward
CREATE TABLE ADMISSION (
  admission_id    NUMBER PRIMARY KEY,
  patient_id      NUMBER REFERENCES PATIENT(patient_id),
  ward_id         NUMBER REFERENCES WARD(ward_id),
  doctor_id       NUMBER REFERENCES DOCTOR(doctor_id),
  admit_date      DATE DEFAULT SYSDATE,
  discharge_date  DATE,
  diagnosis       VARCHAR2(300),
  status          VARCHAR2(20) CHECK (status IN
                  ('Admitted','Discharged'))
);

-- TABLE 7: NURSE
-- Stores nurse details
CREATE TABLE NURSE (
  nurse_id     NUMBER PRIMARY KEY,
  first_name   VARCHAR2(50),
  last_name    VARCHAR2(50),
  phone        VARCHAR2(15),
  shift        VARCHAR2(20) CHECK (shift IN
               ('Morning','Evening','Night')),
  ward_id      NUMBER REFERENCES WARD(ward_id),
  dept_id      NUMBER REFERENCES DEPARTMENT(dept_id)
);

-- TABLE 8: MEDICINE
-- Stores medicine inventory
CREATE TABLE MEDICINE (
  medicine_id    NUMBER PRIMARY KEY,
  medicine_name  VARCHAR2(100) NOT NULL,
  category       VARCHAR2(50),
  stock_qty      NUMBER DEFAULT 0,
  unit_price     NUMBER(8,2),
  expiry_date    DATE
);

-- TABLE 9: PRESCRIPTION
-- Stores medicines given to patients
CREATE TABLE PRESCRIPTION (
  prescription_id  NUMBER PRIMARY KEY,
  patient_id       NUMBER REFERENCES PATIENT(patient_id),
  doctor_id        NUMBER REFERENCES DOCTOR(doctor_id),
  medicine_id      NUMBER REFERENCES MEDICINE(medicine_id),
  prescribed_date  DATE DEFAULT SYSDATE,
  dosage           VARCHAR2(100),
  duration_days    NUMBER
);

-- TABLE 10: BILLING
-- Stores patient payment details
CREATE TABLE BILLING (
  bill_id           NUMBER PRIMARY KEY,
  patient_id        NUMBER REFERENCES PATIENT(patient_id),
  admission_id      NUMBER REFERENCES ADMISSION(admission_id),
  bill_date         DATE DEFAULT SYSDATE,
  room_charges      NUMBER(10,2) DEFAULT 0,
  medicine_charges  NUMBER(10,2) DEFAULT 0,
  doctor_charges    NUMBER(10,2) DEFAULT 0,
  total_amount      NUMBER(10,2),
  paid_status       VARCHAR2(20) CHECK (paid_status IN
                    ('Paid','Unpaid','Partial'))
);

-- ============================================
-- VERIFY ALL TABLES CREATED
-- ============================================
SELECT table_name
FROM user_tables
ORDER BY table_name;