;;; settings-snippets.el -- snippets / yasnippet

;;; Commentary:

;;; Code:
(setq my-snippets (concat user-emacs-directory "snippets"))

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
	'(my-snippets
	  yas-installed-snippets-dir))
  (yas-global-mode 1)
  )

(provide 'settings-snippets)
;;; settings-snippets.el ends here
