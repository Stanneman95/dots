;;; evil-collection-which-key.el --- Evil bindings for which-key -*- lexical-binding: t -*-

;; Copyright (C) 2017 Pierre Neidhardt

;; Author: Maximiliano Sandoval <msandova@protonmail.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, which-key, tools

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or (at your
;; option) any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for `which-key'

;;; Code:

(require 'evil)
(require 'which-key nil t)

(defvar which-key-C-h-map)

;; `which-key'is coded so that the prompt properly shows j and k as
;; the bindings.
(defun evil-collection-which-key-setup ()
  "Set up `evil' bindings for `which-key'."

  ;; (define-key which-key-C-h-map "u" 'which-key-undo-key)
  (define-key which-key-C-h-map "q" 'which-key-abort)
  (define-key which-key-C-h-map "j" 'which-key-show-next-page-cycle)
  (define-key which-key-C-h-map "k" 'which-key-show-previous-page-cycle)
  (define-key which-key-C-h-map "?" 'which-key-show-standard-help))

(provide 'evil-collection-which-key)
;;; evil-collection-which-key.el ends here
