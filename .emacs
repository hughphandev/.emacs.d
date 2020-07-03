(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (flycheck melpa-upstream-visit evil)))
 '(scroll-bar-mode nil)
 '(scroll-bar-modebar nil t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Setup flycheck
(unless (package-installed-p 'flycheck)
  (package-install 'flycheck))
(global-flycheck-mode)

;; Set upevil
(unless (package-installed-p 'evil)
  (package-install 'evil))
(require 'evil)
(evil-mode 1)

;; Set default font
(set-face-attribute 'default nil
                    :family "Fira Code Retina"
                    :height 110
                    :weight 'normal
                    :width 'normal)
