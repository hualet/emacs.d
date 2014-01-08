(defvar flycheck-auto-on-modes nil)
(setq flycheck-auto-on-mode-hooks '('python-mode-hook))
(dolist ((m flycheck-auto-on-modes))
  (add-hook m 'flycheck-mode))

(provide 'init-flycheck)
