;; key bindings: mac specific settings. values can be 'control, 'alt,
;; 'meta, 'super, 'hyper, nil (setting to nil allows the OS to assign
;; values)
(when (eq system-type 'darwin)
  (setq mac-function-modifier 'control)
  (setq mac-control-modifier 'control)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'meta)
  (setq mac-right-control-modifier 'none)
  (setq mac-right-option-modifier 'none)
  (setq mac-right-command-modifier 'none)

  ;; sets fn-delete to be right-delete
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete

  ;; add "/use/local/bin" to exec-path
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (setq exec-path (append exec-path '("/usr/local/bin")))
  )
