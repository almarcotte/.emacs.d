;;; settings-theme -- looks and feel

;;; Commentary:

;;; Code:

(require 'use-package)
(require 'multi-term)

(use-package badger-theme
  :ensure t
  :defer t)

(defun theme-dark ()
  "Dark theme."
  (interactive)
  (load-theme 'badger t)

  (set-face-background 'region "#374186")
  (set-face-background 'fringe "#191919")
  (set-face-attribute 'linum nil :background nil :height 0.7)
  (set-face-foreground 'which-func "#cccccc")

  (set-face-attribute 'mode-line nil
		      :family "Helvetica Neue LT Std"
		      :width 'condensed)
  (set-face-attribute 'mode-line-inactive nil
		      :family "Helvetica Neue LT Std"
		      :width 'condensed)

  (set-face-foreground 'company-tooltip "#000")
  (set-face-background 'company-tooltip "#ddd")
  (set-face-background 'company-scrollbar-bg "#fff")
  (set-face-background 'company-scrollbar-fg "#999")
  (set-face-background 'company-tooltip-selection "#aaa")
  (set-face-foreground 'company-tooltip-common "#9a0000")
  (set-face-foreground 'company-tooltip-common-selection "#9a0000")
  (set-face-foreground 'company-tooltip-annotation "#00008e")

  (set-face-foreground 'term-color-black "#3f3f3f")
  (set-face-foreground 'term-color-red "#cc9393")
  (set-face-foreground 'term-color-green "#7f9f7f")
  (set-face-foreground 'term-color-yellow "#f0dfaf")
  (set-face-foreground 'term-color-blue "#8cd0d3")
  (set-face-foreground 'term-color-magenta "#dc8cc3")
  (set-face-foreground 'term-color-cyan "#93e0e3")
  (set-face-foreground 'term-color-white "#dcdccc"))

(theme-dark)

(provide 'settings-theme)
;;; settings-theme.el ends here
