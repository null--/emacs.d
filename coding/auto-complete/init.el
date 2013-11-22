(require 'auto-complete-config)
(require 'auto-complete-auctex)

(add-to-list 'ac-dictionary-directories (concat econfig-current-module-dir "/lisp/dict"))
(ac-config-default)

(global-auto-complete-mode t)
