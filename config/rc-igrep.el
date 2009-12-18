;;the igrep package;;
(autoload (function igrep) "igrep" 
"*Run ´grep´ PROGRAM to match EXPRESSION in FILES..." t) 
(autoload (function igrep-find) "igrep" 
"*Run ´grep´ via ´find´..." t) 
(autoload (function dired-do-igrep) "igrep" 
"*Run ´grep´ on the marked (or next prefix ARG) files." t) 
(autoload (function dired-do-igrep-find) "igrep" 
"*Run ´grep´ via ´find´ on the marked (or next prefix ARG) directories." t) 
(autoload (function grep) "igrep" 
"*Run ´grep´ PROGRAM to match EXPRESSION in FILES..." t) 
(autoload (function egrep) "igrep" "*Run ´egrep´..." t) 
(autoload (function fgrep) "igrep" "*Run ´fgrep´..." t) 
(autoload (function agrep) "igrep" "*Run ´agrep´..." t) 
(autoload (function grep-find) "igrep" "*Run ´grep´ via ´find´..." t) 
(autoload (function egrep-find) "igrep" "*Run ´egrep´ via ´find´..." t) 
(autoload (function fgrep-find) "igrep" "*Run ´fgrep´ via ´find´..." t) 
(autoload (function agrep-find) "igrep" "*Run ´agrep´ via ´find´..." t) 
(autoload (function dired-do-grep) "igrep" 
"*Run ´grep´ on the marked (or next prefix ARG) files." t) 
(autoload (function dired-do-grep-find) "igrep" 
"*Run ´grep´ via ´find´ on the marked (or next prefix ARG) directories." t) 