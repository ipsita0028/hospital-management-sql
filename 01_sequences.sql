-- ================================
-- ALL SEQUENCES FOR HOSPITAL DB
-- ================================

-- 1. Department ID (starts from 1)
CREATE SEQUENCE dept_seq
  START WITH 1
  INCREMENT BY 1;

-- 2. Doctor ID (starts from 101)
CREATE SEQUENCE doctor_seq
  START WITH 101
  INCREMENT BY 1;

-- 3. Patient ID (starts from 1001)
CREATE SEQUENCE patient_seq
  START WITH 1001
  INCREMENT BY 1;

-- 4. Appointment ID
CREATE SEQUENCE appt_seq
  START WITH 1
  INCREMENT BY 1;

-- 5. Ward ID
CREATE SEQUENCE ward_seq
  START WITH 1
  INCREMENT BY 1;

-- 6. Admission ID
CREATE SEQUENCE admit_seq
  START WITH 1
  INCREMENT BY 1;

-- 7. Nurse ID
CREATE SEQUENCE nurse_seq
  START WITH 1
  INCREMENT BY 1;

-- 8. Medicine ID
CREATE SEQUENCE med_seq
  START WITH 1
  INCREMENT BY 1;

-- 9. Prescription ID
CREATE SEQUENCE presc_seq
  START WITH 1
  INCREMENT BY 1;

-- 10. Billing ID
CREATE SEQUENCE bill_seq
  START WITH 1
  INCREMENT BY 1;