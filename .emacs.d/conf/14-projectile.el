(require 'projectile)
(projectile-mode)

(require 'helm-projectile)
(setq projectile-completion-system 'helm)

(setq projectile-enable-caching t)
