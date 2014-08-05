;; 野鳥が置いてある directry の load-path 設定
;; default で load-path が通っている場合は必要ありません
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/yatex"))

;;;; YaTeX (野鳥)
;; yatex-mode を起動させる設定
(setq auto-mode-alist (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)


(setq tex-command "~/Library/TeXShop/bin/platex2pdf-utf8"
      dvi2-command "open -a Preview"
      YaTeX-kanji-code 4
      section-name "documentclass"
      makeindex-command "mekeindex"
      YaTeX-latex-message-code 'utf-8
      YaTeX-use-AMS-LaTeX t
      YaTeX-use-LaTeX2e t
      YaTeX-use-font-lock t)
