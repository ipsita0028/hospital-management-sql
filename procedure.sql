-- ============================================
-- HOSPITAL MANAGEMENT SYSTEM
-- FILE  : procedure.sql
-- DESC  : Procedure to generate bill
-- ============================================

-- PROCEDURE: Generate bill for patient
CREATE OR REPLACE PROCEDURE generate_bill
(
  p_patient_id  IN NUMBER,
  p_admit_id    IN NUMBER,
  p_room_ch     IN NUMBER,
  p_med_ch      IN NUMBER,
  p_doc_ch      IN NUMBER
)
AS
  v_total NUMBER;
BEGIN
  v_total := p_room_ch + p_med_ch + p_doc_ch;
  INSERT INTO BILLING VALUES (
    bill_seq.NEXTVAL,
    p_patient_id,
    p_admit_id,
    SYSDATE,
    p_room_ch,
    p_med_ch,
    p_doc_ch,
    v_total,
    'Unpaid'
  );
  COMMIT;
END;
/

-- ============================================
-- TEST PROCEDURE
-- ============================================

-- Generate bill for patient 1003
BEGIN
  generate_bill(1003, 3, 3000, 200, 1000);
END;
/

-- Verify bill created
SELECT * FROM BILLING
WHERE patient_id = 1003;