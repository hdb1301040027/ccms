; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude UnpackingCanData3.msg.html

(cl:defclass <UnpackingCanData3> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (Module_Block_Voltage5
    :reader Module_Block_Voltage5
    :initarg :Module_Block_Voltage5
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage6
    :reader Module_Block_Voltage6
    :initarg :Module_Block_Voltage6
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage7
    :reader Module_Block_Voltage7
    :initarg :Module_Block_Voltage7
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage8
    :reader Module_Block_Voltage8
    :initarg :Module_Block_Voltage8
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UnpackingCanData3 (<UnpackingCanData3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnpackingCanData3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnpackingCanData3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<UnpackingCanData3> is deprecated: use ccms_pro-msg:UnpackingCanData3 instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:id-val is deprecated.  Use ccms_pro-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Module_Block_Voltage5-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage5-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage5-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage5 instead.")
  (Module_Block_Voltage5 m))

(cl:ensure-generic-function 'Module_Block_Voltage6-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage6-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage6-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage6 instead.")
  (Module_Block_Voltage6 m))

(cl:ensure-generic-function 'Module_Block_Voltage7-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage7-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage7-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage7 instead.")
  (Module_Block_Voltage7 m))

(cl:ensure-generic-function 'Module_Block_Voltage8-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage8-val ((m <UnpackingCanData3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage8-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage8 instead.")
  (Module_Block_Voltage8 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnpackingCanData3>) ostream)
  "Serializes a message object of type '<UnpackingCanData3>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage7)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage8)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage8)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnpackingCanData3>) istream)
  "Deserializes a message object of type '<UnpackingCanData3>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage7)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage8)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage8)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnpackingCanData3>)))
  "Returns string type for a message object of type '<UnpackingCanData3>"
  "ccms_pro/UnpackingCanData3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnpackingCanData3)))
  "Returns string type for a message object of type 'UnpackingCanData3"
  "ccms_pro/UnpackingCanData3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnpackingCanData3>)))
  "Returns md5sum for a message object of type '<UnpackingCanData3>"
  "954a4b29f81dafd5ab55187f583519a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnpackingCanData3)))
  "Returns md5sum for a message object of type 'UnpackingCanData3"
  "954a4b29f81dafd5ab55187f583519a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnpackingCanData3>)))
  "Returns full string definition for message of type '<UnpackingCanData3>"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Block_Voltage5~%uint16 Module_Block_Voltage6~%uint16 Module_Block_Voltage7~%uint16 Module_Block_Voltage8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnpackingCanData3)))
  "Returns full string definition for message of type 'UnpackingCanData3"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Block_Voltage5~%uint16 Module_Block_Voltage6~%uint16 Module_Block_Voltage7~%uint16 Module_Block_Voltage8~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnpackingCanData3>))
  (cl:+ 0
     4
     8
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnpackingCanData3>))
  "Converts a ROS message object to a list"
  (cl:list 'UnpackingCanData3
    (cl:cons ':id (id msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Module_Block_Voltage5 (Module_Block_Voltage5 msg))
    (cl:cons ':Module_Block_Voltage6 (Module_Block_Voltage6 msg))
    (cl:cons ':Module_Block_Voltage7 (Module_Block_Voltage7 msg))
    (cl:cons ':Module_Block_Voltage8 (Module_Block_Voltage8 msg))
))
