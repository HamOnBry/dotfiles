(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;;org-mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;;config for golang
(load "go-mode.el")
(load "go-mode-load.el")
(require 'auto-complete-config)
(add-to-list 'ac-modes 'go-mode)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp//ac-dict")
(ac-config-default)
(require 'go-autocomplete)
(add-to-list 'exec-path "~/projects/golang/bin")

(setq scroll-step 1)

;;(global-set-key (kbd "C-x C-b") 'ibuffer)
(defalias 'list-buffers 'ibuffer)

;;(load "col-highlight")
(global-hl-line-mode 1)
;;(column-highlight-mode)
;;(set-face-background 'hl-line "3d4753")
;;(set-face-background 'col-highlight "3d4753")

(require 'linum)
(setq linum-format "%d ")
(global-linum-mode 1)

(load-theme 'ujelly t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5cbfbbc76f64d4035c2d1647f2fac8d89080e3d9f9d0f3b57a1ac886d246276e" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
