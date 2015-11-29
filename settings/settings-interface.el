;;; settings-interface.el -- Provides customisations to the interface

;;; Commentary:

;;; Code:

;; Hide the menubar, toolbar and scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Don't show the start up message
(setq inhibit-startup-message t)

;; UTF8
(prefer-coding-system 'utf-8)

(provide 'settings-interface)
;;; settings-interface.el ends here
