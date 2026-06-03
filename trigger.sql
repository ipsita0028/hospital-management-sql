-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : trigger.sql
-- AUTHOR: Ipsita
-- DESC  : Simple trigger for bed management
-- ============================================

-- TRIGGER: When patient is admitted
-- beds reduce by 1 automatically
CREATE OR REPLACE TRIGGER trg_reduce_bed
AFTER INSERT ON ADMISSION
FOR EACH ROW
BEGIN
  UPDATE WARD
  SET available_beds = available_beds - 1
  WHERE ward_id = :NEW.ward_id;
END;
/

-- TEST TRIGGER
INSERT INTO ADMISSION VALUES
(admit_seq.NEXTVAL, 1001, 1, 101,
SYSDATE, NULL, 'Test Trigger', 'Admitted');
COMMIT;

-- Check beds reduced by 1
SELECT ward_name, available_beds
FROM WARD
WHERE ward_id = 1;