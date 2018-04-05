(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . fullheight))
(setq inhibit-startup-screen t)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") ; many packages won't show if using stable
   ;;'("melpa" . "http://melpa.milkbox.net/packages/")
   ))



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("11e5e95bd3964c7eda94d141e85ad08776fbdac15c99094f14a0531f31a156da" default)))
 '(package-selected-packages
   (quote
    (virtualenvwrapper helm-ag ag helm helm-ag-r find-file-in-repository auto-complete color-theme-modern ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'dark-blue2)

(defun frame-left ()
  (interactive)
  (other-frame -1))

(defun frame-right ()
  (interactive)
  (other-frame -1))

(global-set-key (kbd "C-<left>") 'frame-left)
(global-set-key (kbd "C-<right>") 'frame-right)

;(require 'desktop)
;(desktop-save-mode 1)

(require 'auto-complete)
(ac-config-default)
(global-auto-complete-mode t) 


(require 'find-file-in-repository)
(global-set-key (kbd "C-x f") 'find-file-in-repository)


(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
;; note that setting `venv-location` is not necessary if you
;; use the default location (`~/.virtualenvs`), or if the
;; the environment variable `WORKON_HOME` points to the right place
(setq venv-location "/home/keith/code/VirtualEnvs/")

(setq c-default-style "linux"
      c-basic-offset 4)
