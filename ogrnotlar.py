from tkinter import messagebox

from PyQt5.QtWidgets import QWidget, QTableWidgetItem
from ogr_notlar import Ui_Form
from Database import ogrnotlari_cek

def ogranamenupage():
    from ogranamenu import ogranamenupage
    return ogranamenupage

class ogrnotlarpage(QWidget):
    def __init__(self)-> None:
        super().__init__()
        self.ogrnotlarform = Ui_Form()
        self.ogrnotlarform.setupUi(self)
        self.ogranamenuac = None
        self.ogrnotlarform.pushButton_2.clicked.connect(self.ogranamenu_ac)
        self.ogrnotlarform.pushButton.clicked.connect(self.notlari_getir)

    def notlari_getir(self):
        self.ogrnotlarform.tableWidget.setRowCount(0)
        if self.ogrnotlarform.lineEdit_7.text().isnumeric():
            if len(self.ogrnotlarform.lineEdit_7.text()) != 0:
                tc = self.ogrnotlarform.lineEdit_7.text()
                notlar1 = ogrnotlari_cek(tc,'1')
                notlar2 = ogrnotlari_cek(tc, '2')
                notlar3 = ogrnotlari_cek(tc, '3')
                if len(notlar1) != 0 and len(notlar2) != 0:
                    self.ogrnotlarform.tableWidget.insertRow(0)
                    i = 0
                    for j in notlar1:
                        if j == 'None':
                            self.ogrnotlarform.tableWidget.setItem(0, i, QTableWidgetItem(''))
                        else:
                            self.ogrnotlarform.tableWidget.setItem(0,i,QTableWidgetItem(j))
                        i += 1
                    self.ogrnotlarform.tableWidget.insertRow(1)
                    i = 0
                    for j in notlar2:
                        if j == 'None':
                            self.ogrnotlarform.tableWidget.setItem(1, i, QTableWidgetItem(''))
                        else:
                            self.ogrnotlarform.tableWidget.setItem(1, i, QTableWidgetItem(j))
                        i += 1
                    self.ogrnotlarform.tableWidget.insertRow(2)
                    i = 0
                    for j in notlar3:
                        if j == 'None':
                            self.ogrnotlarform.tableWidget.setItem(2, i, QTableWidgetItem(''))
                        else:
                            self.ogrnotlarform.tableWidget.setItem(2, i, QTableWidgetItem(j))
                        i += 1
        else:
            messagebox.showerror("YANLIŞ BİLGİ...", "KULLANICI BULUNAMADI!")


    def ogranamenu_ac(self):
        if self.ogranamenuac is None:
            self.ogranamenuac = ogranamenupage()()
        self.hide()
        self.ogranamenuac.show()

