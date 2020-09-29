(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)
(set-face-attribute 'default nil :font "Fira Code Retina" :height 100)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :init (which-key-mode))

(use-package solarized-theme
  :ensure t
  :init (load-theme 'solarized-dark t))

(use-package evil
  :ensure t
  :config (evil-mode))

(use-package company
  :ensure t
  :init (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
