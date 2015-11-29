;;; settings-flycheck.el -- flycheck setup

;;; Commentary:

;;; Code:

(require 'use-package)
(use-package flycheck
  :defer t
  :ensure t
  :config
  (add-hook 'find-file-hook
	    (lambda ()
	      (when (not (equal 'emacs-lisp-mode major-mode))
		(flycheck-mode)))))

(global-set-key
 (kbd "C-c c")
 (lambda ()
   (interactive)
   (if flycheck-checker
       (progn
	 (save-buffer)
	 (flycheck-compile flycheck-checker)))
   (message "No checker selected for this buffer. Try M-x flycheck-select-checker")
   ))

(use-package flycheck-color-mode-line
  :ensure t
  :defer t)

(eval-after-load "flycheck"
  '(progn
     (setq flycheck-highlighting-mode 'symbols)
     (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)
     (set-face-foreground 'flycheck-error nil)
     (set-face-foreground 'flycheck-warning nil)
     (require 'flycheck-color-mode-line)
     (set-face-background 'flycheck-color-mode-line-info-face nil)
     (set-face-foreground 'flycheck-color-mode-line-error-face nil)
     (set-face-foreground 'flycheck-color-mode-line-warning-face nil)
     (set-face-foreground 'flycheck-color-mode-line-info-face nil)))

;; Clojure specific
(eval-after-load 'flycheck '(flycheck-clojure-setup))
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'settings-flycheck)
;;; settings-flycheck.el ends here
