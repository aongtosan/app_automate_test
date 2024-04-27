# import pywinauto
from robot.api.deco import keyword
# from pywinauto import application as pwa


class desktopAutomate:
    @keyword("Test Custom Library")
    def test_custom_libs(self):
        return ("test access custom libs")