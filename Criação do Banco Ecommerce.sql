-- criação do banco de dados para cenário de E-commerce
create database ecommerce;
use ecommerce;

-- criar tabela cliente

create table clients(
			idClient int auto_increment primary key,
            Fname varchar(10),
            Minit char(3),
            Lname varchar(20),
            CPF  char(11) not null,
            Road varchar(20),
            Num varchar(10),
            District varchar(20),
			Acomplement varchar(20),
            City varchar(30),
            State char(2),
            Bdate date,
            Email varchar(30),
            DDDPhone  char(3),
            Phone Char(9),
            constraint unique_cpf_client unique (CPF)
);
desc clients;

-- criar tabela produto
create table product(
			idProduct int auto_increment primary key,
            Pname varchar(10) not null,
            Category enum('Eletrônico','InfoProduto','Livros','Vestuário') not null,
            Pdescription varchar(20),
            avaluation float default 0,
			pValue  Float
);

-- criar tabela pagamento

create table payments(
			idClient int,
            idPayment int,
            typePaymente enum('Boleto','Cartão', 'Pix'),
            limitAvailable float,
            dataValid date,
            numCard int,
            primary key(idClient, idPayment)
 );           
desc payments;

-- criar tabela pedido constraint falta fk_payment_request foreign key (idPaymentRquest) references payments(idPayment),	
create table request(
			idRequest int auto_increment primary key,
            idRquestClient int,
            requestStatus enum('Cancelado','Confirmado','Processando') default 'Processando',
            requestDescription varchar(25),
            sendValue float,
            paymentCash bool default false,
            idPaymentRquest int,
            constraint fk_request_client foreign key (idRquestClient) references clients(idClient)
);
            
-- criar tabela estoque
create table productStorage(
			idProdStorage int auto_increment primary key,
			storageLocation varchar(25),
			quantity int default 0
);

-- criar tabela fornecedor
create table supplier(
idSupplier int auto_increment primary key,
socialName varchar(255) not null,
abstName varchar(255),
CNPJ char(15) not null,
Contact char(11) not null,
constraint unique_supplier unique (CNPJ)
);

-- criar tabela vendedor - terceiro
CREATE TABLE seller(
			idSeller INT AUTO_INCREMENT PRIMARY KEY,
			socialName VARCHAR(255) NOT NULL,
            abstName varchar(255),
			CNPJ CHAR(15) NOT NULL,
			Contact CHAR(11) NOT NULL,
            Location varchar(25),
			CONSTRAINT unique_sellerr UNIQUE (CNPJ)
);

-- relacionamento  Produto e vendedor terceiro

create table productSeller(
			idPseller int,
            idPproduct int,
            prodQuantity int default 1,
            primary key (idPseller, idPproduct),
            constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
            constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);
	
 -- relacionamento Produto e pedido
 
create table productRequest(
			idPOproduct int,
            idPORequest int,
            poQuantity int default 1,
			poStatus enum('Disponível', 'Sem estoque') default 'Disponível',
            primary key (idPOproduct, idPORequest),
            constraint fk_product_requestseller_ foreign key (idPOproduct) references product(idProduct),
            constraint fk_product_request_product foreign key (idPORequest) references request(idRequest)
 );
 
 -- relacionamento produto e fornecedor
 
create table productSupplier(
			idPsSupplier int,
            idPsProduct int,		
            quantity int not null,
            primary key (idPsSupplier,idPsProduct),
			constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
			constraint fk_Sup_supplier_product foreign key (idPsProduct) references product(idProduct)
);
 -- relacionamento produto e estoque
 
create table storageLocation(
			idLproduct int,
            idLstorage int,
            location varchar(255) not null,
            primary key(idLproduct, idLstorage),
            constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
			constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)
);            
-- tabela entrega

create table delivery(
			idDelivery INT AUTO_INCREMENT PRIMARY KEY,
            idProDelivery INT,
            dStatus ENUM('Em andamento', 'Realizada'),
            trackingCode int,
            company varchar(30),
		    constraint fk_id_product_Delivery foreign key (idProDelivery) references product(idProduct)
);
        
            
            
            
            
			


            

 
            

