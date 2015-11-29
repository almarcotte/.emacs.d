;;; settings-interface.el -- Provides customisations to the interface

;; Hide the menubar, toolbar and scrollbar
(menu-bar-mode -1) 
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Don't show the start up message
(setq inhibit-startup-message t)

(provide 'settings-interface)
