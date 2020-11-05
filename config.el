(setq user-full-name "Lourenço Bogo"
      user-mail-address "louhmmsb@hotmail.com")

(setq doom-theme 'doom-monokai-classic)

(setq doom-font (font-spec :family "Hack" :size 15 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :size 15)
      doom-big-font (font-spec :family "Hack" :size 24 :weight 'semi-light))
(after! doom-themes
  (setq doom-themes-enable-bold t)
  (setq doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq display-line-numbers-type 'relative)

(if (eq initial-window-system 'x) ;if started by emacs command or desktop
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))

(use-package! org-bullets
  :hook (org-mode . org-bullets-mode))
(after! org
  (setq org-directory "~/org"
        org-hide-emphasis-markers t
        org-log-done 'time))

(setq +latex-viewers '(evince))

(setq require-final-newline nil)

(after! org
  (setq org-latex-packages-alist '(("" "minted")))
  (setq org-latex-listings 'minted)
  (setq org-latex-pdf-process
        '("pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f"
          "bibtex %b"
          "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f"
          "pdflatex -interaction nonstopmode -shell-escape -output-directory %o %f")))

(setq auto-save-default nil
      create-lockfiles nil
      make-backup-files nil)

(map!  :localleader
       (:map LaTeX-mode-map
        (:prefix ("c" . "code")
         :desc "Compile and show PDF" "c" #'TeX-command-run-all)
        (:prefix ("i" . "insert")
         :desc "Insert LaTeX environment" "e" #'LaTeX-environment
         :desc "Insert LaTeX item" "i" #'LaTeX-insert-item)))
