(setq display-time-day-and-date t)                             ;打开日期显示
(display-time-mode 1)                                          ;打开时间显示
(display-time)                                                 ;显示时间
(setq display-time-format " %Y/%m/%d %H:%M %A")                ;设定时间显示格式
(setq display-time-24hr-format t)                              ;打开24小时显示模式
(setq time-stamp-format "%3a %3b %2d %02H:%02M:%02S %:y (%z)") ;设置时间戳的显示格式

(provide 'init-time)
