from tkinter import messagebox

from PyQt5.QtWidgets import QWidget
from ogr_genel_bilgi import Ui_Form
from Database import ogr_genel_bilgi

def ogranamenupage():
    from ogranamenu import ogranamenupage
    return ogranamenupage

class ogrgenelbilgilerpage(QWidget):
    def __init__(self)-> None:
        super().__init__()
        self.ogrgenelbilgilerfrom = Ui_Form()
        self.ogrgenelbilgilerfrom.setupUi(self)
        self.ogranamenuac = None
        self.ogrgenelbilgilerfrom.pushButton_2.clicked.connect(self.ogranamenu_ac)
        self.ogrgenelbilgilerfrom.pushButton.clicked.connect(self.ogrgenelbilgi_getir)

    def ogrgenelbilgi_getir(self):
        self.ogrgenelbilgilerfrom.lineEdit.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_2.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_3.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_4.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_5.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_6.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_9.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_10.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_35.setText("")
        self.ogrgenelbilgilerfrom.lineEdit_36.setText("")
        if self.ogrgenelbilgilerfrom.lineEdit_7.text().isnumeric():
            if len(self.ogrgenelbilgilerfrom.lineEdit_7.text()) != 0:
                tc = self.ogrgenelbilgilerfrom.lineEdit_7.text()
                if len(ogr_genel_bilgi(tc)) != 0:
                    self.ogrgenelbilgilerfrom.lineEdit.setText(ogr_genel_bilgi(tc)[1])
                    self.ogrgenelbilgilerfrom.lineEdit_2.setText(ogr_genel_bilgi(tc)[2])
                    self.ogrgenelbilgilerfrom.lineEdit_3.setText(ogr_genel_bilgi(tc)[4])
                    self.ogrgenelbilgilerfrom.lineEdit_4.setText(ogr_genel_bilgi(tc)[9])
                    self.ogrgenelbilgilerfrom.lineEdit_5.setText(ogr_genel_bilgi(tc)[0])
                    self.ogrgenelbilgilerfrom.lineEdit_6.setText(ogr_genel_bilgi(tc)[3])
                    self.ogrgenelbilgilerfrom.lineEdit_9.setText(ogr_genel_bilgi(tc)[6])
                    self.ogrgenelbilgilerfrom.lineEdit_10.setText(ogr_genel_bilgi(tc)[5])
                    self.ogrgenelbilgilerfrom.lineEdit_35.setText(ogr_genel_bilgi(tc)[8])
                    self.ogrgenelbilgilerfrom.lineEdit_36.setText(ogr_genel_bilgi(tc)[7])
                    self.ogrgenelbilgilerfrom.lineEdit_7.setText("")
                else:
                    messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                    print("hata")
                    self.ogrgenelbilgilerfrom.lineEdit_7.setText("")
            else:
                messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                print("hata")
                self.ogrgenelbilgilerfrom.lineEdit_7.setText("")
        else:
            messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
            print("hata")
            self.ogrgenelbilgilerfrom.lineEdit_7.setText("")

    def ogranamenu_ac(self):
        if self.ogranamenuac is None:
            self.ogranamenuac = ogranamenupage()()
        self.hide()
        self.ogranamenuac.show()