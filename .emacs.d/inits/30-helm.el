(require 'helm)
(require 'helm-config)
(require 'helm-ls-git)
(helm-mode 1)

(global-set-key (kbd "C-c f") 'helm-imenu)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-1") 'helm-ls-git-ls)
