;;the load path
;(push "~/pro/emacs/config" load-path)
(push "~/pro/emacs/addons" load-path)

(load "~/pro/emacs/config/rc-common.el")
(load "~/pro/emacs/config/rc-linum.el")
(load "~/pro/emacs/config/rc-dired.el")
(load "~/pro/emacs/config/rc-multi-term.el")
;; Programming tools & languages
(load "~/pro/emacs/config/rc-ccmode.el")
(load "~/pro/emacs/config/rc-cedet.el")
(load "~/pro/emacs/config/rc-ecb.el")   

;; (load "~/pro/emacs/config/rc-.el")

;;=== Startup Settings ===
;(multi-term) ;Start a terminal with Muti Term at startup
