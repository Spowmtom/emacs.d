(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(c-block-comment-prefix "* ")
 '(c-default-style
   '((c-mode . "linux")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(c-mode-common-hook '(c-toggle-auto-hungry-state subword-mode))
 '(c-mode-hook nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(display-line-numbers 'visual)
 '(fringe-mode '(1 . 1) nil (fringe))
 '(ido-mode 'both nil (ido))
 '(indicate-buffer-boundaries nil)
 '(indicate-empty-lines t)
 '(initial-buffer-choice t)
 '(lisp-mode-hook '(slime-lisp-mode-hook))
 '(package-selected-packages
   '(markdown-mode csv-mode auto-complete org-bullets slime flymake gruvbox-theme info-colors focus flymake-vala vala-mode csharp-mode))
 '(pdf-view-midnight-colors '("#fdf4c1" . "#282828"))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(sml/line-number-format "%3l")
 '(standard-indent 8)
 '(tool-bar-mode nil)
 '(tool-bar-position 'left)
 '(tool-bar-style nil)
 '(visual-line-fringe-indicators '(nil nil))
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t nil)))
 '(hl-line ((t (:inherit highlight :extend t :strike-through nil :overline nil :underline nil)))))


;;; Variables

;; ID
(setq user-full-name "Tohan Marchand"
      user-mail-address "tohan.marchand@protonmail.com")

;; Backups
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(add-to-list 'load-path "~/.emacs.d/lisp")


;;; Requires

;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Emacs 27 automatically initializes packages
;; (package-initialize)

(require 'writer)


;;; Functions

(defun create-scratch-buffer nil
  "Creates a new *scratch* buffer"
  (interactive)
  (switch-to-buffer-other-window "*scratch*")
  (insert initial-scratch-message)
  (end-of-buffer)
  (initial-major-mode))

(defun insert-lambda (&optional arg)
  "Inserts the lambda (λ) character.
ARG defaults to 1"
  (interactive "p")
  (or arg (setq arg 2))
  (dotimes (i arg)
    (insert "λ")))


;;; Bindings

(global-set-key (kbd "C-x C-l") 'insert-lambda)


;;; Hooks

(add-hook 'org-mode-hook 'org-bullets-mode)		; Fancy looking org-mode
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))	; Enables features for SLIME


;;; Others

(fset 'yes-or-no-p 'y-or-n-p)	; Convenience
