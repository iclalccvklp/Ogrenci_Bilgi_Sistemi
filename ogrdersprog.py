from PyQt5.QtWidgets import QWidget
from ogr_ders_prog import Ui_Form

def ogranamenupage():
    from ogranamenu import ogranamenupage
    return ogranamenupage

class ogrdersprogpage(QWidget):
    def __init__(self):
        super().__init__()
        self.ogranamenuac = None
        self.ogrdersprogform = Ui_Form()
        self.ogrdersprogform.setupUi(self)
        self.ogrdersprogform.pushButton_2.clicked.connect(self.ogranamenu_ac)

    def ogranamenu_ac(self):
        if self.ogranamenuac is None:
            self.ogranamenuac = ogranamenupage()()
        self.hide()
        self.ogranamenuac.show()
