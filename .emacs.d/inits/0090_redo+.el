
;; ------------------------------------------------------------------------
;; @ redo+.el
;; redo
(require 'redo+)
(global-set-key (kbd "C-M-/") 'redo)
(setq undo-limit 600000)
(setq undo-strong-limit 900000)
