; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude BlockResult.msg.html

(cl:defclass <BlockResult> (roslisp-msg-protocol:ros-message)
  ((modID
    :reader modID
    :initarg :modID
    :type cl:fixnum
    :initform 0)
   (blockhealths
    :reader blockhealths
    :initarg :blockhealths
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass BlockResult (<BlockResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BlockResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BlockResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<BlockResult> is deprecated: use ccms_pro-msg:BlockResult instead.")))

(cl:ensure-generic-function 'modID-val :lambda-list '(m))
(cl:defmethod modID-val ((m <BlockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:modID-val is deprecated.  Use ccms_pro-msg:modID instead.")
  (modID m))

(cl:ensure-generic-function 'blockhealths-val :lambda-list '(m))
(cl:defmethod blockhealths-val ((m <BlockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:blockhealths-val is deprecated.  Use ccms_pro-msg:blockhealths instead.")
  (blockhealths m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BlockResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BlockResult>) ostream)
  "Serializes a message object of type '<BlockResult>"
  (cl:let* ((signed (cl:slot-value msg 'modID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blockhealths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'blockhealths))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BlockResult>) istream)
  "Deserializes a message object of type '<BlockResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blockhealths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blockhealths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BlockResult>)))
  "Returns string type for a message object of type '<BlockResult>"
  "ccms_pro/BlockResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BlockResult)))
  "Returns string type for a message object of type 'BlockResult"
  "ccms_pro/BlockResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BlockResult>)))
  "Returns md5sum for a message object of type '<BlockResult>"
  "19c5aed4873df3f3779e740af6923032")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BlockResult)))
  "Returns md5sum for a message object of type 'BlockResult"
  "19c5aed4873df3f3779e740af6923032")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BlockResult>)))
  "Returns full string definition for message of type '<BlockResult>"
  (cl:format cl:nil "int16 modID~%uint16[] blockhealths ~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BlockResult)))
  "Returns full string definition for message of type 'BlockResult"
  (cl:format cl:nil "int16 modID~%uint16[] blockhealths ~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BlockResult>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blockhealths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BlockResult>))
  "Converts a ROS message object to a list"
  (cl:list 'BlockResult
    (cl:cons ':modID (modID msg))
    (cl:cons ':blockhealths (blockhealths msg))
    (cl:cons ':stamp (stamp msg))
))
