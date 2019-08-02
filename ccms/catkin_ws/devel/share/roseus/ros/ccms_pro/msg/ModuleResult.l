;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::ModuleResult)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'ModuleResult (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::MODULERESULT")
  (make-package "CCMS_PRO::MODULERESULT"))

(in-package "ROS")
;;//! \htmlinclude ModuleResult.msg.html


(defclass ccms_pro::ModuleResult
  :super ros::object
  :slots (_modID _modulehealth _stamp ))

(defmethod ccms_pro::ModuleResult
  (:init
   (&key
    ((:modID __modID) 0)
    ((:modulehealth __modulehealth) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _modID (round __modID))
   (setq _modulehealth (round __modulehealth))
   (setq _stamp __stamp)
   self)
  (:modID
   (&optional __modID)
   (if __modID (setq _modID __modID)) _modID)
  (:modulehealth
   (&optional __modulehealth)
   (if __modulehealth (setq _modulehealth __modulehealth)) _modulehealth)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _modID
    2
    ;; int16 _modulehealth
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _modID
       (write-word _modID s)
     ;; int16 _modulehealth
       (write-word _modulehealth s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _modID
     (setq _modID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _modulehealth
     (setq _modulehealth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ccms_pro::ModuleResult :md5sum-) "74784e2e9e832ccc2a86ae5f0682c934")
(setf (get ccms_pro::ModuleResult :datatype-) "ccms_pro/ModuleResult")
(setf (get ccms_pro::ModuleResult :definition-)
      "int16 modID
int16 modulehealth
time stamp

")



(provide :ccms_pro/ModuleResult "74784e2e9e832ccc2a86ae5f0682c934")


