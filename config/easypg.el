;; EasyPG Settings, use GnuPG
(require 'epa-file)
;; (epa-file-enable)
;; Using symmetric encryption always
(setq epa-file-encrypt-to nil)
;; Save the password
(setq epa-file-cache-passphrase-for-symmetric-encryption t)
;; Auto-save
(setq epa-file-inhibit-auto-save nil)
