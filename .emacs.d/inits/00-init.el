;;文字コード設定
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;; diredを2つのウィンドウで開いている時に、デフォルトの移動orコピー先をもう一方のdiredで開いているディレクトリにする
(setq dired-dwim-target t)

;;オートセーブファイルを作らない
(setq auto-save-default nil)

;;バックアップファイルを作らない
(setq make-backup-files nil)

;;ビープ音をならさない
(setq ring-bell-function 'ignore)

;;;ファイル名の扱い
;;Mac OS Xの場合のファイル名の設定
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))
