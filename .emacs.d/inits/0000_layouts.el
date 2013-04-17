
;;;;コマンドラインからの多重起動防止
(server-start)
;;Finderから起動した時に複数ウィンドウを開かないようにする
(setq ns-pop-up-frames nil) 

;;; ツールバーを消す
(tool-bar-mode 0)

;;; 対応する括弧を光らせる。
(show-paren-mode t)

;;;; 起動時のサイズ,表示位置
(setq initial-frame-alist
      (append (list
                '(foreground-color . "azure3") ;; 文字が白
                '(background-color . "black") ;; 背景は黒
                '(border-color     . "black")
                '(mouse-color      . "white")
                '(cursor-color     . "white")
                '(cursor-type      . box)
                '(menu-bar-lines . 1)
                '(width . 220)
                '(height . 76)
                '(top . 20)
                '(left . 516)
                '(alpha . (95 85 75))
                )
        initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

;;;;Wellcome消去
(setq inhibit-splash-screen t)

;; Show tab, zenkaku-space, white spaces at end of line
;; http://www.bookshelf.jp/soft/meadow_26.html#SEC317
(defface my-face-tab         '((t (:background "Yellow"))) nil :group 'my-faces)
(defface my-face-zenkaku-spc '((t (:background "Green"))) nil :group 'my-faces)
(defface my-face-spc-at-eol  '((t (:foreground "Red" :underline t))) nil :group 'my-faces)
(defvar my-face-tab         'my-face-tab)
(defvar my-face-zenkaku-spc 'my-face-zenkaku-spc)
(defvar my-face-spc-at-eol  'my-face-spc-at-eol)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(("\t" 0 my-face-tab append)
     ("　" 0 my-face-zenkaku-spc append)
     ("[ \t]+$" 0 my-face-spc-at-eol append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
;; settings for text file
(add-hook 'text-mode-hook
          '(lambda ()
             (progn
               (font-lock-mode t)
               (font-lock-fontify-buffer))))
