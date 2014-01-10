(add-hook 'prog-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'slime-repl-mode-hook 'paredit-mode)
(add-hook 'qml-mode-hook 'paredit-mode)

(provide 'init-paredit)
