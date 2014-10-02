(global-set-key (kbd "C-x w") 'elfeed)
; Load the feeds file
(load "~/.emacs.d/tmp/elfeed.el")

; date format
(defun elfeed-search-format-date (date)
  (format-time-string "%Y-%m-%d %H:%M" (seconds-to-time date)))

; custom face
(custom-set-faces
 '(elfeed-search-title-face
   ((t :foreground "#e5e5e5"
       :weight extra-bold
       :underline t)))
 )
