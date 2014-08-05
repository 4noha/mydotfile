
;-----------------------------------------------------------------------------
;; Folder-Tree
;(require 'sr-speedbar)
;; Left
;(setq sr-speedbar-right-side nil)
;(add-hook 'speedbar-mode-hook
;'(lambda()
;(speedbar-add-supported-extension '("tt" "yml"))))
(require 'sr-speedbar nil 2)
(setq sr-speedbar-right-side nil)
;;(setq sr-speedbar-width 100)
(setq sr-speedbar-width-x 30)
(setq sr-speedbar-width-console 24)
(setq sr-speedbar-delete-windows nil)
(global-set-key (kbd "C-^") 'sr-speedbar-toggle)
;(setq speedbar-use-images nil)
(setq speedbar-frame-parameters '((minibuffer)
                                  (width . 30)
                                  (border-width . 0)
                                  (menu-bar-lines . 0)
                                  (tool-bar-lines . 0)
                                  (unsplittable . t)
                                  (left-fringe . 0)))
(setq speedbar-hide-button-brackets-flag t)
(add-hook 'speedbar-mode-hook
          '(lambda ()
             (speedbar-add-supported-extension '("js" "as" "html" "css" "php" "rst" "howm" "org" "ml" "erb" "rhtml" "yaml" "yml" "rb" "scala" "*"))))
;(provide 'init_speedbar)
(setq sr-speedbar-open)
(sr-speedbar-toggle)
