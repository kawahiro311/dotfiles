(defalias 'perl-mode 'cperl-mode)

(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.psgi$" . cperl-mode))
(add-to-list 'auto-mode-alist '("cpanfile" . cperl-mode))

;; indent
(setq cperl-indent-parens-as-block t)

;; helm-perldoc
(require 'helm-perldoc)
(add-hook 'cperl-mode-hook 'helm-perldoc:carton-setup)
