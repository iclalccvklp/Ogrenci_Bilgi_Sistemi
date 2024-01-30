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
   akademisyen_ýd int primary key identity(1,1),
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


insert into akademisyen values ('Hüseyin Alperen','DAÐDÖGEN','dagdogen11@gmail.com','85265767676','Elazýð','1997-05-01','Malatya','05383331450','ERKEK')
insert into akademisyen values ('Serpil','ASLAN','serilasln45@gmail.com','32298767676','Bursa','1996-10-11','Malatya','05386561425','KADIN')
insert into akademisyen values ('Burçin','DOÐAN','burçinn12@gmail.com','56687987654','Konya','1997-03-15','Malatya','05265147852','KADIN')
insert into akademisyen values ('Sezer','ERDEM','erdemsezerrr@gmail.com','12235473637','Malatya','1993-02-18','Malatya','05530020014','ERKEK')



insert into ogr_bilgi values('Ýpek','TAÞÇI','YAZILIM MÜHENDÝSLÝÐÝ','42254637687','Siverek','2002-11-10','Van','05383134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ýclal','ÇEVÝKALP','YAZILIM MÜHENDÝSLÝÐÝ','92254637687','Adana','2002-03-27','Samsun','05383134551','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Emre','KARACAER','TIP','32254637687','Siverek','2002-04-21','Van','05383134552','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Sude','ÖZDEMÝR','TIP','52254637687','Dýyarbakýr','2002-05-25','Samsun','05383134553','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Yusuf','AZAT','BESLENME VE DÝYETETÝK','62254637687','Gaziantep','2002-05-23','Van','05383134554','ERKEK','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ali','BERMAL','MÝMARLIK','72254637687','Ýstanbul','2000-06-21','Samsun','05383134555','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Aliþ','ÇEVÝK','MÝMARLIK','82254637687','Ýstanbul','2002-09-26','Malatya','05383134556','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Mert','BEHRAM','MÝMARLIK','92254637687','Dýyarbakýr','2002-09-25','Van','05383134557','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Elif','DERÝCÝ','GIDA MÜHENDÝSLÝÐÝ','12254637687','Mardin','2002-09-24','Muðla','05383134558','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Arda','TÜRK','GIDA MÜHENDÝSLÝÐÝ','22254637687','Gaziantep','2002-09-21','Samsun','05383134559','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Selin','DÝKÝCÝ','GIDA MÜHENDÝSLÝÐÝ','23254637687','Dýyarbakýr','2002-07-21','Mersin','05383134500','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Murat','BAÞARANOÐLU','GIDA MÜHENDÝSLÝÐÝ','44254637687','Ýstanbul','2002-07-19','Malatya','05383134510','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Baran','BAÞARAN','YAZILIM MÜHENDÝSLÝÐÝ','45254637687','Dýyarbakýr','2002-07-18','Van','05383134520','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Zeynep','DAYSAL','TIP','46254637687','Dýyarbakýr','2002-07-15','Mersin','05383134530','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Halil','ÞEKER','TIP','47254637687','Mardin','2002-07-14','Malatya','05383134540','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Efe','ÞEKERCÝ','YAZILIM MÜHENDÝSLÝÐÝ','48254637687','Gaziantep','2002-07-13','Mersin','05383134560','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Taþkýn','YAROÐLU','YAZILIM MÜHENDÝSLÝÐÝ','49254637687','Elazýð','2002-07-12','Mardin','05383134570','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Uður','ELMACI','MÝMARLIK','40254637687','Dýyarbakýr','2002-08-11','Mersin','05383134580','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Filiz','KIÞLAR','YAZILIM MÜHENDÝSLÝÐÝ','42154637687','Ýstanbul','2002-07-02','Mardin','05383134590','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Yazgül','GÜLEL','TIP','42354637687','Elazýð','2002-07-03','Muðla','05383134150','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Ýz','BORAN','TIP','42454637687','Mardin','2002-07-04','Malatya','05383134250','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Ýsmet','ALÇI','YAZILIM MÜHENDÝSLÝÐÝ','42554637687','Dýyarbakýr','2002-07-05','Ankara','05383134350','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ýlke','YORGUN','MÝMARLIK','42654637687','Rize','2002-07-06','Muþ','05383134450','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Ýsmail','BEZMÝÞ','TIP','42754637687','Elazýð','2002-07-07','Gaziantep','05383134650','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Iþýk','TANYERÝ','MÝMARLIK','42854637687','Rize','2002-07-08','Ankara','05383134750','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Yunus','TANKUT','TIP','42954637687','Dýyarbakýr','2002-07-09','Muðla','05383134850','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Hekim','KILIÇÇI','YAZILIM MÜHENDÝSLÝÐÝ','42054637687','Ýstanbul','2002-06-19','Malatya','05383134950','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Arzu','KILIÇ','YAZILIM MÜHENDÝSLÝÐÝ','42214637687','Mardin','2002-06-18','Malatya','05383134050','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Çaðrý','CUMA','GIDA MÜHENDÝSLÝÐÝ','42224637687','Rize','2002-06-17','Muþ','05383131550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Beril','KARA','YAZILIM MÜHENDÝSLÝÐÝ','42234637687','Ýstanbul','2002-06-13','Malatya','05383132550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ýsim','GÖZ','YAZILIM MÜHENDÝSLÝÐÝ','42244637687','Rize','2002-06-12','Erzurum','05383133550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Burak','AÇIK','YAZILIM MÜHENDÝSLÝÐÝ','42254637687','Rize','2002-06-11','Erzurum','05383135550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Bensu','TAN','TIP','42264637687','Rize','2002-05-09','Malatya','05383136550','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Kerim','BOÐA','TIP','42274637687','Mardin','2002-05-06','Muþ','05383137550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Yazben','BAZLAR','GIDA MÜHENDÝSLÝÐÝ','42284637687','Ýstanbul','2002-05-05','Gaziantep','05383138550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Gökçe','AYPER','BESLENME VE DÝYETETÝK','42294637687','Sivas','2002-05-04','Malatya','05383139550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Güneþ','TEÞVAN','YAZILIM MÜHENDÝSLÝÐÝ','42204637687','Rize','2002-05-03','Aðrý','05383130550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Adile','YANARDAÐ','BESLENME VE DÝYETETÝK','42251637687','Sivas','2002-05-02','Muðla','05383114550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Fatih','DOÐAL','TIP','42252637687','Ýzmir','2002-05-01','Malatya','05383124550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Celal','GÜL','TIP','42253637687','Ýzmir','2002-04-08','Aðrý','05383144550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Merve','KIZIL','BESLENME VE DÝYETETÝK','42256637687','Ýstanbul','2000-04-06','Malatya','05383154550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Esma','DERÝ','TIP','42257637687','Ankara','2000-04-03','Muþ','05383164550','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Rojda','HELVACI','BESLENME VE DÝYETETÝK','42258637687','Sivas','2002-04-02','Aðrý','05383174550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Hazal','ÜLEK','BESLENME VE DÝYETETÝK','42259637687','Siverek','2002-04-01','Malatya','05383184550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Þilan','YAVAN','TIP','42250637687','Mardin','2002-03-01','Malatya','05383194550','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Hozan','YAVUZ','TIP','42254137687','Ýzmir','2002-02-16','Malatya','05383104550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Aleyna','ALPARSLAN','BESLENME VE DÝYETETÝK','42254237687','Siverek','2002-02-15','Malatya','05383234550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Umut','BOZKURT','MÝMARLIK','42254337687','Sivas','2002-02-14','Aðrý','05383334550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Zehra','TAÞÇILAR','MÝMARLIK','42254437687','Ýzmir','2002-01-13','Malatya','05383434550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Emine','TAÞLAR','BESLENME VE DÝYETETÝK','42254537687','Ankara','2002-02-12','Malatya','05383534550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ronahi','OCAKLI','MÝMARLIK','42254737687','Sivas','2002-01-19','Malatya','05383634550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Rojbin','OCAK','YAZILIM MÜHENDÝSLÝÐÝ','42254837687','Ankara','2002-01-18','Adana','05383734550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Meryem','KAYMAKAM','MÝMARLIK','42254937687','Siverek','2002-01-17','Malatya','05383834550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Cansu','AYBAKAN','GIDA MÜHENDÝSLÝÐÝ','42254037687','Ankara','2002-01-16','Adana','05383934550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Emir','AY','TIP','42254617687','Siverek','2002-01-15','Malatya','05383034550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Erim','EMÝN','YAZILIM MÜHENDÝSLÝÐÝ','42254631687','Siverek','2002-01-14','Malatya','05313134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Mehmet','ÇÝÇEK','TIP','42254632687','Mardin','2002-01-13','Malatya','05323134550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Ahmet','BAL','GIDA MÜHENDÝSLÝÐÝ','42254633687','Safranbolu','2002-01-12','Adana','05333134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Enes','BOLUR','TIP','42254634687','Siverek','2002-01-01','Malatya','05353134550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Rýdvan','OÐAN ','MÝMARLIK','42254635687','Ýzmir','2002-08-19','Aðrý','05383134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Melik','BARIÞ','GIDA MÜHENDÝSLÝÐÝ','42254636687','Safranbolu','2002-05-27','Malatya','05363134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Doðan','YARAMAZ ','BESLENME VE DÝYETETÝK','42254638687','Siverek','2002-07-24','Malatya','05373134550','ERKEK','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Hasan','AÞK','MÝMARLIK','42254639687','Safranbolu','2003-07-21','Ýzmir','05393134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')

insert into ogr_bilgi values('Pýnar','SEVERDÝM ','MÝMARLIK','42254630687','Ýzmir','2002-08-09','Aðrý','05303134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Aslan','YOLLAR ','TIP','42254637187','Ýstanbul','2002-08-05','Kayseri','05183134550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('lütfiye','DAÐLAR ','MÝMARLIK','42254637287','Mardin','2002-08-04','Adana','05283134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')

insert into ogr_bilgi values('Kadir','DAÐABAKAN ','MÝMARLIK','42254637387','Mardin','2002-08-02','Kayseri','05483134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Zeki','DAÐYAKAN ','MÝMARLIK','42254637487','Malatya','2002-08-01','Aðrý','05583134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Edip','DAÐBÜKEN','BESLENME VE DÝYETETÝK','42254637587','Ordu','2002-09-09','Tunceli','05683134550','ERKEK','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Ferhat','DAÐDEVÝREN ','YAZILIM MÜHENDÝSLÝÐÝ','42254637787','Malatya','2002-09-08','Malatya','05783134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Robin','DAÐ','GIDA MÜHENDÝSLÝÐÝ','42254637887','Safranbolu','2002-09-07','Aðrý','05983134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Hebun','KENAN','MÝMARLIK','42254637987','Ýstanbul','2002-09-04','Malatya','05083134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Kadriye','NUR ','TIP','42254637087','Ordu','2002-09-03','Aðrý','05113134550','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Meral','ARAZ','GIDA MÜHENDÝSLÝÐÝ','42254637617','Ýstanbul','2002-09-02','Kayseri','05223134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Salih','DAÞÇI','MÝMARLIK','42254637627','Hakkari','2002-09-01','Kayseri','05333134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Faruk','KIYATSÝL ','MÝMARLIK','42254637637','Ýstanbul','2002-11-19','Kayseri','05443134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Fatime','GÜLEN','YAZILIM MÜHENDÝSLÝÐÝ','42254637647','Safranbolu','2000-11-19','Eskiþehir','05553134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Volkan','AÐLAYAN ','YAZILIM MÜHENDÝSLÝÐÝ','42254637657','Malatya','2002-11-18','Kayseri','05663134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Mahmut','SARAÇ ','MÝMARLIK','42254637667','Hakkari','2002-11-17','Tunceli','05773134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Ýrfan','KAAN ','YAZILIM MÜHENDÝSLÝÐÝ','42254637677','Bursa','2002-11-16','Adana','05883134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Þaban','SANGU','YAZILIM MÜHENDÝSLÝÐÝ','42254637687','Hakkari','2002-11-15','Tunceli','05993134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Hande','ÇOBAN ','YAZILIM MÜHENDÝSLÝÐÝ','42254637697','Mardin','2002-11-13','Malatya','05003134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Afra','ERÇEL','GIDA MÜHENDÝSLÝÐÝ','42254637607','Hakkari','2002-11-12','Tunceli','05013134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Lizge','BOZ ','YAZILIM MÜHENDÝSLÝÐÝ','42254637681','Hakkari','2002-11-11','Eskiþehir','05023134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Rabia','SÜREN ','MÝMARLIK','42254637682','Safranbolu','2002-11-02','Malatya','05033134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Maya','KÖY ','MÝMARLIK','42254637683','Ordu','2002-11-01','Eskiþehir','05043134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Özge','KIÞLAR ','GIDA MÜHENDÝSLÝÐÝ','42254637684','Bursa','2002-12-09','Adana','05053134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Serhat','HALE ','GIDA MÜHENDÝSLÝÐÝ','42254637685','Malatya','2002-12-08','Eskiþehir','05063134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Mustafa','PINAR','YAZILIM MÜHENDÝSLÝÐÝ','42254637686','Ordu','2002-12-07','Tunceli','05073134550','ERKEK','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Melisa','ÖZKAN','GIDA MÜHENDÝSLÝÐÝ','42254637688','Malatya','2002-12-06','Eskiþehir','05093134550','KADIN','MÜHENDÝSLÝK VE DOÐA BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Elçin','HOCAOÐLU','MÝMARLIK','42254637689','Adana','2002-12-05','Malatya','05123134550','KADIN','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Devrim','TAÞ ','BESLENME VE DÝYETETÝK','42254637680','Bursa','2002-12-03','Adana','05133134550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Toprak','KUZEN ','BESLENME VE DÝYETETÝK','42254637000','Ýstanbul','2001-12-02','Tunceli','05143134550','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Samet','BALLI ','MÝMARLIK','42254117000','Bursa','2002-12-01','Tunceli','05143134550','ERKEK','TASARIM VE GÜZEL SANATLAR FAKÜLTESÝ')
insert into ogr_bilgi values('Harun','SEVEN ','BESLENME VE DÝYETETÝK','42254127000','Ýstanbul','2005-12-16','Tunceli','05143134550','ERKEK','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Yavuz','SERÝN','TIP','42254147000','Malatya','2004-12-16','Tunceli','05143134550','ERKEK','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Ceyhun','CABER ','BESLENME VE DÝYETETÝK','42254157000','Ordu','2003-12-16','Ordu','05143134550','ERKEK','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Beyaz','CAN ','TIP','42254167000','Bursa','2002-12-16','Tunceli','05143134550','KADIN','TIP FAKÜLTESÝ')
insert into ogr_bilgi values('Bergüzar','KOREL ','BESLENME VE DÝYETETÝK','42299937000','Ýstanbul','2009-08-23','Ordu','05143999551','KADIN','SAÐLIK BÝLÝMLERÝ FAKÜLTESÝ')
insert into ogr_bilgi values('Banu','KARDEÞLER ','TIP','42254137000','Bursa','2002-04-01','Ordu','05143134550','KADIN','TIP FAKÜLTESÝ')


insert into bolumler values ('TIP')
insert into bolumler values ('BESLENME VE DÝYETETÝK')
insert into bolumler values ('MÝMARLIK')
insert into bolumler values ('GIDA MÜHENDÝSLÝÐÝ')
insert into bolumler values ('YAZILIM MÜHENDÝSLÝÐÝ')


insert into dersler values ('Ýmar Uygulama Kavramlarý')
insert into dersler values ('Gýda Analizi Laboratuvarý')
insert into dersler values ('Kalkülüs')
insert into dersler values ('Veri Tabaný')
insert into dersler values ('Fizik')
insert into dersler values ('NTP')
insert into dersler values ('Algoritma Analizi')
insert into dersler values ('Anatomi')
insert into dersler values ('Fizyoloji')
insert into dersler values ('Saðlýk Psikolojisi')
insert into dersler values ('Sanat Tarihi')
insert into dersler values ('Ýngilizce')
insert into dersler values ('Ýnkýlap Tarihi Ve Atatürk Ýlkeleri')
insert into dersler values ('Yazýlým Tasarýmý Ve Mimarisi')




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

    PRINT 'ÖÐRENCÝ SÝLÝNDÝ. NUMARASI: ' + CAST(@SilinenOgrenciID AS NVARCHAR(10)) + ', Adý: ' + @SilinenAd + ', Soyad: ' + @SilinenSoyad;
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

    PRINT 'ÖÐRENCÝ EKLENDÝ. NUMARASI: ' + CAST(@SilinenOgrenciID AS NVARCHAR(10)) + ', Adý: ' + @SilinenAd + ', Soyadý: ' + @SilinenSoyad;
END;


delete from ogr_bilgi where ogrenci_no = 104

insert into ogr_bilgi values ('Enes','Çetin','YAZILIM MÜHENDÝSLÝÐÝ',63729565538,'Diyarbakýr','2001-09-21','Diyarbakýr','05217824421','ERKEK')