;; look and feel
(setq inhibit-startup-message t)
(if (functionp 'menu-bar-mode)
    (menu-bar-mode 0))
(if (functionp 'tool-bar-mode)
    (tool-bar-mode 0))
(if (functionp 'scroll-bar-mode)
    (scroll-bar-mode 0))
(setq visible-bell t)
(setq column-number-mode t)
(setq line-number-mode t)


(setq system-time-locale "C")
;; (setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
;; (setq display-time-format "%Y-%m-%d %H:%M %a")
(display-time)
(setq frame-title-format "%b  Drunkblues' GNU Emacs")


(global-font-lock-mode t)
(transient-mark-mode t)
(show-paren-mode t)
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq confirm-kill-emacs nil)
(setq create-lockfiles nil)
(set-default 'truncate-lines t)
(ido-mode 1)

(setq compile-command "make -k")
(setq shell-file-name "bash")
(setq-default ispell-program-name "aspell")
(defalias 'perl-mode 'cperl-mode)
(defalias 'yes-or-no-p 'y-or-n-p)


;; language and coding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


(ansi-color-for-comint-mode-on)




