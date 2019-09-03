(prelude-require-packages '(lsp-mode))

(add-hook 'js2-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
