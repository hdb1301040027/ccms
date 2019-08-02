;; Auto-generated. Do not edit!


(when (boundp 'ccms_pro::BlockResult)
  (if (not (find-package "CCMS_PRO"))
    (make-package "CCMS_PRO"))
  (shadow 'BlockResult (find-package "CCMS_PRO")))
(unless (find-package "CCMS_PRO::BLOCKRESULT")
  (make-package "CCMS_PRO::BLOCKRESULT"))

(in-package "ROS")
;;//! \htmlinclude BlockResult.msg.html


(defclass ccms_pro::BlockResult
  :super ros::object
  :slots (_modID _blockhealths _stamp ))

(defmethod ccms_pro::BlockResult
  (:init
   (&key
    ((:modID __modID) 0)
    ((:blockhealths __blockhealths) (make-array 0 :initial-element 0 :element-type :integer))
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _modID (round __modID))
   (setq _blockhealths __blockhealths)
   (setq _stamp __stamp)
   self)
  (:modID
   (&optional __modID)
   (if __modID (setq _modID __modID)) _modID)
  (:blockhealths
   (&optional __blockhealths)
   (if __blockhealths (setq _blockhealths __blockhealths)) _blockhealths)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _modID
    2
    ;; uint16[] _blockhealths
    (* 2    (length _blockhealths)) 4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _modID
       (write-word _modID s)
     ;; uint16[] _blockhealths
     (write-long (length _blockhealths) s)
     (dotimes (i (length _blockhealths))
       (write-word (elt _blockhealths i) s)
       )
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _modID
     (setq _modID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _blockhealths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blockhealths (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _blockhealths i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ccms_pro::BlockResult :md5sum-) "19c5aed4873df3f3779e740af6923032")
(setf (get ccms_pro::BlockResult :datatype-) "ccms_pro/BlockResult")
(setf (get ccms_pro::BlockResult :definition-)
      "int16 modID
uint16[] blockhealths 
time stamp

")



(provide :ccms_pro/BlockResult "19c5aed4873df3f3779e740af6923032")


