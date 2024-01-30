from PyQt5.QtWidgets import QMainWindow
from akademisyengiris import akademisyengirispage
from ogrgiris import ogrgirispage
from ana_pencere import Ui_MainWindow


class anapencerepage(QMainWindow):
    def __init__(self)-> None:
        super().__init__()
        self.anapencereform = Ui_MainWindow()
        self.akademisyengirisac = None
        self.ogrgirisac = None
        self.anapencereform.setupUi(self)
        self.anapencereform.akademisyen_butonu.clicked.connect(self.akademisyengiris_ac)
        self.anapencereform.ogrenci_butonu.clicked.connect(self.ogrgiris_ac)


    def akademisyengiris_ac(self):
        if self.akademisyengirisac is None:
            self.akademisyengirisac = akademisyengirispage()
        self.hide()
        self.akademisyengirisac.show()

    def ogrgiris_ac(self):
        if self.ogrgirisac is None:
            self.ogrgirisac = ogrgirispage()

        self.hide()
        self.ogrgirisac.show()



