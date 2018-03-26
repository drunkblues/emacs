(add-lib-path "org-pandoc")

(with-eval-after-load 'ox
  (require 'ox-pandoc))

(setq org-pandoc-output-format 'docx)
(setq org-pandoc-extra-options
      "--reference-doc ~/emacs/custom/org/styles.docx")

(setq org-export-with-toc 'nil)
(setq org-export-headline-levels 4)
(setq org-export-with-section-numbers 'nil)
(setq org-export-with-author 'nil)
(setq org-export-with-creator 'nil)
(setq org-export-with-timestamps 'nil)
