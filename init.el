;;; init.el --- Tohan Marchand's Emacs config  -*- lexical-binding: t -*-

;; Maintainer:		Tohan Marchand <tohan.marchand@protonmail.com>
;; Created: 		2021 12th of April
;; Keywords: 		init.el .emacs config
;; Version: 		20210719.1

;;;; License and Commentary

;;     Copyright (C) 2021 Tohan Marchand <tohan.marchand@protonmail.com>
;;
;;     This program is free software; you can redistribute it and/or
;;     modify it under the terms of the GNU General Public License as
;;     published by the Free Software Foundation; either version 2 of
;;     the License, or (at your option) any later version.
;;
;;     This program is distributed in the hope that it will be useful,
;;     but WITHOUT ANY WARRANTY; without even the implied warranty of
;;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;;     GNU General Public License for more details.
;;
;;     You should have received a copy of the GNU General Public
;;     License along with this program; if not, write to the Free
;;     Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;;     MA 02111-1307, USA.

;;; Commentary:

;; This file is automatically evaluated when Emacs first loads.
;; It contains automatic configurations setup by Emacs' Easy Customization,
;; requires, Melpa, custom functions such as duplicate-line, hooks, my ID and
;; defined variables such as load-path.

;;; Code:

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
 '(counsel-mode t)
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("e6a2832325900ae153fd88db2111afac2e20e85278368f76f36da1f4d5a8151e" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "6b1abd26f3e38be1823bd151a96117b288062c6cde5253823539c6926c3bb178" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "78c4238956c3000f977300c8a079a3a8a8d4d9fee2e68bad91123b58a4aa8588" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "4eb6fa2ee436e943b168a0cd8eab11afc0752aebb5d974bba2b2ddc8910fca8f" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(display-line-numbers 'visual)
 '(doom-modeline-mode t)
 '(font-use-system-font nil)
 '(fringe-mode '(1 . 1) nil (fringe))
 '(indicate-buffer-boundaries nil)
 '(indicate-empty-lines t)
 '(initial-buffer-choice t)
 '(ivy-count-format "(%d/%d) ")
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(lisp-mode-hook '(slime-lisp-mode-hook))
 '(org-hide-leading-stars t)
 '(package-selected-packages
   '(cl-lib counsel ivy darkroom paredit-everywhere paredit auto-complete-clang auto-complete-c-headers ac-slime ac-c-headers yasnippet-snippets common-lisp-snippets helm-systemd helm-slime helm-org helm-c-yasnippet helm glsl-mode vterm doom-themes doom-modeline yasnippet markdown-mode csv-mode auto-complete slime flymake gruvbox-theme info-colors focus flymake-vala vala-mode csharp-mode))
 '(pdf-view-midnight-colors '("#fdf4c1" . "#282828"))
 '(prog-mode-hook
   '(flyspell-prog-mode flymake-mode yas-minor-mode paredit-everywhere-mode))
 '(rcirc-server-alist '(("irc.libera.chat" :nick "spowmtom" :channels nil)))
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(sentence-end "\\. +")
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
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 120 :width normal))))
 '(highlight ((t nil)))
 '(hl-line ((t (:inherit highlight :extend t :strike-through nil :overline nil :underline nil)))))


;;; Variables

;; Convenience
(fset 'yes-or-no-p 'y-or-n-p)

;; Bindings
(global-set-key (kbd "C-x C-c") 'save-buffers-kill-emacs) ; Kills emacs-daemon as well as the client
(global-set-key (kbd "C-x C-b") 'ibuffer)

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


;;; Functions

(defun create-scratch-buffer ()
  "Create a new *scratch* buffer."
  (interactive)
  (switch-to-buffer-other-window "*scratch*")
  (insert initial-scratch-message)
  (goto-char (point-max))
  (initial-major-mode))

(defun duplicate-char (&optional arg)
  "Duplicates the character on which the point is.
ARG defaults to 1."
  (interactive "p")
  (dotimes (i (cond (arg arg) 1))
    (let ((text (buffer-substring-no-properties (point) (+ (point) 1))))
      (insert text))))

(defun duplicate-word (&optional arg)
  "Duplicate the word the point is on.
ARG defaults to 1."
  (interactive "p")
  (dotimes (i (cond (arg arg) 1))
    (insert (word-at-point))))

(defun duplicate-sentence (&optional arg)
  "Duplicate current sentence.
ARG defaults to 1."
  (interactive "p")
  (dotimes (i (cond (arg arg) 1))
    (insert (sentence-at-point))))

(defun duplicate-line (&optional arg)
  "Duplicate current line.
ARG defaults to 1."
  (interactive "p")
  (let ((line (buffer-substring-no-properties
	       (line-beginning-position) (line-end-position))))
    (dotimes (i (cond (arg arg) 1))
      (move-beginning-of-line 1)
      (insert line "\n"))))

(defun insert-lambda (&optional arg)
  "Insert the lambda (λ) character.
ARG defaults to 1."
  (interactive "p")
  (dotimes (i (cond (arg arg) 1))
    (insert "λ")))

(defun kill-to-line-beginning-position (&optional arg)
  "Kill region from beginning of line to point, similar to C-u in Bash or Nano.
ARG defaults to 1"
  (interactive "p")
  (dotimes (i (cond (arg arg) 1))
    (kill-region (line-beginning-position) (point))))

(global-set-key (kbd "C-x C-l") 'insert-lambda)
(global-set-key (kbd "C-x C-d") 'duplicate-line)
(global-set-key (kbd "C-x M-d") 'duplicate-sentence)
(global-set-key (kbd "C-x M-w") 'duplicate-word)
(global-set-key (kbd "C-u") 'kill-to-line-beginning-position)


;;; Hooks

;; Enables features for SLIME
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))

;;; init.el ends here
