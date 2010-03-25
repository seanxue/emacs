;;This file is for the standard Emacs options. 

;;to manage the geometric size of initial window.
(setq initial-frame-alist
      '((width . 120) (height . 50)
	(tool-bar-lines . 0)
	(menu-bar-lines . 1)
	(vertical-scroll-bars . nil))
      )
(setq default-frame-alist
      '((width . 120) (height . 50)
	(tool-bar-lines . 0)
	(menu-bar-lines . 1)
	(vertical-scroll-bars . nil))
      )
(setq minibuffer-frame-alist
      '((top . 1) (left . 1)
	(width . 120) (height . 6))
      )

(setq inhibit-startup-screen 1);不显示默认欢迎界面，即*GNU Emacs*
(setq default-directory "~/") ;设置默认目录，需要放置在上面一条语句之后，否则默认的为/目录
(fset 'yes-or-no-p 'y-or-n-p) ;以 y/n代表 yes/no
(setq x-select-enable-clipboard 1) ;支持emacs和外部程序共用剪切板
(global-font-lock-mode 1) ;全局开启语法高亮

(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;=== Global Macros ===
;全屏
(defun sean/window-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

;最大化
(defun sean/window-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)

;;=== Global Key Bindings ===

;;key bindings of travling in buffer
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)
(global-set-key [(meta g)] 'goto-line)

;;the following bindings are the function keys, a copy of refcard.el of sams 24hrs
;----------------------------------------------------------------------
;                                   F1
;----------------------------------------------------------------------
;Run a termianl in multi term mode, overlap call of help funciton
(global-set-key [(f1)] 'multi-term) 
(global-set-key [(shift f1)] 'sams-unbound-key)
(global-set-key [(control f1)] 'sams-unbound-key)
(global-set-key [(meta f1)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F2
;----------------------------------------------------------------------
(global-set-key [(f2)] 'list-matching-lines)
(global-set-key [(shift f2)] 'sams-keep-lines)
(global-set-key [(control f2)] 'sams-kill-lines)
(global-set-key [(meta f2)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F3
;----------------------------------------------------------------------
(global-set-key [(f3)] 'kill-rectangle)
(global-set-key [(shift f3)] 'yank-rectangle)
(global-set-key [(control f3)] 'string-rectangle)
(global-set-key [(meta f3)] 'open-rectangle)

;----------------------------------------------------------------------
;                                    F4
;----------------------------------------------------------------------
(global-set-key [(f4)] 'tags-search)
(global-set-key [(shift f4)] 'tags-query-replace)
(global-set-key [(control f4)] 'tags-apropos)
(global-set-key [(meta f4)] 'visit-tags-table)

;----------------------------------------------------------------------
;                                    F5
;----------------------------------------------------------------------
(global-set-key [(f5)] 'compile)
(global-set-key [(shift f5)] 'sams-cm-save-point)
(global-set-key [(control f5)] 'font-lock-fontify-buffer)
(global-set-key [(meta f5)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F6
;----------------------------------------------------------------------
(global-set-key [(f6)] 'undo)
(global-set-key [(shift f6)] 'redo)
(global-set-key [(control f6)] 'sams-toggle-truncate)
(global-set-key [(meta f6)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F7
;----------------------------------------------------------------------
(global-set-key [(f7)] 'ispell-word)
(global-set-key [(shift f7)] 'ispell-region)
(global-set-key [(control f7)] 'ispell-buffer)
(global-set-key [(meta f7)] 'flyspell-mode)

;----------------------------------------------------------------------
;                                    F8
;----------------------------------------------------------------------
(global-set-key [(f8)] 'bookmark-jump)
(global-set-key [(shift f8)] 'bookmark-set)
(global-set-key [(control f8)] 'list-bookmarks)
(global-set-key [(meta f8)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F9
;----------------------------------------------------------------------
(global-set-key [(f9)] 'goto-line)
(global-set-key [(shift f9)] 'sams-apply-macro-on-region)
(global-set-key [(control f9)] 'compile)
(global-set-key [(meta f9)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F10
;----------------------------------------------------------------------
;;; F10 is defined by emacs by default.
;;; (global-set-key [(f10)] 'sams-unbound-key)
(global-set-key [(shift f10)] 'sams-unbound-key)
(global-set-key [(control f10)] 'sams-unbound-key)
(global-set-key [(meta f10)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F11
;----------------------------------------------------------------------
(global-set-key [(f11)] 'sean/window-fullscreen)
(global-set-key [(shift f11)] 'sams-unbound-key) 
(global-set-key [(control f11)] 'sams-unbound-key)
(global-set-key [(meta f11)] 'sams-unbound-key)

;----------------------------------------------------------------------
;                                    F12
;----------------------------------------------------------------------
(global-set-key [(f12)] 'sams-unbound-key)
(global-set-key [(shift f12)] 'sams-unbound-key)
(global-set-key [(control f12)] 'sams-unbound-key)  
(global-set-key [(meta f12)] 'sams-unbound-key)

