from tkinter import messagebox
from PyQt5.QtWidgets import QMainWindow
from ogrgenelbilgiler import *

from ogr_giris import Ui_MainWindow
from ogranamenu import ogranamenupage
from Database import ogrenci_girisi

def anapencerepage():
    from anapencere import anapencerepage
    return anapencerepage

class ogrgirispage(QMainWindow):
    def __init__(self) -> None:
        super().__init__()
        self.ogrgirisform = Ui_MainWindow()
        self.anapencereac = anapencerepage()()
        self.ogranamenuac = ogranamenupage()
        self.ogrgirisform.setupUi(self)
        self.ogrgirisform.pushButton_2.clicked.connect(self.anapencere_ac)
        self.ogrgirisform.pushButton.clicked.connect(self.ogranamenu_ac)

    def ogranamenu_ac(self,):
        if self.ogrgirisform.lineEdit.text().isnumeric() and self.ogrgirisform.lineEdit_2.text().isnumeric():
            if len(self.ogrgirisform.lineEdit.text()) != 0 and len(self.ogrgirisform.lineEdit_2.text()) != 0:
                bilgi = ogrenci_girisi(self.ogrgirisform.lineEdit.text(), self.ogrgirisform.lineEdit_2.text())
                if len(bilgi) != 0:
                    if self.ogrgirisform.lineEdit.text() == bilgi[0] and self.ogrgirisform.lineEdit_2.text() == bilgi[1]:
                        self.hide()
                        self.ogranamenuac.show()

                    else:
                        messagebox.showerror("GİRİŞ BAŞARISIZ...", "NUMARA VEYA ŞİFRE YANLIŞ!")
                        print("hata")
                else:
                    messagebox.showerror("GİRİŞ BAŞARISIZ...", "NUMARA VEYA ŞİFRE YANLIŞ!")
                    print("hata")
            else:
                messagebox.showerror("GİRİŞ BAŞARISIZ...", "NUMARA VEYA ŞİFRE YANLIŞ!")
                print("hata")
        else:
            messagebox.showerror("GİRİŞ BAŞARISIZ...", "NUMARA VEYA ŞİFRE YANLIŞ!")
            print("hata")
    def anapencere_ac(self):
        self.hide()
        self.anapencereac.show()



