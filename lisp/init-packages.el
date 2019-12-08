;; cl - Common Lisp Extension
(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
						   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; Add Packages
(defvar my/packages '(
					  company
					  monokai-theme
					  hungry-delete
					  swiper
					  counsel
					  smartparens
					  js2-mode
					  nodejs-repl
					  exec-path-from-shell
					  popwin
					  ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
		when (not (package-installed-p pkg)) do (return nil)
		finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))


;; hungry delete mode
(require 'hungry-delete)
(global-hungry-delete-mode)


;;config for smartparens
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; complete anything
(global-company-mode t)

;; theme
(load-theme 'monokai t)

;; popwin
(require 'popwin)
(popwin-mode t)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   IDE CONFIG
;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
;; config nodejs-repl










;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'init-packages)
