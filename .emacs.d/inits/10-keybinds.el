;;key-chord
(require 'key-chord)
(key-chord-mode 1)

;;delete
(global-set-key (kbd "C-h") 'delete-backward-char)

;;undo
(global-set-key (kbd "C-/") 'undo)

;;"C-t" でウィンドウ切り替え
(define-key global-map (kbd "C-t") 'other-window)

(key-chord-define-global "hj" 'helm-ls-git-ls)
