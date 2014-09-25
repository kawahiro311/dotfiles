(require 'helm)
(require 'helm-config)
(require 'helm-ls-git)
(require 'helm-gtags)
(helm-mode 1)

(global-set-key (kbd "C-q") 'helm-mini)
(global-set-key (kbd "C-c f") 'helm-imenu)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-1") 'helm-ls-git-ls)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;; tags
(add-hook 'ruby-mode-hook (lambda () (helm-gtags-mode)))
(add-hook 'helm-gtags-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "M-g") 'helm-gtags-dwim)
	     (local-set-key (kbd "M-s") 'helm-gtags-show-stack)
	     (local-set-key (kbd "M-p") 'helm-gtags-previous-history)
	     (local-set-key (kbd "M-n") 'helm-gtags-next-history)))
