(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)
(setq ac-dwim t)

;(custom-set-variable ac-sources '(ac-source-words-in-buffer
;				  ac-source-variables
;				  ac-source-functions
;				  ac-source-files-in-current-dir
;				  ac-source-dictionary
;				  ac-source-words-in-same-mode-buffers
;				  ac-source-yasnippets)
(provide 'init-auto-complete)
