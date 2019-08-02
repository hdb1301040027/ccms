;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData3)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData3 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA3")
  (make-package "CCMS_PRO::UNPACKINGCANDATA3"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData3.msg.html


(defclass ccms_pro::UnpackingCanData3
  :super ros::object
  :slots (_id _stamp _Module_Block_Voltage5 _Module_Block_Voltage6 _Module_Block_Voltage7 _Module_Block_Voltage8 ))

(defmethod ccms_pro::UnpackingCanData3
  (:init
   (&key
    ((:id __id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Module_Block_Voltage5 __Module_Block_Voltage5) 0)
    ((:Module_Block_Voltage6 __Module_Block_Voltage6) 0)
    ((:Module_Block_Voltage7 __Module_Block_Voltage7) 0)
    ((:Module_Block_Voltage8 __Module_Block_Voltage8) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _stamp __stamp)
   (setq _Module_Block_Voltage5 (round __Module_Block_Voltage5))
   (setq _Module_Block_Voltage6 (round __Module_Block_Voltage6))
   (setq _Module_Block_Voltage7 (round __Module_Block_Voltage7))
   (setq _Module_Block_Voltage8 (round __Module_Block_Voltage8))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Module_Block_Voltage5
   (&optional __Module_Block_Voltage5)
   (if __Module_Block_Voltage5 (setq _Module_Block_Voltage5 __Module_Block_Voltage5)) _Module_Block_Voltage5)
  (:Module_Block_Voltage6
   (&optional __Module_Block_Voltage6)
   (if __Module_Block_Voltage6 (setq _Module_Block_Voltage6 __Module_Block_Voltage6)) _Module_Block_Voltage6)
  (:Module_Block_Voltage7
   (&optional __Module_Block_Voltage7)
   (if __Module_Block_Voltage7 (setq _Module_Block_Voltage7 __Module_Block_Voltage7)) _Module_Block_Voltage7)
  (:Module_Block_Voltage8
   (&optional __Module_Block_Voltage8)
   (if __Module_Block_Voltage8 (setq _Module_Block_Voltage8 __Module_Block_Voltage8)) _Module_Block_Voltage8)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; time _stamp
    8
    ;; uint16 _Module_Block_Voltage5
    2
    ;; uint16 _Module_Block_Voltage6
    2
    ;; uint16 _Module_Block_Voltage7
    2
    ;; uint16 _Module_Block_Voltage8
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint16 _Module_Block_Voltage5
       (write-word _Module_Block_Voltage5 s)
     ;; uint16 _Module_Block_Voltage6
       (write-word _Module_Block_Voltage6 s)
     ;; uint16 _Module_Block_Voltage7
       (write-word _Module_Block_Voltage7 s)
     ;; uint16 _Module_Block_Voltage8
       (write-word _Module_Block_Voltage8 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Module_Block_Voltage5
     (setq _Module_Block_Voltage5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage6
     (setq _Module_Block_Voltage6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage7
     (setq _Module_Block_Voltage7 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage8
     (setq _Module_Block_Voltage8 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ccms_pro::UnpackingCanData3 :md5sum-) "954a4b29f81dafd5ab55187f583519a1")
(setf (get ccms_pro::UnpackingCanData3 :datatype-) "ccms_pro/UnpackingCanData3")
(setf (get ccms_pro::UnpackingCanData3 :definition-)
      "uint32 id
time stamp
uint16 Module_Block_Voltage5
uint16 Module_Block_Voltage6
uint16 Module_Block_Voltage7
uint16 Module_Block_Voltage8

")



(provide :ccms_pro/UnpackingCanData3 "954a4b29f81dafd5ab55187f583519a1")


