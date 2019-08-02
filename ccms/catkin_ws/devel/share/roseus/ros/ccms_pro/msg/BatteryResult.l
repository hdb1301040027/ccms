;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::BatteryResult)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'BatteryResult (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::BATTERYRESULT")
  (make-package "CCMS_PRO::BATTERYRESULT"))

(in-package "ROS")
;;//! \htmlinclude BatteryResult.msg.html


(defclass ccms_pro::BatteryResult
  :super ros::object
  :slots (_batteryID _batteryhealth _stamp ))

(defmethod ccms_pro::BatteryResult
  (:init
   (&key
    ((:batteryID __batteryID) 0)
    ((:batteryhealth __batteryhealth) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _batteryID (round __batteryID))
   (setq _batteryhealth (round __batteryhealth))
   (setq _stamp __stamp)
   self)
  (:batteryID
   (&optional __batteryID)
   (if __batteryID (setq _batteryID __batteryID)) _batteryID)
  (:batteryhealth
   (&optional __batteryhealth)
   (if __batteryhealth (setq _batteryhealth __batteryhealth)) _batteryhealth)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _batteryID
    2
    ;; int16 _batteryhealth
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _batteryID
       (write-word _batteryID s)
     ;; int16 _batteryhealth
       (write-word _batteryhealth s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _batteryID
     (setq _batteryID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _batteryhealth
     (setq _batteryhealth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ccms_pro::BatteryResult :md5sum-) "e42e7886af1941bd1e452f49878265cf")
(setf (get ccms_pro::BatteryResult :datatype-) "ccms_pro/BatteryResult")
(setf (get ccms_pro::BatteryResult :definition-)
      "int16 batteryID
int16 batteryhealth 
time stamp

")



(provide :ccms_pro/BatteryResult "e42e7886af1941bd1e452f49878265cf")


