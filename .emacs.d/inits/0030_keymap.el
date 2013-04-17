
;;;;C-hにBS割り当て
(global-set-key "\C-h" 'delete-backward-char)

;;Viカーソル移動を右にひとつずらした配列
(global-set-key "\C-j" 'backward-char)
(global-set-key "\C-k" 'next-line)
(global-set-key "\C-l" 'previous-line)
(global-set-key [?\C-;] 'forward-char)

;;C-nにkill-line
(global-set-key "\C-n" 'kill-line)
