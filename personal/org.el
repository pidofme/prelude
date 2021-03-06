(require 'org-capture)
(global-set-key (kbd "C-c c") 'org-capture)

(require 'org-protocol)

(require 'epa-file)
(epa-file-enable)
(setq epa-pinentry-mode 'loopback)


(setq org-agenda-diary-file  "~/mindspace/diary.org")
(setq org-default-notes-file "~/Sync/org/notes/inbox.org")


(setq org-capture-templates nil)

(add-to-list 'org-capture-templates '("t" "Tasks"))

(add-to-list 'org-capture-templates
             '("tw" "Work Task" entry
               (file+headline "~/Sync/org/notes/yqj.org" "Tasks")
               "* TODO %^{任务名}\n%u\n%a\n" :clock-in t :clock-resume t))

(add-to-list 'org-capture-templates
             '("tp" "Personal Task" entry
               (file "~/Sync/org/notes/task.org")
               "* TODO %^{任务名}\n%u\n%a\n" :clock-in t :clock-resume t))


(add-to-list 'org-capture-templates
             '("n" "Notes" entry
               (file+headline "~/Sync/org/notes/inbox.org", "Note")
               "* %^{heading} %t %^g\n  %?\n"))

(add-to-list 'org-capture-templates
             '("p" "Protocol" entry
               (file+headline "~/Sync/org/notes/inbox.org" "Web")
               "* %:annotation\nCaptured On: %U\n\n#+BEGIN_QUOTE\n%i\n#+END_QUOTE\n%?"
               :immediate-finish t
               :kill-buffer t))

(add-to-list 'org-capture-templates
             '("l" "Protocol Link" entry
               (file+headline "~/Sync/org/notes/inbox.org" "Web")
               "* %:annotation\nCaptured On: %U\n%?"
               :immediate-finish t
               :kill-buffer t))

(add-to-list 'org-capture-templates
             '("j" "Journal" entry (file+datetree "~/Sync/org/notes/journal.gpg")
               "* %U - %^{heading}\n  %?"))
