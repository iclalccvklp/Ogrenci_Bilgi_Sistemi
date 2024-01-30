from tkinter import messagebox

from PyQt5.QtWidgets import QWidget, QTableWidgetItem
from ogr_devam import Ui_Form
from Database import ogrdevam_cek

def ogranamenupage():
    from ogranamenu import ogranamenupage
    return ogranamenupage

class ogrdevampage(QWidget):
    def __init__(self):
        super().__init__()
        self.ogrdevamform = Ui_Form()
        self.ogrdevamform.setupUi(self)
        self.ogranamenuac = None
        self.ogrdevamform.pushButton_2.clicked.connect(self.ogranamenu_ac)
        self.ogrdevamform.pushButton.clicked.connect(self.devamsizlik_getir)


    def devamsizlik_getir(self):
        self.ogrdevamform.tableWidget.setRowCount(0)
        if self.ogrdevamform.lineEdit_7.text().isnumeric():
            if len(self.ogrdevamform.lineEdit_7.text()) != 0:
                tc = self.ogrdevamform.lineEdit_7.text()
                devam1 = ogrdevam_cek(tc, '1')
                devam2 = ogrdevam_cek(tc, '2')
                devam3 = ogrdevam_cek(tc, '3')
                if len(devam1) != 0 and len(devam2) != 0:
                    self.ogrdevamform.tableWidget.insertRow(0)
                    i = 0
                    for j in devam1:
                        if j == 'None':
                            self.ogrdevamform.tableWidget.setItem(0, i, QTableWidgetItem(''))
                        elif j == 'True':
                            self.ogrdevamform.tableWidget.setItem(0, i, QTableWidgetItem('VAR'))
                        elif j == 'False':
                            self.ogrdevamform.tableWidget.setItem(0, i, QTableWidgetItem('YOK'))
                        else:
                            self.ogrdevamform.tableWidget.setItem(0, i, QTableWidgetItem(j))
                        i += 1
                    self.ogrdevamform.tableWidget.insertRow(1)
                    i = 0
                    for j in devam2:
                        if j == 'None':
                            self.ogrdevamform.tableWidget.setItem(1, i, QTableWidgetItem(''))
                        elif j == 'True':
                            self.ogrdevamform.tableWidget.setItem(1, i, QTableWidgetItem('VAR'))
                        elif j == 'False':
                            self.ogrdevamform.tableWidget.setItem(1, i, QTableWidgetItem('YOK'))
                        else:
                            self.ogrdevamform.tableWidget.setItem(1, i, QTableWidgetItem(j))
                        i += 1
                    self.ogrdevamform.tableWidget.insertRow(2)
                    i = 0
                    for j in devam3:
                        if j == 'None':
                            self.ogrdevamform.tableWidget.setItem(2, i, QTableWidgetItem(''))
                        elif j == 'True':
                            self.ogrdevamform.tableWidget.setItem(2, i, QTableWidgetItem('VAR'))
                        elif j == 'False':
                            self.ogrdevamform.tableWidget.setItem(2, i, QTableWidgetItem('YOK'))
                        else:
                            self.ogrdevamform.tableWidget.setItem(2, i, QTableWidgetItem(j))
                        i += 1
                else:
                    messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                    print("hata")
                    self.ogrdevamform.lineEdit_7.setText("")
            else:
                messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
                print("hata")
                self.ogrdevamform.lineEdit_7.setText("")
        else:
            messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")
            print("hata")
            self.ogrdevamform.lineEdit_7.setText("")
    def ogranamenu_ac(self):
        if self.ogranamenuac is None:
            self.ogranamenuac = ogranamenupage()()
            self.hide()
            self.ogranamenuac.show()
