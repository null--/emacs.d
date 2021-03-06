(defun null-config ()

;; ------------------------------------- Call/Define flobal function/modes -------------------------- ;;
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Show/Hide Menu bar
(define-key global-map (kbd "C-c m") 'menu-bar-mode)

;; Auto indent
;; (define-key global-map (kbd "RET") 'newline-and-indent)
;; (define-key global-map (kbd "RET") 'newline)
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "C-<tab>") 'ess-sas-tab-to-tab-stop)
(define-key global-map (kbd "<backtab>") 'ess-sas-backward-delete-tab)

;; Enable Auto Complete
(global-auto-complete-mode t)
(auto-complete-mode t)
;; (global-company-mode)

;; Enable Line number
(global-linum-mode 1)

;; Enable Column number
(column-number-mode 1)

;; Maximize
(defun toggle-fullscreen ()
	(interactive)
	(x-send-client-message nil 0 nil "_NET_WM_STATE" 32 
		'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)
	)
	(x-send-client-message nil 0 nil "_NET_WM_STATE" 32 
        '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)
    )
)

;; Window selection functions
(defun select-next-window ()
  "Switch to the next window" 
  (interactive)
  (select-window (next-window))
)
(defun select-previous-window ()
  "Switch to the previous window" 
  (interactive)
  (select-window (previous-window))
)
  
;; Font Size
(set-face-attribute 'default nil :height 90)

;; Enable cua-mode
(cua-mode 1)

;; Enable scroll-bar-mode
(set-scroll-bar-mode 'right)

;; --------------------------- CUSTOMIZE VARIABLES ---------------------- ;;
(custom-set-variables
;; TAB vs SPACE
'(indent-tabs-mode nil)
'(tab-width 4)
'(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120)))
'(tab-always-indent t)


;; Python mode
; '(python-indent 4)
    
;; C++ TAB mode
'(c-default-style "linux")
'(c-basic-offset 4)
'(c-tab-always-indent)
)

;; ---------------------------- KEY BINDINGS ----------------------------- ;;
;; Full screen
(global-set-key (kbd "<f11>") 'toggle-fullscreen)

;; CUA mode
(global-set-key (kbd "<f9>") 'cua-mode)

;; Create/Kill windows
(global-set-key (kbd "C-c v") 'split-window)
(global-set-key (kbd "C-c h") 'split-window-horizontally)
(global-set-key (kbd "C-c d") 'delete-window)

;; Move between windows/buffers
(global-set-key (kbd "M-<right>") 'select-next-window)
(global-set-key (kbd "M-<left>")  'select-previous-window)
(global-set-key (kbd "M-<up>") 'next-buffer)
(global-set-key (kbd "M-<down>")  'previous-buffer)
(global-set-key (kbd "M-m")  'buffer-menu)

;; zoom in/out
(global-set-key (kbd "C-=")  'text-scale-increase)
(global-set-key (kbd "C--")  'text-scale-decrease)

;; Spell check
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-<f8>") 'flyspell-mode)

;; -------------------------------------------------------------------------- ;;
(toggle-fullscreen)
)
