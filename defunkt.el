(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(when (file-exists-p custom-file) (load custom-file))

;(when (file-exists-p ".passwords") (load ".passwords"))

(load "defunkt/lisp")
(load "defunkt/global")
(load "defunkt/defuns")
(load "defunkt/bindings")
(load "defunkt/modes")
;(load "defunkt/theme")
(load "defunkt/temp_files")
(load "defunkt/github")
(load "defunkt/git")
(load "defunkt/todo")

;(vendor 'ack)
;(vendor 'cheat)
;(vendor 'magit)
;(vendor 'textile-mode)
(vendor 'yaml-mode)
;(vendor 'open-file-in-github)
;(vendor 'ooc-mode)
;(vendor 'coffee-mode)
