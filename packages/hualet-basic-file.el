(defun find-file-dot-emacs ()
  (interactive)
  (find-file (expand-file-name "~/.emacs")))

(defun find-file-ssh (&optional arg)
  (interactive "sRemote file path:")
  (find-file (concat "/hualet@10.0.0.143:" arg)))

(provide 'hualet-basic-file)
