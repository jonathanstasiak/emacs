(load "defunkt")

(add-to-list 'exec-path "/usr/local/bin")

;; cocoa bindings
(setq mac-option-key-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(global-set-key (kbd "C-|") 'ns-toggle-fullscreen)

(global-linum-mode 1)

;; cua-mode
(cua-mode t)
;; display time
(display-time)
;; setup ido-mode
(ido-mode t)

(vendor 'smart-operator)
(vendor 'flymake)

;; flymake & jslint
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(require 'flymake-jslint)
(add-hook 'js2-mode-hook
          (lambda () (flymake-mode t)))


;; yas
(vendor 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/snippets")

;;auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/ac-dict")
(ac-config-default)
(defun ac-css-mode-setup())

;;(vendor 'python-mode)
(load-library "init_python")
(autoload 'python-pep8 "python-pep8")
(autoload 'pep8 "python-pep8")
(autoload 'python-pylint "python-pylint")
(autoload 'pylint "python-pylint")

;; flymake shortcut
(defun my-flymake-show-next-error()
    (interactive)
    (flymake-goto-next-error)
    (flymake-display-err-menu-for-current-line)
)
(global-set-key (kbd "C-c SPC") 'my-flymake-show-next-error)

;; rst mode
(require 'rst)

;; dvc mode
(add-to-list 'load-path "~/.emacs.d/vendor/dvc/lisp/")
(require 'dvc-autoloads)

;; css-mode
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(autoload 'css-mode "css-mode" nil t)
;(autoload 'css-complete "css-complete")
;(autoload 'css-check "css-check")


;; randome file bindings
(add-to-list 'auto-mode-alist '("\\.tmpl$" . html-mode))
