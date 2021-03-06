;; ------------------------------- Libraries ------------------------------- ;;
(load "~/.emacs.d/null-config.el")
(load "~/.emacs.d/null-help.el")
(load "~/.emacs.d/core/econfig.el")

;; ---------------------------- ADD/REMOVE Modules Here -------------------- ;;
(econfig-load-modules (list
	"core"
	"core/customize"
	"core/apel"
	;; "tools/elscrween"
	;; "tools/easypg"
	"interface/window-settings"
		;; "interface/solarized-dark-theme"
		"interface/color-theme"
			;; "interface/color-theme-ir-black"
			"interface/null-theme"
	"interface/ido"
	"interface/ibuffer"
	"interface/hippie-expand"
	"interface/xclip"
	;; "modes/nxml"
	"modes/ruby"
	"modes/python-mode"
	;; "modes/pymacs"							  
	;; "modes/mirah"
	;; "modes/js2-mode"
	"modes/android-mode"							  
	"coding/yasnippet"
		  ;; "coding/git-contrib"
		  ;; "coding/egit"
    "coding/auto-complete"
		  "modes/scss-mode"
		  "moeds/ace-jump-mode"
		  "coding/emacs-eclim"
	"coding/magit"
	;; "coding/mo-git-blame"
	;; "internet/twitter"
	"modes/post-mode"
	"tools/gnus"
	;; "internet/bbdb"
	;; "modes/puppet-mode"
	"modes/markdown-mode"
	"modes/lua-mode"
	;; "tools/xml-rpc" ;needed by trac-wiki and jira
		;; "modes/trac-wiki"
		;; "modes/jira"
	"tools/remember"
	"modes/org-mode"
	"modes/php-mode"
	;; "modes/deft"
	;; "modes/paredit"
	"modes/slime"
	;; "moeds/clojure-mode"
	;; "internet/cheat"
	"coding/shell-current-directory"
	;; "internet/erc"
	;; "modes/haml-mode"
	"interface/smali"
	"interface/anything"
	;; "internet/w3m"
	"modes/flyspell"
	"coding/jump"
	;; "modes/rinari"
	;; "modes/flex"
	"coding/nav"
	"coding/open-resource"
	;; "coding/breadcrumb"
		  ;; "coding/xcscope"
	;; "modes/company-mode"
	;; "coding/cedet"
	    ;; "coding/ecb"
	"modes/ess"
	"coding/textmate"
		  ;; "modes/csharp"
	"coding/undo-tree"
	;; "internet/jabber"
	;; "tools/ack"
	;; "modes/csv-mode"
	"interface/tweaks"
	"interface/smex"
    ;; "core/server"
		  ;; "core/edit-server"
))

;; AUCTEX mode: apt-get install auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

(null-config)
(null-help)

(message "\n------------- _null_emacs is loaded successfully! -------------\n")

