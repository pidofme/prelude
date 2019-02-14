;; 关闭缺少行尾分号警告
;; 2空格缩进
(add-hook 'js2-mode-hook (lambda ()
                           (setq js2-strict-missing-semi-warning nil)
                           (setq js2-basic-offset 2)))
