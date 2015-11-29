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
	settings-editor
	))

;; Load everything
(dolist (file settings-files)
  (require file))

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8c75217782ccea7e9f3ad2dae831487a5fb636d042263d0a0e0438d551da3224" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
