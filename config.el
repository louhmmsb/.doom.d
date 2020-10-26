(setq user-full-name "Lourenço Bogo"
      user-mail-address "louhmmsb@hotmail.com")

(setq doom-theme 'doom-dracula)

(setq doom-font (font-spec :family "Fira Code" :size 15 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Code" :size 15))

(setq display-line-numbers-type t)

(use-package! org-bullets
  :hook (org-mode . org-bullets-mode))

(setq org-directory "~/org")
