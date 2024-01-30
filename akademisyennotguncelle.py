from tkinter import messagebox

from PyQt5.QtWidgets import QWidget
from akademisyen_not_guncelle import Ui_Form
from Database import combobox_ogr_no_ekle, combobox_ders_isim_ekle, not_ekle, ogrenci_tum_bigiler, not_cek

def akademisyenanamenupage():
    from akademisyenanamenu import akademisyenanamenupage
    return akademisyenanamenupage

class akademisyennotguncellepage(QWidget):
    def __init__(self)-> None:
        super().__init__()
        self.akademisyenanamenuac = None
        self.akademisyennotguncelleform = Ui_Form()
        self.akademisyennotguncelleform.setupUi(self)
        self.akademisyennotguncelleform.pushButton_2.clicked.connect(self.akademisyenanamenu_ac)
        for i in combobox_ogr_no_ekle():
            self.akademisyennotguncelleform.comboBox.addItem(i)
        for i in combobox_ders_isim_ekle():
            self.akademisyennotguncelleform.comboBox_2.addItem(i)
        self.akademisyennotguncelleform.pushButton.clicked.connect(self.hoca_not_ekle)
        self.akademisyennotguncelleform.comboBox.currentIndexChanged.connect(self.bilgileri_getir)
        self.akademisyennotguncelleform.comboBox_2.currentIndexChanged.connect(self.notlar_getir)

    def notlar_getir(self):
        if self.akademisyennotguncelleform.comboBox.currentText() != "NUMARA SEÇİNİZ":
            if self.akademisyennotguncelleform.comboBox_2.currentText() == "DERS SEÇİNİZ":
                self.akademisyennotguncelleform.lineEdit_2.setText("")
                self.akademisyennotguncelleform.lineEdit_3.setText("")
                self.akademisyennotguncelleform.lineEdit_4.setText("")
            else:
                ders_id = str(self.akademisyennotguncelleform.comboBox_2.currentIndex())
                notlar = not_cek(self.akademisyennotguncelleform.comboBox.currentText(), ders_id)
                if len(notlar)!=0:
                    if notlar[0] == "None":
                        self.akademisyennotguncelleform.lineEdit_2.setText("")
                    else:
                        self.akademisyennotguncelleform.lineEdit_2.setText(notlar[0])
                    if notlar[1] == "None":
                        self.akademisyennotguncelleform.lineEdit_3.setText("")
                    else:
                        self.akademisyennotguncelleform.lineEdit_3.setText(notlar[1])
                    if notlar[2] == "None":
                        self.akademisyennotguncelleform.lineEdit_4.setText("")
                    else:
                        self.akademisyennotguncelleform.lineEdit_4.setText(notlar[2])
                else:
                    self.akademisyennotguncelleform.lineEdit_2.setText("")
                    self.akademisyennotguncelleform.lineEdit_3.setText("")
                    self.akademisyennotguncelleform.lineEdit_4.setText("")
    def bilgileri_getir(self):
        if self.akademisyennotguncelleform.comboBox.currentText().__eq__("NUMARA SEÇİNİZ"):
            self.akademisyennotguncelleform.lineEdit.setText("")
            self.akademisyennotguncelleform.lineEdit_2.setText("")
            self.akademisyennotguncelleform.lineEdit_3.setText("")
            self.akademisyennotguncelleform.lineEdit_4.setText("")
            self.akademisyennotguncelleform.lineEdit_5.setText("")

        else:
            ogrenci_no = self.akademisyennotguncelleform.comboBox.currentText()
            self.akademisyennotguncelleform.lineEdit.setText(ogrenci_tum_bigiler(ogrenci_no)[1]+' '+ogrenci_tum_bigiler(ogrenci_no)[2])
            self.akademisyennotguncelleform.lineEdit_5.setText(ogrenci_tum_bigiler(ogrenci_no)[3])

    def hoca_not_ekle(self):

        if (self.akademisyennotguncelleform.comboBox.currentIndex() > 0
                and self.akademisyennotguncelleform.comboBox_2.currentIndex() > 0
                and 100 >= int(self.akademisyennotguncelleform.lineEdit_not.text()) >=0):

            if self.akademisyennotguncelleform.radioButton.isChecked():
                not_ekle('vize', self.akademisyennotguncelleform.lineEdit_not.text(),
                    self.akademisyennotguncelleform.comboBox.currentText(),
                    str(self.akademisyennotguncelleform.comboBox_2.currentIndex()))

            elif self.akademisyennotguncelleform.radioButton_2.isChecked():
                not_ekle('final', self.akademisyennotguncelleform.lineEdit_not.text(),
                    self.akademisyennotguncelleform.comboBox.currentText(),
                    str(self.akademisyennotguncelleform.comboBox_2.currentIndex()))

            elif self.akademisyennotguncelleform.radioButton_3.isChecked():
                not_ekle('butunleme', self.akademisyennotguncelleform.lineEdit_not.text(),
                    self.akademisyennotguncelleform.comboBox.currentText(),
                    str(self.akademisyennotguncelleform.comboBox_2.currentIndex()))
            else:
                messagebox.showerror("EKSİK BİLGİ...", "LÜTFEN TÜM BİLGİLERİ DOLDURUNUZ!")
                print("sorun var")
        else:
            messagebox.showerror("EKSİK BİLGİ...", "LÜTFEN TÜM BİLGİLERİ DOLDURUNUZ!")
            print("LÜTFEN GİRDİĞİNİZ DEĞERLERİ KONRTOL EDİN")
    def akademisyenanamenu_ac(self):
        if self.akademisyenanamenuac is None:
            self.akademisyenanamenuac = akademisyenanamenupage()()
        self.hide()
        self.akademisyenanamenuac.show()
