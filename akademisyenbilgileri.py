from tkinter import messagebox

from PyQt5.QtWidgets import QWidget
from akademisyen_bilgileri import Ui_Form
from Database import akd_genel_bilgi

def akademisyenanamenuac():
    from akademisyenanamenu import akademisyenanamenupage
    return akademisyenanamenupage

class akademisyenbilgileripage(QWidget):
    def __init__(self):
        super().__init__()
        self.akademisyenanamenuac = None
        self.akademisyenbilgileriform = Ui_Form()
        self.akademisyenbilgileriform.setupUi(self)
        self.akademisyenbilgileriform.pushButton_2.clicked.connect(self.akademisyenanamenu_ac)
        self.akademisyenbilgileriform.pushButton.clicked.connect(self.akademisyenbilgi_getir)

    def akademisyenbilgi_getir(self):
        self.akademisyenbilgileriform.lineEdit_29.setText("")
        self.akademisyenbilgileriform.lineEdit_30.setText("")
        self.akademisyenbilgileriform.lineEdit_31.setText("")
        self.akademisyenbilgileriform.lineEdit_32.setText("")
        self.akademisyenbilgileriform.lineEdit_33.setText("")
        self.akademisyenbilgileriform.lineEdit_34.setText("")
        self.akademisyenbilgileriform.lineEdit_35.setText("")
        self.akademisyenbilgileriform.lineEdit_36.setText("")
        if self.akademisyenbilgileriform.lineEdit_7.text().isnumeric():
            if len(self.akademisyenbilgileriform.lineEdit_7.text()) != 0:
                tc = self.akademisyenbilgileriform.lineEdit_7.text()
                if len(akd_genel_bilgi(tc)) != 0:
                    self.akademisyenbilgileriform.lineEdit_29.setText(akd_genel_bilgi(tc)[1])
                    self.akademisyenbilgileriform.lineEdit_30.setText(akd_genel_bilgi(tc)[2])
                    self.akademisyenbilgileriform.lineEdit_31.setText(akd_genel_bilgi(tc)[4])
                    self.akademisyenbilgileriform.lineEdit_32.setText(akd_genel_bilgi(tc)[9])
                    self.akademisyenbilgileriform.lineEdit_33.setText(akd_genel_bilgi(tc)[6])
                    self.akademisyenbilgileriform.lineEdit_34.setText(akd_genel_bilgi(tc)[5])
                    self.akademisyenbilgileriform.lineEdit_35.setText(akd_genel_bilgi(tc)[8])
                    self.akademisyenbilgileriform.lineEdit_36.setText(akd_genel_bilgi(tc)[7])
                    self.akademisyenbilgileriform.lineEdit_7.setText("")
                else:
                    messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                    print("hata")
                    self.akademisyenbilgileriform.lineEdit_7.setText("")
            else:
                messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                print("hata")
                self.akademisyenbilgileriform.lineEdit_7.setText("")
        else:
            messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
            print("hata")
            self.akademisyenbilgileriform.lineEdit_7.setText("")

    def akademisyenanamenu_ac(self):
        if self.akademisyenanamenuac is None:
            self.akademisyenanamenuac = akademisyenanamenuac()()
        self.hide()
        self.akademisyenanamenuac.show()
