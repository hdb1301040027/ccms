;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::CalcResult)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'CalcResult (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::CALCRESULT")
  (make-package "CCMS_PRO::CALCRESULT"))

(in-package "ROS")
;;//! \htmlinclude CalcResult.msg.html


(defclass ccms_pro::CalcResult
  :super ros::object
  :slots (_Rresult _Cresult _stamp ))

(defmethod ccms_pro::CalcResult
  (:init
   (&key
    ((:Rresult __Rresult) (make-array 0 :initial-element 0 :element-type :integer))
    ((:Cresult __Cresult) (make-array 0 :initial-element 0 :element-type :integer))
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _Rresult __Rresult)
   (setq _Cresult __Cresult)
   (setq _stamp __stamp)
   self)
  (:Rresult
   (&optional __Rresult)
   (if __Rresult (setq _Rresult __Rresult)) _Rresult)
  (:Cresult
   (&optional __Cresult)
   (if __Cresult (setq _Cresult __Cresult)) _Cresult)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint64[] _Rresult
    (* 8    (length _Rresult)) 4
    ;; uint64[] _Cresult
    (* 8    (length _Cresult)) 4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64[] _Rresult
     (write-long (length _Rresult) s)
     (dotimes (i (length _Rresult))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _Rresult i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _Rresult i)) (= (length ((elt _Rresult i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _Rresult i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _Rresult i) . bv) 1) -1) s))
             ((and (class (elt _Rresult i)) (= (length ((elt _Rresult i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _Rresult i) . bv) 0) s)
              (write-long (if (>= (elt _Rresult i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _Rresult i) s)(write-long (if (>= (elt _Rresult i) 0) 0 #xffffffff) s)))
       )
     ;; uint64[] _Cresult
     (write-long (length _Cresult) s)
     (dotimes (i (length _Cresult))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _Cresult i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _Cresult i)) (= (length ((elt _Cresult i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _Cresult i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _Cresult i) . bv) 1) -1) s))
             ((and (class (elt _Cresult i)) (= (length ((elt _Cresult i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _Cresult i) . bv) 0) s)
              (write-long (if (>= (elt _Cresult i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _Cresult i) s)(write-long (if (>= (elt _Cresult i) 0) 0 #xffffffff) s)))
       )
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64[] _Rresult
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Rresult (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _Rresult i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _Rresult i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint64[] _Cresult
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Cresult (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _Cresult i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _Cresult i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ccms_pro::CalcResult :md5sum-) "70e22a0b756eec76246b47243b5ea1f7")
(setf (get ccms_pro::CalcResult :datatype-) "ccms_pro/CalcResult")
(setf (get ccms_pro::CalcResult :definition-)
      "uint64[] Rresult
uint64[] Cresult
time stamp


")



(provide :ccms_pro/CalcResult "70e22a0b756eec76246b47243b5ea1f7")


