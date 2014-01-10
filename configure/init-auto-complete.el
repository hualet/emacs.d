(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/dict")
(ac-config-default)
(setq ac-dwim t)

(add-hook 'qml-mode-hook 'auto-complete-mode)

(provide 'init-auto-complete)
