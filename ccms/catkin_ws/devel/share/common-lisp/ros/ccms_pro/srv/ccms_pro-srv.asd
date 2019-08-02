
(cl:in-package :asdf)

(defsystem "ccms_pro-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ModuleData" :depends-on ("_package_ModuleData"))
    (:file "_package_ModuleData" :depends-on ("_package"))
  ))