(add-lib-path "org-pandoc")

(with-eval-after-load 'ox
  (require 'ox-pandoc))

(setq org-pandoc-output-format 'docx)
