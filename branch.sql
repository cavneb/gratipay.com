BEGIN;
    ALTER TABLE participants ADD COLUMN paypal_fee_cap numeric(35,2);
    UPDATE participants SET paypal_fee_cap=20 WHERE paypal_email IS NOT NULL;
END;
