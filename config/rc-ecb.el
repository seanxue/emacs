;;=== The ECB ===
(push "~/pro/emacs/addons/ecb" load-path)

(require 'ecb)
(setq ecb-tip-of-the-day nil) ;turn off the tip

;;=== The following section defines a new ecb layout ===
(ecb-layout-define "sean-ecb-layout" left-right
 "This function creates the following layout:

   --------------------------------------------------------------
   |              |                               |             |
   |  Directorys  |                               |  Sources    |
   |              |                               |             |
   |              |                               |             |
   |              |                               |             |
   |              |                               |             |
   |              |                               |             |
   |--------------|             Edit              |-------------|
   |              |                               |             |
   |              |                               |  Methods    |
   |              |                               |             |
   |   History    |                               |             |
   |              |                               |             |
   |              |                               |             |
   |              |                               |             |
   --------------------------------------------------------------
   |                                                            |
   |                    Compilation                             |
   |                                                            |
   --------------------------------------------------------------

If you have not set a compilation-window in `ecb-compile-window-height' then
the layout contains no persistent compilation window and the other windows get a
little more place."
; (ecb-set-speedbar-buffer)
 (ecb-set-directories-buffer)
 (ecb-split-ver 0.6)
 (ecb-set-history-buffer)
 (select-window (next-window (next-window)))
 (ecb-set-sources-buffer)
 (ecb-split-ver 0.4)
 (ecb-set-methods-buffer)
 (select-window (previous-window (previous-window (selected-window) 0) 0))
)

;;=== The ecb custom variables ===
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("~/lab"))) ;set source root
 '(ecb-layout-window-sizes
   (quote (("sean-ecb-layout"
	    (ecb-directories-buffer-name 0.2 . 0.6) 
	    (ecb-history-buffer-name 0.2 . 0.4)
	    ;(ecb-speedbar-buffer-name 0.2 . nil)
	    (ecb-sources-buffer-name 0.2 . 0.4)
	    (ecb-methods-buffer-name 0.2 . 0.6) 
	    ))))
 )

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;=== Set ecb layout ===
(sean/window-maximized) ;make the window maximized, set window first, then active ecb
(ecb-activate) ;active ECB
(ecb-layout-switch "sean-ecb-layout") ;set the layout to "sean-ecb-layout" as default
;(ecb-redraw-layout) ;redraw ecb layout, if the ecb actived before set window, this call is required.