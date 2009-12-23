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
;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
(semantic-load-enable-primary-exuberent-ctags-support)

;;Semantic的检索范围
(setq semanticdb-project-roots 
	  (list
        (expand-file-name "/")))

(defun sean/indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
 	  (hippie-expand nil)
 	  (indent-for-tab-command))
 )

(global-set-key [(control tab)] 'sean/indent-or-complete) ;补全的全局热键

(autoload 'senator-try-expand-semantic "senator")

(setq hippie-expand-try-functions-list
 	  '(
		senator-try-expand-semantic
		try-expand-dabbrev
		try-expand-dabbrev-visible
		try-expand-dabbrev-all-buffers
		try-expand-dabbrev-from-kill
		try-expand-list
		try-expand-list-all-buffers
		try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
)

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