use ogrenci_kayit_sistemi
select * from ogr_bilgi
select * from akademisyen
select * from devamsizlik
select * from notlar




CREATE TABLE ogr_bilgi(	ogrenci_no INT PRIMARY KEY IDENTITY(1,1),
	ogrenci_adi VARCHAR(100),
	ogrenci_soyadi VARCHAR(100),
	ogrenci_bolum VARCHAR(100),
	ogrenci_tc VARCHAR(50) UNIQUE,
	ogrenci_dogum_yeri VARCHAR(50),
	ogrenci_dogum_tarihi DATE,
	ogrenci_ikamet VARCHAR(200),
	ogrenci_tel_no VARCHAR(50),
	ogrenci_cinsiyet nvarchar(20)

)


create table bolumler(
  bolum_id int primary key identity (1,1),
  bolum_adi varchar(50),
  
)


create table dersler(
   ders_id int primary key identity(1,1),
   ders_adi varchar(50),
  
 )


 create table akademisyen(
   akademisyen_�d int primary key identity(1,1),
   akademisyenAdi varchar(50),
   akademisyenSoyadi varchar(50),
   akademisyenmail varchar(50),
   akademisyentc VARCHAR(50) UNIQUE,
   akademisyendogumyeri VARCHAR(50),
   akademisyendogumtarihi DATE,
   akademisyenikamet VARCHAR(200),
   akademisyentelno VARCHAR(50),
   akademisyencinsiyet nvarchar(20)

)




create table devamsizlik(
  ogrenci_no int foreign key references ogr_bilgi(ogrenci_no),
  ders_id int foreign key references dersler(ders_id),
  hafta1 bit,
  hafta2 bit ,
  hafta3 bit,
  hafta4 bit,
  hafta5 bit,
  hafta6 bit
)


insert into akademisyen values ('H�seyin Alperen','DA�D�GEN','dagdogen11@gmail.com','85265767676','Elaz��','1997-05-01','Malatya','05383331450','ERKEK')
insert into akademisyen values ('Serpil','ASLAN','serilasln45@gmail.com','32298767676','Bursa','1996-10-11','Malatya','05386561425','KADIN')
insert into akademisyen values ('Bur�in','DO�AN','bur�inn12@gmail.com','56687987654','Konya','1997-03-15','Malatya','05265147852','KADIN')
insert into akademisyen values ('Sezer','ERDEM','erdemsezerrr@gmail.com','12235473637','Malatya','1993-02-18','Malatya','05530020014','ERKEK')



insert into ogr_bilgi values('�pek','TA��I','YAZILIM M�HEND�SL���','42254637687','Siverek','2002-11-10','Van','05383134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�clal','�EV�KALP','YAZILIM M�HEND�SL���','92254637687','Adana','2002-03-27','Samsun','05383134551','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Emre','KARACAER','TIP','32254637687','Siverek','2002-04-21','Van','05383134552','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Sude','�ZDEM�R','TIP','52254637687','D�yarbak�r','2002-05-25','Samsun','05383134553','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Yusuf','AZAT','BESLENME VE D�YETET�K','62254637687','Gaziantep','2002-05-23','Van','05383134554','ERKEK','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Ali','BERMAL','M�MARLIK','72254637687','�stanbul','2000-06-21','Samsun','05383134555','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Ali�','�EV�K','M�MARLIK','82254637687','�stanbul','2002-09-26','Malatya','05383134556','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Mert','BEHRAM','M�MARLIK','92254637687','D�yarbak�r','2002-09-25','Van','05383134557','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Elif','DER�C�','GIDA M�HEND�SL���','12254637687','Mardin','2002-09-24','Mu�la','05383134558','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Arda','T�RK','GIDA M�HEND�SL���','22254637687','Gaziantep','2002-09-21','Samsun','05383134559','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Selin','D�K�C�','GIDA M�HEND�SL���','23254637687','D�yarbak�r','2002-07-21','Mersin','05383134500','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Murat','BA�ARANO�LU','GIDA M�HEND�SL���','44254637687','�stanbul','2002-07-19','Malatya','05383134510','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Baran','BA�ARAN','YAZILIM M�HEND�SL���','45254637687','D�yarbak�r','2002-07-18','Van','05383134520','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Zeynep','DAYSAL','TIP','46254637687','D�yarbak�r','2002-07-15','Mersin','05383134530','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Halil','�EKER','TIP','47254637687','Mardin','2002-07-14','Malatya','05383134540','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Efe','�EKERC�','YAZILIM M�HEND�SL���','48254637687','Gaziantep','2002-07-13','Mersin','05383134560','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Ta�k�n','YARO�LU','YAZILIM M�HEND�SL���','49254637687','Elaz��','2002-07-12','Mardin','05383134570','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('U�ur','ELMACI','M�MARLIK','40254637687','D�yarbak�r','2002-08-11','Mersin','05383134580','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Filiz','KI�LAR','YAZILIM M�HEND�SL���','42154637687','�stanbul','2002-07-02','Mardin','05383134590','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Yazg�l','G�LEL','TIP','42354637687','Elaz��','2002-07-03','Mu�la','05383134150','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('�z','BORAN','TIP','42454637687','Mardin','2002-07-04','Malatya','05383134250','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('�smet','AL�I','YAZILIM M�HEND�SL���','42554637687','D�yarbak�r','2002-07-05','Ankara','05383134350','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�lke','YORGUN','M�MARLIK','42654637687','Rize','2002-07-06','Mu�','05383134450','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('�smail','BEZM��','TIP','42754637687','Elaz��','2002-07-07','Gaziantep','05383134650','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('I��k','TANYER�','M�MARLIK','42854637687','Rize','2002-07-08','Ankara','05383134750','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Yunus','TANKUT','TIP','42954637687','D�yarbak�r','2002-07-09','Mu�la','05383134850','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Hekim','KILI��I','YAZILIM M�HEND�SL���','42054637687','�stanbul','2002-06-19','Malatya','05383134950','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Arzu','KILI�','YAZILIM M�HEND�SL���','42214637687','Mardin','2002-06-18','Malatya','05383134050','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�a�r�','CUMA','GIDA M�HEND�SL���','42224637687','Rize','2002-06-17','Mu�','05383131550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Beril','KARA','YAZILIM M�HEND�SL���','42234637687','�stanbul','2002-06-13','Malatya','05383132550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�sim','G�Z','YAZILIM M�HEND�SL���','42244637687','Rize','2002-06-12','Erzurum','05383133550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Burak','A�IK','YAZILIM M�HEND�SL���','42254637687','Rize','2002-06-11','Erzurum','05383135550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Bensu','TAN','TIP','42264637687','Rize','2002-05-09','Malatya','05383136550','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Kerim','BO�A','TIP','42274637687','Mardin','2002-05-06','Mu�','05383137550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Yazben','BAZLAR','GIDA M�HEND�SL���','42284637687','�stanbul','2002-05-05','Gaziantep','05383138550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('G�k�e','AYPER','BESLENME VE D�YETET�K','42294637687','Sivas','2002-05-04','Malatya','05383139550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('G�ne�','TE�VAN','YAZILIM M�HEND�SL���','42204637687','Rize','2002-05-03','A�r�','05383130550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Adile','YANARDA�','BESLENME VE D�YETET�K','42251637687','Sivas','2002-05-02','Mu�la','05383114550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Fatih','DO�AL','TIP','42252637687','�zmir','2002-05-01','Malatya','05383124550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Celal','G�L','TIP','42253637687','�zmir','2002-04-08','A�r�','05383144550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Merve','KIZIL','BESLENME VE D�YETET�K','42256637687','�stanbul','2000-04-06','Malatya','05383154550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Esma','DER�','TIP','42257637687','Ankara','2000-04-03','Mu�','05383164550','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Rojda','HELVACI','BESLENME VE D�YETET�K','42258637687','Sivas','2002-04-02','A�r�','05383174550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Hazal','�LEK','BESLENME VE D�YETET�K','42259637687','Siverek','2002-04-01','Malatya','05383184550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�ilan','YAVAN','TIP','42250637687','Mardin','2002-03-01','Malatya','05383194550','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Hozan','YAVUZ','TIP','42254137687','�zmir','2002-02-16','Malatya','05383104550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Aleyna','ALPARSLAN','BESLENME VE D�YETET�K','42254237687','Siverek','2002-02-15','Malatya','05383234550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Umut','BOZKURT','M�MARLIK','42254337687','Sivas','2002-02-14','A�r�','05383334550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Zehra','TA��ILAR','M�MARLIK','42254437687','�zmir','2002-01-13','Malatya','05383434550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Emine','TA�LAR','BESLENME VE D�YETET�K','42254537687','Ankara','2002-02-12','Malatya','05383534550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Ronahi','OCAKLI','M�MARLIK','42254737687','Sivas','2002-01-19','Malatya','05383634550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Rojbin','OCAK','YAZILIM M�HEND�SL���','42254837687','Ankara','2002-01-18','Adana','05383734550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Meryem','KAYMAKAM','M�MARLIK','42254937687','Siverek','2002-01-17','Malatya','05383834550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Cansu','AYBAKAN','GIDA M�HEND�SL���','42254037687','Ankara','2002-01-16','Adana','05383934550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Emir','AY','TIP','42254617687','Siverek','2002-01-15','Malatya','05383034550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Erim','EM�N','YAZILIM M�HEND�SL���','42254631687','Siverek','2002-01-14','Malatya','05313134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Mehmet','���EK','TIP','42254632687','Mardin','2002-01-13','Malatya','05323134550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Ahmet','BAL','GIDA M�HEND�SL���','42254633687','Safranbolu','2002-01-12','Adana','05333134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Enes','BOLUR','TIP','42254634687','Siverek','2002-01-01','Malatya','05353134550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('R�dvan','O�AN ','M�MARLIK','42254635687','�zmir','2002-08-19','A�r�','05383134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Melik','BARI�','GIDA M�HEND�SL���','42254636687','Safranbolu','2002-05-27','Malatya','05363134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Do�an','YARAMAZ ','BESLENME VE D�YETET�K','42254638687','Siverek','2002-07-24','Malatya','05373134550','ERKEK','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Hasan','A�K','M�MARLIK','42254639687','Safranbolu','2003-07-21','�zmir','05393134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')

insert into ogr_bilgi values('P�nar','SEVERD�M ','M�MARLIK','42254630687','�zmir','2002-08-09','A�r�','05303134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Aslan','YOLLAR ','TIP','42254637187','�stanbul','2002-08-05','Kayseri','05183134550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('l�tfiye','DA�LAR ','M�MARLIK','42254637287','Mardin','2002-08-04','Adana','05283134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')

insert into ogr_bilgi values('Kadir','DA�ABAKAN ','M�MARLIK','42254637387','Mardin','2002-08-02','Kayseri','05483134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Zeki','DA�YAKAN ','M�MARLIK','42254637487','Malatya','2002-08-01','A�r�','05583134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Edip','DA�B�KEN','BESLENME VE D�YETET�K','42254637587','Ordu','2002-09-09','Tunceli','05683134550','ERKEK','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Ferhat','DA�DEV�REN ','YAZILIM M�HEND�SL���','42254637787','Malatya','2002-09-08','Malatya','05783134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Robin','DA�','GIDA M�HEND�SL���','42254637887','Safranbolu','2002-09-07','A�r�','05983134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Hebun','KENAN','M�MARLIK','42254637987','�stanbul','2002-09-04','Malatya','05083134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Kadriye','NUR ','TIP','42254637087','Ordu','2002-09-03','A�r�','05113134550','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Meral','ARAZ','GIDA M�HEND�SL���','42254637617','�stanbul','2002-09-02','Kayseri','05223134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Salih','DA��I','M�MARLIK','42254637627','Hakkari','2002-09-01','Kayseri','05333134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Faruk','KIYATS�L ','M�MARLIK','42254637637','�stanbul','2002-11-19','Kayseri','05443134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Fatime','G�LEN','YAZILIM M�HEND�SL���','42254637647','Safranbolu','2000-11-19','Eski�ehir','05553134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Volkan','A�LAYAN ','YAZILIM M�HEND�SL���','42254637657','Malatya','2002-11-18','Kayseri','05663134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Mahmut','SARA� ','M�MARLIK','42254637667','Hakkari','2002-11-17','Tunceli','05773134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('�rfan','KAAN ','YAZILIM M�HEND�SL���','42254637677','Bursa','2002-11-16','Adana','05883134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('�aban','SANGU','YAZILIM M�HEND�SL���','42254637687','Hakkari','2002-11-15','Tunceli','05993134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Hande','�OBAN ','YAZILIM M�HEND�SL���','42254637697','Mardin','2002-11-13','Malatya','05003134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Afra','ER�EL','GIDA M�HEND�SL���','42254637607','Hakkari','2002-11-12','Tunceli','05013134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Lizge','BOZ ','YAZILIM M�HEND�SL���','42254637681','Hakkari','2002-11-11','Eski�ehir','05023134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Rabia','S�REN ','M�MARLIK','42254637682','Safranbolu','2002-11-02','Malatya','05033134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Maya','K�Y ','M�MARLIK','42254637683','Ordu','2002-11-01','Eski�ehir','05043134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('�zge','KI�LAR ','GIDA M�HEND�SL���','42254637684','Bursa','2002-12-09','Adana','05053134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Serhat','HALE ','GIDA M�HEND�SL���','42254637685','Malatya','2002-12-08','Eski�ehir','05063134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Mustafa','PINAR','YAZILIM M�HEND�SL���','42254637686','Ordu','2002-12-07','Tunceli','05073134550','ERKEK','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Melisa','�ZKAN','GIDA M�HEND�SL���','42254637688','Malatya','2002-12-06','Eski�ehir','05093134550','KADIN','M�HEND�SL�K VE DO�A B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('El�in','HOCAO�LU','M�MARLIK','42254637689','Adana','2002-12-05','Malatya','05123134550','KADIN','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Devrim','TA� ','BESLENME VE D�YETET�K','42254637680','Bursa','2002-12-03','Adana','05133134550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Toprak','KUZEN ','BESLENME VE D�YETET�K','42254637000','�stanbul','2001-12-02','Tunceli','05143134550','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Samet','BALLI ','M�MARLIK','42254117000','Bursa','2002-12-01','Tunceli','05143134550','ERKEK','TASARIM VE G�ZEL SANATLAR FAK�LTES�')
insert into ogr_bilgi values('Harun','SEVEN ','BESLENME VE D�YETET�K','42254127000','�stanbul','2005-12-16','Tunceli','05143134550','ERKEK','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Yavuz','SER�N','TIP','42254147000','Malatya','2004-12-16','Tunceli','05143134550','ERKEK','TIP FAK�LTES�')
insert into ogr_bilgi values('Ceyhun','CABER ','BESLENME VE D�YETET�K','42254157000','Ordu','2003-12-16','Ordu','05143134550','ERKEK','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Beyaz','CAN ','TIP','42254167000','Bursa','2002-12-16','Tunceli','05143134550','KADIN','TIP FAK�LTES�')
insert into ogr_bilgi values('Berg�zar','KOREL ','BESLENME VE D�YETET�K','42299937000','�stanbul','2009-08-23','Ordu','05143999551','KADIN','SA�LIK B�L�MLER� FAK�LTES�')
insert into ogr_bilgi values('Banu','KARDE�LER ','TIP','42254137000','Bursa','2002-04-01','Ordu','05143134550','KADIN','TIP�FAK�LTES�')


insert into bolumler values ('TIP')
insert into bolumler values ('BESLENME VE D�YETET�K')
insert into bolumler values ('M�MARLIK')
insert into bolumler values ('GIDA M�HEND�SL���')
insert into bolumler values ('YAZILIM M�HEND�SL���')


insert into dersler values ('�mar Uygulama Kavramlar�')
insert into dersler values ('G�da Analizi Laboratuvar�')
insert into dersler values ('Kalk�l�s')
insert into dersler values ('Veri Taban�')
insert into dersler values ('Fizik')
insert into dersler values ('NTP')
insert into dersler values ('Algoritma Analizi')
insert into dersler values ('Anatomi')
insert into dersler values ('Fizyoloji')
insert into dersler values ('Sa�l�k Psikolojisi')
insert into dersler values ('Sanat Tarihi')
insert into dersler values ('�ngilizce')
insert into dersler values ('�nk�lap Tarihi Ve Atat�rk �lkeleri')
insert into dersler values ('Yaz�l�m Tasar�m� Ve Mimarisi')




CREATE TRIGGER tg_ogrenciSil
ON ogr_bilgi
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SilinenOgrenciID INT;
    DECLARE @SilinenAd NVARCHAR(50);
    DECLARE @SilinenSoyad NVARCHAR(50);

    SELECT @SilinenOgrenciID = ogrenci_no, @SilinenAd = ogrenci_adi, @SilinenSoyad = ogrenci_soyadi
    FROM deleted;

    PRINT '��RENC� S�L�ND�. NUMARASI: ' + CAST(@SilinenOgrenciID AS NVARCHAR(10)) + ', Ad�: ' + @SilinenAd + ', Soyad: ' + @SilinenSoyad;
END;


CREATE TRIGGER tg_ogrenciEkle
ON ogr_bilgi
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SilinenOgrenciID INT;
    DECLARE @SilinenAd NVARCHAR(50);
    DECLARE @SilinenSoyad NVARCHAR(50);

    SELECT @SilinenOgrenciID = ogrenci_no, @SilinenAd = ogrenci_adi, @SilinenSoyad = ogrenci_soyadi
    FROM inserted;

    PRINT '��RENC� EKLEND�. NUMARASI: ' + CAST(@SilinenOgrenciID AS NVARCHAR(10)) + ', Ad�: ' + @SilinenAd + ', Soyad�: ' + @SilinenSoyad;
END;


delete from ogr_bilgi where ogrenci_no = 104

insert into ogr_bilgi values ('Enes','�etin','YAZILIM M�HEND�SL���',63729565538,'Diyarbak�r','2001-09-21','Diyarbak�r','05217824421','ERKEK')