(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (docker-compose-mode dockerfile-mode tide scss-mode all-the-icons-dired all-the-icons neotree centaur-tabs terraform-mode typescript-mode adoc-mode yasnippet-snippets yasnippet aggressive-indent yaml-mode cider clojure-mode gruvbox-theme helm-projectile helm geiser lsp-ui company-lsp json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company counsel swiper ivy exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring beacon anzu ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;******************************************************************************
;; NEO-TREE settings
;;******************************************************************************
;; Set neotree-toggle to a hotkey
(global-set-key [f8] 'neotree-toggle)
;; Set variables so that neotree follows the open file
(setq neo-smart-open t)
;; Set the neotree window size so that it's resizable
(setq neo-window-fixed-size nil)
(setq neo-window-width (if (display-graphic-p) 50 100))
;; Set the theme of NeoTree depending on system
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(neotree-show)

;; Set the neo-window-width to the current width of the
;; neotree window, to trick neotree into resetting the
;; width back to the actual window width.
;; Fixes: https://github.com/jaypei/emacs-neotree/issues/262
(eval-after-load "neotree"
  '(add-to-list 'window-size-change-functions
                (lambda (frame)
                  (let ((neo-window (neo-global--get-window)))
                    (unless (null neo-window)
                      (setq neo-window-width (window-width neo-window)))))))

;; Disable global line numbers in neotree
(eval-after-load "neotree" (display-line-numbers-mode -1))


;;******************************************************************************
;; centaur-tabs settinsg
;;******************************************************************************
;; Enable centaur tabs

;; You can make the headline face match the centaur-tabs-default face.
;; This makes the tabbar have an uniform appearance.
(require 'centaur-tabs)
(centaur-tabs-headline-match)
;; Set the style and icons
(setq centaur-tabs-set-icons t)
;; Gray-out unselected tabs
(setq centaur-tabs-gray-out-icons 'buffer)
;; Set the style of the tabs
(setq centaur-tabs-style "wave")
(centaur-tabs-mode t)


;;******************************************************************************
;; company-mode settings
;;******************************************************************************
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))
