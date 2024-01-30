from PyQt5.QtWidgets import QMainWindow
from akademisyen_ana_menu import Ui_MainWindow
from akademisyenbilgileri import akademisyenbilgileripage
from akademisyennotguncelle import akademisyennotguncellepage
from akademisyendevamsizlik import akademisyendevamsizlikpage


def anapencerepage():
    from anapencere import anapencerepage
    return anapencerepage

class akademisyenanamenupage(QMainWindow):
    def __init__(self)-> None:
        super().__init__()
        self.akademisyenanamenuform = Ui_MainWindow()
        self.akademisyenbilgileriac = None
        self.anapencereac = None
        self.akademisyennotguncelleac = None
        self.akademisyendevamsizlikac = None
        self.akademisyenanamenuform.setupUi(self)
        self.akademisyenanamenuform.pushButton_4.clicked.connect(self.anapencere_ac)
        self.akademisyenanamenuform.pushButton_21.clicked.connect(self.akademisyenbilgileri_ac)
        self.akademisyenanamenuform.pushButton_22.clicked.connect(self.akademisyennotguncelle_ac)
        self.akademisyenanamenuform.pushButton_23.clicked.connect(self.akademisyendevamsizlik_ac)


    def akademisyendevamsizlik_ac(self):
        if self.akademisyendevamsizlikac is None:
            self.akademisyendevamsizlikac = akademisyendevamsizlikpage()
        self.hide()
        self.akademisyendevamsizlikac.show()

    def akademisyennotguncelle_ac(self):
        if self.akademisyennotguncelleac is None:
            self.akademisyennotguncelleac = akademisyennotguncellepage()
        self.hide()
        self.akademisyennotguncelleac.show()

    def akademisyenbilgileri_ac(self):
        if self.akademisyenbilgileriac is None:
            self.akademisyenbilgileriac = akademisyenbilgileripage()
        self.hide()
        self.akademisyenbilgileriac.show()

    def anapencere_ac(self):
        if self.anapencereac is None:
            self.anapencereac = anapencerepage()()
        self.hide()
        self.anapencereac.show()
