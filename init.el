(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/emacs"))
(defconst +emacs-profiles-dir+ (concat +emacs-dir+ "/profiles"))
(defconst +emacs-lib-dir+ (concat +emacs-dir+ "/libs"))
(defconst +emacs-conf-dir+ (concat +emacs-dir+ "/config"))
(defconst +emacs-tmp-dir+ (concat +emacs-dir+ "/tmp"))
(defconst +emacs-custom-dir+ (concat +emacs-dir+ "/custom"))
(defconst +emacs-snippets-dir+ (concat +emacs-dir+ "/snippets"))

(defun add-load-path (p)
  (add-to-list 'load-path (concat +emacs-dir+ "/" p)))

(defun add-lib-path (p)
  (add-to-list 'load-path (concat +emacs-lib-dir+ "/" p)))

(defun load-conf-file (f)
  (load-file (concat +emacs-conf-dir+ "/" f ".el")))

(defun load-lib-file (f)
  (load-file (concat +emacs-lib-dir+ "/" f)))

(defun load-profile (p)
  (load-file (concat +emacs-profiles-dir+ "/" p ".el")))

(defun load-customizations ()
  (let ((filename (concat +emacs-custom-dir+ "/init.el")))
    (if (file-readable-p filename)
        (load-file filename))))

;; (add-load-path "")
;; (add-load-path "lib")

(load-profile "default")
(load-profile "c")
(load-profile "golang")
(load-profile "web")
(load-profile "lua")
(load-profile "pyim")
(load-profile "org")
(load-customizations)
