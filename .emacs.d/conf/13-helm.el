(require 'helm-config)
(require 'helm-ls-git)
(helm-mode 1)

(global-set-key (kbd "M-x") 'helm-M-x)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-grep-match ((t (:inherit default))))
 '(helm-match ((t (:foreground "green" :underline t))))
)
