;;===the cedet===
(load-file "~/pro/emacs/addons/cedet/common/cedet.el")

(global-ede-mode t) ;to use projects

;;=== Semantic Settings ===
(semantic-load-enable-excessive-code-helpers) ;Semantic features level
; (semantic-load-enable-semantic-debugging-helpers) ;enables several modes,that are useful for debugging Semantic
(require 'semantic-ia) ;names completion, and displaying of information for tags & classes
(require 'semantic-gcc) ;gcc head files
;;this command add the additional include path to a mode
;;(semantic-add-system-include "~/exp/include/boost_1_37" 'c++-mode) 

(defun sean/semantic-hook ()
  (imenu-add-to-menubar "Tags"))
(add-hook 'semantic-init-hooks 'sean/semantic-hook)

;;=== SemanticDB Settings ===
(require 'semanticdb)
(global-semanticdb-minor-mode 1)
;;enable support for gnu global
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)

;;=== Key Bingdings ===
;;Semantic key bindings 
(defun sean/cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'sean/cedet-hook)
;;Auto Completion
(defun sean/c-mode-cedet-hook ()
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert))
(add-hook 'c-mode-common-hook 'sean/c-mode-cedet-hook)