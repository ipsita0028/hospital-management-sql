-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : view.sql
-- AUTHOR: Ipsita
-- DESC  : Simple view for patient summary
-- ============================================

-- VIEW: Show patient with doctor and diagnosis
CREATE OR REPLACE VIEW patient_summary AS
SELECT p.first_name AS patient_name,
       d.first_name AS doctor_name,
       a.diagnosis,
       a.status,
       w.ward_name
FROM ADMISSION a
JOIN PATIENT p ON a.patient_id = p.patient_id
JOIN DOCTOR  d ON a.doctor_id  = d.doctor_id
JOIN WARD    w ON a.ward_id    = w.ward_id;

-- ============================================
-- TEST VIEW
-- ============================================

-- Call the view like a table
SELECT * FROM patient_summary;