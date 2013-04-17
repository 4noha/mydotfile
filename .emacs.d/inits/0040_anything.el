
;-----------------------------------------------------------------------------
;;anything
(require 'anything-config)
(define-key anything-map "\C-k" 'anything-next-line)
(define-key anything-map "\C-l" 'anything-previous-line)
(setq ac-use-menu-map t)
;(define-key ac-menu-map "\C-k" 'ac-next)
;(define-key ac-menu-map "\C-l" 'ac-previous)

(defun anything-c-buffer-list ()
  "Return the list of names of buffers with the `anything-buffer'
and hidden buffers filtered out.  The first buffer in the list
will be the last recently used buffer that is not the current
buffer."
  (let ((buffers (remove-if (lambda (name)
                              (or (equal name anything-buffer)
                                  (eq ?\  (aref name 0))))
                            (mapcar 'buffer-name (buffer-list)))))
    (append (cdr buffers) (list (car buffers)))))

(defvar anything-c-source-buffers
  '((name . "Buffers")
    (candidates . anything-c-buffer-list)
    (volatile)
    (type . buffer)))

(setq anything-sources
      (list anything-c-source-buffers))
