;; Set semantic submodes

;; (setq semantic-default-submodes
;;       '(global-semanticdb-minor-mode
;; 	global-semantic-idle-scheduler-mode
;; 	global-semantic-idle-summary-mode
;; 	global-semantic-idle-completions-mode
;; 	global-semantic-decoration-mode
;; 	global-semantic-highlight-func-mode
;; 	global-semantic-stickyfunc-mode
;; 	global-semantic-mru-bookmark-mode))

(semantic-mode 1)
;; (global-ede-mode 1)

(set-default 'ac-sources
	     (add-to-list 'ac-sources 'ac-source-semantic-raw))
