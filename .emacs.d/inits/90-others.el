;;undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)

;;anzu
(global-anzu-mode +1)

(custom-set-variables
 '(anzu-mode-lighter "")
 '(anzu-deactivate-region t)
  '(anzu-search-threshold 1000))
