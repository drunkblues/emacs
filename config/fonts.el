;; Fonts Settings

(when (eq system-type 'darwin)
      ;; Setting English Font 
      (set-face-attribute 'default nil :font "Monaco 14")
      ;; Chinese Font 
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font) charset
			  (font-spec :family "STHeiti" :size 16))))

(when (eq system-type 'windows-nt)
      ;; Setting English Font 
      (set-face-attribute 'default nil :font "Consolas 14")
      ;; Chinese Font 
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font) charset
			  (font-spec :family "Microsoft Yahei" :size 20))))

(when (eq system-type 'gnu/linux)
      ;; Setting English Font 
      (set-face-attribute 'default nil :font "Menlo 14")
      ;; Chinese Font 
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font) charset
			  (font-spec :family "WenQuanYi Micro Hei Mono" :size 16))))


;; Org Table
;; | A     | B    | C          | D    | E           |
;; |-------+------+------------+------+-------------|
;; | Hello | 你好 | Hello 中国 | 你好 | good        |
;; | Hello | CC   | 我的       | 中国 | Jungle 骚骆 |
;; |-------+------+------------+------+-------------|

