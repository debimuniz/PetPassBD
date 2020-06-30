
INSERT INTO CLIENTE (CPF, NOME, RG, TELEFONE, EMAIL, ENDERECO, DTNASCIMENTO, SEXO)
VALUES
('611.300.319-18', 'Cecília Sophie Cardoso', '307178419', '81982799817', 'ceciliasophiecardoso_@superativacoop.com.br', 'Rua Manoel Ferreira Lacerda, 379', '1956-11-20', 'F'),
('664.463.271-88', 'Bernardo Benedito Assunção', '185181673', '81995008125', 'bernardobeneditoassuncao@uolinc.com', 'Rua Parque Estrela Dalva VI, 671', '1979-03-22', 'M'),
('517.508.853-01', 'Mariane Jéssica Mendes', '397882944', '1987110376', 'marianejessicamendes@directnet.com.br', 'Rua Otávio Pimenta de Morais, 718', '1974-02-13', 'F'),
('042.145.904-22', 'Luiz Arthur Bryan Moreira', '196016642', '81984671775', 'luizarthurbryanmoreira@gmx.com.br', 'Rua Maximiliano Fernandes, 934', '1992-08-13', 'M'),
('949.610.396-08', 'Allana Heloise Silva', '258747444', '81999385469', 'allanaheloisesilva@directnet.com.br', 'Quadra 501 Norte Rua NS 5', '1967-04-03', 'F'),
('475.230.920-39', 'Diego Vinicius Freitas', '385078535', '81987295828', 'diegoviniciusfreitas@viasegbrasil.com.br', 'Rua Piauí, 811', '1998-04-14', 'M'),
('937.222.040-03', 'Pedro Matheus das Neves', '456821363', '81989028027', 'pedromatheusdasneves@unitau.br', 'Avenida JK, 571', '1983-06-09', 'M'),
('434.553.580-80', 'Sophie Nicole Amanda Silveira', '350420415', '81986119881', 'sophienicoleamandasilveira@unitau.com.br', 'Estrada do Tapanã, 527', '1981-12-01', 'F'),
('789.809.691-63', 'Luiz Anthony Erick Santana', '112516245', '989703478', 'luizanthonyericksantana@tursi.com.br', 'Alameda Padre Segunda Luis David, 186', '1991-11-28', 'M'),
('312.115.594-67', 'Mirella Stefany Alice Vieira', '234152217', '997993694', 'mirellastefanyalicevieira@softcia.com.br', 'Rua dos Bancários, 818', '1981-12-04', 'F');


INSERT INTO SERVICOS (NOME, CUSTOCREDITO)
	VALUES  ('Banho', 5), 
			('Tosa', 5), 
			('Hidratação', 8), 
			('Acupuntura', 20), 
			('Consulta Simples', 15), 
			('Consulta Emergencial', 25), 
			('Passeio', 5), 
			('Artroplastia excisional de cabeça e colo femoral', 50), 
			('Ovariohisterectomia', 30), 
			('Orquiectomia', 30), 
			('Hemograma', 5), 
			('Cesárea', 30)


INSERT INTO EMPRESA (NOME, CNPJ, TELEFONE, ENDERECO)
VALUES ('PETFRIENDS' , '15.936.938/0001-95' , '81987570509' , 'RUA DA CACHORRADA 666'),
('MEUSPETS' , '29.820.052/0001-96' , '8134532125' , 'AVENIDA DOS CORVOS, 77'),
('BONSEMAUSPETS', '57.053.775/0001-42' , '8136527845' , 'RUA DA ALEGRIA, 8763'),
('ESTACAOPETS' , '66.792.182/0001-99' , '8136985214' , 'RUA DA AMIZADE, 48'),
('PETAMIGO' , '72.997.895/0001-91' , '8132547896' , 'RUA DOS GATOS, 58'),
('SEUPET' , '63.869.349/0001-84' , '8132659856' , 'AVENIDA DAS FLORES, 67'),
('AMIZADEVERDADEIRA' , '39.249.107/0001-03' , '8132145632' , 'RUA DO BOM PASTOR, 876'),
('AMIGOLEAL' , '85.866.840/0001-94', '8136985214' , 'RUA DOS GAVIOES, 9876'),
('PETSPE' , '37.362.231/0001-55' , '8136547896' , 'AVENIDA DA PASSAGEM, 98'),
('VIDAMELHOR' , '78.417.866/0001-90' , '8132145478' , 'RUA DA MELANCOLIA, 18');


INSERT INTO PLANO (NOME, PRECO , PACOTEINICIALCREDITO)
	VALUES  ('PetPass' , 100 , 150),
			('PetPass Plus' , 200 , 350),
			('PetPass Gold' , 300 , 500);


INSERT INTO CATEGORIAPET (TIPO)
	VALUES  ('Cão pequeno porte'),
			('Cão médio porte'),
			('Cão grande porte'),
			('Gatos'),
			('Roedores'),
			('Aves'),
			('Peixes'),
			('Coelhos'),
			('Tartarugas'),
			('Cobras'),
			('Lagartos'),
			('Aranhas');


INSERT INTO RACA (NOMERACA, FKCATEGORIAPET)
	VALUES  ('Gato Sem Raça Definida (SRD)', 4),
			('Siamês', 4),
			('Cão Sem Raça Definida (SRD)', 2),
			('Beagle', 2), 
			('Border Collie', 2),
			('Boxer', 3),
			('Chihuahua', 1),
			('Cocker Spaniel Inglês', 2),
			('Dachshund', 1), 
			('Dálmata', 2),
			('Dobermann', 2),
			('Fox Terrier', 1),
			('Golden Retriever', 3),
			('Husky siberiano', 3),
			('Labrador retrivier', 3),
			('Pastor alemão', 3),
			('Pequinês', 1),
			('Poodle', 1),
			('Pug', 1),
			('Rottweiler', 3); 


INSERT INTO PET (FKRACA, NOME, DTNASCIMENTO_PET, SEXO_PET, FKCLIENTE)
	VALUES  (18 , 'Kika' , '2015-09-29' , 'F' , 4),
			(11 , 'Rex' , '2009-03-16' , 'M' , 1),
			(2 , 'Samanta', '2017-12-03' , 'F' , 7),
			(16 , 'Nina' , '2014-01-30' , 'F' , 3),
			(8 , 'Vick' , '2013-06-17' , 'M' , 5),
			(10 , 'Jubileu' , '2018-02-08' , 'M' , 8),
			(20 , 'Kiara' , '2012-07-23' , 'F' , 9),
			(15 , 'Frank' , '2016-11-30' , 'M' , 2),
			(8 , 'Simão' , '2018-01-14' , 'M' , 10),
			(19 , 'Levi' , '2017-05-05' , 'M' , 6),
			(4, 'Balu' , '2018-06-21' , 'M' , 7),
			(3, 'Nero' , '2017-12-03' , 'M' , 4),
			(2 , 'Cristal', '2014-03-24' , 'F' , 1),
			(17 , 'Xuxa', '2014-03-24' , 'F' , 3),
			(8 , 'Davi' , '2018-01-14' , 'M' , 10)


INSERT INTO EMPRESA_SERVICOS (FKEMPRESA , FKSERVICOS)
	VALUES  (1 , 1) , (1 , 2) , (1 , 3),
			(2 , 1) , (2 , 2) , (2 , 3),
			(3 , 5) , (3 , 6),
			(4 , 7),
			(5 , 1) , (5 , 2),
			(6 , 5) , (6 , 6) , (6 , 11),
			(7 , 1) , (7 , 2),
			(8 , 1) , (8 , 2), (8 , 3) , (8 , 7),
			(9 , 1) , (9 , 2),
			(10 , 4) , (10 , 5) , (10 , 6) , (10 , 8) , (10 , 9) , (10 , 10) , (10 , 11) , (10 , 12)


INSERT INTO CONTRATO (NUMERODOCONTRATO, SALDOINICIAL, SALDOFINAL, DATACOMPRACREDITO, DATAVENCIMENTOCREDITO, FKCLIENTE, FKPLANO)   
	VALUES  (1 , 300 , 30 , '2020-03-07 13:23:44' , '2020-06-06 23:59:59' , 1 , 3),
			(2 , 600 , 102 , '2020-04-02 12:02:37' , '2020-06-06 23:59:59' , 2 , 1),
			(3 , 300 , 260 , '2020-05-01 09:43:11' , '2020-06-06 23:59:59' , 3 , 2),
			(4 , 900 , 590 , '2020-05-06 11:06:54' , '2020-06-06 23:59:59' , 4 , 3),
			(5 , 300 , 00 , '2020-01-13 17:12:26' , '2020-06-06 23:59:59' , 5 , 1),
			(6 , 300 , 10 , '2020-03-01 13:23:44' , '2020-06-06 23:59:59' , 6 , 1),
			(7 , 900 , 830 , '2020-01-05 07:04:31' , '2020-06-06 23:59:59' , 7 , 2),
			(8 , 600 , 440 , '2020-01-10 19:41:09' , '2020-06-06 23:59:59' , 8 , 1),
			(9 , 300 , 300 , '2020-02-23 10:56:19' , '2020-06-06 23:59:59' , 9 , 2),
			(10 , 300 , 00 , '2020-01-05 20:03:22' , '2020-06-06 23:59:59' , 10 , 1);


INSERT INTO NOTAFISCAL (FKCONTRATO, FKEMPRESA)
VALUES  (1, 1), (2, 1), (4, 2), (6, 2), (3, 3), (1, 3), (10, 4), (5, 4), (8, 5), (8, 5), (3, 6), (4, 6), (2, 7), (7, 7), (6, 8), (2, 8), (10, 8), (3, 9), (6, 9), (7, 10), (2, 10), (10, 8), (5, 4), (9, 5), (1, 1), (7, 7), (8, 5), (4, 6), (10, 8), (9, 5), (6, 8);



INSERT INTO SERVICOS_CATEGORIA (FKSERVICOS , FKCATEGORIAPET)
	VALUES  (1, 1) , (1, 2) , (1, 3) , (1, 4),
			(2, 1) , (2, 2) , (2, 3),
			(3, 1) , (3, 2) , (3, 3) , (3, 4),
			(4, 1) , (4, 2) , (4, 3) , (4, 4),
			(5, 1) , (5, 2) , (5, 3) , (5, 4) , (5, 5) , (5, 6) , (5, 8), (5, 9) , (5, 10) , (5, 11),
			(6, 1) , (6, 2) , (6, 3) , (6, 4) , (6, 5) , (6, 6) , (6, 8), (6, 9) , (6, 10) , (6, 11),
			(7, 1) , (7, 2) , (7, 3),
			(8, 1) , (8, 2) , (8, 3) , (8, 4) , (8, 5) , (8, 8),
			(9, 1) , (9, 2) , (9, 3) , (9, 4) , (9, 8),
			(10, 1) , (10, 2) , (10, 3) , (10, 4) , (10, 8),
			(11, 1) , (11, 2) , (11, 3) , (11, 4) , (11, 8),
			(12, 1) , (12, 2) , (12, 3) , (12, 4) , (12, 8)



INSERT INTO SERVICOS_CATEGORIA_NF (FKSERVICOSCATEGORIA , FKCODIGONF)
	VALUES  (3 , 1) ,
			(28 , 2) ,
			(5 , 3) ,
			(26 , 4) ,
			(38 , 5) ,
			(17 , 6) ,
			(18 , 7) ,	
			(6 , 8) ,
			(6 , 9) ,
			(5 , 10) ,
			(26 , 11) ,
			(37 , 12) ,
			(7 , 13) ,
			(7 , 14) ,
			(1 , 15) ,
			(18 , 16) ,
			(28 , 17) ,
			(5 , 18) ,
			(5 , 19) ,
			(3 , 20) ,
			(38 , 21) ,
			(28 , 22) ,
			(17 , 23) ,
			(3 , 24) ,
			(3 , 25) ,
			(6 , 26) ,
			(7 , 27) ,
			(13 , 28) ,
			(28 , 29) ,
			(28 , 30) ,
			(5 , 31)  