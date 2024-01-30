from PyQt5.QtWidgets import QMainWindow
from ogr_ana_menu import Ui_MainWindow
from ogrgenelbilgiler import ogrgenelbilgilerpage
from ogrnotlar import ogrnotlarpage
from ogrdevam import ogrdevampage
def anapencerepage():
    from anapencere import anapencerepage
    return anapencerepage

class ogranamenupage(QMainWindow):

    def __init__(self)-> None:
        super().__init__()
        self.ogranamenuform = Ui_MainWindow()
        self.anapencereac = None
        self.ogrgenelbilgilerac = None
        self.ogrnotlarac = None
        self.ogrdersprogac = None
        self.ogrdevamac = None
        self.ogranamenuform.setupUi(self)
        self.ogranamenuform.pushButton_4.clicked.connect(self.anapencere_ac)
        self.ogranamenuform.pushButton_5.clicked.connect(self.ogrgenelbilgiler_ac)
        self.ogranamenuform.pushButton_6.clicked.connect(self.ogrnotlar_ac)
        self.ogranamenuform.pushButton_7.clicked.connect(self.ogrdevam_ac)

    def ogrdevam_ac(self):
        if self.ogrdevamac is None:
            self.ogrdevamac = ogrdevampage()
            self.hide()
            self.ogrdevamac.show()

    def ogrnotlar_ac(self):
        if self.ogrnotlarac is None:
            self.ogrnotlarac = ogrnotlarpage()
        self.hide()
        self.ogrnotlarac.show()




    def ogrgenelbilgiler_ac(self):
        if self.ogrgenelbilgilerac is None:
            self.ogrgenelbilgilerac = ogrgenelbilgilerpage()
        self.hide()
        self.ogrgenelbilgilerac.show()



    def anapencere_ac(self):
        if self.anapencereac is None:
            self.anapencereac = anapencerepage()()
        self.hide()
        self.anapencereac.show()




