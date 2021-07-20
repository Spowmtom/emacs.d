;;; writer.el --- Comfortable Writing Experience  -*- lexical-binding: t -*-

;; Maintainer:		Tohan Marchand <tohan.marchand@protonmail.com>
;; Created: 		2021 June the 5th
;; Package-Requires:	((focus "20191209.2210"))
;; Keywords: 		writing, text
;; Version: 		20210605.1

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

;; This package provides the fundamental text mode documented in the
;; Emacs user's manual, along with improvements aimed at writers,
;; such as auto-correct and focus on current paragraph.

;;; Code:

(require 'text-mode)
(require 'flyspell)
(require 'focus)

(defconst writer-version "20210605.1")

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.writer\\'" . writer))

(define-derived-mode writer-mode text-mode "Writer"
  "Major mode for fiction and non-fiction writing.
Built on top on text-mode, this mode will autocorrect and focus on paragraphs."
  (flyspell-mode)
  (focus-mode)
  (darkroom-mode))

(provide 'writer)

;;; writer.el ends here
