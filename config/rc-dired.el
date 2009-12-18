;;===dired mode==
;;load dired-x
(add-hook 'dired-load-hook 
	  (lambda()
	    (load "dired-x")
	    (setq dired-omit-files-p t)
	    (setq dired-omit-files
		  (concat dired-omit-files "\\|^\\..+$"))
	    ))

(add-hook 'dired-mode-hook
	  (lambda()
	    (dired-omit-mode 1)
	    ))