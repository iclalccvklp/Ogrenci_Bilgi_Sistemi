from tkinter import messagebox

from PyQt5.QtWidgets import QWidget
from akademisyen_devamsizlik import Ui_Form
from Database import combobox_ders_isim_ekle,combobox_ogr_no_ekle,ogrenci_tum_bigiler,devam_ekle

def akademisyenanamenupage():
    from akademisyenanamenu import akademisyenanamenupage
    return akademisyenanamenupage
class akademisyendevamsizlikpage(QWidget):
    def __init__(self):
        super().__init__()
        self.akademisyenanamenuac = None
        self.akademisyendevamsizlikform = Ui_Form()
        self.akademisyendevamsizlikform.setupUi(self)
        self.akademisyendevamsizlikform.pushButton_2.clicked.connect(self.akademisyenanamenu_ac)
        for i in combobox_ders_isim_ekle():
            self.akademisyendevamsizlikform.comboBox_2.addItem(i)
        for i in combobox_ogr_no_ekle():
            self.akademisyendevamsizlikform.comboBox.addItem(i)
        self.akademisyendevamsizlikform.comboBox.currentIndexChanged.connect(self.bilgi_getir)
        self.akademisyendevamsizlikform.pushButton.clicked.connect(self.hoca_devam_ekle)


    def hoca_devam_ekle(self):
        if (self.akademisyendevamsizlikform.comboBox.currentIndex() > 0
                and self.akademisyendevamsizlikform.comboBox_2.currentIndex() > 0
                and self.akademisyendevamsizlikform.comboBox_4.currentIndex() > 0):
            if self.akademisyendevamsizlikform.radioButton.isChecked():
                gun = self.akademisyendevamsizlikform.comboBox_4.currentIndex()
                hafta = 'hafta'+str(gun)
                devam_ekle(self.akademisyendevamsizlikform.comboBox.currentText(),
                           str(self.akademisyendevamsizlikform.comboBox_2.currentIndex()),
                           str(hafta),'1')

            elif self.akademisyendevamsizlikform.radioButton_2.isChecked():
                gun = self.akademisyendevamsizlikform.comboBox_4.currentIndex()
                hafta = 'hafta'+str(gun)
                devam_ekle(self.akademisyendevamsizlikform.comboBox.currentText(),
                           str(self.akademisyendevamsizlikform.comboBox_2.currentIndex()),
                           str(hafta),'0')

            else:
                messagebox.showerror("EKSİK BİLGİ...", "LÜTFEN TÜM BİLGİLERİ DOLDURUNUZ!")
                print("sorun var")
        else:
            messagebox.showerror("EKSİK BİLGİ...", "LÜTFEN TÜM BİLGİLERİ DOLDURUNUZ!")
            print("LÜTFEN GİRDİĞİNİZ DEĞERLERİ KONRTOL EDİN")

    def bilgi_getir(self):
        if self.akademisyendevamsizlikform.comboBox.currentText().__eq__("NUMARALAR"):
            self.akademisyendevamsizlikform.lineEdit.setText("")
            self.akademisyendevamsizlikform.lineEdit_5.setText("")
        else:
            ogrenci_no = self.akademisyendevamsizlikform.comboBox.currentText()
            self.akademisyendevamsizlikform.lineEdit.setText(ogrenci_tum_bigiler(ogrenci_no)[1]+' '+ogrenci_tum_bigiler(ogrenci_no)[2])
            self.akademisyendevamsizlikform.lineEdit_5.setText(ogrenci_tum_bigiler(ogrenci_no)[3])

    def akademisyenanamenu_ac(self):
        if self.akademisyenanamenuac is None:
            self.akademisyenanamenuac = akademisyenanamenupage()()
        self.hide()
        self.akademisyenanamenuac.show()
