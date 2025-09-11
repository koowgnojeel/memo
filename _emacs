;; (setq package-selected-packages 
;;   '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck company
;;     ;; Optional packages
;;     lsp-ui company hover))
;;  
;; (when (cl-find-if-not #'package-installed-p package-selected-packages)
;;   (package-refresh-contents)
;;   (mapc #'package-install package-selected-packages))
;;  
;; (add-hook 'dart-mode-hook 'lsp)
;;  
;; (setq gc-cons-threshold (* 100 1024 1024)
;;       read-process-output-max (* 1024 1024))
;;  
;; (custom-set-variables
;;  '(custom-safe-themes
;;    '("18c5ec0e4d1723dbeadb65d17112f077529fd24261cb8cd4ceee145e6a6f4cd1" default)))
;; (custom-set-faces)


;; How to proceed on package.el signature check failure - Emacs Stack Exchange
;; https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure/53142#53142
(setq package-check-signature nil)

;; Setting up::Melpa
(require 'package)
(add-to-list 'package-archives
    '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Setting up::use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;; Theme
(load-theme 'deeper-blue t)
;; (load-theme 'manoj-dark t)
(tool-bar-mode -1)
(menu-bar-mode -1)

;;disable splash screen and startup message
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;; Basic config for Windows - C:\Users\koowgnojeel\AppData\Roaming\.emacs
;; (set-file-name-coding-system 'cp949-dos)
;; (setq default-directory "C:/Users/koowgnojeel")  ;; Set the default directory for file operations

;; Basic config
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)

;; (defun my-insert-newline-and-indent ()
;;   "Inserts a newline and indents the new line."
;;   (interactive)
;;   (newline-and-indent))
;; (global-set-key (kbd "C-<return>") 'my-insert-newline-and-indent)
(global-set-key (kbd "C-<return>") 'cua-rectangle-mark-mode)

(setq-default make-backup-files nil)  ;; '(setq make-backup-files nil) ; stop creating backup (~files)
(setq-default auto-save-default nil)  ;; '(setq auto-save-default nil) ; stop creating #autosave #files
(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list (number-sequence 4 120 4))
(setq-default truncate-lines t)
;; (add-to-list 'default-frame-alist '(font . "Monospace-12"))
;; (global-display-line-numbers-mode)

(setq dired-listing-switches "-aBhl  --group-directories-first")

;; ERC
;; https://gist.github.com/drobati/585391
;; (custom-set-faces
;;  '(erc-input-face ((t (:foreground "#FFA500" :weight light :family "Anonymous"))))
;; )
;;
;; (require 'erc)
;; (set-face-foreground 'erc-input-face "#FFA500") 
;;
(with-eval-after-load 'erc
    ;; https://doc.endlessparentheses.com/Fun/erc-track-switch-buffer.html
    ;; https://systemcrafters.net/live-streams/june-04-2021/
    ;; erc-track-switch-buffer (C-c C-SPC if erc-track-enable-keybindings is t)

    (load-theme 'manoj-dark t)
    (set-face-foreground 'erc-input-face "#FFA500")

    ;; Logging - http://www.nihamkin.com/2013/12/04/how-to-enable-logging-of-chat-sessions-in-erc/

    ;; it is not possible to set erc-log-mode variable directly 
    (erc-log-mode) 

    ;; The directory should be created 
    (setq erc-log-channels-directory "~/.erc/logs/")

    (setq erc-generate-log-file-name-function (quote erc-generate-log-file-name-with-date))
    (setq erc-save-buffer-on-part nil)
    (setq erc-save-queries-on-quit nil)
    (setq erc-log-write-after-insert t)
    (setq erc-log-write-after-send t)    

    (custom-set-variables
        '(erc-nick "koowgnojeel")
        '(erc-port 6666)
        '(erc-prompt-for-password nil)
        '(erc-server "irc.libera.chat")
        '(erc-server-coding-system (quote utf-8))  ;; '(erc-server-coding-system 'utf-8)
    )
)

;; doc-view (pdf)
(setq doc-view-continuous t)

;; Emoji
;; 1/2
(set-fontset-font t 'symbol "Apple Color Emoji")
(set-fontset-font t 'symbol "Noto Color Emoji" nil 'append)
;; (set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)
;; (set-fontset-font t 'symbol "Symbola" nil 'append)

;; 2/2 - sudo apt-get install -y fonts-symbola
;; (set-fontset-font t 'symbol "Symbola" nil 'append)


;; for xterm to GUI clipboard copy
(xclip-mode 1)

;; tab-bar-mode
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tab-bar-tab ((t (:inherit tab-bar :background "orange" :box (:line-width 1 :style released-button))))))

;; tab-bar-mode custom keybindings
(global-set-key (kbd "ESC ]") 'tab-bar-switch-to-next-tab)
(global-set-key (kbd "ESC [") 'tab-bar-switch-to-prev-tab)

;; Highlight-Indentation-for-Emacs/highlight-indentation.el at master · antonj/Highlight-Indentation-for-Emacs · GitHub
;; https://github.com/antonj/Highlight-Indentation-for-Emacs/blob/master/highlight-indentation.el
(add-to-list 'load-path "~/.emacs.d/Highlight-Indentation-for-Emacs/")
(load "highlight-indentation.el")


;; anaconda-mode
(add-hook 'python-mode-hook 'anaconda-mode)
;; (setq python-shell-interpreter "C:/Program Files/Python310/python.exe")

;; Setting up::graphviz-dot-mode
(use-package graphviz-dot-mode
    :ensure t
    :config
    (setq graphviz-dot-indent-width 4))


(custom-set-variables
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(lsp-java xclip tuareg cmake-mode use-package lsp-ui lsp-dart hover graphviz-dot-mode flycheck company anaconda-mode)))

;; lsp-mode for Python
;; 
;;     Getting started with lsp-mode for Python
;;     https://www.mattduck.com/lsp-python-getting-started.html
;; 
;;     $ pip install python-lsp-server[all]
;; 
;;     # (x) $ pip install python-language-server[all]
;;     # (x)     Warning (emacs): The palantir python-language-server (pyls) is unmaintained;
;;     # (x)     a maintained fork is the python-lsp-server (pylsp) project; you can install it with pip via:
;;     # (x)     pip install python-lsp-server
;; 
;;     .emacs
;;         (use-package lsp-mode
;;           :hook
;;           ((python-mode . lsp)))
;; 
;;         (use-package lsp-ui
;;           :commands lsp-ui-mode)
;; 
;;     M-x customize-group RET lsp-pyls
;;     ;; Make sure to restart the language server after changing the settings.

;; How to ignore specific flycheck warning messages for Python in lsp-mode? - Emacs Stack Exchange
;; https://emacs.stackexchange.com/questions/68249/how-to-ignore-specific-flycheck-warning-messages-for-python-in-lsp-mode
;; 
;;     pylint as linter for pylsp
;;         (require 'lsp-pylsp)
;;         (setq lsp-pylsp-plugins-pylint-enabled nil)
;;         (setq lsp-pylsp-plugins-pylint-args ["--rcfile=/<absolute-path-to-home-dir/.pylintrc"]) ;; or path to your project.
;;
;; flaks8 as linter for pylsp

;; (require 'lsp-pylsp)
;; (setq lsp-pylsp-plugins-flake8-ignore t)

;; https://github.com/emacs-lsp/lsp-java / https://emacs-lsp.github.io/lsp-mode/page/main-features/
;;
;; Supported commands
;; 
;;     LSP Mode commands
;; 
;;            lsp-restart-workspace        - Restart project
;;
;;          * lsp-ui-doc-show              - Show documentation
;;
;;          * lsp-symbol-highlight         - Highlight all relevant references to the symbol under point.
;;          * lsp-describe-thing-at-point  - Display help for the thing at point.
;;          * lsp-goto-type-definition     - Go to type definition
;;          * lsp-goto-implementation      - Go to implementation
;; 
;;          * lsp-execute-code-action      - Execute code action.
;;          * lsp-rename                   - Rename symbol at point
;;            lsp-format-buffer            - Format current buffer
;;
;;          * lsp-describe-session         - List workspace
;;          * lsp-workspace-folders-add    - Add workspace folder
;;          * lsp-workspace-folders-remove - Remove workspace folder
;;            lsp-workspace-folders-switch - Switch workspace folder
;; 
;;     LSP Java commands
;; 
;;          * lsp-java-organize-imports              - Organize imports
;; 
;;          * lsp-java-generate-getters-and-setters  - Generate getters and setters.
;;          * lsp-java-generate-overrides            - Generate method overrides
;;          * lsp-java-generate-to-string            - Generate toString method.
;; 
;;          * lsp-java-type-hierarchy                - Open type hierarchy. Use prefix arg to specify the type of the hierarchy.
;; 
;;          * lsp-java-build-project                 - Perform partial or full build for the projects
;; 
;;            lsp-java-update-project-configuration  - Update project configuration
;;            lsp-java-actionable-notifications      - Resolve actionable notifications
;;            lsp-java-update-user-settings          - Update user settings (Check the options in the table bellow.)
;;            lsp-java-update-server                 - Update server instalation.
;;            lsp-java-generate-equals-and-hash-code - Generate equals and hashCode methods.
;; 
;; 
;;     Refactoring
;;
;;          * lsp-java-add-import                 - Add missing import
;;            lsp-java-extract-to-constant        - Extract constant refactoring
;;            lsp-java-add-unimplemented-methods  - Extract constant refactoring
;;            lsp-java-create-parameter           - Create parameter refactoring
;;            lsp-java-create-field               - Create field refactoring
;;            lsp-java-create-local               - Create local refactoring
;;            lsp-java-extract-method             - Extract method refactoring
;; 
;;     Dependency viewer
;; 
;;          * lsp-java-dependency-list - View java dependencies
;; 
;;     Testing support
;; 
;;         ...
;; 

;; (require 'lsp-java)
;; (add-hook 'java-mode-hook #'lsp)

