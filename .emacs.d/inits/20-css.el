(defun semicolon-ret ()
  (interactive)
  (insert ";")
  )

(defun brace-ret-brace ()
  (interactive)
  (insert "{")
  (insert "}")
  (indent-for-tab-command)
  )
(add-hook 'css-mode-hook
	  (lambda ()
	    (setq css-indent-offset 2)
	    (define-key css-mode-map ";" 'semicolon-ret)
	    (define-key css-mode-map "{" 'brace-ret-brace)
	    ))

;; scss-mode
(require 'scss-mode)
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("(J\\.scss$" . scss-mode))(B

;; less-css-mode
(require 'less-css-mode)
(defun less-css-mode-hooks ()
  (flymake-mode-off))

(add-hook 'less-css-mode-hook 'less-css-mode-hooks)

;; rainbow-mode
(require 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'less-css-mode-hook 'rainbow-mode)
