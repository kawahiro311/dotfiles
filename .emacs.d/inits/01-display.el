;;カラーテーマ
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

;;スタートアップメッセージを非表示
(setq inhibit-startup-screen t)

;;toolbarを非表示
(tool-bar-mode 0)

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

;;elscreen
(elscreen-start)
(setq elscreen-prefix-key "\C-z")

;; タブ抑止 スペース2
(setq-default tab-width 2 indent-tabs-mode nil)

;;whitespace
(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         spaces         ; スペース
                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; スペースは全角のみを可視化
(setq whitespace-space-regexp "\\(\u3000+\\)")

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

(global-whitespace-mode 1)

(defvar my/bg-color "#232323")
(set-face-attribute 'whitespace-trailing nil
                    :background my/bg-color
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background my/bg-color
                    :foreground "LightSkyBlue"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :background my/bg-color
                    :foreground "GreenYellow"
                    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
                    :background my/bg-color)
