INSERT INTO uwubank.Customers (idCustomer, Cust_Fname, Cust_Lname, Cust_Email, Cust_Phone, Password) VALUES ('1', 'John', 'Doe', 'johndor@example.com', '1234567890', 'password1');
INSERT INTO uwubank.Customers (idCustomer, Cust_Fname, Cust_Lname, Cust_Email, Cust_Phone, Password) VALUES ('2', 'Jane', 'Smith', 'janesmith@example.com', '0987654321', 'password2');
INSERT INTO uwubank.Customers (idCustomer, Cust_Fname, Cust_Lname, Cust_Email, Cust_Phone, Password) VALUES ('3', 'Alice', 'Johnson', 'alicejohnson@example.com', '5555555555', 'password3');

INSERT INTO uwubank.Accounts (idAccount, Cust_ID, Balance, Status) VALUES ('10001', '1', '1400', 'Active');
INSERT INTO uwubank.Accounts (idAccount, Cust_ID, Balance, Status) VALUES ('10002', '1', '600', 'Active');
INSERT INTO uwubank.Accounts (idAccount, Cust_ID, Balance, Status) VALUES ('20001', '2', '2500', 'Active');
INSERT INTO uwubank.Accounts (idAccount, Cust_ID, Balance, Status) VALUES ('30001', '3', '1500', 'Suspended');