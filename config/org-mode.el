(require 'org)
(require 'ox)

(defun dbs-org-clean-space (text backend info)
  "delete space between chinese words when export."
  (when (or (org-export-derived-backend-p backend 'odt)
	    (org-export-derived-backend-p backend 'html))
    (let ((regexp "[[:multibyte:]]")
          (string text))
      ;; org convert "\n" to space, delete this
      (setq string
            (replace-regexp-in-string
             (format "\\(%s\\) *\n *\\(%s\\)" regexp regexp)
             "\\1\\2" string))
      ;; delete space before strong font
      (setq string
            (replace-regexp-in-string
             (format "\\(%s\\) +\\(<\\)" regexp)
             "\\1\\2" string))
      ;; delete space after strong font
      (setq string
            (replace-regexp-in-string
             (format "\\(>\\) +\\(%s\\)" regexp)
             "\\1\\2" string))
      string)))

(add-to-list 'org-export-filter-paragraph-functions
             'dbs-org-clean-space)

;; (defun clear-single-linebreak-in-cjk-string (string)
;;   "clear single line-break between cjk characters that is usually soft line-breaks"
;;   (let* ((regexp "\\([\u4E00-\u9FA5]\\)\n\\([\u4E00-\u9FA5]\\)")
;;          (start (string-match regexp string)))
;;     (while start
;;       (setq string (replace-match "\\1\\2" nil nil string)
;;             start (string-match regexp string start))))
;;   string)

;; (defun ox-html-clear-single-linebreak-for-cjk (string backend info)
;;   (when (org-export-derived-backend-p backend 'html)
;;     (clear-single-linebreak-in-cjk-string string)))
;; (defun ox-odt-clear-single-linebreak-for-cjk (string backend info)
;;   (when (org-export-derived-backend-p backend 'odt)
;;     (clear-single-linebreak-in-cjk-string string)))

;; (add-to-list 'org-export-filter-final-output-functions
;;              'ox-html-clear-single-linebreak-for-cjk
;; 	     'ox-odt-clear-single-linebreak-for-cjk)
