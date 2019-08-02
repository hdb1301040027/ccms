;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData5)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData5 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA5")
  (make-package "CCMS_PRO::UNPACKINGCANDATA5"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData5.msg.html


(defclass ccms_pro::UnpackingCanData5
  :super ros::object
  :slots (_id _stamp _Balanced_data_number _Modules_Above_Threshold_Voltage _Moduel_Average_Voltage _Module_Voltage_Threshold _Minimum_Module_Voltage ))

(defmethod ccms_pro::UnpackingCanData5
  (:init
   (&key
    ((:id __id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Balanced_data_number __Balanced_data_number) 0)
    ((:Modules_Above_Threshold_Voltage __Modules_Above_Threshold_Voltage) 0)
    ((:Moduel_Average_Voltage __Moduel_Average_Voltage) 0)
    ((:Module_Voltage_Threshold __Module_Voltage_Threshold) 0)
    ((:Minimum_Module_Voltage __Minimum_Module_Voltage) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _stamp __stamp)
   (setq _Balanced_data_number (round __Balanced_data_number))
   (setq _Modules_Above_Threshold_Voltage (round __Modules_Above_Threshold_Voltage))
   (setq _Moduel_Average_Voltage (round __Moduel_Average_Voltage))
   (setq _Module_Voltage_Threshold (round __Module_Voltage_Threshold))
   (setq _Minimum_Module_Voltage (round __Minimum_Module_Voltage))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Balanced_data_number
   (&optional __Balanced_data_number)
   (if __Balanced_data_number (setq _Balanced_data_number __Balanced_data_number)) _Balanced_data_number)
  (:Modules_Above_Threshold_Voltage
   (&optional __Modules_Above_Threshold_Voltage)
   (if __Modules_Above_Threshold_Voltage (setq _Modules_Above_Threshold_Voltage __Modules_Above_Threshold_Voltage)) _Modules_Above_Threshold_Voltage)
  (:Moduel_Average_Voltage
   (&optional __Moduel_Average_Voltage)
   (if __Moduel_Average_Voltage (setq _Moduel_Average_Voltage __Moduel_Average_Voltage)) _Moduel_Average_Voltage)
  (:Module_Voltage_Threshold
   (&optional __Module_Voltage_Threshold)
   (if __Module_Voltage_Threshold (setq _Module_Voltage_Threshold __Module_Voltage_Threshold)) _Module_Voltage_Threshold)
  (:Minimum_Module_Voltage
   (&optional __Minimum_Module_Voltage)
   (if __Minimum_Module_Voltage (setq _Minimum_Module_Voltage __Minimum_Module_Voltage)) _Minimum_Module_Voltage)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; time _stamp
    8
    ;; uint16 _Balanced_data_number
    2
    ;; uint16 _Modules_Above_Threshold_Voltage
    2
    ;; uint16 _Moduel_Average_Voltage
    2
    ;; uint16 _Module_Voltage_Threshold
    2
    ;; uint16 _Minimum_Module_Voltage
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
     ;; uint16 _Balanced_data_number
       (write-word _Balanced_data_number s)
     ;; uint16 _Modules_Above_Threshold_Voltage
       (write-word _Modules_Above_Threshold_Voltage s)
     ;; uint16 _Moduel_Average_Voltage
       (write-word _Moduel_Average_Voltage s)
     ;; uint16 _Module_Voltage_Threshold
       (write-word _Module_Voltage_Threshold s)
     ;; uint16 _Minimum_Module_Voltage
       (write-word _Minimum_Module_Voltage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Balanced_data_number
     (setq _Balanced_data_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Modules_Above_Threshold_Voltage
     (setq _Modules_Above_Threshold_Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Moduel_Average_Voltage
     (setq _Moduel_Average_Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Voltage_Threshold
     (setq _Module_Voltage_Threshold (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Minimum_Module_Voltage
     (setq _Minimum_Module_Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ccms_pro::UnpackingCanData5 :md5sum-) "dad6dfeec14d9e6f97f8da55bee54242")
(setf (get ccms_pro::UnpackingCanData5 :datatype-) "ccms_pro/UnpackingCanData5")
(setf (get ccms_pro::UnpackingCanData5 :definition-)
      "uint32 id
time stamp
uint16 Balanced_data_number
uint16 Modules_Above_Threshold_Voltage
uint16 Moduel_Average_Voltage
uint16 Module_Voltage_Threshold
uint16 Minimum_Module_Voltage

")



(provide :ccms_pro/UnpackingCanData5 "dad6dfeec14d9e6f97f8da55bee54242")


