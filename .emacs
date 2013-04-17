
;;;;"~/.emacs.d/elisp/"にパス通す
(setq load-path(append(list(expand-file-name "~/.emacs.d/elisp/"))load-path))

;; init-loader
;; http://coderepos.org/share/browser/lang/elisp/init-loader/init-loader.el
;; デフォルトで"~/.emacs.d/inits"以下のファイルをロードする
(require 'init-loader)
(init-loader-load)

;;auto-installの設定
(when(require 'auto-install nil t)
  ;;インストールディレクトリを設定する 初期値は~/.emacs.d/auto-install/
  (setq auto-install-directory "~/.emacs.d/elisp/")
  ;;EmacsWikiに登録されているelispの名前を取得する
  (auto-install-update-emacswiki-package-name t)
  ;;必要であればプロキシの設定を行う
  ;;(setq url-proxy-services '(("http" . "localhost:8339")))
  ;;install-elispの関数を利用可能にする
  (auto-install-compatibility-setup))

;;;; YaTeX
;(setq load-path (cons (expand-file-name "~/.emacs.d/yatex") load-path))
;(setq auto-mode-alist
;       (cons (cons "¥¥.tex$" 'yatex-mode) auto-mode-alist))
;       (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)


;; ------------------------------------------------------------------------
;; @ multi-term.el
;; term-emulater
(require 'multi-term)
(defvar term-unbind-key-list
  '("C-z" "C-x" "C-c" "C-h" "C-y" "<ESC>")
  "The key list that need to unbind.")
(defvar term-rebind-key-alist
  '(
    ("C-c C-c" . term-interrupt-subjob)
    ("M-f" . term-send-forward-word)
    ("M-b" . term-send-backward-word)
    ("M-h" . term-send-backspace)
    ("C-p" . previous-line)
    ("C-n" . next-line)
    ("M-p" . term-send-up)
    ("M-n" . term-send-down)
    ("C-s" . isearch-forward)
    ("C-r" . isearch-backward)
    ("M-M" . term-send-forward-kill-word)
    ("M-N" . term-send-backward-kill-word)
    ("M-." . comint-dynamic-complete)
    ("M-," . term-send-input))
  "The key alist that need to rebind.
If you not like default setup, modified it, with (KEY . COMMAND) format.")
