import pypyodbc

db = pypyodbc.connect(
        'Driver={SQL Server};'
        'Server=DESKTOP-HACHFBL\\' + 'SQLEXPRESS;'
        'Database=ogrenci_kayit_sistemi;'
        'Trusted_Connection=True;'
)

def ogrenci_girisi(no,tc):
    ogrenci_bilgileri = []
    imlec = db.cursor()
    imlec.execute('SELECT ogrenci_no, ogrenci_tc FROM ogr_bilgi WHERE ogrenci_no= '+ no + ' AND ogrenci_tc= '+ tc)
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            ogrenci_bilgileri.append(str(j))
    return ogrenci_bilgileri


def akd_girisi(no,tc):
    akd_bilgileri = []
    imlec = db.cursor()
    imlec.execute('SELECT akademisyen_id, akademisyen_tc FROM akademisyen WHERE akademisyen_id= '+ no + ' AND akademisyen_tc= '+ tc)
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            akd_bilgileri.append(str(j))
    return akd_bilgileri



def combobox_ogr_no_ekle():
    ogrenci_numara = []
    imlec = db.cursor()
    imlec.execute('SELECT ogrenci_no FROM ogr_bilgi ORDER BY ogrenci_no')
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            ogrenci_numara.append(str(j))
    return ogrenci_numara

def combobox_ders_isim_ekle():
    ders_isim = []
    imlec = db.cursor()
    imlec.execute('SELECT ders_adi FROM dersler')
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            ders_isim.append(j)
    return ders_isim


def not_ekle(sinav_turu, notu, ogr_no, ders_id):
    imlec = db.cursor()
    imlec.execute('UPDATE notlar SET '+ sinav_turu +' = '+ notu +
                  ' WHERE ogrenci_no = '+ ogr_no + ' AND ders_id = '+ ders_id)
    db.commit()
    # DAHA SONRA KONTROL ET EĞER EKLEDİĞİN DEĞERLER VERİ TABANINDA VAR İSE EKLENDİ DİYE GERİ DÖNÜŞ YAP EĞER YOK İSE HATA DÖN

def devam_ekle(ogr_no,ders_id,hafta,durum):
    imlec = db.cursor()
    imlec.execute('UPDATE devamsizlik SET ' + hafta + ' = ' + durum +
                  ' WHERE ogrenci_no = ' + ogr_no + ' AND ders_id = ' + ders_id)
    db.commit()

def not_cek(ogrenci_no, ders_id):
    notlar = []
    imlec = db.cursor()
    imlec.execute('SELECT vize, final, butunleme FROM notlar WHERE ogrenci_no = '+ ogrenci_no+' AND ders_id = '+ders_id)
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            notlar.append(str(j))
    return notlar
def ogrenci_tum_bigiler(number):
    bilgiler = []
    imlec = db.cursor()
    imlec.execute('SELECT * FROM ogr_bilgi WHERE ogrenci_no = '+ number)
    cikti = imlec.fetchall()

    for i in cikti:
        for j in i:
            bilgiler.append(j)

    return bilgiler



def ogr_genel_bilgi(tc):
    bilgiler = []
    imlec = db.cursor()
    imlec.execute('SELECT * FROM ogr_bilgi WHERE ogrenci_tc = '+ tc)
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            bilgiler.append(str(j))
    return bilgiler


def akd_genel_bilgi(tc):
    bilgiler = []
    imlec = db.cursor()
    imlec.execute('SELECT * FROM akademisyen WHERE akademisyen_tc = '+ tc)
    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            bilgiler.append(str(j))
    return bilgiler


def ogrnotlari_cek(tc,ders_id):
    notlar = []
    imlec = db.cursor()
    imlec.execute('SELECT dersler.ders_id, ders_adi, vize, final, butunleme '
                  'FROM notlar '
                  'JOIN dersler  ON dersler.ders_id = notlar.ders_id '
                  'JOIN ogr_bilgi ON ogr_bilgi.ogrenci_no = notlar.ogrenci_no '
                  'WHERE ogrenci_tc = '+ tc +' AND dersler.ders_id = '+ders_id)

    cikti = imlec.fetchall()
    for i in cikti:
        for j in i:
            notlar.append(str(j))

    return notlar

def ogrdevam_cek(tc,ders_id):

    devamsizlik = []
    imlec = db.cursor()
    imlec.execute('SELECT devamsizlik.ders_id, dersler.ders_adi, hafta1, hafta2, hafta3, hafta4, hafta5, hafta6 '
                  'FROM devamsizlik '
                  'JOIN dersler ON devamsizlik.ders_id = dersler.ders_id '
                  'JOIN ogr_bilgi ON ogr_bilgi.ogrenci_no = devamsizlik.ogrenci_no '
                  'WHERE ogrenci_tc = '+ tc +' AND devamsizlik.ders_id = '+ ders_id)
    cikti = imlec.fetchall()

    for i in cikti:
        for j in i:
            devamsizlik.append(str(j))
    return devamsizlik





