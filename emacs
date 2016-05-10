;;Interactively do things default
(require 'ido)
(ido-mode t)

;; THEMES
;; (load-theme 'deeper-blue t)
;; (load-theme 'wombat t) 			;wombat!
;; (load-theme 'tango-dark t)
(load-theme 'adwaita t)

;; Scores
(setq tetris-score-file
  "~/.emacs.d/tetris-scores")
(setq snake-score-file
  "~/.emacs.d/snake-scores")

;; Rebind AltGr -f-b-v &&& other from original M-layer
;; AltGr -> M'
(global-set-key (kbd "đ") 'forward-word)      ; M'-f navigate words
(global-set-key (kbd "”") 'backward-word)     ; M'-b
(global-set-key (kbd "“") 'scroll-down)	      ; M'-v scroll
(global-set-key (kbd "←") 'yank-pop)	      ; M'-y cycle kill ring
(global-set-key (kbd "C--") 'undo)   ; nice undo
(global-set-key (kbd "€") 'forward-sentence)  ; M'-e end of sentence
(global-set-key (kbd "ª") 'backward-sentence) ; M'-a start of sentence
(global-set-key (kbd "ð") 'kill-word)	      ;M'-d KILL to end next end of word
(global-set-key (kbd "½") 'end-of-buffer)     ;M'-< better end of buffer
(global-set-key (kbd "®") 'move-to-window-line-top-bottom) ;M'-r cycle pointer

;; command to open current directory and terminal
;; (global-set-key (kbd "œ") 'M-! gnome-open .)
(global-set-key (kbd "C-œ") (lambda ()
			    (interactive) (shell-command "xdg-open .")))
;; (global-set-key (kbd "þ") 'M-! gnome-terminal .)

;;autocomplete
(add-to-list 'load-path "~/.emacs.d")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;;fill column indicator
;; (add-hook 'prog-mode-hook 'column-enforce-mode) ; av for arbeid
;; (add-hook 'prog-mode-hook 'linum-mode)
;; ;; thicker window for linum mode
;; (add-to-list 'default-frame-alist '(width . 83))

;; extra package archives
(require 'package)
(add-to-list 'package-archives
            '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; projetile
(projectile-global-mode)

;; Elpy
(elpy-enable)
(put 'upcase-region 'disabled nil)

;;JULIA
;;

;;RefTeX
(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-auctex t)

;; AUCTeX customs.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-abbrev-prefix "'")
 '(TeX-electric-math (quote ("$" . "$")))
 '(TeX-electric-sub-and-superscript t)
 '(elpy-test-runner (quote elpy-test-pytest-runner))
 '(org-agenda-files (quote ("~/Documents/jobb/apps.org")))
 '(sentence-end-double-space nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; C-programming
(add-hook 'c-mode-hook
	  (lambda ()
	    (add-to-list 'ac-sources 'ac-source-c-headers)
	    (add-to-list 'ac-sources 'ac-source-c-header-symbols t)))
;; (require 'auto-complete)
;; ; default config for auto-complete
;; (require 'auto-complete-config)
;; (ac-config-default)


;; OpenFOAM
(add-to-list 'load-path "~/.emacs.d/myFoam/")
(add-hook 'c-mode-common-hook 'openfoam-hgw-c-mode-hook)
(put 'set-goal-column 'disabled nil)


;; m+ 1mn ultra light
;; pppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp
;; ................................................................................

;; m+ 1mn ultra light

;; m+ 1c  -> not monospaced
;; m+ 1m  -> fine
;; m+ 1mn -> fine
;; m+ 1p -> not monospaced
;; m+ 2c -> not monospaced
;; m+ 2m  -> fine
;; m+ 2p -> not monospaced
