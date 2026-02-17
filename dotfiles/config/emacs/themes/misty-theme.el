;;; misty-theme.el --- Misty theme for Emacs -*- lexical-binding: t; -*-

(load-file "~/.config/emacs/themes/palette.el")

(deftheme misty "A Misty theme.")

;; Helper for palette lookup
(defun misty-color (name)
  (cdr (assoc name misty-colors)))

;; Define faces
(custom-theme-set-faces
 'misty
 `(default ((t (:background ,(misty-color 'base)
                :foreground ,(misty-color 'text)))))
 `(cursor ((t (:background ,(misty-color 'teal)))))
 `(mode-line ((t (:background ,(misty-color 'mantle)
                  :foreground ,(misty-color 'text)))))
 `(mode-line-inactive ((t (:background ,(misty-color 'crust)
				                   :foreground ,(misty-color 'overlay0)))))
 `(mode-line-buffer-id ((t (:foreground ,(misty-color 'orange)))))
 `(fringe ((t (:background ,(misty-color 'base)
			   :foreground ,(misty-color 'surface1)))))
 `(vertical-border ((t (:foreground ,(misty-color 'teal)))))
 `(minibuffer-prompt ((t (:foreground ,(misty-color 'teal)))))
 `(link ((t (:foreground ,(misty-color 'teal)))))
 `(line-number ((t (:foreground ,(misty-color 'surface1)))))
 `(line-number-current-line ((t (:foreground ,(misty-color 'teal)))))
 `(shadow ((t (:foreground ,(misty-color 'overlay1)))))
 `(success ((t (:foreground ,(misty-color 'green)))))
 `(warning ((t (:foreground ,(misty-color 'yellow)))))
 `(error ((t (:foreground ,(misty-color 'red)))))
 `(match ((t (:background ,(misty-color 'surface1)
              :foreground ,(misty-color 'teal)))))
 `(secondary-selection ((t (:background ,(misty-color 'surface1)))))
 `(trailing-whitespace ((t (:background ,(misty-color 'red)))))
 `(escape-glyph ((t (:foreground ,(misty-color 'peach)))))
 `(homoglyph ((t (:foreground ,(misty-color 'peach)))))

 ;; Dashboard
 `(dashboard-startup-banner ((t (:foreground ,(misty-color 'teal)))))
 `(dashboard-banner-logo-title ((t (:foreground ,(misty-color 'teal)))))
 `(dashboard-heading ((t (:foreground ,(misty-color 'magenta)))))
 `(dashboard-footer ((t (:foreground ,(misty-color 'teal)))))

 ;; Highlight faces
 `(region ((t (:background ,(misty-color 'surface1)
               :extend t))))
 `(highlight ((t (:background ,(misty-color 'surface0)))))
 `(hl-line ((t (:background ,(misty-color 'surface0)))))
 `(isearch ((t (:background ,(misty-color 'peach)
                   :foreground ,(misty-color 'crust)))))
 `(lazy-highlight ((t (:background ,(misty-color 'surface2)
                         :foreground ,(misty-color 'text)))))

 ;; Font faces
 `(font-lock-builtin-face ((t (:foreground ,(misty-color 'magenta)))))
 `(font-lock-negation-char-face ((t (:foreground ,(misty-color 'const)))))
 `(font-reference-face ((t (:foreground ,(misty-color 'const)))))
 `(font-lock-constant-face ((t (:foreground ,(misty-color 'const)))))
 `(font-lock-doc-face ((t (:foreground ,(misty-color 'const)))))
 `(font-lock-function-name-face ((t (:foreground ,(misty-color 'teal)))))
 `(font-lock-keyword-face ((t (:foreground ,(misty-color 'magenta)))))
 `(font-lock-string-face ((t (:foreground ,(misty-color 'green)))))
 `(font-lock-type-face ((t (:foreground ,(misty-color 'teal)))))
 `(font-lock-variable-name-face ((t (:foreground ,(misty-color 'var)))))
 `(font-lock-warning-face ((t (:foreground ,(misty-color 'warning)))))
 `(font-lock-comment-face ((t (:foreground ,(misty-color 'comment)
			       :slant italic))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,(misty-color 'comment)
                                         :slant italic))))

 ;; Org Fonts
 `(org-code ((t (:foreground ,(misty-color 'lavender)))))
 `(org-level-1 ((t (:foreground ,(misty-color 'blue)
                     :weight bold :height 1.7))))
 `(org-level-2 ((t (:foreground ,(misty-color 'green)
                     :weight bold :height 1.6))))
 `(org-level-3 ((t (:foreground ,(misty-color 'var)
                     :weight bold :height 1.5))))
 `(org-level-4 ((t (:foreground ,(misty-color 'teal)
                     :weight bold :height 1.4))))
 `(org-level-5 ((t (:foreground ,(misty-color 'yellow)
		     :weight bold :height 1.3))))
 `(org-level-6 ((t (:foreground ,(misty-color 'peach)
		     :weight bold :height 1.2))))
 `(org-level-7 ((t (:foreground ,(misty-color 'mauve)
		     :weight bold :height 1.1))))
 `(org-level-8 ((t (:foreground ,(misty-color 'flamingo)
				:weight bold :height 1.0))))
 `(org-date ((t (:foreground ,(misty-color 'green) :underline t))))

  ;; Org Blocks
 `(org-block ((t (:background ,(misty-color 'base1)
		  :foreground ,(misty-color 'lavender)
		  :extend t))))
   `(org-block-begin-line
   ((t (:background ,(misty-color 'base1)
        :foreground ,(misty-color 'overlay1)
        :height 0.9 :extend t))))
 `(org-block-end-line
   ((t (:background ,(misty-color 'base1)
        :foreground ,(misty-color 'overlay1)
        :height 0.9 :extend t))))

 ;; Org Todo
 `(org-todo ((t (:foreground ,(misty-color 'peach)
                 :weight bold))))
 `(org-done ((t (:foreground ,(misty-color 'green)
                 :weight bold))))

 ;; Org Links
 `(org-link ((t (:foreground ,(misty-color 'sapphire)
                  :underline t))))
 `(org-tag ((t (:foreground ,(misty-color 'overlay1)
                 :weight light))))

 ;; Org Tables
 `(org-table ((t (:foreground ,(misty-color 'blue)))))
 `(org-quote ((t (:foreground ,(misty-color 'subtext0)
                  :background ,(misty-color 'surface0)
                  :slant italic
                  :extend t))))
 `(org-verbatim ((t (:foreground ,(misty-color 'yellow))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'misty)

;;; misty-theme.el ends here