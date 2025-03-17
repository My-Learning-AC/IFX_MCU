#setup.py
import sys, os
from cx_Freeze import setup, Executable

os.path.dirname(os.path.realpath(__file__))

__version__ = "1.5.0"

include_files = ['MTP_Py_Config.txt', 'button_backward.png', 'Infineon_logo.png', 'button_forward.png', 'button_start.png']

packages = ["fpdf", "tkinter", "os","sys","subprocess","time", "datetime","serial","threading","configparser", "PIL"]

# Custom installation path
install_path = r"C:\Program Files\TVII_MTP"

setup(
    name = "TVII_MTP",
    description='App Description',
    version=__version__,
    options = {"build_exe": {
    'packages': packages,
    'include_files': include_files,
    'include_msvcr': True,
},
    "bdist_msi": {
        'initial_target_dir': install_path  # Specify the fixed installation directory here
    }
},

executables = [Executable("MTP_GUI_v1.5.py",base="Win32GUI")]
)
