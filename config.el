(setq user-full-name "Lourenço Bogo"
      user-mail-address "louhmmsb@hotmail.com")

(setq doom-theme 'doom-horizon)

(setq doom-font (font-spec :family "Fira Code" :size 15 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "Fira Code" :size 15))

(setq display-line-numbers-type t)

(if (eq initial-window-system 'x) ;if started by emacs command or desktop
    (toggle-frame-maximized)
  (toggle-frame-fullscreen))

(use-package! org-bullets
  :hook (org-mode . org-bullets-mode))

(setq org-directory "~/org")
