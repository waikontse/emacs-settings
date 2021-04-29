;;; package --- My personal settings
;;; Commentary:

;;; Code:

;; Set the theme to gruxbox
(setq prelude-theme 'gruvbox-dark-medium)

;; Display the line numbers mode
(global-display-line-numbers-mode)

;; Enable aggresive indent mode for Java
(add-hook 'java-mode-2 #'aggressive-indent-mode)

;; Disable scroll-bar-mode
(scroll-bar-mode -1)

;; Enable deferred compile
(setq comp-deferred-compilation t)
