(defvar flycheck-auto-on-mode-hooks nil)
(setq flycheck-auto-on-mode-hooks '(python-mode-hook
                                    go-mode-hook))
(dolist (m flycheck-auto-on-mode-hooks)
  (add-hook m 'flycheck-mode))

(provide 'init-flycheck)
