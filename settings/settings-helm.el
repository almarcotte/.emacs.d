;;; settings-helm.el -- helm

;;; Commentary:

;;; Code:

(use-package helm
  :ensure t
  :config
  (require 'helm-config)
  (helm-mode 1)
  (helm-autoresize-mode 1)
  )

(provide 'settings-helm)
