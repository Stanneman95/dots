;;; evil-collection-simple.el --- Bindings for `simple' -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, emacs, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Bindings for `simple'

(require 'evil)
(require 'simple)

(defvar special-mode-map)

;;; Code:
(defun evil-collection-simple-setup ()
  "Set up `evil' bindings for `simple'."
  (evil-define-key '(normal visual) special-mode-map
    "q" 'quit-window
    " " 'scroll-up-command
    "g?" 'describe-mode
    "h" 'evil-backward-char
    "gr" 'revert-buffer))

(provide 'evil-collection-simple)
;;; evil-collection-simple.el ends here
