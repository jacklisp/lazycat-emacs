;;; init-citre.el --- Configure for citre

;; Filename: init-citre.el
;; Description: Configure for citre
;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Maintainer: Andy Stewart <lazycat.manatee@gmail.com>
;; Copyright (C) 2021, Andy Stewart, all rights reserved.
;; Created: 2021-06-29 17:32:09
;; Version: 0.1
;; Last-Updated: 2021-06-29 17:32:09
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-citre.el
;; Keywords:
;; Compatibility: GNU Emacs 28.0.50
;;
;; Features that might be required by this library:
;;
;;
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; Configure for citre
;;

;;; Installation:
;;
;; Put init-citre.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-citre)
;;
;; No need more.

;;; Customize:
;;
;;
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-citre RET
;;

;;; Change log:
;;
;; 2021/06/29
;;      * First released.
;;

;;; Acknowledgements:
;;
;;
;;

;;; TODO
;;
;;
;;

;;; Require
(require 'citre)
(require 'citre-config)

;;; Code:

(setq
 citre-default-create-tags-file-location 'global-cache
 citre-use-project-root-when-creating-tags t
 citre-prompt-language-for-ctags-command t)

(defun citre-jump+ ()
  (interactive)
  (condition-case _
      (citre-jump)
    (error (call-interactively #'xref-find-definitions))))

(provide 'init-citre)

;;; init-citre.el ends here
