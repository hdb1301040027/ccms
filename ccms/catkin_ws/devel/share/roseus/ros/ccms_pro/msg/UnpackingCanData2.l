;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData2)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData2 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA2")
  (make-package "CCMS_PRO::UNPACKINGCANDATA2"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData2.msg.html


(defclass ccms_pro::UnpackingCanData2
  :super ros::object
  :slots (_id _stamp _Module_Block_Voltage1 _Module_Block_Voltage2 _Module_Block_Voltage3 _Module_Block_Voltage4 ))

(defmethod ccms_pro::UnpackingCanData2
  (:init
   (&key
    ((:id __id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Module_Block_Voltage1 __Module_Block_Voltage1) 0)
    ((:Module_Block_Voltage2 __Module_Block_Voltage2) 0)
    ((:Module_Block_Voltage3 __Module_Block_Voltage3) 0)
    ((:Module_Block_Voltage4 __Module_Block_Voltage4) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _stamp __stamp)
   (setq _Module_Block_Voltage1 (round __Module_Block_Voltage1))
   (setq _Module_Block_Voltage2 (round __Module_Block_Voltage2))
   (setq _Module_Block_Voltage3 (round __Module_Block_Voltage3))
   (setq _Module_Block_Voltage4 (round __Module_Block_Voltage4))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Module_Block_Voltage1
   (&optional __Module_Block_Voltage1)
   (if __Module_Block_Voltage1 (setq _Module_Block_Voltage1 __Module_Block_Voltage1)) _Module_Block_Voltage1)
  (:Module_Block_Voltage2
   (&optional __Module_Block_Voltage2)
   (if __Module_Block_Voltage2 (setq _Module_Block_Voltage2 __Module_Block_Voltage2)) _Module_Block_Voltage2)
  (:Module_Block_Voltage3
   (&optional __Module_Block_Voltage3)
   (if __Module_Block_Voltage3 (setq _Module_Block_Voltage3 __Module_Block_Voltage3)) _Module_Block_Voltage3)
  (:Module_Block_Voltage4
   (&optional __Module_Block_Voltage4)
   (if __Module_Block_Voltage4 (setq _Module_Block_Voltage4 __Module_Block_Voltage4)) _Module_Block_Voltage4)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; time _stamp
    8
    ;; uint16 _Module_Block_Voltage1
    2
    ;; uint16 _Module_Block_Voltage2
    2
    ;; uint16 _Module_Block_Voltage3
    2
    ;; uint16 _Module_Block_Voltage4
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
     ;; uint16 _Module_Block_Voltage1
       (write-word _Module_Block_Voltage1 s)
     ;; uint16 _Module_Block_Voltage2
       (write-word _Module_Block_Voltage2 s)
     ;; uint16 _Module_Block_Voltage3
       (write-word _Module_Block_Voltage3 s)
     ;; uint16 _Module_Block_Voltage4
       (write-word _Module_Block_Voltage4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Module_Block_Voltage1
     (setq _Module_Block_Voltage1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage2
     (setq _Module_Block_Voltage2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage3
     (setq _Module_Block_Voltage3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Block_Voltage4
     (setq _Module_Block_Voltage4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ccms_pro::UnpackingCanData2 :md5sum-) "b13fc55befa7a47e2cbf6fd0477dd31f")
(setf (get ccms_pro::UnpackingCanData2 :datatype-) "ccms_pro/UnpackingCanData2")
(setf (get ccms_pro::UnpackingCanData2 :definition-)
      "uint32 id
time stamp
uint16 Module_Block_Voltage1
uint16 Module_Block_Voltage2
uint16 Module_Block_Voltage3
uint16 Module_Block_Voltage4

")



(provide :ccms_pro/UnpackingCanData2 "b13fc55befa7a47e2cbf6fd0477dd31f")


