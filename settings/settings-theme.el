;;; settings-theme -- looks and feel

;;; Commentary:

;;; Code:

(require 'use-package)

;; Base theme
(use-package material-theme
  :ensure t
  :config
  (load-theme 'material t)
  )

;; Powerline and Helm
(use-package airline-themes
  :ensure t
  :config
  (load-theme 'airline-kolor t)
  )

(provide 'settings-theme)
;;; settings-theme.el ends here"
