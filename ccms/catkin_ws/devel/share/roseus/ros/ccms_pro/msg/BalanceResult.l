;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::BalanceResult)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'BalanceResult (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::BALANCERESULT")
  (make-package "CCMS_PRO::BALANCERESULT"))

(in-package "ROS")
;;//! \htmlinclude BalanceResult.msg.html


(defclass ccms_pro::BalanceResult
  :super ros::object
  :slots (_balancestate _modID _stamp ))

(defmethod ccms_pro::BalanceResult
  (:init
   (&key
    ((:balancestate __balancestate) 0)
    ((:modID __modID) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _balancestate (round __balancestate))
   (setq _modID (round __modID))
   (setq _stamp __stamp)
   self)
  (:balancestate
   (&optional __balancestate)
   (if __balancestate (setq _balancestate __balancestate)) _balancestate)
  (:modID
   (&optional __modID)
   (if __modID (setq _modID __modID)) _modID)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _balancestate
    2
    ;; int16 _modID
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _balancestate
       (write-word _balancestate s)
     ;; int16 _modID
       (write-word _modID s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _balancestate
     (setq _balancestate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _modID
     (setq _modID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ccms_pro::BalanceResult :md5sum-) "4d0a672bc2e43f660b2b92e9da0e2b66")
(setf (get ccms_pro::BalanceResult :datatype-) "ccms_pro/BalanceResult")
(setf (get ccms_pro::BalanceResult :definition-)
      "int16 balancestate
int16 modID
time stamp

")



(provide :ccms_pro/BalanceResult "4d0a672bc2e43f660b2b92e9da0e2b66")


