(prelude-require-packages '(yasnippet yasnippet-snippets))

(setq yas-snippet-dirs
      '("~/.emacs.d/personal/snippets"
        yasnippet-snippets-dir
        ))

(yas-global-mode 1)
