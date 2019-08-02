;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData4)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData4 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA4")
  (make-package "CCMS_PRO::UNPACKINGCANDATA4"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData4.msg.html


(defclass ccms_pro::UnpackingCanData4
  :super ros::object
  :slots (_id _stamp _Undervoltage_Warning _Internal_Resistance_Abnormality _other_data _Voltage_Equalization_State _Undervoltage_Alarm _Low_Voltage_Alarm _Software_version_Number _Software_Minor_version_Number _undervolt_warning _resistance_abnormality _Other_data _voltage_equal_state _undervolt_alarm _low_volt_alarm ))

(defmethod ccms_pro::UnpackingCanData4
  (:init
   (&key
    ((:id __id) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Undervoltage_Warning __Undervoltage_Warning) 0)
    ((:Internal_Resistance_Abnormality __Internal_Resistance_Abnormality) 0)
    ((:other_data __other_data) 0)
    ((:Voltage_Equalization_State __Voltage_Equalization_State) 0)
    ((:Undervoltage_Alarm __Undervoltage_Alarm) 0)
    ((:Low_Voltage_Alarm __Low_Voltage_Alarm) 0)
    ((:Software_version_Number __Software_version_Number) 0)
    ((:Software_Minor_version_Number __Software_Minor_version_Number) 0)
    ((:undervolt_warning __undervolt_warning) (make-array 0 :initial-element 0 :element-type :integer))
    ((:resistance_abnormality __resistance_abnormality) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Other_data __Other_data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltage_equal_state __voltage_equal_state) (make-array 0 :initial-element 0 :element-type :integer))
    ((:undervolt_alarm __undervolt_alarm) (make-array 0 :initial-element 0 :element-type :integer))
    ((:low_volt_alarm __low_volt_alarm) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _stamp __stamp)
   (setq _Undervoltage_Warning (round __Undervoltage_Warning))
   (setq _Internal_Resistance_Abnormality (round __Internal_Resistance_Abnormality))
   (setq _other_data (round __other_data))
   (setq _Voltage_Equalization_State (round __Voltage_Equalization_State))
   (setq _Undervoltage_Alarm (round __Undervoltage_Alarm))
   (setq _Low_Voltage_Alarm (round __Low_Voltage_Alarm))
   (setq _Software_version_Number (round __Software_version_Number))
   (setq _Software_Minor_version_Number (round __Software_Minor_version_Number))
   (setq _undervolt_warning __undervolt_warning)
   (setq _resistance_abnormality __resistance_abnormality)
   (setq _Other_data __Other_data)
   (setq _voltage_equal_state __voltage_equal_state)
   (setq _undervolt_alarm __undervolt_alarm)
   (setq _low_volt_alarm __low_volt_alarm)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Undervoltage_Warning
   (&optional __Undervoltage_Warning)
   (if __Undervoltage_Warning (setq _Undervoltage_Warning __Undervoltage_Warning)) _Undervoltage_Warning)
  (:Internal_Resistance_Abnormality
   (&optional __Internal_Resistance_Abnormality)
   (if __Internal_Resistance_Abnormality (setq _Internal_Resistance_Abnormality __Internal_Resistance_Abnormality)) _Internal_Resistance_Abnormality)
  (:other_data
   (&optional __other_data)
   (if __other_data (setq _other_data __other_data)) _other_data)
  (:Voltage_Equalization_State
   (&optional __Voltage_Equalization_State)
   (if __Voltage_Equalization_State (setq _Voltage_Equalization_State __Voltage_Equalization_State)) _Voltage_Equalization_State)
  (:Undervoltage_Alarm
   (&optional __Undervoltage_Alarm)
   (if __Undervoltage_Alarm (setq _Undervoltage_Alarm __Undervoltage_Alarm)) _Undervoltage_Alarm)
  (:Low_Voltage_Alarm
   (&optional __Low_Voltage_Alarm)
   (if __Low_Voltage_Alarm (setq _Low_Voltage_Alarm __Low_Voltage_Alarm)) _Low_Voltage_Alarm)
  (:Software_version_Number
   (&optional __Software_version_Number)
   (if __Software_version_Number (setq _Software_version_Number __Software_version_Number)) _Software_version_Number)
  (:Software_Minor_version_Number
   (&optional __Software_Minor_version_Number)
   (if __Software_Minor_version_Number (setq _Software_Minor_version_Number __Software_Minor_version_Number)) _Software_Minor_version_Number)
  (:undervolt_warning
   (&optional __undervolt_warning)
   (if __undervolt_warning (setq _undervolt_warning __undervolt_warning)) _undervolt_warning)
  (:resistance_abnormality
   (&optional __resistance_abnormality)
   (if __resistance_abnormality (setq _resistance_abnormality __resistance_abnormality)) _resistance_abnormality)
  (:Other_data
   (&optional __Other_data)
   (if __Other_data (setq _Other_data __Other_data)) _Other_data)
  (:voltage_equal_state
   (&optional __voltage_equal_state)
   (if __voltage_equal_state (setq _voltage_equal_state __voltage_equal_state)) _voltage_equal_state)
  (:undervolt_alarm
   (&optional __undervolt_alarm)
   (if __undervolt_alarm (setq _undervolt_alarm __undervolt_alarm)) _undervolt_alarm)
  (:low_volt_alarm
   (&optional __low_volt_alarm)
   (if __low_volt_alarm (setq _low_volt_alarm __low_volt_alarm)) _low_volt_alarm)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; time _stamp
    8
    ;; uint16 _Undervoltage_Warning
    2
    ;; uint16 _Internal_Resistance_Abnormality
    2
    ;; uint16 _other_data
    2
    ;; uint16 _Voltage_Equalization_State
    2
    ;; uint16 _Undervoltage_Alarm
    2
    ;; uint16 _Low_Voltage_Alarm
    2
    ;; uint16 _Software_version_Number
    2
    ;; uint16 _Software_Minor_version_Number
    2
    ;; uint64[] _undervolt_warning
    (* 8    (length _undervolt_warning)) 4
    ;; uint64[] _resistance_abnormality
    (* 8    (length _resistance_abnormality)) 4
    ;; uint64[] _Other_data
    (* 8    (length _Other_data)) 4
    ;; uint64[] _voltage_equal_state
    (* 8    (length _voltage_equal_state)) 4
    ;; uint64[] _undervolt_alarm
    (* 8    (length _undervolt_alarm)) 4
    ;; uint64[] _low_volt_alarm
    (* 8    (length _low_volt_alarm)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint16 _Undervoltage_Warning
       (write-word _Undervoltage_Warning s)
     ;; uint16 _Internal_Resistance_Abnormality
       (write-word _Internal_Resistance_Abnormality s)
     ;; uint16 _other_data
       (write-word _other_data s)
     ;; uint16 _Voltage_Equalization_State
       (write-word _Voltage_Equalization_State s)
     ;; uint16 _Undervoltage_Alarm
       (write-word _Undervoltage_Alarm s)
     ;; uint16 _Low_Voltage_Alarm
       (write-word _Low_Voltage_Alarm s)
     ;; uint16 _Software_version_Number
       (write-word _Software_version_Number s)
     ;; uint16 _Software_Minor_version_Number
       (write-word _Software_Minor_version_Number s)
     ;; uint64[] _undervolt_warning
     (write-long (length _undervolt_warning) s)
     (dotimes (i (length _undervolt_warning))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _undervolt_warning i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _undervolt_warning i)) (= (length ((elt _undervolt_warning i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _undervolt_warning i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _undervolt_warning i) . bv) 1) -1) s))
             ((and (class (elt _undervolt_warning i)) (= (length ((elt _undervolt_warning i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _undervolt_warning i) . bv) 0) s)
              (write-long (if (>= (elt _undervolt_warning i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _undervolt_warning i) s)(write-long (if (>= (elt _undervolt_warning i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _resistance_abnormality
     (write-long (length _resistance_abnormality) s)
     (dotimes (i (length _resistance_abnormality))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _resistance_abnormality i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _resistance_abnormality i)) (= (length ((elt _resistance_abnormality i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _resistance_abnormality i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _resistance_abnormality i) . bv) 1) -1) s))
             ((and (class (elt _resistance_abnormality i)) (= (length ((elt _resistance_abnormality i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _resistance_abnormality i) . bv) 0) s)
              (write-long (if (>= (elt _resistance_abnormality i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _resistance_abnormality i) s)(write-long (if (>= (elt _resistance_abnormality i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _Other_data
     (write-long (length _Other_data) s)
     (dotimes (i (length _Other_data))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _Other_data i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _Other_data i)) (= (length ((elt _Other_data i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _Other_data i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _Other_data i) . bv) 1) -1) s))
             ((and (class (elt _Other_data i)) (= (length ((elt _Other_data i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _Other_data i) . bv) 0) s)
              (write-long (if (>= (elt _Other_data i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _Other_data i) s)(write-long (if (>= (elt _Other_data i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _voltage_equal_state
     (write-long (length _voltage_equal_state) s)
     (dotimes (i (length _voltage_equal_state))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _voltage_equal_state i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _voltage_equal_state i)) (= (length ((elt _voltage_equal_state i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _voltage_equal_state i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _voltage_equal_state i) . bv) 1) -1) s))
             ((and (class (elt _voltage_equal_state i)) (= (length ((elt _voltage_equal_state i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _voltage_equal_state i) . bv) 0) s)
              (write-long (if (>= (elt _voltage_equal_state i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _voltage_equal_state i) s)(write-long (if (>= (elt _voltage_equal_state i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _undervolt_alarm
     (write-long (length _undervolt_alarm) s)
     (dotimes (i (length _undervolt_alarm))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _undervolt_alarm i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _undervolt_alarm i)) (= (length ((elt _undervolt_alarm i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _undervolt_alarm i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _undervolt_alarm i) . bv) 1) -1) s))
             ((and (class (elt _undervolt_alarm i)) (= (length ((elt _undervolt_alarm i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _undervolt_alarm i) . bv) 0) s)
              (write-long (if (>= (elt _undervolt_alarm i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _undervolt_alarm i) s)(write-long (if (>= (elt _undervolt_alarm i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _low_volt_alarm
     (write-long (length _low_volt_alarm) s)
     (dotimes (i (length _low_volt_alarm))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _low_volt_alarm i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _low_volt_alarm i)) (= (length ((elt _low_volt_alarm i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _low_volt_alarm i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _low_volt_alarm i) . bv) 1) -1) s))
             ((and (class (elt _low_volt_alarm i)) (= (length ((elt _low_volt_alarm i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _low_volt_alarm i) . bv) 0) s)
              (write-long (if (>= (elt _low_volt_alarm i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _low_volt_alarm i) s)(write-long (if (>= (elt _low_volt_alarm i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Undervoltage_Warning
     (setq _Undervoltage_Warning (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Internal_Resistance_Abnormality
     (setq _Internal_Resistance_Abnormality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _other_data
     (setq _other_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Voltage_Equalization_State
     (setq _Voltage_Equalization_State (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Undervoltage_Alarm
     (setq _Undervoltage_Alarm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Low_Voltage_Alarm
     (setq _Low_Voltage_Alarm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Software_version_Number
     (setq _Software_version_Number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Software_Minor_version_Number
     (setq _Software_Minor_version_Number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64[] _undervolt_warning
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _undervolt_warning (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _undervolt_warning i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _undervolt_warning i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _resistance_abnormality
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resistance_abnormality (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _resistance_abnormality i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _resistance_abnormality i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _Other_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Other_data (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _Other_data i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _Other_data i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _voltage_equal_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_equal_state (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _voltage_equal_state i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _voltage_equal_state i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _undervolt_alarm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _undervolt_alarm (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _undervolt_alarm i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _undervolt_alarm i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _low_volt_alarm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _low_volt_alarm (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _low_volt_alarm i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _low_volt_alarm i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get ccms_pro::UnpackingCanData4 :md5sum-) "a980592c413b8d0742886b4d0e323c8b")
(setf (get ccms_pro::UnpackingCanData4 :datatype-) "ccms_pro/UnpackingCanData4")
(setf (get ccms_pro::UnpackingCanData4 :definition-)
      "uint32 id
time stamp
uint16 Undervoltage_Warning
uint16 Internal_Resistance_Abnormality
uint16 other_data
uint16 Voltage_Equalization_State
uint16 Undervoltage_Alarm
uint16 Low_Voltage_Alarm
uint16 Software_version_Number
uint16 Software_Minor_version_Number
uint64[] undervolt_warning
uint64[] resistance_abnormality
uint64[] Other_data
uint64[] voltage_equal_state
uint64[] undervolt_alarm
uint64[] low_volt_alarm

")



(provide :ccms_pro/UnpackingCanData4 "a980592c413b8d0742886b4d0e323c8b")


