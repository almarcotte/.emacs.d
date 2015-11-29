;;; init.el -- starts the whole thing

;;; Commentary:

;;; Code:

;; Set up use-package and the package archives
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Add settings/ to load path
(setq dotfiles-dir (file-name-directory
		    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path (concat dotfiles-dir "settings"))

;; Add every subdirectory of ~/.emacs.d/site-lisp to the load path
(dolist
    (project (directory-files (concat dotfiles-dir "site-lisp") t "\\w+"))
  (when (file-directory-p project)
        (add-to-list 'load-path project)))

;; Define all the settings to load
(setq settings-files
      '(
	settings-interface
	settings-parens
	settings-clojure
	settings-flycheck
	settings-autocomplete
	settings-terms
	settings-powerline
	settings-theme
	))

;; Load everything
(dolist (file settings-files)
  (require file))

(provide 'init)
;;; init.el ends here
