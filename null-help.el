(defun null-help() 
    (setq initial-scratch-message (concat 
		 "+-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-+\n"
		 "|                          Welcome to the great GNU Emacs!                        |\n"
		 "|                                                                                 |\n"
		 "|                               Configured by _null_                              |\n"
		 "+-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-+\n"
		 "\n"
		 "Notes:\n"
		 "    1. General settings (e.g. key bindings) are stored at '.emacs.d/null-config.el'\n"
		 "        #. It's strongly recommended that you should take a look at 'null-config.el'\n"
		 "    2. To add/remove a module, or see list of installed modules visit '.emacs.d/init.el'\n"
		 "    3. You can use emacs on a single instance mode by running 'emacsclient -t <FILENAM>'.\n"
		 "    4. This configuration is designed for Linux user, you may face some weired problems on Windows!\n"
		 )
    )
)