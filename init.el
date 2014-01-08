(setq el-get-resources '(auto-complete
			 yasnippet
			 highlight-parentheses
			 undo-tree
			 paredit
			 color-moccur
			 rect-mark
			 helm
			 browse-kill-ring
			 flycheck
             multi-term
             dired-details
             dired-details+
			 ))

(require 'undo-tree)
(require 'highlight-parentheses)
(require 'scroll-mode-line-mode)

(require 'color-moccur)
(require 'lazy-set-key)
(require 'one-key)
(require 'one-key-config)

(require 'hualet-basic-buffer)
(require 'hualet-basic-file)
(require 'hualet-basic-window)

(load-theme 'spolsky)
(require 'init-auto-save)
(require 'init-helm)
(require 'init-time)
(require 'init-paredit)
(require 'init-tabbar)
(require 'init-eldoc)
(require 'init-flycheck)
(require 'init-misc)
(require 'init-keys)

(provide 'init)