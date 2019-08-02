; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude ModuleResult.msg.html

(cl:defclass <ModuleResult> (roslisp-msg-protocol:ros-message)
  ((modID
    :reader modID
    :initarg :modID
    :type cl:fixnum
    :initform 0)
   (modulehealth
    :reader modulehealth
    :initarg :modulehealth
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ModuleResult (<ModuleResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<ModuleResult> is deprecated: use ccms_pro-msg:ModuleResult instead.")))

(cl:ensure-generic-function 'modID-val :lambda-list '(m))
(cl:defmethod modID-val ((m <ModuleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:modID-val is deprecated.  Use ccms_pro-msg:modID instead.")
  (modID m))

(cl:ensure-generic-function 'modulehealth-val :lambda-list '(m))
(cl:defmethod modulehealth-val ((m <ModuleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:modulehealth-val is deprecated.  Use ccms_pro-msg:modulehealth instead.")
  (modulehealth m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ModuleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleResult>) ostream)
  "Serializes a message object of type '<ModuleResult>"
  (cl:let* ((signed (cl:slot-value msg 'modID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'modulehealth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleResult>) istream)
  "Deserializes a message object of type '<ModuleResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modulehealth) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleResult>)))
  "Returns string type for a message object of type '<ModuleResult>"
  "ccms_pro/ModuleResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleResult)))
  "Returns string type for a message object of type 'ModuleResult"
  "ccms_pro/ModuleResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleResult>)))
  "Returns md5sum for a message object of type '<ModuleResult>"
  "74784e2e9e832ccc2a86ae5f0682c934")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleResult)))
  "Returns md5sum for a message object of type 'ModuleResult"
  "74784e2e9e832ccc2a86ae5f0682c934")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleResult>)))
  "Returns full string definition for message of type '<ModuleResult>"
  (cl:format cl:nil "int16 modID~%int16 modulehealth~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleResult)))
  "Returns full string definition for message of type 'ModuleResult"
  (cl:format cl:nil "int16 modID~%int16 modulehealth~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleResult>))
  (cl:+ 0
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleResult
    (cl:cons ':modID (modID msg))
    (cl:cons ':modulehealth (modulehealth msg))
    (cl:cons ':stamp (stamp msg))
))
