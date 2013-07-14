(require 'epa-setup)
(epa-file-enable)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

(setq econfig-private-loaded nil)
(defun econfig-private-eval (p)
  (unless econfig-private-loaded
	 (load "~/private.gpg")
	 (setq econfig-private-loaded t))
  (eval p))


