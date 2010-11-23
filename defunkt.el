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
(load "defunkt/temp_files")
(load "defunkt/todo")
;(load "defunkt/github")
;(load "defunkt/git")

(vendor 'ack)
(vendor 'yaml-mode)
(vendor 'coffee-mode)

;(vendor 'cheat)
;(vendor 'magit)
;(vendor 'textile-mode)
;(vendor 'open-file-in-github)
;(vendor 'ooc-mode)

