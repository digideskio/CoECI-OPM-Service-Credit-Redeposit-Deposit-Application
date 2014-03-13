INSERT INTO opm.dedeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (1, false, 'PRE_10_82', 36917.15, 17687.71, 54604.86, 1);
INSERT INTO opm.dedeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (2, false, 'POST_10_82', 13347.44, 36747.18, 50094.62, 1);
INSERT INTO opm.dedeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (3, false, 'PRE_10_82', 20668.6, 29575.8, 50244.39, 1);
INSERT INTO opm.dedeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (4, false, 'POST_10_82', 13998.16, 29659.09, 43657.25, 1);
INSERT INTO opm.redeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (1, false, 'PRE_10_82', 6917.15, 7687.71, 54604.86, 1);
INSERT INTO opm.redeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (2, false, 'POST_10_82', 3347.44, 6747.18, 50094.62, 1);
INSERT INTO opm.redeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (3, false, 'PRE_10_82', 1668.6, 9575.8, 244.39, 1);
INSERT INTO opm.redeposit (id, deleted, label, deposit, interest, total, calculation_result_id) VALUES (4, false, 'POST_10_82', 23998.16, 9659.09, 3657.25, 1);
ALTER SEQUENCE opm.dedeposit_id_seq RESTART WITH 5;
ALTER SEQUENCE opm.redeposit_id_seq RESTART WITH 5;