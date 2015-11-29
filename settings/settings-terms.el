;;; settings-terms.el -- terminal related

;;; Commentary:

;;; Code:

(require 'multi-term)
(global-set-key (kbd "C-x C-m") 'multi-term)
(global-set-key (kbd "C-x m") 'multi-term-next)

(add-hook 'term-mode-hook
	  (lambda () (;;yas-minor-mode -1
		      )))

(provide 'settings-terms)
;;; settings-terms.el ends here
