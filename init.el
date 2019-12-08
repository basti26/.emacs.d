;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)




;; stop ring bell
(setq ring-bell-function 'ignore)

;; config for swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

;; org Agenda
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)



;; f12 open init.el
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f12>") 'open-my-init-file)



;; auto revert
(global-auto-revert-mode t)

;; config
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(setq inhibit-splash-screen t)
(setq-default tab-width 4)
(setq-default cursor-type 'bar)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; enable recentf-mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; hightlight in org file
(require 'org)
(setq org-src-fontify-natively t)



;; delete selection mode
(delete-selection-mode t)

;; full screen
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; show match parents
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; hightlight line
(global-hl-line-mode t)

;; abbrev mode 
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
											;; ("8tb" "Tobias")
											("8ms" "Microsoft")
											))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; package
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" default)))
 '(js2-mode-show-strict-warnings nil)
'(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
