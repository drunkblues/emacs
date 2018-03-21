(require 'dired-x)

(defun my-dired-do-shell-command (command)
  (interactive)
  (save-window-excursion
    (dired-do-shell-command
     command
     current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))

(defun my-dired-open-by-system-default-app()
  (interactive)
  (progn
   (when (eq system-type 'darwin)
     (my-dired-do-shell-command "open"))

   (when (eq system-type 'windows-nt)
     (my-dired-do-shell-command "start"))
   ))
(define-key dired-mode-map (kbd "C-o") 'my-dired-open-by-system-default-app)

