; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude BatteryResult.msg.html

(cl:defclass <BatteryResult> (roslisp-msg-protocol:ros-message)
  ((batteryID
    :reader batteryID
    :initarg :batteryID
    :type cl:fixnum
    :initform 0)
   (batteryhealth
    :reader batteryhealth
    :initarg :batteryhealth
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass BatteryResult (<BatteryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<BatteryResult> is deprecated: use ccms_pro-msg:BatteryResult instead.")))

(cl:ensure-generic-function 'batteryID-val :lambda-list '(m))
(cl:defmethod batteryID-val ((m <BatteryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:batteryID-val is deprecated.  Use ccms_pro-msg:batteryID instead.")
  (batteryID m))

(cl:ensure-generic-function 'batteryhealth-val :lambda-list '(m))
(cl:defmethod batteryhealth-val ((m <BatteryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:batteryhealth-val is deprecated.  Use ccms_pro-msg:batteryhealth instead.")
  (batteryhealth m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BatteryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryResult>) ostream)
  "Serializes a message object of type '<BatteryResult>"
  (cl:let* ((signed (cl:slot-value msg 'batteryID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'batteryhealth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryResult>) istream)
  "Deserializes a message object of type '<BatteryResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batteryID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batteryhealth) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryResult>)))
  "Returns string type for a message object of type '<BatteryResult>"
  "ccms_pro/BatteryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryResult)))
  "Returns string type for a message object of type 'BatteryResult"
  "ccms_pro/BatteryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryResult>)))
  "Returns md5sum for a message object of type '<BatteryResult>"
  "e42e7886af1941bd1e452f49878265cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryResult)))
  "Returns md5sum for a message object of type 'BatteryResult"
  "e42e7886af1941bd1e452f49878265cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryResult>)))
  "Returns full string definition for message of type '<BatteryResult>"
  (cl:format cl:nil "int16 batteryID~%int16 batteryhealth ~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryResult)))
  "Returns full string definition for message of type 'BatteryResult"
  (cl:format cl:nil "int16 batteryID~%int16 batteryhealth ~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryResult>))
  (cl:+ 0
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryResult
    (cl:cons ':batteryID (batteryID msg))
    (cl:cons ':batteryhealth (batteryhealth msg))
    (cl:cons ':stamp (stamp msg))
))
