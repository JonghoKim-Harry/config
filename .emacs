;; Byte-compile
(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'cyberpunk t)
;(load-theme 'zenburn t)
