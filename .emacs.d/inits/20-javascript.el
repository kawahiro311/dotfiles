(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

(add-hook 'js-mode-hook
	  '(lambda ()
	     (setq js-indent-level 2)))

(require 'flymake-jslint)
(add-hook 'js-mode-hook 'flymake-jslint-load)
