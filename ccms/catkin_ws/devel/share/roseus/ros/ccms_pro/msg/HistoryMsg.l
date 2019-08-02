;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::HistoryMsg)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'HistoryMsg (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::HISTORYMSG")
  (make-package "CCMS_PRO::HISTORYMSG"))

(in-package "ROS")
;;//! \htmlinclude HistoryMsg.msg.html


(defclass ccms_pro::HistoryMsg
  :super ros::object
  :slots (_Error_Type_Number _Power_Number _Module_Number _Block_Number _StartTime _EndTime ))

(defmethod ccms_pro::HistoryMsg
  (:init
   (&key
    ((:Error_Type_Number __Error_Type_Number) 0)
    ((:Power_Number __Power_Number) 0)
    ((:Module_Number __Module_Number) 0)
    ((:Block_Number __Block_Number) 0)
    ((:StartTime __StartTime) 0)
    ((:EndTime __EndTime) 0)
    )
   (send-super :init)
   (setq _Error_Type_Number (round __Error_Type_Number))
   (setq _Power_Number (round __Power_Number))
   (setq _Module_Number (round __Module_Number))
   (setq _Block_Number (round __Block_Number))
   (setq _StartTime (round __StartTime))
   (setq _EndTime (round __EndTime))
   self)
  (:Error_Type_Number
   (&optional __Error_Type_Number)
   (if __Error_Type_Number (setq _Error_Type_Number __Error_Type_Number)) _Error_Type_Number)
  (:Power_Number
   (&optional __Power_Number)
   (if __Power_Number (setq _Power_Number __Power_Number)) _Power_Number)
  (:Module_Number
   (&optional __Module_Number)
   (if __Module_Number (setq _Module_Number __Module_Number)) _Module_Number)
  (:Block_Number
   (&optional __Block_Number)
   (if __Block_Number (setq _Block_Number __Block_Number)) _Block_Number)
  (:StartTime
   (&optional __StartTime)
   (if __StartTime (setq _StartTime __StartTime)) _StartTime)
  (:EndTime
   (&optional __EndTime)
   (if __EndTime (setq _EndTime __EndTime)) _EndTime)
  (:serialization-length
   ()
   (+
    ;; uint64 _Error_Type_Number
    8
    ;; uint64 _Power_Number
    8
    ;; uint64 _Module_Number
    8
    ;; uint64 _Block_Number
    8
    ;; uint64 _StartTime
    8
    ;; uint64 _EndTime
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _Error_Type_Number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Error_Type_Number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Error_Type_Number) (= (length (_Error_Type_Number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Error_Type_Number . bv) 0) 0) s)
              (write-long (ash (elt (_Error_Type_Number . bv) 1) -1) s))
             ((and (class _Error_Type_Number) (= (length (_Error_Type_Number . bv)) 1)) ;; big1
              (write-long (elt (_Error_Type_Number . bv) 0) s)
              (write-long (if (>= _Error_Type_Number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Error_Type_Number s)(write-long (if (>= _Error_Type_Number 0) 0 #xffffffff) s)))
     ;; uint64 _Power_Number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Power_Number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Power_Number) (= (length (_Power_Number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Power_Number . bv) 0) 0) s)
              (write-long (ash (elt (_Power_Number . bv) 1) -1) s))
             ((and (class _Power_Number) (= (length (_Power_Number . bv)) 1)) ;; big1
              (write-long (elt (_Power_Number . bv) 0) s)
              (write-long (if (>= _Power_Number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Power_Number s)(write-long (if (>= _Power_Number 0) 0 #xffffffff) s)))
     ;; uint64 _Module_Number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Module_Number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Module_Number) (= (length (_Module_Number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Module_Number . bv) 0) 0) s)
              (write-long (ash (elt (_Module_Number . bv) 1) -1) s))
             ((and (class _Module_Number) (= (length (_Module_Number . bv)) 1)) ;; big1
              (write-long (elt (_Module_Number . bv) 0) s)
              (write-long (if (>= _Module_Number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Module_Number s)(write-long (if (>= _Module_Number 0) 0 #xffffffff) s)))
     ;; uint64 _Block_Number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Block_Number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Block_Number) (= (length (_Block_Number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Block_Number . bv) 0) 0) s)
              (write-long (ash (elt (_Block_Number . bv) 1) -1) s))
             ((and (class _Block_Number) (= (length (_Block_Number . bv)) 1)) ;; big1
              (write-long (elt (_Block_Number . bv) 0) s)
              (write-long (if (>= _Block_Number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Block_Number s)(write-long (if (>= _Block_Number 0) 0 #xffffffff) s)))
     ;; uint64 _StartTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _StartTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _StartTime) (= (length (_StartTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_StartTime . bv) 0) 0) s)
              (write-long (ash (elt (_StartTime . bv) 1) -1) s))
             ((and (class _StartTime) (= (length (_StartTime . bv)) 1)) ;; big1
              (write-long (elt (_StartTime . bv) 0) s)
              (write-long (if (>= _StartTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _StartTime s)(write-long (if (>= _StartTime 0) 0 #xffffffff) s)))
     ;; uint64 _EndTime
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _EndTime (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _EndTime) (= (length (_EndTime . bv)) 2)) ;; bignum
              (write-long (ash (elt (_EndTime . bv) 0) 0) s)
              (write-long (ash (elt (_EndTime . bv) 1) -1) s))
             ((and (class _EndTime) (= (length (_EndTime . bv)) 1)) ;; big1
              (write-long (elt (_EndTime . bv) 0) s)
              (write-long (if (>= _EndTime 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _EndTime s)(write-long (if (>= _EndTime 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _Error_Type_Number
     
#+(or :alpha :irix6 :x86_64)
      (setf _Error_Type_Number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Error_Type_Number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _Power_Number
     
#+(or :alpha :irix6 :x86_64)
      (setf _Power_Number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Power_Number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _Module_Number
     
#+(or :alpha :irix6 :x86_64)
      (setf _Module_Number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Module_Number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _Block_Number
     
#+(or :alpha :irix6 :x86_64)
      (setf _Block_Number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Block_Number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _StartTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _StartTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _StartTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _EndTime
     
#+(or :alpha :irix6 :x86_64)
      (setf _EndTime (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _EndTime (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ccms_pro::HistoryMsg :md5sum-) "96fa6e4eb46c88db4088ee987f3ac04d")
(setf (get ccms_pro::HistoryMsg :datatype-) "ccms_pro/HistoryMsg")
(setf (get ccms_pro::HistoryMsg :definition-)
      "uint64 Error_Type_Number
uint64 Power_Number
uint64 Module_Number
uint64 Block_Number
uint64 StartTime
uint64 EndTime

")



(provide :ccms_pro/HistoryMsg "96fa6e4eb46c88db4088ee987f3ac04d")


