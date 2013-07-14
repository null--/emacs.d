;; Based on https://github.com/zpinter/emacs.d/ --> zconfig.el

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(push "/usr/local/bin" exec-path)

(setq econfig-emacsd (file-name-directory load-file-name))

(setq econfig-errors nil)

(defmacro econfig-module-error-wrap (fn module-name)
  `(unwind-protect
       (let (retval)
         (condition-case ex
             (setq retval (progn ,fn))
           ('error
            (message (format "Caught exception in %s: [%s]" ,module-name ex))
            (add-to-list 'econfig-errors (list ,module-name ex))
            (setq retval (cons 'exception (list ex)))))
         retval)
     nil))

;; old way of loading modules
;; (defun econfig-load-all-modules ()
;;   (let (
;;         (module-directories (directory-files econfig-emacsd nil "^[0-9]+\-")))

;;     (dolist (element module-directories value)
;;       (setq value nil)
;;       (econfig-module-error-wrap (econfig-load-module element) element)
;;       ))
;;   (if econfig-errors
;;       (display-warning :error (concat "There were errors loading modules! " (prin1-to-string econfig-errors))))
;;   )

(defun econfig-load-modules (module-names)
  (dolist (element module-names value)
    (setq value nil)
    (econfig-load-module element)
    ;; (econfig-module-error-wrap (econfig-load-module element) element)
    )
  (if econfig-errors
      (display-warning :error (concat "There were errors loading modules! " (prin1-to-string econfig-errors)))))

(defun econfig-add-lisp-path (p)
  (add-to-list 'load-path (expand-file-name (concat econfig-current-module-dir "/" p)))
  )

(defun econfig-add-lisp-path-end (p)
  (add-to-list 'load-path (expand-file-name (concat econfig-current-module-dir "/" p)) t)
  )

(defun econfig-add-info-path (p)
  (add-to-list 'Info-default-directory-list (expand-file-name (concat econfig-current-module-dir "/" p)))
  )

(defun econfig-add-icons-path (p)
  (add-to-list 'image-load-path (expand-file-name (concat econfig-current-module-dir "/" p)))
  )

(defun econfig-get-module-dir (module-name)
  (concat econfig-emacsd module-name))

(defun econfig-load-module (module-name)
  (econfig-run-module module-name "load"))

(defun econfig-run-module (module-name operation)
  (setq econfig-current-module module-name)
  (setq econfig-current-module-dir (concat econfig-emacsd "../" module-name))
  (setq econfig-current-module-init-file (concat econfig-current-module-dir "/init.el"))
  (setq econfig-current-module-private-file (concat econfig-current-module-dir "/private.el"))
  (setq econfig-current-module-update-file (concat econfig-current-module-dir "/update.el"))

   (print (concat "module is " econfig-current-module))
   (print (concat "module-dir is " econfig-current-module-dir))
   (print (concat "module-init-file is " econfig-current-module-init-file))

  (if (file-exists-p (concat econfig-current-module-dir "/lisp"))
      (econfig-add-lisp-path "lisp"))

  (if (file-exists-p (concat econfig-current-module-dir "/tex"))
      (econfig-add-lisp-path "tex"))

  (if (file-exists-p (concat econfig-current-module-dir "/info"))
      (econfig-add-info-path "info"))

  (if (file-exists-p (concat econfig-current-module-dir "/icons"))
      (econfig-add-icons-path "icons"))

  (when (equal operation "load")
    (if (file-exists-p econfig-current-module-private-file)
        (load-file econfig-current-module-private-file))

    (if (file-exists-p econfig-current-module-init-file)
        (load-file econfig-current-module-init-file)))
)

