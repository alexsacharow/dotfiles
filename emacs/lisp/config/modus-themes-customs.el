(setq modus-vivendi-palette-overrides ;; this is the light theme
      '(;; colors
        (red             "#BF616A")
        (red-warmer      "#BF616A")
        (red-cooler      "#BF616A")
        (red-faint       "#BF616A")
        (red-intense     "#BF616A")
        (green           "#A3BE8C")
        (green-warmer    "#A3BE8C")
        (green-cooler    "#A3BE8C")
        (green-faint     "#A3BE8C")
        (green-intense   "#A3BE8C")
        (yellow          "#EBCB8B")
        (yellow-warmer   "#EBCB8B")
        (yellow-cooler   "#EBCB8B")
        (yellow-faint    "#EBCB8B")
        (yellow-intense  "#EBCB8B")
        (blue            "#81A1C1")
        (blue-warmer     "#81A1C1")
        (blue-cooler     "#81A1C1")
        (blue-faint      "#81A1C1")
        (blue-intense    "#81A1C1")
        (magenta         "#B48EAD")
        (magenta-warmer  "#B48EAD")
        (magenta-cooler  "#B48EAD")
        (magenta-faint   "#B48EAD")
        (magenta-intense "#B48EAD")
        (cyan            "#87C0D0")
        (cyan-warmer     "#87C0D0")
        (cyan-cooler     "#87C0D0")
        (cyan-faint      "#87C0D0")
        (cyan-intense    "#87C0D0")
        (rust            "#D08770")
        (gold            "#EBCB8B")
        (olive           "#647D4A")
        (slate           "#4B647D")
        (indigo          "#D5BBCF")
        (maroon          "#AD8CAE")
        (pink            "#EDDAEB")
        ;; emacs parts
        (cursor      "#FFFFFF")
        ;; bg
        (bg-main     "#2E3440")
        (bg-dim      "#3B4352")
        (bg-active   "#4C566A")
        (bg-inactive "#535D72")
        (border      "#4C566A")
        (bg-completion bg-active)
        (bg-hover bg-active)
        (bg-hl-line bg-dim)
        ;; fg
        (fg-main     "#D8DEE9")
        (fg-dim      "#B4B4BE")
        (fg-alt      "#D8ECF2")
        ;; modeline
        (bg-mode-line-active   "#4C566A")
        (fg-mode-line-active   "#E5E9F0")
        (bg-mode-line-inactive bg-main)
        (fg-mode-line-inactive "#81A1C1")
        (border-mode-line-active "#4C566A")
        (border-mode-line-inactive "#81A1C1")
        (bg-line-number-inactive bg-main)
        (fg-line-number-inactive "#4C566A")
        (bg-line-number-active bg-main)
        (fg-line-number-active fg-main)
        ;; icons in the fringe
        (fg-prominent-err     "#BF616A")
        (bg-prominent-err bg-main)
        (fg-prominent-warning "#AE7504")
        (bg-prominent-warning bg-main)
        (fg-prominent-note    "#0063A9")
        (bg-prominent-note bg-main)
        ;; parenthesis match
        (bg-paren-match "#88C0D0")
        (fg-paren-match bg-main)
        ;; selection
        (bg-region "#3B4252")
        (fg-region fg-main)
        ;; code parts
        (comment "#88C0D0")
        (string  "#ffffff")
        (builtin      fg-main)
        (constant     fg-main)
        (docstring    fg-main)
        (docmarkup    fg-main)
        (fnname       fg-main)
        (keyword      fg-main)
        (preprocessor fg-main)
        (type         fg-main)
        (variable     fg-main)
        (rx-construct fg-main)
        (rx-backslash fg-main)
        ))

(setq modus-operandi-palette-overrides ;; this is the light theme
      '(;; emacs parts
        (cursor      "#055C76")
        ;; modeline
        (bg-mode-line-active   bg-active)
        (fg-mode-line-active   fg-main)
        (bg-mode-line-inactive bg-main)
        (fg-mode-line-inactive fg-dim)
        (border-mode-line-active border)
        (border-mode-line-inactive border)
        (bg-line-number-inactive bg-main)
        (fg-line-number-inactive bg-inactive)
        (bg-line-number-active bg-main)
        (fg-line-number-active fg-main)
        ;; icons in the fringe
        (fg-prominent-err     "#AF1900")
        (bg-prominent-err bg-main)
        (fg-prominent-warning "#E19600")
        (bg-prominent-warning bg-main)
        (fg-prominent-note    "#0063A9")
        (bg-prominent-note bg-main)
        ;; parenthesis match
        (bg-paren-match "#FFE100")
        (fg-paren-match fg-main)
        ;; code parts
        (comment "#1336C2")
        (string  "#2F515B")
        (builtin      fg-main)
        (constant     fg-main)
        (docstring    fg-main)
        (docmarkup    fg-main)
        (fnname       fg-main)
        (keyword      fg-main)
        (preprocessor fg-main)
        (type         fg-main)
        (variable     fg-main)
        (rx-construct fg-main)
        (rx-backslash fg-main)
        ))
