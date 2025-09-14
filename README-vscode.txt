* Installation

    * sudo snap install --classic code
    * sudo snap remove  --purge code

    Download Visual Studio Code - Mac, Linux, Windows
    https://code.visualstudio.com/download

* Profiles

    * File > Preferences > Profiles

    %APPDATA%\Code\User\profiles
    $HOME/.config/Code/User/profiles

    Profiles in Visual Studio Code
    https://code.visualstudio.com/docs/editor/profiles

---

* Extensions view (Marketplace)

    CTRL_SHIFT_x

    Managing Extensions in Visual Studio Code
    https://code.visualstudio.com/docs/editor/extension-marketplace

* Command Palette

    CTRL_SHIFT_p

---

* Theme

    * File > Preferences > Theme > Color Theme menu item 
    * CTRL_K CTRL_T to display the Color Theme picker.

    Visual Studio Code Themes
    https://code.visualstudio.com/docs/getstarted/themes

* Full screen

    F11

* Zoom in/out

    CTRL_+
    CTRL_-

* Close window

    CTRL_w

* Switch tab

    CTRL_PageDown/PageUp

* Open Side-Bar(aka Explorer)

    CTRL_SHIFT_e
    CTRL_b(toggle)

---

* Open/New

    CTRL_o
    CTRL_n

* Markdown preview

    CTRL_SHIFT_v

    * in split

        CTRL_k, v

        * switch between

            CTRL_1, CTRL_2

* Run(Python)

    CTRL_F5

* Show Output panel

    CTRL_K CTRL_h

* Source Control

    CTRL_SHIFT_g

* Debug

    ALT_F5
    CTRL_SHIFT_d

* Search/replace

    CTRL_SHIFT_f Show Search
    CTRL_SHIFT_j Toggle Search details
    CTRL_SHIFT_h Replace in files

* Code Completion

    CTRL_SPACE

* Comment

    (line)  CTRL_/
    (block) CTRL_SHIFT_a

* Go to definition

    F12

* New Terminal 

    CTRL_SHIFT_`

* Create a virtual environment

    CTRL_SHIFT_P > Python: Create Environment

---

Etc.
    visual studio code - How to toggle between vim-emulation and no-vim-emulation when the vscodevim extension is installed? - Stack Overflow
    https://stackoverflow.com/questions/47502318/how-to-toggle-between-vim-emulation-and-no-vim-emulation-when-the-vscodevim-exte

        Set CTRL_SHIFT_v(Markdown preview) to toggle Vim mode on/off - works w/ vscodevim.vim

            From command palette 
                CTRL_SHIFT_p

            Type
                Preferences: Open Keyboard Shortcuts (JSON) (== keybindings.json) 

            Type
                [
                    {
                        "key": "ctrl+shift+v",
                        "command": "toggleVim"
                    }
                ]

    Zen mode
        CTRL_k z

        to show/hide side bar
            CTRL_b 

        to show terminal and console panel
            CTRL_j 

---

* Reference

    Get Started Tutorial for Python in Visual Studio Code
    https://code.visualstudio.com/docs/python/python-tutorial

    Documentation for Visual Studio Code
    https://code.visualstudio.com/docs

    Getting started with Visual Studio Code
    https://code.visualstudio.com/docs/introvideos/basics

    Get Started Tutorial for Python in Visual Studio Code
    https://code.visualstudio.com/docs/python/python-tutorial

    Getting started with Visual Studio
    https://visualstudio.microsoft.com/vs/getting-started/

    * Extensions

        * Python
            A Visual Studio Code extension with rich support for the Python language 
            (for all actively supported versions of the language: >=3.7), 
            including features such as
                * IntelliSense (Pylance)
                * linting
                * debugging
                * code navigation
                * code formatting
                * refactoring
                * variable explorer
                * test explorer and more!

        * IntelliCode
            AI-assisted development

        * Python Extension Pack
            * Python; IntelliSense (Pylance), Linting, Debugging (multi-threaded, remote), code formatting, refactoring, unit tests, and more.
            * IntelliCode; AI-assisted development
            * Django;
            * Jinja
            * autoDocstring; Generates python docstrings automatically
            * Python Indent; Correct Python indentation
            * Python Environment Manager; View and manage Python environments & packages.

        * Python Environment Manager
            * View installed packages.
            * Viewing Environments
            * Create/delete Conda and Virtual Environments.
            * Install Python along with Conda using Micromamba
            * Updating outdated packages (Conda and Pip)

        * (DEPRECATED) Python for VSCode

