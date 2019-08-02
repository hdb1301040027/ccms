; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude UnpackingCanData5.msg.html

(cl:defclass <UnpackingCanData5> (roslisp-msg-protocol:ros-message)
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
   (Balanced_data_number
    :reader Balanced_data_number
    :initarg :Balanced_data_number
    :type cl:fixnum
    :initform 0)
   (Modules_Above_Threshold_Voltage
    :reader Modules_Above_Threshold_Voltage
    :initarg :Modules_Above_Threshold_Voltage
    :type cl:fixnum
    :initform 0)
   (Moduel_Average_Voltage
    :reader Moduel_Average_Voltage
    :initarg :Moduel_Average_Voltage
    :type cl:fixnum
    :initform 0)
   (Module_Voltage_Threshold
    :reader Module_Voltage_Threshold
    :initarg :Module_Voltage_Threshold
    :type cl:fixnum
    :initform 0)
   (Minimum_Module_Voltage
    :reader Minimum_Module_Voltage
    :initarg :Minimum_Module_Voltage
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UnpackingCanData5 (<UnpackingCanData5>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnpackingCanData5>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnpackingCanData5)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<UnpackingCanData5> is deprecated: use ccms_pro-msg:UnpackingCanData5 instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:id-val is deprecated.  Use ccms_pro-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Balanced_data_number-val :lambda-list '(m))
(cl:defmethod Balanced_data_number-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Balanced_data_number-val is deprecated.  Use ccms_pro-msg:Balanced_data_number instead.")
  (Balanced_data_number m))

(cl:ensure-generic-function 'Modules_Above_Threshold_Voltage-val :lambda-list '(m))
(cl:defmethod Modules_Above_Threshold_Voltage-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Modules_Above_Threshold_Voltage-val is deprecated.  Use ccms_pro-msg:Modules_Above_Threshold_Voltage instead.")
  (Modules_Above_Threshold_Voltage m))

(cl:ensure-generic-function 'Moduel_Average_Voltage-val :lambda-list '(m))
(cl:defmethod Moduel_Average_Voltage-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Moduel_Average_Voltage-val is deprecated.  Use ccms_pro-msg:Moduel_Average_Voltage instead.")
  (Moduel_Average_Voltage m))

(cl:ensure-generic-function 'Module_Voltage_Threshold-val :lambda-list '(m))
(cl:defmethod Module_Voltage_Threshold-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Voltage_Threshold-val is deprecated.  Use ccms_pro-msg:Module_Voltage_Threshold instead.")
  (Module_Voltage_Threshold m))

(cl:ensure-generic-function 'Minimum_Module_Voltage-val :lambda-list '(m))
(cl:defmethod Minimum_Module_Voltage-val ((m <UnpackingCanData5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Minimum_Module_Voltage-val is deprecated.  Use ccms_pro-msg:Minimum_Module_Voltage instead.")
  (Minimum_Module_Voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnpackingCanData5>) ostream)
  "Serializes a message object of type '<UnpackingCanData5>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Balanced_data_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Balanced_data_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Modules_Above_Threshold_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Modules_Above_Threshold_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Moduel_Average_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Moduel_Average_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Minimum_Module_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Minimum_Module_Voltage)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnpackingCanData5>) istream)
  "Deserializes a message object of type '<UnpackingCanData5>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Balanced_data_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Balanced_data_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Modules_Above_Threshold_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Modules_Above_Threshold_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Moduel_Average_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Moduel_Average_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Minimum_Module_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Minimum_Module_Voltage)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnpackingCanData5>)))
  "Returns string type for a message object of type '<UnpackingCanData5>"
  "ccms_pro/UnpackingCanData5")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnpackingCanData5)))
  "Returns string type for a message object of type 'UnpackingCanData5"
  "ccms_pro/UnpackingCanData5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnpackingCanData5>)))
  "Returns md5sum for a message object of type '<UnpackingCanData5>"
  "dad6dfeec14d9e6f97f8da55bee54242")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnpackingCanData5)))
  "Returns md5sum for a message object of type 'UnpackingCanData5"
  "dad6dfeec14d9e6f97f8da55bee54242")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnpackingCanData5>)))
  "Returns full string definition for message of type '<UnpackingCanData5>"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Balanced_data_number~%uint16 Modules_Above_Threshold_Voltage~%uint16 Moduel_Average_Voltage~%uint16 Module_Voltage_Threshold~%uint16 Minimum_Module_Voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnpackingCanData5)))
  "Returns full string definition for message of type 'UnpackingCanData5"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Balanced_data_number~%uint16 Modules_Above_Threshold_Voltage~%uint16 Moduel_Average_Voltage~%uint16 Module_Voltage_Threshold~%uint16 Minimum_Module_Voltage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnpackingCanData5>))
  (cl:+ 0
     4
     8
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnpackingCanData5>))
  "Converts a ROS message object to a list"
  (cl:list 'UnpackingCanData5
    (cl:cons ':id (id msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Balanced_data_number (Balanced_data_number msg))
    (cl:cons ':Modules_Above_Threshold_Voltage (Modules_Above_Threshold_Voltage msg))
    (cl:cons ':Moduel_Average_Voltage (Moduel_Average_Voltage msg))
    (cl:cons ':Module_Voltage_Threshold (Module_Voltage_Threshold msg))
    (cl:cons ':Minimum_Module_Voltage (Minimum_Module_Voltage msg))
))
