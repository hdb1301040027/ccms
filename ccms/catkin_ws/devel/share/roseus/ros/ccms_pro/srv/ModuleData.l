;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::ModuleData)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'ModuleData (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::MODULEDATA")
  (make-package "CCMS_PRO::MODULEDATA"))
(unless (find-package "CCMS_PRO::MODULEDATAREQUEST")
  (make-package "CCMS_PRO::MODULEDATAREQUEST"))
(unless (find-package "CCMS_PRO::MODULEDATARESPONSE")
  (make-package "CCMS_PRO::MODULEDATARESPONSE"))

(in-package "ROS")





(defclass ccms_pro::ModuleDataRequest
  :super ros::object
  :slots (_ErrorTypeID _powerID _moduleID _blockID _StartStamp _EndStamp ))

(defmethod ccms_pro::ModuleDataRequest
  (:init
   (&key
    ((:ErrorTypeID __ErrorTypeID) 0)
    ((:powerID __powerID) 0)
    ((:moduleID __moduleID) 0)
    ((:blockID __blockID) 0)
    ((:StartStamp __StartStamp) 0.0)
    ((:EndStamp __EndStamp) 0.0)
    )
   (send-super :init)
   (setq _ErrorTypeID (round __ErrorTypeID))
   (setq _powerID (round __powerID))
   (setq _moduleID (round __moduleID))
   (setq _blockID (round __blockID))
   (setq _StartStamp (float __StartStamp))
   (setq _EndStamp (float __EndStamp))
   self)
  (:ErrorTypeID
   (&optional __ErrorTypeID)
   (if __ErrorTypeID (setq _ErrorTypeID __ErrorTypeID)) _ErrorTypeID)
  (:powerID
   (&optional __powerID)
   (if __powerID (setq _powerID __powerID)) _powerID)
  (:moduleID
   (&optional __moduleID)
   (if __moduleID (setq _moduleID __moduleID)) _moduleID)
  (:blockID
   (&optional __blockID)
   (if __blockID (setq _blockID __blockID)) _blockID)
  (:StartStamp
   (&optional __StartStamp)
   (if __StartStamp (setq _StartStamp __StartStamp)) _StartStamp)
  (:EndStamp
   (&optional __EndStamp)
   (if __EndStamp (setq _EndStamp __EndStamp)) _EndStamp)
  (:serialization-length
   ()
   (+
    ;; uint64 _ErrorTypeID
    8
    ;; uint64 _powerID
    8
    ;; uint64 _moduleID
    8
    ;; uint64 _blockID
    8
    ;; float64 _StartStamp
    8
    ;; float64 _EndStamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _ErrorTypeID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ErrorTypeID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ErrorTypeID) (= (length (_ErrorTypeID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ErrorTypeID . bv) 0) 0) s)
              (write-long (ash (elt (_ErrorTypeID . bv) 1) -1) s))
             ((and (class _ErrorTypeID) (= (length (_ErrorTypeID . bv)) 1)) ;; big1
              (write-long (elt (_ErrorTypeID . bv) 0) s)
              (write-long (if (>= _ErrorTypeID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ErrorTypeID s)(write-long (if (>= _ErrorTypeID 0) 0 #xffffffff) s)))
     ;; uint64 _powerID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _powerID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _powerID) (= (length (_powerID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_powerID . bv) 0) 0) s)
              (write-long (ash (elt (_powerID . bv) 1) -1) s))
             ((and (class _powerID) (= (length (_powerID . bv)) 1)) ;; big1
              (write-long (elt (_powerID . bv) 0) s)
              (write-long (if (>= _powerID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _powerID s)(write-long (if (>= _powerID 0) 0 #xffffffff) s)))
     ;; uint64 _moduleID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _moduleID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _moduleID) (= (length (_moduleID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_moduleID . bv) 0) 0) s)
              (write-long (ash (elt (_moduleID . bv) 1) -1) s))
             ((and (class _moduleID) (= (length (_moduleID . bv)) 1)) ;; big1
              (write-long (elt (_moduleID . bv) 0) s)
              (write-long (if (>= _moduleID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _moduleID s)(write-long (if (>= _moduleID 0) 0 #xffffffff) s)))
     ;; uint64 _blockID
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _blockID (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _blockID) (= (length (_blockID . bv)) 2)) ;; bignum
              (write-long (ash (elt (_blockID . bv) 0) 0) s)
              (write-long (ash (elt (_blockID . bv) 1) -1) s))
             ((and (class _blockID) (= (length (_blockID . bv)) 1)) ;; big1
              (write-long (elt (_blockID . bv) 0) s)
              (write-long (if (>= _blockID 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _blockID s)(write-long (if (>= _blockID 0) 0 #xffffffff) s)))
     ;; float64 _StartStamp
       (sys::poke _StartStamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _EndStamp
       (sys::poke _EndStamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _ErrorTypeID
     
#+(or :alpha :irix6 :x86_64)
      (setf _ErrorTypeID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ErrorTypeID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _powerID
     
#+(or :alpha :irix6 :x86_64)
      (setf _powerID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _powerID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _moduleID
     
#+(or :alpha :irix6 :x86_64)
      (setf _moduleID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _moduleID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _blockID
     
#+(or :alpha :irix6 :x86_64)
      (setf _blockID (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _blockID (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _StartStamp
     (setq _StartStamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _EndStamp
     (setq _EndStamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ccms_pro::ModuleDataResponse
  :super ros::object
  :slots (_HEnergy _HModule _HBlock _HModule_Average _HError ))

(defmethod ccms_pro::ModuleDataResponse
  (:init
   (&key
    ((:HEnergy __HEnergy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:HModule __HModule) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:HBlock __HBlock) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:HModule_Average __HModule_Average) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:HError __HError) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _HEnergy __HEnergy)
   (setq _HModule __HModule)
   (setq _HBlock __HBlock)
   (setq _HModule_Average __HModule_Average)
   (setq _HError __HError)
   self)
  (:HEnergy
   (&optional __HEnergy)
   (if __HEnergy (setq _HEnergy __HEnergy)) _HEnergy)
  (:HModule
   (&optional __HModule)
   (if __HModule (setq _HModule __HModule)) _HModule)
  (:HBlock
   (&optional __HBlock)
   (if __HBlock (setq _HBlock __HBlock)) _HBlock)
  (:HModule_Average
   (&optional __HModule_Average)
   (if __HModule_Average (setq _HModule_Average __HModule_Average)) _HModule_Average)
  (:HError
   (&optional __HError)
   (if __HError (setq _HError __HError)) _HError)
  (:serialization-length
   ()
   (+
    ;; float64[] _HEnergy
    (* 8    (length _HEnergy)) 4
    ;; float64[] _HModule
    (* 8    (length _HModule)) 4
    ;; float64[] _HBlock
    (* 8    (length _HBlock)) 4
    ;; float64[] _HModule_Average
    (* 8    (length _HModule_Average)) 4
    ;; float64[] _HError
    (* 8    (length _HError)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _HEnergy
     (write-long (length _HEnergy) s)
     (dotimes (i (length _HEnergy))
       (sys::poke (elt _HEnergy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _HModule
     (write-long (length _HModule) s)
     (dotimes (i (length _HModule))
       (sys::poke (elt _HModule i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _HBlock
     (write-long (length _HBlock) s)
     (dotimes (i (length _HBlock))
       (sys::poke (elt _HBlock i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _HModule_Average
     (write-long (length _HModule_Average) s)
     (dotimes (i (length _HModule_Average))
       (sys::poke (elt _HModule_Average i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _HError
     (write-long (length _HError) s)
     (dotimes (i (length _HError))
       (sys::poke (elt _HError i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _HEnergy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HEnergy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _HEnergy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _HModule
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HModule (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _HModule i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _HBlock
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HBlock (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _HBlock i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _HModule_Average
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HModule_Average (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _HModule_Average i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _HError
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _HError (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _HError i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass ccms_pro::ModuleData
  :super ros::object
  :slots ())

(setf (get ccms_pro::ModuleData :md5sum-) "2168a7456167e874f53072b67d551079")
(setf (get ccms_pro::ModuleData :datatype-) "ccms_pro/ModuleData")
(setf (get ccms_pro::ModuleData :request) ccms_pro::ModuleDataRequest)
(setf (get ccms_pro::ModuleData :response) ccms_pro::ModuleDataResponse)

(defmethod ccms_pro::ModuleDataRequest
  (:response () (instance ccms_pro::ModuleDataResponse :init)))

(setf (get ccms_pro::ModuleDataRequest :md5sum-) "2168a7456167e874f53072b67d551079")
(setf (get ccms_pro::ModuleDataRequest :datatype-) "ccms_pro/ModuleDataRequest")
(setf (get ccms_pro::ModuleDataRequest :definition-)
      "uint64 ErrorTypeID
uint64 powerID
uint64 moduleID
uint64 blockID
float64 StartStamp
float64 EndStamp
---
float64[] HEnergy
float64[] HModule
float64[] HBlock
float64[] HModule_Average
float64[] HError



")

(setf (get ccms_pro::ModuleDataResponse :md5sum-) "2168a7456167e874f53072b67d551079")
(setf (get ccms_pro::ModuleDataResponse :datatype-) "ccms_pro/ModuleDataResponse")
(setf (get ccms_pro::ModuleDataResponse :definition-)
      "uint64 ErrorTypeID
uint64 powerID
uint64 moduleID
uint64 blockID
float64 StartStamp
float64 EndStamp
---
float64[] HEnergy
float64[] HModule
float64[] HBlock
float64[] HModule_Average
float64[] HError



")



(provide :ccms_pro/ModuleData "2168a7456167e874f53072b67d551079")


