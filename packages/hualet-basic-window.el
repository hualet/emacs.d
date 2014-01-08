(defun toggle-one-window ()
  "Toggle between window layout and one window."
  (interactive)
  (if (one-window-p t)
      (if toggle-one-window-window-configuration
          (progn
            (set-window-configuration toggle-one-window-window-configuration)
            (setq toggle-one-window-window-configuration nil))
        (message "No other windows exist."))
    (setq toggle-one-window-window-configuration (current-window-configuration))
    (delete-other-windows)))

(provide 'hualet-basic-window)
