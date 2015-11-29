;;; settings-parens.el -- parentheses!

;;; Commentary:

;;; Code:

(show-paren-mode)

(require 'use-package)
(use-package paredit
  :ensure t
  :diminish paredit-mode
  :config
  (add-hook 'lisp-mode-hook       'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode)
  (add-hook 'clojure-mode-hook    'paredit-mode)
  (add-hook 'cider-repl-mode-hook 'paredit-mode)
  )

(provide 'settings-parens)
;;; settings-parens.el ends here
