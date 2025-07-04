;;; -*- lexical-binding: t; -*-

;; Unset shortcuts with the Command Key
(keymap-global-unset "s-&") ;; kill-current-buffer
(keymap-global-unset "s-'") ;; next-window-any-frame
(keymap-global-unset "s-+") ;; text-scale-adjust
(keymap-global-unset "s-,") ;; customize
(keymap-global-unset "s--") ;; text-scale-adjust
(keymap-global-unset "s-0") ;; text-scale-adjust
(keymap-global-unset "s-:") ;; ispell
(keymap-global-unset "s-<kp-bar>") ;; shell-command-on-region
(keymap-global-unset "s-<left>")   ;;	move-beginning-of-line
(keymap-global-unset "s-<right>")  ;; move-end-of-line
(keymap-global-unset "s-=") ;; text-scale-adjust
(keymap-global-unset "s-?") ;; info
(keymap-global-unset "s-C") ;; ns-popup-color-panel
(keymap-global-unset "s-D") ;; dired
(keymap-global-unset "s-E") ;; edit-abbrevs
(keymap-global-unset "s-F") ;; isearch-backward
(keymap-global-unset "s-H") ;; ns-do-hide-others
(keymap-global-unset "s-L") ;; shell-command
(keymap-global-unset "s-M") ;; manual-entry
(keymap-global-unset "s-S") ;; ns-write-file-using-panel
(keymap-global-unset "s-^") ;; kill-some-buffers
(keymap-global-unset "s-`") ;; other-frame
(keymap-global-unset "s-a") ;; disable mark-whole-buffer
(keymap-global-unset "s-c") ;; ns-copy-including-secondary
(keymap-global-unset "s-d") ;; isearch-repeat-backward
(keymap-global-unset "s-e") ;; isearch-yank-kill
(keymap-global-unset "s-f") ;; isearch-forward
(keymap-global-unset "s-g") ;; isearch-repeat-forward
(keymap-global-unset "s-j") ;; exchange-point-and-mark
(keymap-global-unset "s-k") ;; kill-current-buffer
(keymap-global-unset "s-l") ;; goto-line
(keymap-global-unset "s-n") ;; make-frame
(keymap-global-unset "s-o") ;; ns-open-file-using-panel
(keymap-global-unset "s-p") ;; ns-print-buffer
(keymap-global-unset "s-s") ;; disable save-buffer
(keymap-global-unset "s-t") ;; menu-set-font
(keymap-global-unset "s-u") ;; revert-buffer
(keymap-global-unset "s-v") ;; yank
(keymap-global-unset "s-w") ;; delete-frame
(keymap-global-unset "s-x") ;; kill-region
(keymap-global-unset "s-y") ;; ns-paste-secondary
(keymap-global-unset "s-z") ;; disable undo
(keymap-global-unset "s-|") ;; shell-command-on-region
(keymap-global-unset "s-~") ;; ns-prev-frame
(keymap-global-unset "s-h") ;; ns-do-hide-emacs
(keymap-global-unset "s-m") ;; iconify-frame

(defun az-move-bol-or-prev-eol ()
  "Move to beginning of line, or to end of previous line if already at bol."
  (interactive)
  (if (bolp)
      (progn
        (forward-line -1)
        (end-of-line))
    (beginning-of-line)))

(defun az-move-eol-or-next-bol ()
  "Move to beginning of line, or to end of previous line if already at bol."
  (interactive)
  (if (eolp)
      (progn
        (forward-line 1)
        (beginning-of-line))
    (end-of-line)))

(require 'viper-cmd)

;; Motion keys
(keymap-global-unset "M-f") ;; forward-word
(keymap-global-set "M-f" #'viper-forward-word) ;; forward-word
(keymap-global-unset "M-b") ;; backward-word
(keymap-global-set "M-b" #'viper-backward-word) ;; backward-word
;; (keymap-global-unset "M-d") ;; kill-word
(keymap-global-unset "M-k") ;; kill-sentence
(keymap-global-unset "M-e") ;; forward-sentence
(keymap-global-set "M-e" #'forward-word) ;; forward-sentence
(keymap-global-unset "M-a") ;; backward-sentence

(keymap-global-unset "M-c") ;; capitalize-word
(keymap-global-unset "M-l") ;; downcase-word
(keymap-global-unset "M-q") ;; prog-fill-reindent-defun
(keymap-global-unset "M-s") ;; isearch commands
(keymap-global-unset "M-v") ;; scroll-down-command
(keymap-global-unset "M-z") ;; zap-to-char
(keymap-global-unset "M-j") ;; default-indent-new-line
(keymap-global-unset "M-u") ;; upcase-word
(keymap-global-unset "M-t") ;; transpose-words

(keymap-global-set "s-[" #'undo-fu-only-undo)
(keymap-global-set "s-]" #'undo-fu-only-redo)

(keymap-global-set "s-s" #'set-mark-command)

(keymap-global-set "s-k" #'az-move-bol-or-prev-eol)
(keymap-global-set "s-l" #'az-move-eol-or-next-bol)

(keymap-global-set "s-b c" #'compile)
(keymap-global-set "s-b y g" #'compile-yandex-g++14.1)
(keymap-global-set "s-b y c" #'compile-yandex-clang++17.0.1)
;; (keymap-global-set "s-n" #'xah-backward-left-bracket)

(keymap-global-set "s-," #'repeat)

;; Set better `set-mark-command' keybinding
(keymap-global-unset "C-SPC")
(keymap-global-unset "C-@")
(keymap-global-unset "C-s")
(keymap-global-set "C-s" #'set-mark-command)

;; Stop Emacs from zooming when holding CTRL + Mouse Wheel
(keymap-global-set "<pinch>" 'ignore)
(keymap-global-set "C-<wheel-up>" 'ignore)
(keymap-global-set "C-<wheel-down>" 'ignore)
(keymap-global-set "C-M-<wheel-up>" 'ignore)
(keymap-global-set "C-M-<wheel-down>" 'ignore)

;; Frame Shortcuts
(when (and (display-graphic-p) (eq system-type 'darwin))
  (keymap-global-set "s-\\ m" #'iconify-frame)
  (keymap-global-set "s-\\ h" #'ns-do-hide-emacs))
(keymap-global-set "s-\\ n" #'make-frame)
(keymap-global-set "s-\\ k" #'delete-frame)

;; Keybindings for toggling frame maximized and fullscreen
(keymap-global-set "s-F" #'toggle-frame-maximized)
(keymap-global-set "C-s-f" #'toggle-frame-fullscreen)

(keymap-global-set "s-1" #'delete-other-windows)
(keymap-global-set "s-0" #'delete-window)
(keymap-global-set "s-8" #'kill-current-buffer)
(keymap-global-set "s-9" #'kill-buffer-and-window)

(keymap-global-set "s-2" #'ace-select-window)
(keymap-global-set "s-3" #'split-window-horizontally)
(keymap-global-set "s-4" #'split-window-vertically)
(keymap-global-set "s-5" #'previous-buffer)
(keymap-global-set "s-6" #'next-buffer)
(keymap-global-set "s-=" #'balance-windows)

;; moom frame control
(keymap-global-set "s-<right>" #'moom-fill-right)
(keymap-global-set "s-<left>" #'moom-fill-left)
(keymap-global-set "s-<up>" #'moom-fill-top)
(keymap-global-set "s-<down>" #'moom-fill-bottom)
(keymap-global-set "s-<backspace>" #'moom-reset)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CHANGE MACOS-SPECIFIC KEYS ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; unset mouse key
;; (keymap-global-unset "<drag-mouse-1>")
(keymap-global-unset "C-M-<drag-mouse-1>")
(keymap-global-unset "C-<drag-mouse-1>")
(keymap-global-unset "M-<drag-mouse-1>")

(keymap-global-unset "M-<mouse-1>")
(keymap-global-unset "S-<mouse-1>")

;; (keymap-global-unset "<down-mouse-1>")
;; (keymap-global-set   "<down-mouse-1>" "<mouse-1>")
(keymap-global-unset "C-M-<down-mouse-1>")
(keymap-global-unset "C-<down-mouse-1>")
(keymap-global-unset "M-<down-mouse-1>")
(keymap-global-unset "C-<drag-mouse-1>")

(keymap-global-set "C--" #'text-scale-adjust) ;; text-scale-adjust
(keymap-global-set "C-0" #'text-scale-adjust) ;; text-scale-adjust
(keymap-global-set "C-=" #'text-scale-adjust) ;; text-scale-adjust


;; affe -- fuzzy file search and rg
;; requires ripgrep to be installed on the system
(defun ensure-ripgrep-installed ()
  "Check if running on macOS, and if ripgrep is installed. If not, install it via Homebrew."
  (interactive)
  (when (eq system-type 'darwin)
    (unless (executable-find "rg")
      (message "ripgrep not found. Attempting to install via Homebrew...")
      (unless (executable-find "brew")
        (error "Homebrew not found. Please install Homebrew first (https://brew.sh)"))
      (let ((exit-status (call-process "brew" nil nil nil "install" "ripgrep")))
        (if (zerop exit-status)
            (message "Successfully installed ripgrep via Homebrew")
          (error "Failed to install ripgrep via Homebrew (exit status: %d)" exit-status))))))

;; Run the check
(ensure-ripgrep-installed)

(keymap-global-set "s-f" #'affe-find)
(keymap-global-set "s-g" #'affe-grep)
