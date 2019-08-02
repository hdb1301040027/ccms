;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData1)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData1 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA1")
  (make-package "CCMS_PRO::UNPACKINGCANDATA1"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData1.msg.html


(defclass ccms_pro::UnpackingCanData1
  :super ros::object
  :slots (_id _stamp _Module_Voltage _Module_Capacitance_Temperature _Module_Board_Temperature _Module_Voltage_Overvoltage_Abnormal _Module_Capacity_Abnormal _other_data _Module_Voltage_Overvoltage_Warming _module_overvolt_abnormal _module_capacity_abnormal _other_data_bit _module_overvolt_warming ))

(defmethod ccms_pro::UnpackingCanData1
  (:init
   (&key
    ((:id __id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Module_Voltage __Module_Voltage) 0)
    ((:Module_Capacitance_Temperature __Module_Capacitance_Temperature) 0)
    ((:Module_Board_Temperature __Module_Board_Temperature) 0)
    ((:Module_Voltage_Overvoltage_Abnormal __Module_Voltage_Overvoltage_Abnormal) 0)
    ((:Module_Capacity_Abnormal __Module_Capacity_Abnormal) 0)
    ((:other_data __other_data) 0)
    ((:Module_Voltage_Overvoltage_Warming __Module_Voltage_Overvoltage_Warming) 0)
    ((:module_overvolt_abnormal __module_overvolt_abnormal) (make-array 0 :initial-element 0 :element-type :integer))
    ((:module_capacity_abnormal __module_capacity_abnormal) (make-array 0 :initial-element 0 :element-type :integer))
    ((:other_data_bit __other_data_bit) (make-array 0 :initial-element 0 :element-type :integer))
    ((:module_overvolt_warming __module_overvolt_warming) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _stamp __stamp)
   (setq _Module_Voltage (round __Module_Voltage))
   (setq _Module_Capacitance_Temperature (round __Module_Capacitance_Temperature))
   (setq _Module_Board_Temperature (round __Module_Board_Temperature))
   (setq _Module_Voltage_Overvoltage_Abnormal (round __Module_Voltage_Overvoltage_Abnormal))
   (setq _Module_Capacity_Abnormal (round __Module_Capacity_Abnormal))
   (setq _other_data (round __other_data))
   (setq _Module_Voltage_Overvoltage_Warming (round __Module_Voltage_Overvoltage_Warming))
   (setq _module_overvolt_abnormal __module_overvolt_abnormal)
   (setq _module_capacity_abnormal __module_capacity_abnormal)
   (setq _other_data_bit __other_data_bit)
   (setq _module_overvolt_warming __module_overvolt_warming)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Module_Voltage
   (&optional __Module_Voltage)
   (if __Module_Voltage (setq _Module_Voltage __Module_Voltage)) _Module_Voltage)
  (:Module_Capacitance_Temperature
   (&optional __Module_Capacitance_Temperature)
   (if __Module_Capacitance_Temperature (setq _Module_Capacitance_Temperature __Module_Capacitance_Temperature)) _Module_Capacitance_Temperature)
  (:Module_Board_Temperature
   (&optional __Module_Board_Temperature)
   (if __Module_Board_Temperature (setq _Module_Board_Temperature __Module_Board_Temperature)) _Module_Board_Temperature)
  (:Module_Voltage_Overvoltage_Abnormal
   (&optional __Module_Voltage_Overvoltage_Abnormal)
   (if __Module_Voltage_Overvoltage_Abnormal (setq _Module_Voltage_Overvoltage_Abnormal __Module_Voltage_Overvoltage_Abnormal)) _Module_Voltage_Overvoltage_Abnormal)
  (:Module_Capacity_Abnormal
   (&optional __Module_Capacity_Abnormal)
   (if __Module_Capacity_Abnormal (setq _Module_Capacity_Abnormal __Module_Capacity_Abnormal)) _Module_Capacity_Abnormal)
  (:other_data
   (&optional __other_data)
   (if __other_data (setq _other_data __other_data)) _other_data)
  (:Module_Voltage_Overvoltage_Warming
   (&optional __Module_Voltage_Overvoltage_Warming)
   (if __Module_Voltage_Overvoltage_Warming (setq _Module_Voltage_Overvoltage_Warming __Module_Voltage_Overvoltage_Warming)) _Module_Voltage_Overvoltage_Warming)
  (:module_overvolt_abnormal
   (&optional __module_overvolt_abnormal)
   (if __module_overvolt_abnormal (setq _module_overvolt_abnormal __module_overvolt_abnormal)) _module_overvolt_abnormal)
  (:module_capacity_abnormal
   (&optional __module_capacity_abnormal)
   (if __module_capacity_abnormal (setq _module_capacity_abnormal __module_capacity_abnormal)) _module_capacity_abnormal)
  (:other_data_bit
   (&optional __other_data_bit)
   (if __other_data_bit (setq _other_data_bit __other_data_bit)) _other_data_bit)
  (:module_overvolt_warming
   (&optional __module_overvolt_warming)
   (if __module_overvolt_warming (setq _module_overvolt_warming __module_overvolt_warming)) _module_overvolt_warming)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; time _stamp
    8
    ;; uint16 _Module_Voltage
    2
    ;; uint16 _Module_Capacitance_Temperature
    2
    ;; uint16 _Module_Board_Temperature
    2
    ;; uint16 _Module_Voltage_Overvoltage_Abnormal
    2
    ;; uint16 _Module_Capacity_Abnormal
    2
    ;; uint16 _other_data
    2
    ;; uint16 _Module_Voltage_Overvoltage_Warming
    2
    ;; uint64[] _module_overvolt_abnormal
    (* 8    (length _module_overvolt_abnormal)) 4
    ;; uint64[] _module_capacity_abnormal
    (* 8    (length _module_capacity_abnormal)) 4
    ;; uint64[] _other_data_bit
    (* 8    (length _other_data_bit)) 4
    ;; uint64[] _module_overvolt_warming
    (* 8    (length _module_overvolt_warming)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint16 _Module_Voltage
       (write-word _Module_Voltage s)
     ;; uint16 _Module_Capacitance_Temperature
       (write-word _Module_Capacitance_Temperature s)
     ;; uint16 _Module_Board_Temperature
       (write-word _Module_Board_Temperature s)
     ;; uint16 _Module_Voltage_Overvoltage_Abnormal
       (write-word _Module_Voltage_Overvoltage_Abnormal s)
     ;; uint16 _Module_Capacity_Abnormal
       (write-word _Module_Capacity_Abnormal s)
     ;; uint16 _other_data
       (write-word _other_data s)
     ;; uint16 _Module_Voltage_Overvoltage_Warming
       (write-word _Module_Voltage_Overvoltage_Warming s)
     ;; uint64[] _module_overvolt_abnormal
     (write-long (length _module_overvolt_abnormal) s)
     (dotimes (i (length _module_overvolt_abnormal))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _module_overvolt_abnormal i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _module_overvolt_abnormal i)) (= (length ((elt _module_overvolt_abnormal i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _module_overvolt_abnormal i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _module_overvolt_abnormal i) . bv) 1) -1) s))
             ((and (class (elt _module_overvolt_abnormal i)) (= (length ((elt _module_overvolt_abnormal i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _module_overvolt_abnormal i) . bv) 0) s)
              (write-long (if (>= (elt _module_overvolt_abnormal i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _module_overvolt_abnormal i) s)(write-long (if (>= (elt _module_overvolt_abnormal i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _module_capacity_abnormal
     (write-long (length _module_capacity_abnormal) s)
     (dotimes (i (length _module_capacity_abnormal))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _module_capacity_abnormal i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _module_capacity_abnormal i)) (= (length ((elt _module_capacity_abnormal i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _module_capacity_abnormal i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _module_capacity_abnormal i) . bv) 1) -1) s))
             ((and (class (elt _module_capacity_abnormal i)) (= (length ((elt _module_capacity_abnormal i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _module_capacity_abnormal i) . bv) 0) s)
              (write-long (if (>= (elt _module_capacity_abnormal i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _module_capacity_abnormal i) s)(write-long (if (>= (elt _module_capacity_abnormal i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _other_data_bit
     (write-long (length _other_data_bit) s)
     (dotimes (i (length _other_data_bit))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _other_data_bit i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _other_data_bit i)) (= (length ((elt _other_data_bit i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _other_data_bit i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _other_data_bit i) . bv) 1) -1) s))
             ((and (class (elt _other_data_bit i)) (= (length ((elt _other_data_bit i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _other_data_bit i) . bv) 0) s)
              (write-long (if (>= (elt _other_data_bit i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _other_data_bit i) s)(write-long (if (>= (elt _other_data_bit i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _module_overvolt_warming
     (write-long (length _module_overvolt_warming) s)
     (dotimes (i (length _module_overvolt_warming))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _module_overvolt_warming i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _module_overvolt_warming i)) (= (length ((elt _module_overvolt_warming i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _module_overvolt_warming i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _module_overvolt_warming i) . bv) 1) -1) s))
             ((and (class (elt _module_overvolt_warming i)) (= (length ((elt _module_overvolt_warming i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _module_overvolt_warming i) . bv) 0) s)
              (write-long (if (>= (elt _module_overvolt_warming i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _module_overvolt_warming i) s)(write-long (if (>= (elt _module_overvolt_warming i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Module_Voltage
     (setq _Module_Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Capacitance_Temperature
     (setq _Module_Capacitance_Temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Board_Temperature
     (setq _Module_Board_Temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Voltage_Overvoltage_Abnormal
     (setq _Module_Voltage_Overvoltage_Abnormal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Capacity_Abnormal
     (setq _Module_Capacity_Abnormal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _other_data
     (setq _other_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Module_Voltage_Overvoltage_Warming
     (setq _Module_Voltage_Overvoltage_Warming (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64[] _module_overvolt_abnormal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _module_overvolt_abnormal (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _module_overvolt_abnormal i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _module_overvolt_abnormal i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _module_capacity_abnormal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _module_capacity_abnormal (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _module_capacity_abnormal i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _module_capacity_abnormal i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _other_data_bit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _other_data_bit (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _other_data_bit i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _other_data_bit i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _module_overvolt_warming
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _module_overvolt_warming (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _module_overvolt_warming i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _module_overvolt_warming i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get ccms_pro::UnpackingCanData1 :md5sum-) "466f14cb02ad2e790738228bd131528b")
(setf (get ccms_pro::UnpackingCanData1 :datatype-) "ccms_pro/UnpackingCanData1")
(setf (get ccms_pro::UnpackingCanData1 :definition-)
      "uint32 id
time stamp
uint16 Module_Voltage                                  
uint16 Module_Capacitance_Temperature                        
uint16 Module_Board_Temperature
uint16 Module_Voltage_Overvoltage_Abnormal
uint16 Module_Capacity_Abnormal
uint16 other_data
uint16 Module_Voltage_Overvoltage_Warming                          
uint64[] module_overvolt_abnormal
uint64[] module_capacity_abnormal
uint64[] other_data_bit
uint64[] module_overvolt_warming

")



(provide :ccms_pro/UnpackingCanData1 "466f14cb02ad2e790738228bd131528b")


