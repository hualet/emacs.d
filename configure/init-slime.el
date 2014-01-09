(require 'slime)
(require 'hyperspec)

(setq inferior-lisp-program "sbcl")
(slime-setup '(slime-repl))
(setq common-lisp-hyperspec-root (concat (expand-file-name "~") "/Documents/HyperSpec/"))

(provide 'init-slime)









