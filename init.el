(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
;;;;; End of init

;;;;; Added by Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auth-source-save-behavior nil)
 '(beacon-color "green")
 '(beacon-mode t)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("c83c095dd01cde64b631fb0fe5980587deec3834dc55144a6e78ff91ebc80b19" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "b5fff23b86b3fd2dd2cc86aa3b27ee91513adaefeaa75adc8af35a45ffb6c499" "2c49d6ac8c0bf19648c9d2eabec9b246d46cb94d83713eaae4f26b49a8183fc4" "cae81b048b8bccb7308cdcb4a91e085b3c959401e74a0f125e7c5b173b916bf9" "01cf34eca93938925143f402c2e6141f03abb341f27d1c2dba3d50af9357ce70" "0685ffa6c9f1324721659a9cd5a8931f4bb64efae9ce43a3dba3801e9412b4d8" "56d10d2b60685d112dd54f4ba68a173c102eacc2a6048d417998249085383da1" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "ca70827910547eb99368db50ac94556bbd194b7e8311cfbdbdcad8da65e803be" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "0fe24de6d37ea5a7724c56f0bb01efcbb3fe999a6e461ec1392f3c3b105cc5ac" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "fce3524887a0994f8b9b047aef9cc4cc017c5a93a5fb1f84d300391fba313743" "7546a14373f1f2da6896830e7a73674ef274b3da313f8a2c4a79842e8a93953e" "3a78cae35163bb71df460ebcfdebf811fd7bc74eaa15428c7e0bccfd4f858d30" "e5dc5b39fecbeeb027c13e8bfbf57a865be6e0ed703ac1ffa96476b62d1fae84" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(fci-rule-color "#BA45A3")
 '(fringe-mode 6 nil (fringe))
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#131033" "#1ea8fc"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#131033" "#a7da1e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#131033" "#546A90"))
 '(linum-format 'dynamic)
 '(objed-cursor-color "#e61f44")
 '(package-selected-packages
   '(doom-themes autothemer symon dmenu diminish company dashboard rainbow-delimiters sudo-edit hungry-delete evil switch-window avy undo-tree smex ido-vertical-mode beacon spacemacs-theme which-key use-package))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(rustic-ansi-faces
   ["#0c0a20" "#e61f44" "#a7da1e" "#ffd400" "#1ea8fc" "#ff2afc" "#42c6ff" "#f2f3f7"])
 '(vc-annotate-background "#0c0a20")
 '(vc-annotate-color-map
   (list
    (cons 20 "#a7da1e")
    (cons 40 "#c4d814")
    (cons 60 "#e1d60a")
    (cons 80 "#ffd400")
    (cons 100 "#efa314")
    (cons 120 "#df7329")
    (cons 140 "#cf433e")
    (cons 160 "#df3a7d")
    (cons 180 "#ef32bc")
    (cons 200 "#ff2afc")
    (cons 220 "#f626be")
    (cons 240 "#ee2281")
    (cons 260 "#e61f44")
    (cons 280 "#c13157")
    (cons 300 "#9d4469")
    (cons 320 "#78577d")
    (cons 340 "#BA45A3")
    (cons 360 "#BA45A3")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "SGI" :family "SGI Screen"))))
 '(cursor ((t (:background "green" :foreground "black"))))
 '(font-lock-comment-face ((t (:foreground "gray24"))))
 '(highlight ((t (:background "gray8"))))
 '(org-level-1 ((t (:inherit outline-1 :weight bold :height 1.3))))
 '(org-level-2 ((t (:inherit outline-2 :weight bold :height 1.2))))
 '(org-level-3 ((t (:weight bold :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :weight bold))))
 '(org-level-5 ((t (:inherit outline-5 :weight bold))))
 '(org-level-6 ((t (:inherit outline-6 :weight bold))))
 '(org-level-7 ((t (:inherit outline-7 :weight bold))))
 '(org-level-8 ((t (:inherit outline-8 :weight bold)))))
