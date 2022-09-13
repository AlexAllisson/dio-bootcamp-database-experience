use ecommerce;

INSERT INTO Clients (Fname, Minit, Lname, CPF, Road, Num, District, City, State , Bdate, Email) VALUES ('Manoel', 'O','Mota', 123456989, 'Zona Rural',000,'São Raimundo','Limoeiro do Norte', 'CE', 1993-10-03, 'manoel@gmail.com');
INSERT INTO Clients (Fname, Minit, Lname, CPF, Road, Num, District, City, State , Bdate, Email) VALUES ('Ricardo', 'H','Nunes', 123456988, 'Corrego de areia',001,'São Raimundo','Limoeiro do Norte', 'CE', 1999-10-03, 'ricardo@gmail.com');
INSERT INTO Clients (Fname, Minit, Lname, CPF, Road, Num, District, City, State , Bdate, Email) VALUES ('Roberta', 'C','Nunes', 123456889, 'Zona Rural',002,'Maria Dias','Limoeiro do Norte', 'CE', 1991-10-03, 'roberta@gmail.com');
INSERT INTO Clients (Fname, Minit, Lname, CPF, Road, Num, District, City, State , Bdate, Email) VALUES ('Larissa', 'S','Guimaraes', 123455988,'Cidade Alta',123,'High City','Limoeiro do Norte', 'CE', 1996-10-03, 'larissa@gmail.com');
INSERT INTO Clients (Fname, Minit, Lname, CPF, Road, Num, District, City, State , Bdate, Email) VALUES ('Lucas', 'S','Silva', 124456988, 'Pintobeira',010,'Zona Rural','Limoeiro do Norte', 'CE', 1995-10-03, 'lucas@gmail.com');
INSERT INTO Clients VALUES (6,'Valdir','S','Fonseca', 134456999,'Roçado',059,'Zona Rural','apto verde','Limoeiro do Norte', 'CE',0000000,'valdir@gmail.com',088,982456188);

INSERT INTO product (Pname, Category, avaluation, pValue) VALUES
					('A.guerra','Livros', 4, 10.00),
					('CamisaDota','Vestuário', 4, 25.50),
                    ('G.concu', 'Infoproduto', 5, 10.00),
                    ('PS5','Eletrônico', 4, 5000.00);

INSERT INTO payments (idClient, idPayment, typePaymente) values
					(1, 1,'Pix'),
                    (2,2,'Boleto');
                    
INSERT INTO Request (idRquestClient, requestStatus, sendValue, paymentCash, idPaymentRquest) values
					(1,'Confirmado', 100, 1,1),
                    (2,'Processando', 100, 1,2);
                    
INSERT INTO productStorage values (5,'bloco A', 50), (6,'bloco C', 100), (7,'bloco D', 100), (8,'bloco E', 20); 

INSERT INTO supplier (socialName, CNPJ, Contact) VALUES ('locadora gamers ltda', '22866136000111', '6199995555'), ('VAREJÃO DF ltda', '22866136000331', '6195998555');

INSERT INTO seller (socialName, CNPJ, Contact, Location) VALUES ('Amazon','22896156000111','6199335555', 'Bangkok-TH'), ('Samsung','32896156055111','2299335555', 'Xangai-CN');

INSERT INTO productSeller (idPseller,  idPproduct) VALUES (1,8), (2, 6);  

INSERT INTO productRequest (idPOproduct, idPORequest) VALUES (8,5),(6, 6);

INSERT INTO productSupplier (idPsSupplier,idPsProduct, quantity) VALUES (1,5, 10), (2,7, 20);

INSERT INTO storageLocation (idLproduct, idLstorage,location) VALUES (5,5, 'bloco A'),(8,8, 'bloco E');

INSERT INTO delivery VALUES (1,8,'Realizada', 25165412,'correios');





 




