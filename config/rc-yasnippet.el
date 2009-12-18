;;=== YA Snippet ===

(add-to-list 'load-path "~/pro/emacs/addons/yasnippet")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(setq sean/yasnippet-dir "~/pro/emacs/addons/yasnippet/snippets")
(yas/load-directory sean/yasnippet-dir)
 
;; hook for automatic reloading of changed snippets
(defun sean/update-yasnippets-on-save ()
  (when (string-match "/yasnippet/snippets" buffer-file-name)
    (yas/load-directory sean/yasnippet-dir)))
(add-hook 'after-save-hook 'sean/update-yasnippets-on-save)