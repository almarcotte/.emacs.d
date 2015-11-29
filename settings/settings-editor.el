;;; settings-editor.el -- editor settings

;;; Commentary:
;; Editor settings, such as special keybinds and functions related to editing / navigation

;;; Code:

(use-package move-text
  :ensure t
  :bind (("C-c u" . move-text-up)
	 ("C-c d" . move-text-down))
  )
  
  

(provide 'settings-editor)
;;; settings-editor.el ends here
