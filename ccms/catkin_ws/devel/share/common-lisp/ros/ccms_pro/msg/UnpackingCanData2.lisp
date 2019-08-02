; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude UnpackingCanData2.msg.html

(cl:defclass <UnpackingCanData2> (roslisp-msg-protocol:ros-message)
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
   (Module_Block_Voltage1
    :reader Module_Block_Voltage1
    :initarg :Module_Block_Voltage1
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage2
    :reader Module_Block_Voltage2
    :initarg :Module_Block_Voltage2
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage3
    :reader Module_Block_Voltage3
    :initarg :Module_Block_Voltage3
    :type cl:fixnum
    :initform 0)
   (Module_Block_Voltage4
    :reader Module_Block_Voltage4
    :initarg :Module_Block_Voltage4
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UnpackingCanData2 (<UnpackingCanData2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnpackingCanData2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnpackingCanData2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<UnpackingCanData2> is deprecated: use ccms_pro-msg:UnpackingCanData2 instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:id-val is deprecated.  Use ccms_pro-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Module_Block_Voltage1-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage1-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage1-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage1 instead.")
  (Module_Block_Voltage1 m))

(cl:ensure-generic-function 'Module_Block_Voltage2-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage2-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage2-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage2 instead.")
  (Module_Block_Voltage2 m))

(cl:ensure-generic-function 'Module_Block_Voltage3-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage3-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage3-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage3 instead.")
  (Module_Block_Voltage3 m))

(cl:ensure-generic-function 'Module_Block_Voltage4-val :lambda-list '(m))
(cl:defmethod Module_Block_Voltage4-val ((m <UnpackingCanData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Block_Voltage4-val is deprecated.  Use ccms_pro-msg:Module_Block_Voltage4 instead.")
  (Module_Block_Voltage4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnpackingCanData2>) ostream)
  "Serializes a message object of type '<UnpackingCanData2>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage4)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnpackingCanData2>) istream)
  "Deserializes a message object of type '<UnpackingCanData2>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Block_Voltage4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Block_Voltage4)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnpackingCanData2>)))
  "Returns string type for a message object of type '<UnpackingCanData2>"
  "ccms_pro/UnpackingCanData2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnpackingCanData2)))
  "Returns string type for a message object of type 'UnpackingCanData2"
  "ccms_pro/UnpackingCanData2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnpackingCanData2>)))
  "Returns md5sum for a message object of type '<UnpackingCanData2>"
  "b13fc55befa7a47e2cbf6fd0477dd31f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnpackingCanData2)))
  "Returns md5sum for a message object of type 'UnpackingCanData2"
  "b13fc55befa7a47e2cbf6fd0477dd31f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnpackingCanData2>)))
  "Returns full string definition for message of type '<UnpackingCanData2>"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Block_Voltage1~%uint16 Module_Block_Voltage2~%uint16 Module_Block_Voltage3~%uint16 Module_Block_Voltage4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnpackingCanData2)))
  "Returns full string definition for message of type 'UnpackingCanData2"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Block_Voltage1~%uint16 Module_Block_Voltage2~%uint16 Module_Block_Voltage3~%uint16 Module_Block_Voltage4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnpackingCanData2>))
  (cl:+ 0
     4
     8
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnpackingCanData2>))
  "Converts a ROS message object to a list"
  (cl:list 'UnpackingCanData2
    (cl:cons ':id (id msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Module_Block_Voltage1 (Module_Block_Voltage1 msg))
    (cl:cons ':Module_Block_Voltage2 (Module_Block_Voltage2 msg))
    (cl:cons ':Module_Block_Voltage3 (Module_Block_Voltage3 msg))
    (cl:cons ':Module_Block_Voltage4 (Module_Block_Voltage4 msg))
))
