use OFICINA;

INSERT INTO Cliente (CPF, Nome, Telefone, Email) VALUES
			('12345678911', 'Rafael Civicão almeida', '61997766554', 'rafael@gmail.com'),
            ('2345678922', 'Ricardo Coração de Leão', '61995566555', 'ricardo@gmail.com'),
            ('1245678911', 'Luciana de Gnone', '21997764551', 'luciana@gmail.com'),
            ('2345677711', 'Alexis Telles Guimaraes', '21998864443', 'alexistelles@gmail.com');

INSERT INTO Servico (idSCliente,TipoServiço, Placa, Cor,TipoCarro) VALUES
			('9', 'Concerto', 'PAZ6625','Azul', 'Sedan'),
            ('10', 'Revisão', 'BOT6625','Branca','Picape'),
            ('11', 'Revisão', 'RJE1115','Preto','SUV'),
            ('12', 'Concerto', 'RAL1751','Preto','Hatch');
            
INSERT INTO OrdemdeServico (idCliente,DataEmissao,DataParaConclusao,Valor,DataAutorizacao) VALUES
							(9,'2022-09-14','2022-09-19',1500, '2022-09-14'),
                            (10,'2022-09-14','2022-09-19',5000, '2022-09-20');

INSERT INTO TabelaPeca (Identificacao,ValorReferencia) VALUES
						('Tinta', 150),
						('Lâmpada do farol', 35),
						('Limpador de tanque ', 110),
						('Filtro de Arcondicionado', 50);

INSERT INTO Equipe (Identificacao) VALUES
				   ('Mecanica'),
				   ('Pintura'),
				    ('Eletrica'),
					('Funilaria');

INSERT INTO Mecanico (Especialidade,idEquipeMen, Nome, CEP, Logradouro, Numero,	Complemento) VALUES 
					('Pintar', 2, 'Tião do pneu', '62930-000', 'Fransicos remejo', '09','nova honda'),
                    ('Mecanica Hidráulico', 1, 'Roberto Firmino', '62930-000', 'Bom Nome de Jesus', '07','B.Madelena'),
                   ('Instalar som', 3, 'Antony Gabriel', '62930-000', 'Maria Dias', '157','CidadeAlta'),
                   ('Mecanica Hidráulico', 1, 'leleca jogador caro', '62930-000', 'Sitio São Raimundo', 'S/N','ZonaRural');
                   
  INSERT INTO servicoMecanico    VALUES (1,5),(2,6);
  
  INSERT INTO servicoOrdemdeServico   VALUES(1,1),(2,2);
  
  INSERT INTO TipodePeca VALUES(1,1),(2,4);
                   
                    




