# setup.py

# Import necessary modules
import sys, os
from cx_Freeze import setup, Executable

# Get the directory of the current file
os.path.dirname(os.path.realpath(__file__))

# Set the version of the application
__version__ = "1.5.0"

# List of additional files to be included
include_files = ['MTP_Py_Config.txt', 'button_backward.png', 'Infineon_logo.png', 'button_forward.png', 'button_start.png']

# List of packages to be included
packages = ["fpdf", "tkinter", "os","sys","subprocess","time", "datetime","serial","threading","configparser", "PIL"]

# Custom installation path for the executable file
custom_installation_path = r"C:\Program Files\TVII_MTP"

# Setup configuration for cx_Freeze
setup(
        name        =   "TVII_MTP",
        description =   'App Description',
        version     =   __version__,
        options     = 
        { 
            "build_exe": 
            {
                'packages'      : packages,
                'include_files' : include_files,
                'include_msvcr' : True,
            },
            "bdist_msi": 
            {
                'initial_target_dir': custom_installation_path
            }
        },
        executables =   [Executable("MTP_GUI_v1.5.py", base = "Win32GUI")]
)
