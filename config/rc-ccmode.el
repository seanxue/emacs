;;; rc-ccmode.el 

(require 'cc-mode)
(require 'google-c-style)

(defun sean/c-mode-common-hook()
  (c-toggle-auto-hungry-state 1) ; hungry-delete and auto-newline
  (define-key c-mode-base-map [(tab)] 'sean/indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
)
(add-hook 'c-mode-common-hook 'sean/c-mode-common-hook)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;; rc-ccmode.el ends here