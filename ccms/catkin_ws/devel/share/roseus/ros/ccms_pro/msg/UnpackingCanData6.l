;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::UnpackingCanData6)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'UnpackingCanData6 (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::UNPACKINGCANDATA6")
  (make-package "CCMS_PRO::UNPACKINGCANDATA6"))

(in-package "ROS")
;;//! \htmlinclude UnpackingCanData6.msg.html


(defclass ccms_pro::UnpackingCanData6
  :super ros::object
  :slots (_Power_ID _stamp _Energy_Storage_Voltage _Energy_Storage_Current _Energy_Storage_Temperature _other_data _Fan_Failure _Fan_State _otherdata _FanAccident _Fandata ))

(defmethod ccms_pro::UnpackingCanData6
  (:init
   (&key
    ((:Power_ID __Power_ID) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:Energy_Storage_Voltage __Energy_Storage_Voltage) 0)
    ((:Energy_Storage_Current __Energy_Storage_Current) 0)
    ((:Energy_Storage_Temperature __Energy_Storage_Temperature) 0)
    ((:other_data __other_data) 0)
    ((:Fan_Failure __Fan_Failure) 0)
    ((:Fan_State __Fan_State) 0)
    ((:otherdata __otherdata) (make-array 0 :initial-element 0 :element-type :integer))
    ((:FanAccident __FanAccident) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Fandata __Fandata) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _Power_ID (round __Power_ID))
   (setq _stamp __stamp)
   (setq _Energy_Storage_Voltage (round __Energy_Storage_Voltage))
   (setq _Energy_Storage_Current (round __Energy_Storage_Current))
   (setq _Energy_Storage_Temperature (round __Energy_Storage_Temperature))
   (setq _other_data (round __other_data))
   (setq _Fan_Failure (round __Fan_Failure))
   (setq _Fan_State (round __Fan_State))
   (setq _otherdata __otherdata)
   (setq _FanAccident __FanAccident)
   (setq _Fandata __Fandata)
   self)
  (:Power_ID
   (&optional __Power_ID)
   (if __Power_ID (setq _Power_ID __Power_ID)) _Power_ID)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:Energy_Storage_Voltage
   (&optional __Energy_Storage_Voltage)
   (if __Energy_Storage_Voltage (setq _Energy_Storage_Voltage __Energy_Storage_Voltage)) _Energy_Storage_Voltage)
  (:Energy_Storage_Current
   (&optional __Energy_Storage_Current)
   (if __Energy_Storage_Current (setq _Energy_Storage_Current __Energy_Storage_Current)) _Energy_Storage_Current)
  (:Energy_Storage_Temperature
   (&optional __Energy_Storage_Temperature)
   (if __Energy_Storage_Temperature (setq _Energy_Storage_Temperature __Energy_Storage_Temperature)) _Energy_Storage_Temperature)
  (:other_data
   (&optional __other_data)
   (if __other_data (setq _other_data __other_data)) _other_data)
  (:Fan_Failure
   (&optional __Fan_Failure)
   (if __Fan_Failure (setq _Fan_Failure __Fan_Failure)) _Fan_Failure)
  (:Fan_State
   (&optional __Fan_State)
   (if __Fan_State (setq _Fan_State __Fan_State)) _Fan_State)
  (:otherdata
   (&optional __otherdata)
   (if __otherdata (setq _otherdata __otherdata)) _otherdata)
  (:FanAccident
   (&optional __FanAccident)
   (if __FanAccident (setq _FanAccident __FanAccident)) _FanAccident)
  (:Fandata
   (&optional __Fandata)
   (if __Fandata (setq _Fandata __Fandata)) _Fandata)
  (:serialization-length
   ()
   (+
    ;; uint32 _Power_ID
    4
    ;; time _stamp
    8
    ;; uint16 _Energy_Storage_Voltage
    2
    ;; int16 _Energy_Storage_Current
    2
    ;; uint16 _Energy_Storage_Temperature
    2
    ;; uint16 _other_data
    2
    ;; uint16 _Fan_Failure
    2
    ;; uint16 _Fan_State
    2
    ;; uint64[] _otherdata
    (* 8    (length _otherdata)) 4
    ;; uint64[] _FanAccident
    (* 8    (length _FanAccident)) 4
    ;; uint64[] _Fandata
    (* 8    (length _Fandata)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _Power_ID
       (write-long _Power_ID s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint16 _Energy_Storage_Voltage
       (write-word _Energy_Storage_Voltage s)
     ;; int16 _Energy_Storage_Current
       (write-word _Energy_Storage_Current s)
     ;; uint16 _Energy_Storage_Temperature
       (write-word _Energy_Storage_Temperature s)
     ;; uint16 _other_data
       (write-word _other_data s)
     ;; uint16 _Fan_Failure
       (write-word _Fan_Failure s)
     ;; uint16 _Fan_State
       (write-word _Fan_State s)
     ;; uint64[] _otherdata
     (write-long (length _otherdata) s)
     (dotimes (i (length _otherdata))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _otherdata i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _otherdata i)) (= (length ((elt _otherdata i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _otherdata i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _otherdata i) . bv) 1) -1) s))
             ((and (class (elt _otherdata i)) (= (length ((elt _otherdata i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _otherdata i) . bv) 0) s)
              (write-long (if (>= (elt _otherdata i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _otherdata i) s)(write-long (if (>= (elt _otherdata i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _FanAccident
     (write-long (length _FanAccident) s)
     (dotimes (i (length _FanAccident))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _FanAccident i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _FanAccident i)) (= (length ((elt _FanAccident i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _FanAccident i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _FanAccident i) . bv) 1) -1) s))
             ((and (class (elt _FanAccident i)) (= (length ((elt _FanAccident i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _FanAccident i) . bv) 0) s)
              (write-long (if (>= (elt _FanAccident i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _FanAccident i) s)(write-long (if (>= (elt _FanAccident i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _Fandata
     (write-long (length _Fandata) s)
     (dotimes (i (length _Fandata))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _Fandata i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _Fandata i)) (= (length ((elt _Fandata i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _Fandata i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _Fandata i) . bv) 1) -1) s))
             ((and (class (elt _Fandata i)) (= (length ((elt _Fandata i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _Fandata i) . bv) 0) s)
              (write-long (if (>= (elt _Fandata i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _Fandata i) s)(write-long (if (>= (elt _Fandata i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _Power_ID
     (setq _Power_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Energy_Storage_Voltage
     (setq _Energy_Storage_Voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Energy_Storage_Current
     (setq _Energy_Storage_Current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Energy_Storage_Temperature
     (setq _Energy_Storage_Temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _other_data
     (setq _other_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Fan_Failure
     (setq _Fan_Failure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Fan_State
     (setq _Fan_State (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64[] _otherdata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _otherdata (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _otherdata i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _otherdata i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _FanAccident
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _FanAccident (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _FanAccident i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _FanAccident i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _Fandata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Fandata (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _Fandata i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _Fandata i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get ccms_pro::UnpackingCanData6 :md5sum-) "aa4a7278a5166952b8bdd122eb47f2f6")
(setf (get ccms_pro::UnpackingCanData6 :datatype-) "ccms_pro/UnpackingCanData6")
(setf (get ccms_pro::UnpackingCanData6 :definition-)
      "uint32 Power_ID
time stamp
uint16 Energy_Storage_Voltage
int16 Energy_Storage_Current
uint16 Energy_Storage_Temperature
uint16 other_data
uint16 Fan_Failure
uint16 Fan_State
uint64[] otherdata
uint64[] FanAccident
uint64[] Fandata


")



(provide :ccms_pro/UnpackingCanData6 "aa4a7278a5166952b8bdd122eb47f2f6")


