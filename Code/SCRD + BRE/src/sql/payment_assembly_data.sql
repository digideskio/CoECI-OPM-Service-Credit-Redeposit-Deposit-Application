----------------------------------------------------
-- 			printout table
----------------------------------------------------
INSERT INTO opm.printout(
            id, deleted, name, print_date, content)
    VALUES (1, false, 'Claimant Summary.txt', CURRENT_TIMESTAMP, convert_to('Claimant Summary', 'utf-8'));
INSERT INTO opm.printout(
            id, deleted, name, print_date, content)
    VALUES (2, false, 'Change History Report.txt', CURRENT_TIMESTAMP - INTERVAL '1 days', convert_to('Change History Report', 'utf-8'));

----------------------------------------------------
-- 			report_generation_data table
----------------------------------------------------
INSERT INTO opm.report_generation_data(
            id, deleted, payment_invoices_processed, bills_printed, reveals_printed, 
            letters_printed, refunds_printed)
    VALUES (1, false, 5, 4, null, 2, 0);


INSERT INTO opm.service_credit_preference(id, deleted, use_agents, use_status_bar, use_message_box, other) VALUES(1, false, false, true, false, 'other perference');




INSERT INTO opm.notification (id, deleted, date, details, sender, read, recipient, recipient_role_id) VALUES (1001, false, CURRENT_TIMESTAMP, 'I reviewed the Account for John Doe and found an error in Billing Summary. Please fix. <a href="account/2002/detail">Click here to view the account</a>.', 'John Smith<br>(Supervisor)', false, 'user1', 1);
INSERT INTO opm.notification (id, deleted, date, details, sender, read, recipient, recipient_role_id) VALUES (1002, false, CURRENT_TIMESTAMP, '- You have 1 Record in <a href="workQueue/view?resourceName=link">Work Queue.</a><br/>- You have 7 <a href="suspension/view">Payments in Suspense</a>.', 'System', false, 'user1', 1);
INSERT INTO opm.notification (id, deleted, date, details, sender, read, recipient, recipient_role_id) VALUES (1003, false, CURRENT_TIMESTAMP - INTERVAL '16 days', 'Notification before 15 days', 'System', false, 'user1', 1);

------------------------------------------------------------
---payments entities for payment assembly.
------------------------------------------------------------
INSERT INTO opm.account_holder(id, deleted, last_name, first_name, suffix_id, birth_date, ssn, email, city_of_employment, state_of_employment_id, address_id) VALUES(2001, false, 'Hughes', 'Jack', 1, CURRENT_TIMESTAMP, '189-45-9999', 'jack@test.com', 'City 1', 1, 1);
INSERT INTO opm.account_holder(id, deleted, last_name, first_name, suffix_id, birth_date, ssn, email, city_of_employment, state_of_employment_id, address_id) VALUES(2002, false, 'Doe', 'John', 2, CURRENT_TIMESTAMP, '120-11-743', 'john@test.com', 'City 2', 2, 2);
INSERT INTO opm.account_holder(id, deleted, last_name, first_name, suffix_id, birth_date, ssn, email, city_of_employment, state_of_employment_id, address_id) VALUES(2003, false, 'Zarkburge', 'Mark', 1, CURRENT_TIMESTAMP, '119-74-6231', 'mark@test.com', 'City 1', 1, 1);
INSERT INTO opm.account_holder(id, deleted, last_name, first_name, suffix_id, birth_date, ssn, email, city_of_employment, state_of_employment_id, address_id) VALUES(2004, false, 'Wood', 'Terry', 2, CURRENT_TIMESTAMP, '608-03-4521', 'terry@test.com', 'City 2', 2, 2);



INSERT INTO opm.account(id, deleted, claim_number, plan_type, form_type_id, account_holder_id, account_status_id, grace, frozen, returned_from_record_date, claim_officer, claim_officer_assignment_date, claimant_birthdate, balance) VALUES(2001, false, '1234567', 'Plan Type 1', 1, 2001, 1, false, false, CURRENT_TIMESTAMP, 'user1', CURRENT_TIMESTAMP, '05/06/1970', 2500.01);
INSERT INTO opm.account(id, deleted, claim_number, plan_type, form_type_id, account_holder_id, account_status_id, grace, frozen, returned_from_record_date, claim_officer, claim_officer_assignment_date, claimant_birthdate, balance) VALUES(2002, false, '1234568', 'Plan Type 1', 1, 2002, 1, false, false, CURRENT_TIMESTAMP, 'user2', CURRENT_TIMESTAMP, '05/07/1970', 2500.01);
INSERT INTO opm.account(id, deleted, claim_number, plan_type, form_type_id, account_holder_id, account_status_id, grace, frozen, returned_from_record_date, claim_officer, claim_officer_assignment_date, claimant_birthdate, balance) VALUES(2003, false, '4332443', 'Plan Type 1', 1, 2003, 1, false, false, CURRENT_TIMESTAMP, null, null, '05/08/1970', 1500.01);
INSERT INTO opm.account(id, deleted, claim_number, plan_type, form_type_id, account_holder_id, account_status_id, grace, frozen, returned_from_record_date, claim_officer, claim_officer_assignment_date, claimant_birthdate, balance) VALUES(2004, false, '6543234', 'Plan Type 1', 1, 2004, 1, false, false, CURRENT_TIMESTAMP, null, null, '05/09/1970', 10);


delete from opm.payment_appliance where id <=8;
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(1, false, 'ACH');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(2, false, 'Lockbox Check');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(3, false, 'Manual Payment');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(4, false, 'Prior Payment Recorded');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(5, false, 'Over-the-Counter Payment');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(6, false, 'Refund to Claimant');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(7, false, 'Adjustment (no GL)');
INSERT INTO opm.payment_appliance(id, deleted, name) VALUES(8, false, 'Write Off');


--delete from opm.payment where id >=2013;
--delete from opm.payment where id <=2000;
------------
-- payments from previous assembly
----------
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id) VALUES(2001, false, '183', '51', '23', 2, CURRENT_TIMESTAMP, 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 1', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'PENDING_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id) VALUES(2002, false, '111', '11', '11', 6, CURRENT_TIMESTAMP, 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 2', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'PENDING_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id) VALUES(2003, false, '435', '65', '34', 16, CURRENT_TIMESTAMP, 450.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 3', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'PENDING_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '3 days', CURRENT_TIMESTAMP - INTERVAL '14 days', CURRENT_TIMESTAMP - INTERVAL '20 days', '77777777', false, 2002);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id) VALUES(2004, false, '666', '33', '88', 12, CURRENT_TIMESTAMP, 65.32, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 12', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'PENDING_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '30 days', CURRENT_TIMESTAMP - INTERVAL '6 days', CURRENT_TIMESTAMP - INTERVAL '2 days', '55485344', false, 2001);

INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2005, false, '183', '51', '23', 2, '01/11/2014', 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 4', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'INTEREST_ADJUSTMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001, 10, 20, 15, 32);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2006, false, '111', '11', '11', 2, '01/01/2014', 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 5', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'INTEREST_ADJUSTMENT', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002, 45, 0, 423, 5.34);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2007, false, '343', '34', '76', 2, '02/01/2014', 453.22, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 6', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'INTEREST_ADJUSTMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '99999999', true, 2001, 944.23, 2.44, 15.3, 45);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2008, false, '234', '54', '39', 2, '01/11/2014', 203.04, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 7', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'INTEREST_ADJUSTMENT', CURRENT_TIMESTAMP - INTERVAL '2 days', CURRENT_TIMESTAMP - INTERVAL '14 days', CURRENT_TIMESTAMP - INTERVAL '5 days', '54343987', false, null, 450, 0.32, 23, 43);

INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2009, false, '183', '51', '23', 2, '01/01/2014', 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 8', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'PAYMENT_MOVE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001, 10, 20, 15, 32);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2010, false, '111', '11', '11', 2, CURRENT_TIMESTAMP, 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 9', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'PAYMENT_MOVE', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002, 84.32, 0, 423, 5.34);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2011, false, '546', '33', '44', 2, '01/11/2014', 88.99, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 10', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'PAYMENT_MOVE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '99999999', true, 2001, 6.4, 7.23, 99, 1.23);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount) VALUES(2012, false, '234', '77', '22', 2, CURRENT_TIMESTAMP, 655.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 11', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'PAYMENT_MOVE', CURRENT_TIMESTAMP - INTERVAL '1 days', CURRENT_TIMESTAMP - INTERVAL '15 days', CURRENT_TIMESTAMP - INTERVAL '2 days', '77777777', false, null, 65, 40, 4, null);


----
-- payments from payment assembly
---

INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, claimant_birthday, payment_appliance_id) VALUES(2013, false, '183', '51', '23', 2, CURRENT_TIMESTAMP, 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 1', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001, CURRENT_TIMESTAMP, 1);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, claimant_birthday, payment_appliance_id) VALUES(2014, false, '111', '11', '11', 6, '01/01/2014', 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 2', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002, CURRENT_TIMESTAMP, 1);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, claimant_birthday, payment_appliance_id) VALUES(2015, false, '435', '65', '34', 16, CURRENT_TIMESTAMP, 450.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 3', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '3 days', CURRENT_TIMESTAMP - INTERVAL '14 days', CURRENT_TIMESTAMP - INTERVAL '20 days', '77777777', false, 2002, CURRENT_TIMESTAMP, 1);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, claimant_birthday, payment_appliance_id) VALUES(2016, false, '666', '33', '88', 12, '01/12/2014', 65.32, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 12', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '30 days', CURRENT_TIMESTAMP - INTERVAL '6 days', CURRENT_TIMESTAMP - INTERVAL '2 days', '55485344', false, 2001, CURRENT_TIMESTAMP, 1);

INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2017, false, '183', '51', '23', 2, CURRENT_TIMESTAMP, 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 4', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001, 10, 20, 15, 32, CURRENT_TIMESTAMP, 1);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2018, false, '111', '11', '11', 2, '12/12/2013', 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 5', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002, 45, 0, 423, 5.34, CURRENT_TIMESTAMP, 2);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2019, false, '343', '34', '76', 2, CURRENT_TIMESTAMP, 453.22, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 6', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '99999999', true, 2001, 944.23, 2.44, 15.3, 45, CURRENT_TIMESTAMP, 2);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2020, false, '234', '54', '39', 2, '01/12/2014', 203.04, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 7', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '2 days', CURRENT_TIMESTAMP - INTERVAL '14 days', CURRENT_TIMESTAMP - INTERVAL '5 days', '54343987', false, null, 450, 0.32, 23, 43, CURRENT_TIMESTAMP, 2);

INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2021, false, '183', '51', '23', 2, CURRENT_TIMESTAMP, 123.45, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 8', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '88888888', true, 2001, 10, 20, 15, 32, CURRENT_TIMESTAMP, 2);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2022, false, '111', '11', '11', 2, '12/12/2013', 250.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 9', 'Transaction Key 2', 2, null, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', CURRENT_TIMESTAMP - INTERVAL '10 days', '66666666', false, 2002, 84.32, 0, 423, 5.34, CURRENT_TIMESTAMP, 2);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2023, false, '546', '33', '44', 2, '01/12/2014', 88.99, '1234567', 'user1', 'Import 1', 1, 1, false, 'Note 10', 'Transaction Key 1', 1, 1, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '99999999', true, 2001, 6.4, 7.23, 99, 1.23, CURRENT_TIMESTAMP, 2);
INSERT INTO opm.payment(id, deleted, batch_number, block_number, sequence_number, payment_status_id, deposit_date, amount, ssn, claimant, import_id, sequence, apply_designation_id, apply_to_gl, note, transaction_key, master_account_status_id, account_status_id, approval_user, approval_status, payment_type, transaction_date, status_date, account_holder_birthdate, claim_number, ach, account_id, pre_deposit_amount, pre_redeposit_amount, post_deposit_amount, post_redeposit_amount, claimant_birthday, payment_appliance_id) VALUES(2024, false, '234', '77', '22', 2, '12/12/2013', 655.00, '1234567', 'user1', 'Import 2', 1, 1, true, 'Note 11', 'Transaction Key 2', 2, 2, 'user1', 'PENDING', 'SUSPENDED_PAYMENT', CURRENT_TIMESTAMP - INTERVAL '1 days', CURRENT_TIMESTAMP - INTERVAL '15 days', CURRENT_TIMESTAMP - INTERVAL '2 days', '77777777', false, null, 65, 40, 4, null, '3/8/1956', 2);

----delete from opm.payment_status where id = 31;
----delete from opm.payment_status where id = 32;
----INSERT INTO opm.payment_status(id, deleted, name) VALUES(31, false, 'Suspended');
----INSERT INTO opm.payment_status(id, deleted, name) VALUES(32, false, 'Unresolved');



update opm.payment set payment_appliance_id = 1 where id<=2006 and id> 2000;
update opm.payment set payment_appliance_id = 2 where id>=2006 and id <=2013;

--delete from opm.refund_transaction;
ALTER SEQUENCE opm.refund_transaction_id_seq RESTART WITH 2001;
ALTER SEQUENCE opm.payment_id_seq RESTART WITH 3001;
