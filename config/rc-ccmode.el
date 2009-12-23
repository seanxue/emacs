;;; rc-ccmode.el 

(require 'cc-mode)

(defun sean/c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-toggle-auto-hungry-state 1) ; hungry-delete and auto-newline
  (define-key c-mode-base-map [(tab)] 'sean/indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
)

(add-hook 'c-mode-common-hook 'sean/c-mode-common-hook)
;;; rc-ccmode.el ends here