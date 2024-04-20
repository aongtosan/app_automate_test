import pywinauto
from robot.api.deco import keyword
from pywinauto import application as pwa


class desktopAutomate:
    def __init__(self):
        self.app = None
        self.dlg = None

    @keyword("Test")
    def test():
        print("test")