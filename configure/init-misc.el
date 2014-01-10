;;; ### Misc ###
;;; --- 一般设置
(menu-bar-mode -1)                ;禁用菜单栏
(tool-bar-mode -1)                ;禁用工具栏
(scroll-bar-mode -1)              ;禁用滚动条
(ido-mode t)
(setq backup-inhibited t)
(fset 'yes-or-no-p 'y-or-n-p)     ;以 y/n代表 yes/no
(global-font-lock-mode t)         ;语法高亮
(transient-mark-mode 1)           ;标记高亮
(column-number-mode t)            ;显示列号
(show-paren-mode t)               ;显示括号匹配
(which-function-mode t)           ;在状态条上显示当前光标在哪个函数体内部
(auto-compression-mode 1)         ;打开压缩文件时自动解压缩
(mouse-avoidance-mode "banish")         ;只要一操作鼠标自动闪开
(setq-default comment-style 'indent)    ;设定自动缩进的注释风格
(setq ring-bell-function 'ignore)       ;关闭烦人的出错时的提示声
(setq inhibit-startup-message t)        ;关闭起动时闪屏
(setq initial-scratch-message nil)      ;禁止在草稿缓存里面显示处始化信息
(setq show-paren-style 'parentheses)    ;括号匹配显示但不是烦人的跳到另一个括号。
(setq blink-matching-paren nil)         ;当插入右括号时不显示匹配的左括号
(setq default-major-mode 'text-mode)    ;设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)            ;粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ;支持emacs和外部程序的粘贴
(setq x-stretch-cursor t)               ;光标在 TAB 字符上会显示为一个大方块
(setq auto-revert-mode 1)               ;自动更新buffer
(setq max-lisp-eval-depth 40000)        ;lisp最大执行深度
(setq max-specpdl-size 10000)           ;最大容量
(setq kill-ring-max 1024)               ;用一个很大的 kill ring. 这样防止我不小心删掉重要的东西
(setq undo-outer-limit 5000000)         ;撤销限制
(setq mark-ring-max 1024)               ;设置的mark ring容量
(setq message-log-max t)                ;设置message记录全部消息, 而不用截去
(setq read-quoted-char-radix 16)        ;设置 引用字符 的基数
(setq void-text-area-pointer nil)       ;禁止显示鼠标指针
(setq enable-recursive-minibuffers t)   ;minibuffer 递归调用命令
(setq eval-expression-print-length nil) ;设置执行表达式的长度没有限制
(setq eval-expression-print-level nil)  ;设置执行表达式的深度没有限制
(setq global-mark-ring-max 1024)        ;设置最大的全局标记容量
(setq history-delete-duplicates t)      ;删除minibuffer的重复历史
(put 'narrow-to-region 'disabled nil)   ;开启变窄区域
(setq print-escape-newlines t)          ;显示字符窗中的换行符为 \n

(delete-selection-mode 1)               ;像在其他环境下一样编辑region --hualet
(add-to-list 'exec-path "/usr/local/bin/")

;;; ### Coding ###
;;; --- 编码设置
(setq default-buffer-file-coding-system 'utf-8-unix)            ;缓存文件编码
(setq default-file-name-coding-system 'utf-8-unix)              ;文件名编码
(setq default-keyboard-coding-system 'utf-8-unix)               ;键盘输入编码
(setq default-process-coding-system '(utf-8-unix . utf-8-unix)) ;进程输出输入编码
(setq default-sendmail-coding-system 'utf-8-unix)               ;发送邮件编码
(setq default-terminal-coding-system 'utf-8-unix)               ;终端编码

;;; ### Advice ###
;;; --- 各种emacs行为建议
;; 在特定地模式下粘贴时自动缩进
(defadvice yank (after indent-region activate)
  "To make yank content indent automatically."
  (if (member major-mode '(emacs-lisp-mode
                           scheme-mode
                           lisp-mode
                           lisp-interaction-mode
                           c-mode
                           c++-mode
                           objc-mode
                           latex-mode
                           plain-tex-mode))
      (indent-region (region-beginning) (region-end) nil)))

;;; ### Minibuffer ###
;;; --- 迷你buffer
(setq minibuffer-message-timeout 1)     ;显示消息超时的时间

;;; ### Indent ###
;;; --- 缩进设置
(setq-default indent-tabs-mode t)       ;默认不用空格替代TAB
(setq default-tab-width 4)              ;设置TAB默认的宽度
(dolist (hook (list                     ;设置用空格替代TAB的模式
               'python-mode-hook
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-hook
               'c++-mode-hook
               'java-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook
               'haskell-cabal-mode-hook
               'qml-mode-hook
               ))
  (add-hook hook '(lambda () (setq indent-tabs-mode nil))))

;;;; ### Windows ###
;;;; --- 用于保存和管理窗口的配置方案
;(win:startup-with-window)
;(setq win:configuration-file "~/.emacs.d/deepin-emacs/Configure-File/Windows/windows-configure") ;窗口布局管理保存文件
;
;;;; ### Revive ###
;;;; --- 用于记录恢复特定窗口配置方案
;(autoload 'save-current-configuration "revive" "Save status" t)
;(autoload 'resume "revive" "Resume Emacs" t)
;(autoload 'wipe "revive" "Wipe Emacs" t)
;(setq revive:configuration-file "~/.emacs.d/deepin-emacs/Configure-File/Revive/revive-configure") ;窗口布局设置保存文件
;
;;;; ### Mode-line ###
;;;; --- mode-line
;(delete 'win:mode-string global-mode-string) ;在 `global-mode-string' 中去掉窗口数字

;;; ### Scroll-mode-line ###
;;; --- 滚动 Mode-line 的信息
(scroll-mode-line-mode 1)

;; linum-mode
(global-linum-mode)

;;;; ### Ctypes-auto-parse ###
;;;; --- 自动对 C 语言的类型定义识别并进行语法加亮
;(ctypes-auto-parse-mode 1)
;
;;;; ### Modeline-posn ###
;;;; --- 在 Mode-line 显示当前Buffer的大小
;(size-indication-mode 1)
;
;;;; ### Hanconvert ###
;;;; --- 自动在简体中文和繁体中文间转换.
;(autoload 'hanconvert-region "hanconvert"
;  "Convert a region from simple chinese to tradition chinese or
;from tradition chinese to simple chinese" t)
;
;;;; ### Files ###
;;;; --- 文件设置
;(setq require-final-newline nil)        ;不自动添加换行符到末尾, 有些情况会出现错误
;                                        ;如果需要手动添加

;; ### Recentf ###
;; --- 打开最近的文件
(recentf-mode 1)
(setq recentf-max-saved-items 100)      ;最近打开文件的最大数量
(setq recentf-auto-cleanup 300)         ;自动清理最近打开文件列表中重复或其他文件的时间间隔 (秒)

;; ### Uniquify ###
;; --- 相同缓存名字时加上路径以区别
(setq uniquify-buffer-name-style 'post-forward-angle-brackets) ;反方向的显示重复的Buffer名字
(setq uniquify-separator "/")                                  ;分隔符
(setq uniquify-after-kill-buffer-p t)                          ;删除重复名字的Buffer后重命名
;
;;;; ### Miniedit ###
;;;; --- 编辑 Minibuffer
;(miniedit-install)                      ;在 minibuffer, 按C-M-e编辑minibuffer
;
;;;; ### Cycle-buffer ###
;;;; --- 循环切换 Buffer
;(autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
;(autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
;(autoload 'cycle-buffer-permissive "cycle-buffer" "Cycle forward allowing *buffers*." t)
;(autoload 'cycle-buffer-backward-permissive "cycle-buffer" "Cycle backward allowing *buffers*." t)
;(autoload 'cycle-buffer-toggle-interesting "cycle-buffer" "Toggle if thisc buffer will be considered." t)
;
;; ### auto-mode-alist ###
;; --- 绑定扩展名到特定的模式
(dolist (elt-cons '(
                   ("\\.markdown" . markdown-mode)
                   ("\\.md" . markdown-mode)
                   ("\\.coffee$" . coffee-mode)
                   ("\\.iced$" . coffee-mode)
                   ("Cakefile" . coffee-mode)
                   ("\\.stumpwmrc\\'" . lisp-mode)
                   ("\\.[hg]s\\'" . haskell-mode)
                   ("\\.hi\\'" . haskell-mode)
                   ("\\.hs-boot\\'" . haskell-mode)
                   ("\\.chs\\'" . haskell-mode)
                   ("\\.l[hg]s\\'" . literate-haskell-mode)
                   ("\\.inc\\'" . asm-mode)
                   ("\\.max\\'" . maxima-mode)
                   ("\\.lrc\\'" . emms-lyrics-mode)
                   ("\\.org\\'" . org-mode)
                   ("\\.cron\\(tab\\)?\\'" . crontab-mode)
                   ("cron\\(tab\\)?\\." . crontab-mode)
                   ("\\.a90\\'" . intel-hex-mode)
                   ("\\.hex\\'" . intel-hex-mode)
                   ("\\.html\\'" . html-helper-mode)
                   ("SConstruct". python-mode)
                   ("\\.ml\\'" . tuareg-mode)
                   ("\\.mli\\'" . tuareg-mode)
                   ("\\.mly\\'" . tuareg-mode)
                   ("\\.mll\\'" . tuareg-mode)
                   ("\\.mlp\\'" . tuareg-mode)
                   ("\\.qml\\'" . qml-mode)
                   ("\\.js\\'" . js2-mode)
                   ))
 (add-to-list 'auto-mode-alist elt-cons))

;;; Zencoding mode.
;(add-hook 'sgml-mode-hook 'zencoding-mode)
;(add-hook 'html-helper-mode-hook 'zencoding-mode)
;(setq zencoding-preview-default nil)
;
;;;; ### Doxymacs ###
;;;; --- 注释管理
;(dolist (hook (list
;               'c-mode-hook
;               'c++-mode-hook
;               'java-mode-hook
;               ))
;  (doxymacs-font-lock)                                                        ;注释高亮模式
;  (add-hook hook 'doxymacs-mode)                                              ;加载文档模式
;  (add-hook hook (lambda () (local-set-key (kbd "C-m") 'my-doxymacs-return))) ;注释智能换行
;  )

;; ### Whitespace ###
;; --- 空格清理
;; (add-hook 'python-mode-hook 'whitespace-cleanup)

;;;; ### Mail-notify ###
;;;; --- 邮件提醒
;(setq mail-notify-directory "~/.emacs.d/deepin-emacs/Mail/inbox/new/") ;新邮件存放目录
;(setq mail-notify-status t)                                            ;默认打开邮件提醒
;(setq mail-notify-repeat 60)                                           ;邮件提醒的周期 (秒)

;; ### Speedbar ###
;; --- 资源管理器
(setq speedbar-show-unknown-files t)    ;显示文件

;;;; ### sr-speedbar ###
;;;; --- Same Frame Speedbar
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-right-side nil)

;; ### Highlight-parentheses ###
;;--- 增强的括号高亮
(add-hook 'find-file-hook 'highlight-parentheses-mode t)
(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode t)
(add-hook 'slime-repl-mode-hook 'highlight-parentheses-mode t)

;;;; ### Kill ring search ###
;;;; --- 删除环搜索
;(autoload 'kill-ring-search "kill-ring-search"
;  "Search the kill ring in the minibuffer."
;  (interactive))
;
;;;; ### Modeline-posn-column-limit ###
;;;; --- 列数限制
;(setq modelinepos-column-limit 80)      ;设置列数限制, 并在mode-line上显示
;
;;;; ### Lisp install automatically ###
;;;; --- Lisp 文件自动安装
;(setq install-elisp-repository-directory "/usr/share/deepin-emacs/Site-Lisp/Packages/LazyCatCollect/") ;elisp自动安装目录
;(setq install-elisp-confirm-flag nil)     ;不确认安装
;(setq install-elisp-use-url-retrieve nil) ;用外部程序下载
;
;;;; ### Save-abbreviation ###
;;;; --- Elisp 命令别名
;(setq save-abbreviation-file "~/.emacs.d/deepin-emacs/Configure-File/Save-Abbreviation/abbreviation") ;Lisp别名存储的位置
;(save-abbreviation-mode)
;
;;;; ### Ibuffer ###
;;;; --- 交互式Buffer
;(setq ibuffer-sorting-mode 'recency)    ;用最近打开模式显示
;
;;;; ### Contentswitch ###
;;;; --- 根据内容进行Buffer和File切换
;(setq contentswitch-file-completion-delay 0.1) ;匹配显示延迟
;(setq contentswitch-max-name-length 40)        ;名字显示的最大宽度
;
;;;; ### find-func ###
;;;; --- 查找函数
;(setq find-function-C-source-directory "/usr/share/deepin-emacs/Src") ;设置Emacs的C语言代码目录

;; ### hl-line ###
;; --- 高亮当前行
(global-hl-line-mode 1)

;;;; ### timid ###
;;;; --- timid补全
;(timid-mode 1)
;(timid-iswitchb-setup)
;
;;;; ### Google-client ###
;;;; --- Google 客户端
;(setq g-user-email my-mail)             ;邮件地址
;
;;;; ### Doc View ###
;;;; --- PDF, PS, DVI 图书浏览器
;; (setq doc-view-cache-directory my-translate-png-directory) ;doc-view转换的图书目录
(setq doc-view-image-width (- (display-pixel-width) 16))
(setq doc-view-resolution 300)

;;; ### Color moccur ###
;;; --- 增强的Buffer搜索
(setq moccur-kill-moccur-buffer t)         ;退出buffer时自动关闭其buffer
(setq moccur-edit-highlight-edited-text t) ;高亮编辑过的内容
(defadvice moccur-edit-change-file         ;编辑过后自动保存buffer
  (after save-after-moccur-edit-buffer activate)
  "Automatically save buffer when edit in moccur."
  (save-buffer))

;;;; ### Auto-fill ###
;;;; --- 自动换行
;(setq default-fill-column 100)          ;默认显示 100列就换行
;(dolist (hook (list
;               'after-text-mode-hook
;               'message-mode-hook
;               'org-mode-hook
;               ))
;  (add-hook hook '(lambda () (auto-fill-mode 1))))

;; ### Tramp ###
;; --- 多协议远程访问
(setq tramp-default-method "ssh")         ;设置传送文件默认的方法
(custom-set-variables '(tramp-verbose 0)) ;设置tramp的响应方式, 关闭后不弹出消息
;
;;;; ### Calendar ###
;;;; --- 日历
;(setq calendar-week-start-day 1)                ;星期一作为一周开始的第一天
;(setq calendar-chinese-location-name "Chengdu") ;本地名称
;(setq calendar-date-style (quote iso))          ;日期格式种类
;(setq diary-file "~/Diary/diary")               ;日记文件
;
;;;; ### Traverse ###
;;;; --- 在目录中搜索和替换, 支持AVFS (虚拟文件系统, 支持压缩文件直读)
;(setq traverse-use-avfs t)                           ;开启AVFS
;(add-to-list 'traverse-ignore-files ".ledger-cache") ;忽略的文件
;
;; ### Term ###
;; --- 终端模拟器
(setq term-eol-on-send t)               ;输入前跳转到最后一行
(add-hook 'term-mode-hook (lambda()
                            (yas-minor-mode -1))) ;这样就能再term下使用tab进行补全了

;; ### Multi-term ###
;; --- 多标签 term
(setq multi-term-program "/bin/zsh")    ;设置默认终端
(setq multi-shell-command "/bin/zsh")
(setq multi-term-dedicated-skip-other-window-p t) ;`other-window' 不在专注窗口中经过
(setq multi-term-scroll-show-maximum-output t)    ;最大输出时滚动
(setq multi-term-scroll-to-bottom-on-output nil)  ;到达底部时不滚动
(setq multi-term-dedicated-select-after-open-p t) ;打开专注终端窗口时聚焦

;; ### Woman ###
;; --- 手册查询
(setq woman-default-indent 7            ;缩进格式
     woman-fill-frame t                ;填充满屏幕
     woman-use-own-frame nil           ;同一个frame
     woman-cache-level 3)              ;缓存级别, 最快

;; ### Pretty lambda ###
;; --- Pretty lambda
(add-hook 'python-mode-hook 'pretty-lambda)

;; ### Smooth scrolling ###
;; --- Smooth scrolling
(setq scroll-step 1
     scroll-conservatively 10000
     auto-window-vscroll nil)
;
;(add-hook 'js-mode-hook
;          (lambda () (flymake-mode 1)))
;
;;; Asm mode.
;(add-hook 'asm-mode-hook
;          (lambda () (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Package Management ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Jedi ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(eval-after-load "python"
  '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Undo  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-undo-tree-mode)                 ;全局undo-tree-mode

(provide 'init-misc)

;;; init-misc.el ends here
