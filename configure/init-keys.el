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
   ("M-h" . ac-complete)                ;��ȫ��ǰѡ�е�
   ("M-H" . ac-expand-common)           ;��ȫ��������
   ("M-U" . ac-stop)                    ;ֹͣ
   ("M-," . ac-next)                    ;��һ��
   ("M-." . ac-previous)                ;��һ��
   )
 ac-complete-mode-map
 )

;;; ### Tabbar ###
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;�ƶ�����һ����ǩ
   ("M-8" . tabbar-forward-tab)               ;�ƶ���ǰһ����ǩ
   ("M-9" . tabbar-backward-group)            ;�ƶ�����һ����ǩ��
   ("M-0" . tabbar-forward-group)             ;�ƶ���ǰһ����ǩ��
   ("M-&" . tabbar-backward-tab-other-window) ;��ǰ�ƶ��������ڵı�ǩ
   ("M-*" . tabbar-forward-tab-other-window)  ;����ƶ��������ڵı�ǩ
   ("M-s-7" . tabbar-select-beg-tab)          ;�ƶ�������ߵı�ǩ
   ("M-s-8" . tabbar-select-end-tab)          ;�ƶ������ұߵı�ǩ
   ))

;;; ### Window Operation ###
(lazy-set-key
 '(
   ("C-c v" . split-window-vertically)                ;����ָ��
   ("C-c h" . split-window-horizontally)              ;����ָ��
   ("C-'" . delete-current-buffer-and-window)         ;�رյ�ǰbuffer, ���رմ���
   ;; ("C-\"" . delete-current-buffer-window)            ;ɾ����ǰbuffer�Ĵ���
   ("C-;" . kill-this-buffer)                         ;�رյ�ǰbuffer
   ;; ("C-M-;" . kill-other-window-buffer)               ;�ر��������ڵ�buffer
   ("C-x ;" . delete-other-windows)                   ;�ر���������
   ("M-s-o" . toggle-one-window)                      ;�л�һ������
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
   ("s-M" . rm-set-mark)                         ;���α��
   ("s-X" . rm-exchange-point-and-mark)          ;���ζԽǽ���
   ("s-D" . rm-kill-region)                      ;����ɾ��
   ("s-S" . rm-kill-ring-save)                   ;���α���
   ("s-Y" . yank-rectangle)                      ;ճ������
   ("s-O" . open-rectangle)                      ;�ÿհ�������, �������ƶ��ı�
   ("s-C" . clear-rectangle)                     ;��վ���
   ("s-T" . string-rectangle)                    ;���ַ���������ε�ÿһ��
   ("s-I" . string-insert-rectangle)             ;�����ַ����ھ��ε�ÿһ��
   ("s-F" . delete-whitespace-rectangle)         ;ɾ�������пո�
   ("s-:" . mark-rectangle-to-end)               ;��Ǿ��ε���ĩ
   ("s-H" . execute-command-with-region-replace) ;��ѡ���������ִ������滻
   ("s-P" . execute-command-with-region-kill)    ;��ѡ���������ִ�����ɾ��
   ("s-\"" . copy-rectangle-to-register)         ;�������ε��Ĵ���
   ))

(lazy-set-key
 '(
   ("h" . dired-next-subdir)                   ;��һ����Ŀ¼
   ("l" . dired-prev-subdir)                   ;��һ����Ŀ¼
   ("j" . dired-next-file-line)                ;��һ��
   ("k" . dired-previous-file-line)            ;��һ��
   ("n" . dired-next-dirline)                  ;��һ��Ŀ¼
   ("p" . dired-prev-dirline)                  ;��һ��Ŀ¼
   ("f" . dired-find-file+)                    ;�򿪵�ǰ�ļ���Ŀ¼
   ("P" . dired-do-kill-lines)                 ;ɾ����ǵ���
   ("4" . dired-serial-rename)                 ;����������
   ("5" . dired-translate-to-html)             ;ת����HTML��ʽ
   ("7" . dired-move-to-last-file)             ;�ƶ������һ���ļ�
   ("8" . dired-move-to-first-file)            ;�ƶ�����һ���ļ�
   ("9" . auto-install-from-dired)             ;�Զ���EmacsWiki��װ��ǵ��ļ�
   ("E" . dired-touch-now)                     ;Touch����
   ("z" . dired-do-moccur)                     ;����dired
   ("I" . image-dired)                         ;�����ģʽ
   ("w" . wdired-change-to-wdired-mode)        ;�л���dired�༭ģʽ
   ("W" . dired-x-find-file)                   ;�����ļ�
   ("\"" . find-lisp-find-dired-pwd)           ;�����ض���lisp�ļ�
   ("J" . dired-goto-file)                     ;����ĳ���ļ�
   ("K" . dired-open-file)                     ;�����ļ���׺���ܴ��ļ�
   ("X" . traverse-cp-or-mv-extfiles-in-dir)   ;�������ƶ�Ŀ¼��ָ����չ�����ļ�
   ("V" . traverse-dired-browse-archive)       ;���ѹ���ļ�
   (";" . dired-view-minor-mode-toggle)        ;��ĸ���뵼��ģʽ
   ("," . dired-diff)                          ;�Ƚ��ļ�
   ("'" . dired-up-directory-single)           ;������һ��Ŀ¼
   ("SPC" . scroll-up)                         ;���·�ҳ
   ("e" . scroll-down)                         ;���Ϸ�ҳ
   ("c" . kill-this-buffer)                    ;�رյ�ǰ��ǩ
   ("/" . copy-buffer-file-name-as-kill)       ;��ʾ·��������
   ("[" . dired-rename-with-copy)              ;����������
   ("?" . dired-get-size)                      ;�õ��ļ��Ĵ�С
   ("M-o" . dired-toggle-omit)                 ;�л�����״̬
   ("T" . dired-do-tarball)                    ;tarballѹ��
   )
 dired-mode-map
 )

;; ###Font###
(lazy-set-key
 '(
   ("s--" . text-scale-decrease)        ;��С�����С
   ("s-=" . text-scale-increase)        ;���������С
   ("M--" . text-scale-decrease-global) ;���������С, ȫ��
   ("M-+" . text-scale-increase-global) ;���������С, ȫ��
   ("M-=" . text-scale-default-global)  ;�ָ������С, ȫ��
   ))

;;; ### Color-moccur ###
;;; --- ��ǿ��moccur
(lazy-set-key
 '(
                                        ;("s-x v" . moccur-grep)              ;������ǰĿ¼�µ��ļ�
                                        ;("s-x g" . moccur-grep-find-pwd)     ;�ݹ�������ǰĿ¼�µ��ļ�
   ))

;;; ### Paredit ###
;;; --- �ṹ�����
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 paredit-mode-map)                      ;ж�ذ���
(lazy-set-key
 '(
   ;; ���Ų���
   ("(" . paredit-open-parenthesis)           ;���� (
   (")" . paredit-close-parenthesis)          ;���� )
   ("[" . paredit-open-bracket)               ;���� [
   ("]" . paredit-close-bracket)              ;���� ]
   ("{" . paredit-open-curly)                 ;���� {
   ("}" . paredit-close-curly)                ;���� }
   ("C-s-," . paredit-open-angled)            ;���� <
   ("C-s-." . paredit-close-angled)           ;���� >
   ("\"" . paredit-doublequote)               ;���� "
   ("\\" . paredit-backslash)                 ;���� \
   ;; ɾ��
   ("M-o" . paredit-backward-delete)          ;���ɾ��
   ("C-d" . paredit-forward-delete)           ;��ǰɾ��
   ("C-k" . paredit-kill)                     ;ɾ��
   ("C-M-m" . paredit-forward-kill-word)      ;��ǰ����ɾ��
   ("C-M-n" . paredit-backward-kill-word)     ;��󰴴�ɾ��
   ;; �ƶ�
   ("C-M-S-m" . paredit-forward)              ;��ǰ�ƶ�
   ("C-M-S-n" . paredit-backward)             ;����ƶ�
   ;; ��Χ
   ("M-\"" . paredit-meta-doublequote)        ;�� " " ��Χ����, �������ַ���
   ("M-(" . paredit-wrap-sexp)                ;�� ( ) ��Χ��ǰ����
   ("M-[" . paredit-wrap-square)              ;�� [ ] ��Χ����
   ("M-{" . paredit-wrap-curly)               ;�� { } ��Χ����
   ("C-(" . paredit-wrap-angled)              ;�� < > ��Χ����
   ;; ��������������
   ("M-}" . paredit-close-curly-and-newline)  ;���� { } ������
   ("M-]" . paredit-close-square-and-newline) ;���� [ ] ������
   ("C-)" . paredit-close-angled-and-newline) ;���� < > ������
   ;; ����
   ("C-j" . paredit-newline)            ;���ܻ��в�����
   ("M-q" . paredit-reindent-defun)     ;���¸�ʽ������
   ("M-s-r" . paredit-raise-sexp)       ;��ȡ���ʽ, ��ɾ��ͬһ�ȼ����������ʽ
   ("M-s-b" . paredit-convolute-sexp)   ;Ƕ�ױ��ʽ
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
;;; --- �����ƶ�
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
;;; --- ���ߺ���
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
 undo-tree-map)                         ;ж�ذ���

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
