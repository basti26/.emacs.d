;; stop ring bell
(setq ring-bell-function 'ignore)
(global-auto-revert-mode t)
(global-linum-mode t)

;; abbrev mode 
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
											;; ("8tb" "Tobias")
											("8ms" "Microsoft")
											))

(setq make-backup-files nil)
(setq auto-save-default nil)

;; delete selection mode
(delete-selection-mode t)

;; enable recentf-mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; show match parents
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
(provide 'init-better-defaults)
