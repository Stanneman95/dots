;;; evil-collection-go-mode.el --- Bindings for `go-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, emacs, tools, golang

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
;;; Bindings for `go-mode'.
(require 'evil)
(require 'go-mode nil t)

;;; Code:
(defun evil-collection-go-mode-setup ()
  "Set up `evil' bindings for `go-mode'."
  (evil-define-key 'normal go-mode-map
    "gd" 'godef-jump
    "K" 'godef-describe)
  (evil-define-key 'normal godoc-mode-map
    "q" 'quit-window
    "g?" 'describe-mode))

(provide 'evil-collection-go-mode)
;;; evil-collection-go-mode.el ends here
