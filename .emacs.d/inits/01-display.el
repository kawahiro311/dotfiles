;;カラーテーマ
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

;;スタートアップメッセージを非表示
(setq inhibit-startup-screen t)

;;toolbarを非表示
(tool-bar-mode 0)

;;scroll-barを非表示
(scroll-bar-mode 0)

;;menubarを非表示
(menu-bar-mode 0)

;;;対応する括弧を光らせる。
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(show-paren-mode t) ; 有効化
;;parenのスタイル: expressionは括弧内も強調表示
(setq show-paren-style 'expression)
;;フェイスを変更する
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "yellow")

;;選択部分のハイライト
(transient-mark-mode t)

;;行間
(setq-default line-spacing 0)

;;行番号の表示
(global-linum-mode t)
(setq linum-format "%4d ")
(set-face-attribute 'linum nil
		    :foreground "#f0e68c")

;;ミニバッファの色
(set-face-foreground 'minibuffer-prompt "cyan1")
