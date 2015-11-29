;;; settings-editor.el -- editor settings

;;; Commentary:
;; Editor settings, such as special keybinds and functions related to editing / navigation

;;; Code:

(use-package move-text
  :ensure t
  :bind (("C-c u" . move-text-up)
	 ("C-c d" . move-text-down))
  )

;; Expand region
(use-package expand-region
  :ensure t
  :bind ("C-@" . er/expand-region)
  :config
  (pending-delete-mode t)
;;  (global-set-key (kbd "C-@") 'er/expand-region)
  )
  

(provide 'settings-editor)
;;; settings-editor.el ends here
