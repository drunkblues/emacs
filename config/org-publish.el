
(setq org-publish-project-alist
      '(("orgfiles"
          :base-directory "~/web/org"
          :base-extension "org"
          :publishing-directory "~/web/publish/"
          :publishing-function org-html-publish-to-html
          :exclude "PrivatePage.org"   ;; regexp
          :headline-levels 3
          :section-numbers nil
          :with-toc nil
          :html-head "<link rel=\"stylesheet\"
                  href=\"./css/mystyle.css\" type=\"text/css\"/>"
          :html-preamble t)

         ("images"
          :base-directory "~/web/org/images/"
          :base-extension "jpg\\|gif\\|png"
          :publishing-directory "~/web/publish/images/"
          :publishing-function org-publish-attachment)

         ("css"
          :base-directory "~/web/org/css/"
          :base-extension "css"
          :publishing-directory "~/web/publish/css/"
          :publishing-function org-publish-attachment)

	 ("js"
          :base-directory "~/web/org/js/"
          :base-extension "js"
          :publishing-directory "~/web/publish/js/"
          :publishing-function org-publish-attachment)

         ("website" :components ("orgfiles" "images" "css" "js"))))
