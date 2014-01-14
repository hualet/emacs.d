;; ### Functin key ###
(lazy-set-key
 '(
   ("<f6>" . lock-screen)                        
   ("^" . dired-jump)                         
   ("<f11>" . fullscreen-toggle)                 
   ("M-2" . indent-buffer)                       
   ("M-3" . flycheck-previous-error)    
   ("M-4" . flycheck-next-error)    
   ))

;;; ### Unset key ###
(lazy-unset-key                         
 '("C-z" "C-q" "s-W" "s-z" "s-x" "s-c" "M-h" "C-\\"))


;;; ### Auto-complete ###
(lazy-unset-key
 '("RET" "TAB")
 ac-complete-mode-map)
(lazy-set-key
 '(
   ("M-h" . ac-complete)                ;补全当前选中的
   ("M-H" . ac-expand-common)           ;补全公共部分
   ("M-U" . ac-stop)                    ;停止
   ("M-," . ac-next)                    ;下一个
   ("M-." . ac-previous)                ;上一个
   )
 ac-complete-mode-map
 )

;;; ### Tabbar ###
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;移动到后一个标签
   ("M-8" . tabbar-forward-tab)               ;移动到前一个标签
   ("M-9" . tabbar-backward-group)            ;移动到后一个标签组
   ("M-0" . tabbar-forward-group)             ;移动到前一个标签组
   ("M-&" . tabbar-backward-tab-other-window) ;向前移动其他窗口的标签
   ("M-*" . tabbar-forward-tab-other-window)  ;向后移动其他窗口的标签
   ("M-s-7" . tabbar-select-beg-tab)          ;移动到最左边的标签
   ("M-s-8" . tabbar-select-end-tab)          ;移动到最右边的标签
   ))

;;; ### Window Operation ###
(lazy-set-key
 '(
   ("C-c v" . split-window-vertically)                ;纵向分割窗口
   ("C-c h" . split-window-horizontally)              ;横向分割窗口
   ("C-'" . delete-current-buffer-and-window)         ;关闭当前buffer, 并关闭窗口
   ;; ("C-\"" . delete-current-buffer-window)            ;删除当前buffer的窗口
   ("C-;" . kill-this-buffer)                         ;关闭当前buffer
   ;; ("C-M-;" . kill-other-window-buffer)               ;关闭其他窗口的buffer
   ("C-x ;" . delete-other-windows)                   ;关闭其它窗口
   ("M-s-o" . toggle-one-window)                      ;切换一个窗口
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Multi-Cursor ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-R") 'mc/mark-all-like-this-dwim)

;;; ### Multi-Term ###
(lazy-set-key
 '(
   ("s-e" . multi-term-next)               
   ("s-w" . multi-term-prev)               
   ("s-n" . multi-term)                    
   ("s-x s-x" . multi-term-dedicated-toggle)
   ("s-x s-z" . multi-term-dedicated-select)
   ))

;;; ### Rect ###
(lazy-set-key
 '(
   ("s-M" . rm-set-mark)                         ;矩形标记
   ("s-X" . rm-exchange-point-and-mark)          ;矩形对角交换
   ("s-D" . rm-kill-region)                      ;矩形删除
   ("s-S" . rm-kill-ring-save)                   ;矩形保存
   ("s-Y" . yank-rectangle)                      ;粘帖矩形
   ("s-O" . open-rectangle)                      ;用空白填充矩形, 并向右移动文本
   ("s-C" . clear-rectangle)                     ;清空矩形
   ("s-T" . string-rectangle)                    ;用字符串替代矩形的每一行
   ("s-I" . string-insert-rectangle)             ;插入字符串在矩形的每一行
   ("s-F" . delete-whitespace-rectangle)         ;删除矩形中空格
   ("s-:" . mark-rectangle-to-end)               ;标记矩形到行末
   ("s-H" . execute-command-with-region-replace) ;在选择的区域中执行命令并替换
   ("s-P" . execute-command-with-region-kill)    ;在选择的区域中执行命令并删除
   ("s-\"" . copy-rectangle-to-register)         ;拷贝矩形到寄存器
   ))

(lazy-set-key
 '(
   ("h" . dired-next-subdir)                   ;下一个子目录
   ("l" . dired-prev-subdir)                   ;上一个子目录
   ("j" . dired-next-file-line)                ;下一行
   ("k" . dired-previous-file-line)            ;上一行
   ("n" . dired-next-dirline)                  ;下一个目录
   ("p" . dired-prev-dirline)                  ;上一个目录
   ("f" . dired-find-file+)                    ;打开当前文件或目录
   ("P" . dired-do-kill-lines)                 ;删除标记的行
   ("4" . dired-serial-rename)                 ;批量重命名
   ("5" . dired-translate-to-html)             ;转换到HTML格式
   ("7" . dired-move-to-last-file)             ;移动到最后一个文件
   ("8" . dired-move-to-first-file)            ;移动到第一个文件
   ("9" . auto-install-from-dired)             ;自动从EmacsWiki安装标记的文件
   ("E" . dired-touch-now)                     ;Touch命令
   ("z" . dired-do-moccur)                     ;搜索dired
   ("I" . image-dired)                         ;打开浏览模式
   ("w" . wdired-change-to-wdired-mode)        ;切换到dired编辑模式
   ("W" . dired-x-find-file)                   ;查找文件
   ("\"" . find-lisp-find-dired-pwd)           ;查找特定的lisp文件
   ("J" . dired-goto-file)                     ;跳到某个文件
   ("K" . dired-open-file)                     ;根据文件后缀智能打开文件
   ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;拷贝或移动目录下指定扩展名的文件
   ("V" . traverse-dired-browse-archive)       ;浏览压缩文件
   (";" . dired-view-minor-mode-toggle)        ;字母输入导航模式
   ("," . dired-diff)                          ;比较文件
   ("'" . dired-up-directory-single)           ;返回上一级目录
   ("SPC" . scroll-up)                         ;向下翻页
   ("e" . scroll-down)                         ;向上翻页
   ("c" . kill-this-buffer)                    ;关闭当前标签
   ("/" . copy-buffer-file-name-as-kill)       ;显示路径或名称
   ("[" . dired-rename-with-copy)              ;重命名函数
   ("?" . dired-get-size)                      ;得到文件的大小
   ("M-o" . dired-toggle-omit)                 ;切换忽略状态
   ("T" . dired-do-tarball)                    ;tarball压缩
   )
 dired-mode-map
 )

;; ###Font###
(lazy-set-key
 '(
   ("s--" . text-scale-decrease)        ;减小字体大小
   ("s-=" . text-scale-increase)        ;增大字体大小
   ("M--" . text-scale-decrease-global) ;减少字体大小, 全局
   ("M-+" . text-scale-increase-global) ;增加字体大小, 全局
   ("M-=" . text-scale-default-global)  ;恢复字体大小, 全局
   ))

;;; ### Color-moccur ###
;;; --- 增强的moccur
(lazy-set-key
 '(
                                        ;("s-x v" . moccur-grep)              ;搜索当前目录下的文件
                                        ;("s-x g" . moccur-grep-find-pwd)     ;递归搜索当前目录下的文件
   ))

;;; ### Paredit ###
;;; --- 结构化编程
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 paredit-mode-map)                      ;卸载按键
(lazy-set-key
 '(
   ;; 符号插入
   ("(" . paredit-open-parenthesis)           ;智能 (
   (")" . paredit-close-parenthesis)          ;智能 )
   ("[" . paredit-open-bracket)               ;智能 [
   ("]" . paredit-close-bracket)              ;智能 ]
   ("{" . paredit-open-curly)                 ;智能 {
   ("}" . paredit-close-curly)                ;智能 }
   ("C-s-," . paredit-open-angled)            ;智能 <
   ("C-s-." . paredit-close-angled)           ;智能 >
   ("\"" . paredit-doublequote)               ;智能 "
   ("\\" . paredit-backslash)                 ;智能 \
   ;; 删除
   ("M-o" . paredit-backward-delete)          ;向后删除
   ("C-d" . paredit-forward-delete)           ;向前删除
   ("C-k" . paredit-kill)                     ;删除
   ("C-M-m" . paredit-forward-kill-word)      ;向前按词删除
   ("C-M-n" . paredit-backward-kill-word)     ;向后按词删除
   ;; 移动
   ("C-M-S-m" . paredit-forward)              ;向前移动
   ("C-M-S-n" . paredit-backward)             ;向后移动
   ;; 包围
   ("M-\"" . paredit-meta-doublequote)        ;用 " " 包围对象, 或跳出字符串
   ("M-(" . paredit-wrap-sexp)                ;用 ( ) 包围当前对象
   ("M-[" . paredit-wrap-square)              ;用 [ ] 包围对象
   ("M-{" . paredit-wrap-curly)               ;用 { } 包围对象
   ("C-(" . paredit-wrap-angled)              ;用 < > 包围对象
   ;; 跳出并换行缩进
   ("M-}" . paredit-close-curly-and-newline)  ;跳出 { } 并换行
   ("M-]" . paredit-close-square-and-newline) ;跳出 [ ] 并换行
   ("C-)" . paredit-close-angled-and-newline) ;跳出 < > 并换行
   ;; 其他
   ("C-j" . paredit-newline)            ;智能换行并缩进
   ("M-q" . paredit-reindent-defun)     ;重新格式化函数
   ("M-s-r" . paredit-raise-sexp)       ;提取表达式, 并删除同一等级的其他表达式
   ("M-s-b" . paredit-convolute-sexp)   ;嵌套表达式
   )
 paredit-mode-map)

;;; ### Buffer Edit ###
(lazy-set-key
 '(
   ("C-x f" . helm-find-files)		
   ("C-:" . comment-or-uncomment-current-line)     
   ("M-z" . zap-to-char)                
   ("C-M-z" . zap-back-to-char)         
   ("C-o" . open-newline-above)         
   ("C-l" . open-newline-below)         
   ("C-x u" . mark-line)                
   ("C-S-o" . duplicate-line-or-region-above) 
   ("C-S-l" . duplicate-line-or-region-below) 
   ("C-S-s-o" . duplicate-line-above-comment) 
   ("C-S-s-l" . duplicate-line-below-comment) 
   ("C-c +" . increment-number-at-point)
   ("C-c -" . decrement-number-at-point)
   ))

;;; ### Buffer Move ###
;;; --- 缓存移动
(lazy-set-key
 '(
   ;; ("s-N" . move-text-down)             
   ;; ("s-P" . move-text-up)               
   ;; ("s-J" . scroll-up-one-line)         
   ;; ("s-K" . scroll-down-one-line)       
   ;; ("M-J" . scroll-other-window)        
   ;; ("M-K" . scroll-other-window-down)      
   ;; ("M-<" . scroll-other-window-up-line)   
   ;; ("M->" . scroll-other-window-down-line) 
   ("C-z k" . beginning-of-buffer)         
   ("C-z j" . end-of-buffer)               
   ("%" . match-paren)                     
   ("C->" . remember-init)                 
   ("C-<" . remember-jump)                 
   ("M-s" . lazy-search-menu)              
   ("M-s-," . point-stack-pop)             
   ("M-s-." . point-stack-push)            
   ))

;; ### Helm ###
;; 
(lazy-set-key
 '(
   ("s-y" . helm-mini)
   )
 )

;; ### Python ###
;; --- Python mode
(require 'python)
(lazy-set-key
 '(
   ("C-S-j" . jump-to-import)
   )
 python-mode-map)

;; ### Elisp mode ###
(lazy-set-key
 '(
   ("C-c C-v" . find-variable-at-point)
   ("C-c C-j" . find-function-at-point)
   )
 emacs-lisp-mode-map)

;;; ### Toolkit ###
;;; --- 工具函数
(lazy-set-key
 '(
                                        ;   ("s-c o" . one-key-menu-directory)       
   ;; ("s-," . bury-buffer)                    
   ;; ("s-." . unbury-buffer)                  
   ;; ("s-&" . killall)                        
   ;; ("C-x w" . count-words)                  
   ("s-Z" . find-file-dot-emacs)                      
   ;; ("C-x f" . find-file-at-point)           
   ("s-f" . find-file-root)                 
   ("s-r" . find-file-smb)                  
   ;; ("<print>" . save-screenshots)        
   ;; ("<M-s-return>" . toggle-debug-on-error) 
   ;; ("s-R" . re-builder)                     
   ;; ;; ("s-1" . elisp-depend-insert-require) 
   ;; ("s-1" . sort-lines)                  
   ;; ("s-2" . elisp-depend-insert-comment) 
   ;; ("s-3" . hanconvert-region)           
   ;; ("s-4" . uniquify-all-lines-buffer)   
   ;; ("s-[" . eval-expression)             
   ;; ("s-\\" . artist-mode)                
   ;; ("M-s-u" . ediff-buffers)             
   ;; ("C-s-q" . quoted-insert)             
   ("C-c f" . hualet-insert-filename)   
   ("C-x 5" . rotate-windows)           
   ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Undo tree ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(lazy-unset-key
 '("C-x u")
 undo-tree-map)                         ;卸载按键

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Org-mode ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c c") 'org-capture)

;; Go
(lazy-set-key
 '(("C-c C-r" . go-remove-unused-imports)
   ("C-c C-f" . gofmt))
 go-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Browser Kill Ring ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-y") 'browse-kill-ring)

(provide 'init-keys)
