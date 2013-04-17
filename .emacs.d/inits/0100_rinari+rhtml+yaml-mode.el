
;; ------------------------------------------------------------------------
;; @ rinari
;; rinari with RoR
;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
;; rinari
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/rinari"))
(require 'rinari)
;;rhtml
(add-to-list 'load-path "~/.emacs.d/elisp/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook (lambda () (rinari-launch)))
(add-to-list 'auto-mode-alist '("\*.erb$" . rhtml-mode))
;;yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
