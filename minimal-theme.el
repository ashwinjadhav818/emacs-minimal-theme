;;; minimal-theme.el --- A light/dark minimalistic Emacs 24 theme.

;; Copyright (C) 2025 A. Hdez & Ashwin Jadhav

;; Author: A. Hdez & Ashwin Jadhav
;; Keywords: color, theme, minimal
;; X-URL: https://github.com/ashwinjadhav818/emacs-minimal-theme
;; URL: https://github.com/ashwinjadhav818/emacs-minimal-theme

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
;;
;; A minimalistic color theme to avoid distraction with
;; colors. Based on monochrome theme.

;;; Code:
(deftheme minimal "minimal dark theme.")

(let* ((class '((class color) (min-colors 89)))
    (background "#1C1C1C")
    (foreground "#d5e0e4")
    (cursor "#80cbc4")
    (border "#424242")
    (failure "#e57373")

    (region "#3e3e3e")
    (comment "#757575")
    (comment-delimiter comment)
    (string "#a5d6a7")
    (org-background background)

    (modeline-background "#2F2F2F")
    (modeline-foreground "#ffffff")
    (modeline-background-active "#4a4a4a")
    (modeline-foreground-active "#ffffff")
    (modeline-background-inactive "#3e3e3e")
    (modeline-foreground-inactive comment)
    (tabbar-background modeline-background)
    (tabbar-foreground modeline-foreground)
    (tabbar-background-active modeline-background-active)
    (tabbar-foreground-active modeline-foreground-active)
    (tabbar-background-inactive modeline-background-inactive)
    (tabbar-foreground-inactive modeline-foreground-inactive)

    (hl-background region)
    (hl-face-background nil)
    (minibuffer cursor)

    (color-red "#e57373")
    (color-green "#a5d6a7")
    (color-yellow "#ffd54f")
    (color-blue "#64b5f6")
    (color-magenta "#ba68c8")
    (color-cyan "#4dd0e1")
    (color-white "#cccccc"))

  (setq fci-rule-color comment)
  (custom-theme-set-faces
   'minimal

   ;; basic stuff
   `(default ((,class (:background ,background :foreground ,foreground))))
   `(cursor ((,class (:background ,cursor :inverse-video t))))
   `(vertical-border ((,class (:foreground ,border))))

   ;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,minibuffer :weight bold))))

   ;; region
   `(region ((,class (:background ,region))))
   `(secondary-selection ((,class (:background ,region))))

   ;; faces
   `(font-lock-builtin-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-constant-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,foreground :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,foreground))))

   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment-delimiter))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-doc-face ((,class (:inherit (font-lock-comment-face)))))
   `(font-lock-string-face ((,class (:foreground ,foreground :foreground ,string))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,foreground :background ,region :weight normal))))
   `(isearch-fail ((,class (:foreground ,failure :bold t))))
   `(lazy-highlight
     ((,class (:foreground ,foreground :background ,region))))

   ;; ido-mode
   `(ido-subdir ((,class (:foreground ,foreground :weight bold))))
   `(ido-only-match ((,class (:foreground ,foreground :weight bold))))

   ;; show-paren
   `(show-paren-match
     ((,class (:background ,region))))
   `(show-paren-mismatch
     ((,class (:foreground ,failure :weight bold))))

   ;; modeline
   `(mode-line
     ((,class (:inverse-video unspecified
                              :overline nil
                              :underline nil
                              :foreground ,modeline-foreground-active
                              :background ,modeline-background-active
                              :box nil
                              ))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-inactive
     ((,class (:inverse-video unspecified
                              :overline nil
                              :underline nil
                              :foreground ,modeline-foreground
                              :background ,modeline-background
                              ))))


     ;; tabbar
     `(tab-bar ((t (:background ,tabbar-background :foreground ,tabbar-foreground :box nil))))
     `(tab-line ((t (:background ,tabbar-background :foreground ,tabbar-foreground :box nil))))
     `(tab-bar-tab ((t (:background ,tabbar-background-active :foreground ,tabbar-foreground-active :box nil))))

      ;; hl-line-mode
     `(hl-line ((,class (:background ,hl-background))))
     `(hl-line-face ((,class (:background ,hl-face-background))))

     ;; org-mode
     `(org-level-1 ((,class (:foreground ,color-red :weight bold))))
     `(org-level-2 ((,class (:foreground ,color-magenta :weight bold))))
     `(org-level-3 ((,class (:foreground ,color-yellow :weight bold))))
     `(org-level-4 ((,class (:foreground ,color-blue :weight bold))))
     `(org-level-5 ((,class (:foreground ,color-green :weight bold))))
     `(org-level-6 ((,class (:foreground ,color-cyan :weight bold))))
     `(org-level-7 ((,class (:foreground ,color-red :weight bold))))
     `(org-level-8 ((,class (:foreground ,color-white :weight bold))))

     ;; outline
     `(outline-1 ((,class (:inherit org-level-1))))
     `(outline-2 ((,class (:inherit org-level-2))))
     `(outline-3 ((,class (:inherit org-level-3))))
     `(outline-4 ((,class (:inherit org-level-4))))
     `(outline-5 ((,class (:inherit org-level-5))))
     `(outline-6 ((,class (:inherit org-level-6))))
     `(outline-7 ((,class (:inherit org-level-7))))
     `(outline-8 ((,class (:inherit org-level-8))))

     `(org-document-title ((,class (:foreground ,foreground))))

     `(org-link ((,class (:background ,org-background :foreground ,foreground :underline t))))
     `(org-tag ((,class (:background ,org-background :foreground ,foreground))))
     `(org-warning ((,class (:background ,region :foreground ,foreground :weight bold))))
     `(org-todo ((,class (:background ,region :foreground ,foreground :weight bold))))
     `(org-done ((,class (:background ,region :foreground ,foreground :weight bold))))

     `(org-table ((,class (:background ,org-background))))
     `(org-code ((,class (:background ,org-background))))
     `(org-date ((,class (:background ,org-background :underline t))))
     `(org-block ((,class (:background ,org-background))))
     `(org-block-background ((,class (:background ,org-background :foreground ,foreground))))
     `(org-block-begin-line
       ((,class (:background ,org-background :foreground ,comment-delimiter :weight bold))))
     `(org-block-end-line
       ((,class (:background ,org-background :foreground ,comment-delimiter :weight bold))))

     ;; js2-mode
     `(js2-external-variable ((,class (:inherit base-faces :weight bold))))
     `(js2-function-param ((,class (:inherit base-faces))))
     `(js2-instance-member ((,class (:inherit base-faces))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:inherit base-faces))))
     `(js2-jsdoc-html-tag-name ((,class (:inherit base-faces))))
     `(js2-jsdoc-tag ((,class (:inherit base-faces))))
     `(js2-jsdoc-type ((,class (:inherit base-faces :weight bold))))
     `(js2-jsdoc-value ((,class (:inherit base-faces))))
     `(js2-magic-paren ((,class (:underline t))))
     `(js2-private-function-call ((,class (:inherit base-faces))))
     `(js2-private-member ((,class (:inherit base-faces))))

	 ;; centaur-tabs
     `(centaur-tabs-default ((t (:background ,tabbar-background :foreground ,tabbar-foreground :box nil))))
     `(centaur-tabs-selected ((t (:background ,tabbar-background-active :foreground ,tabbar-foreground-active :box nil))))
     `(centaur-tabs-unselected ((t (:background ,tabbar-background :foreground ,tabbar-foreground-inactive :box nil))))
     `(centaur-tabs-selected-modified ((t (:background ,tabbar-background :foreground ,color-red :box nil))))
     `(centaur-tabs-unselected-modified ((t (:background ,tabbar-background :foreground ,color-red :box nil))))
     `(centaur-tabs-active-bar-face ((t (:background ,color-yellow :box nil))))
     `(centaur-tabs-modified-marker-selected ((t (:inherit 'centaur-tabs-selected-modified :foreground ,color-yellow :box nil))))
     `(centaur-tabs-modified-marker-unselected ((t (:inherit 'centaur-tabs-unselected-modified :foreground ,color-yellow :box nil))))
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'minimal)
