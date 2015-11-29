;;; settings-autocomplete.el -- autocomplete with company.el

;;; Commentary:
;;; Code:

(require 'use-package)
(use-package company
  :defer t
  :ensure t
  :diminish company-mode
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :bind (("C-\\" . company-complete))
  :config
  (setq company-global-modes '(not term-mode)
	company-minimum-prefix-length 2
	company-selection-wrap-around t
	company-show-numbers t
	company-tooltip-align-annotations t
	company-require-match nil)
  )

(provide 'settings-autocomplete)
;;; settings-autocomplete.el ends here
