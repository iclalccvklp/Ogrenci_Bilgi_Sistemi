from tkinter import messagebox
from PyQt5.QtWidgets import QMainWindow
from akademisyen_giris import Ui_MainWindow
from akademisyenanamenu import akademisyenanamenupage
from Database import akd_girisi
def anapencerepage():
    from anapencere import anapencerepage
    return anapencerepage
class akademisyengirispage(QMainWindow):
    def __init__(self) -> None:
        super().__init__()
        self.akademisyengirisform = Ui_MainWindow()
        self.akademisyengirisform.setupUi(self)
        self.anapencereac = None
        self.akademisyenanamenuac = None
        self.akademisyengirisform.pushButton_2.clicked.connect(self.anapencere_ac)
        self.akademisyengirisform.pushButton.clicked.connect(self.akademisyenanamenu_ac)

    def akademisyenanamenu_ac(self):
        if self.akademisyengirisform.lineEdit.text().isnumeric() and self.akademisyengirisform.lineEdit_2.text().isnumeric():
            if len(self.akademisyengirisform.lineEdit.text()) != 0 and len(self.akademisyengirisform.lineEdit_2.text()) != 0:
                bilgi = akd_girisi(self.akademisyengirisform.lineEdit.text(), self.akademisyengirisform.lineEdit_2.text())
                if len(bilgi) != 0:
                    if self.akademisyengirisform.lineEdit.text() == bilgi[0] and self.akademisyengirisform.lineEdit_2.text() == bilgi[1]:
                        if self.akademisyenanamenuac is None:
                            self.akademisyenanamenuac = akademisyenanamenupage()
                            self.hide()
                            self.akademisyenanamenuac.show()

                    else:
                        messagebox.showerror("GİRİŞ BAŞARISIZ...","NUMARA VEYA ŞİFRE YANLIŞ!")
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
        if self.anapencereac is None:
            self.anapencereac = anapencerepage()()
        self.hide()
        self.anapencereac.show()