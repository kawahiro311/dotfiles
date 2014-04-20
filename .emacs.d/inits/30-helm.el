(require 'helm)
(require 'helm-config)
(require 'helm-ls-git)
(helm-mode 1)

(add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))

(global-set-key (kbd "C-c f") 'helm-imenu)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-1") 'helm-ls-git-ls)
