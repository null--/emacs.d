;; special handling so that we override the default python-mode
(setq load-path (cons (concat econfig-current-module-dir "/lisp") load-path))
		
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))
(require 'python-mode)
