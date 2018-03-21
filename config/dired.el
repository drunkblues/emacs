(require 'dired-x)

(setq dired-listing-switches "-alh")
;; Faster than the default scp
(setq tramp-default-method "ssh")

;; allow dired to delete or copy dir
;; "always" means no asking
;; "top" means ask once
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'top)


;; copy from one dired dir to the next dired dir
;; shown in a split window
(setq dired-dwim-target t)




;;  [q] to upper directory
(defun my-dired-backward ()
  "Go back to the parent directory (..), and the cursor will be moved to where
          the previous directory."
  (interactive)
  (let* ((DIR (buffer-name)))
    (if (equal DIR "*Find*")
        (quit-window t)
      (progn (find-alternate-file "..")
             (re-search-forward DIR nil :no-error)
             (revert-buffer)))))
(define-key dired-mode-map (kbd "q") 'my-dired-backward)  


;; Enter to open directory in the same buffer 
(defun my-dired-find-alternate-file ()
  (interactive)
  (if (file-regular-p (dired-get-filename))
      (dired-find-file)
    (dired-find-alternate-file)))
(define-key dired-mode-map (kbd "RET") 'my-dired-find-alternate-file)
(put 'dired-find-alternate-file 'disabled nil)



;; list directories first
;; (defun my-dired-directory-sort ()
;;   "Dired sort hook to list directories first."
;;   (save-excursion
;;     (let (buffer-read-only)
;;       (forward-line 2) ;; beyond dir. header
;;       (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max))))
;;   (and (featurep 'xemacs)
;;        (fboundp 'dired-insert-set-properties)
;;        (dired-insert-set-properties (point-min) (point-max)))
;;   (set-buffer-modified-p nil))

;; (add-hook 'dired-after-readin-hook 'my-dired-directory-sort)



;; [s] to change sort method
;; (defun dired-sort-size ()
;;   "Dired sort by size."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "S")))
;; (defun dired-sort-extension ()
;;   "Dired sort by extension."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "X")))
;; (defun dired-sort-ctime ()
;;   "Dired sort by create time."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "ct")))
;; (defun dired-sort-utime ()
;;   "Dired sort by access time."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "ut")))
;; (defun dired-sort-time ()
;;   "Dired sort by time."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "t")))
;; (defun dired-sort-name ()
;;   "Dired sort by name."
;;   (interactive) (dired-sort-other (concat dired-listing-switches "")))

;; (defvar v-dired-sort 'name)
;; (defun dired-sort-and-remember ()
;;   ""
;;   (interactive)
;;   (setq v-dired-sort
;;         (intern
;;          (completing-read "Sort by: " '(name size extension ctime utime time) nil t
;;                           (cond ((eq v-dired-sort 'name) "time")
;;                                 ((eq v-dired-sort 'time) "name")
;;                                 ((eq v-dired-sort 'size) "name")
;;                                 (t nil)))))
;;   (dired-sort-auto-apply))

;; (defun dired-sort-auto-apply ()
;;   (cond ((eq v-dired-sort 'name) (dired-sort-name))
;;         ((eq v-dired-sort 'size) (dired-sort-size))
;;         ((eq v-dired-sort 'extenstion) (dired-sort-extenstion))
;;         ((eq v-dired-sort 'ctime) (dired-sort-ctime))
;;         ((eq v-dired-sort 'utime) (dired-sort-utime))
;;         ((eq v-dired-sort 'time) (dired-sort-time))))

;; (add-hook 'dired-mode-hook 'dired-sort-auto-apply)
;; (define-key dired-mode-map "s" 'dired-sort-and-remember)


