# import pywinauto
from robot.api.deco import keyword
from pywinauto import Application 


class desktopAutomate:
    @keyword("Test Custom Library")
    def test_custom_libs(self):
        return ("test access custom libs")
    
    @keyword("Open Commandline")
    def open_cmd(self):
        app = Application().start('cmd.exe')
        cmd_dialog = app.window(title='Command Prompt')
        return cmd_dialog
    
    @keyword("Execute Command")
    def execute_command(self, app_dialog, command):
        app_dialog.type_keys(command + "{ENTER}")

    @keyword("Start Application")
    def start_application(self) :
        app = Application(backend='uia').start('..\\app_automate_test\\WebBinary\\win64\\chrome\\chrome.exe --force-renderer-accessibility')


    @keyword("Start Popup CMD")
    def start_popup_cmd(self):
        app = Application(backend='uia').start("cmd.exe")
        time.sleep(2)  # Wait for 2 seconds for the window to appear
        app_dialog = app.window(title="Command Prompt")
        app_dialog.type_keys("minikube start" + "{ENTER}")
        return app_dialog