; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude UnpackingCanData6.msg.html

(cl:defclass <UnpackingCanData6> (roslisp-msg-protocol:ros-message)
  ((Power_ID
    :reader Power_ID
    :initarg :Power_ID
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (Energy_Storage_Voltage
    :reader Energy_Storage_Voltage
    :initarg :Energy_Storage_Voltage
    :type cl:fixnum
    :initform 0)
   (Energy_Storage_Current
    :reader Energy_Storage_Current
    :initarg :Energy_Storage_Current
    :type cl:fixnum
    :initform 0)
   (Energy_Storage_Temperature
    :reader Energy_Storage_Temperature
    :initarg :Energy_Storage_Temperature
    :type cl:fixnum
    :initform 0)
   (other_data
    :reader other_data
    :initarg :other_data
    :type cl:fixnum
    :initform 0)
   (Fan_Failure
    :reader Fan_Failure
    :initarg :Fan_Failure
    :type cl:fixnum
    :initform 0)
   (Fan_State
    :reader Fan_State
    :initarg :Fan_State
    :type cl:fixnum
    :initform 0)
   (otherdata
    :reader otherdata
    :initarg :otherdata
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (FanAccident
    :reader FanAccident
    :initarg :FanAccident
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (Fandata
    :reader Fandata
    :initarg :Fandata
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass UnpackingCanData6 (<UnpackingCanData6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnpackingCanData6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnpackingCanData6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<UnpackingCanData6> is deprecated: use ccms_pro-msg:UnpackingCanData6 instead.")))

(cl:ensure-generic-function 'Power_ID-val :lambda-list '(m))
(cl:defmethod Power_ID-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Power_ID-val is deprecated.  Use ccms_pro-msg:Power_ID instead.")
  (Power_ID m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Energy_Storage_Voltage-val :lambda-list '(m))
(cl:defmethod Energy_Storage_Voltage-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Energy_Storage_Voltage-val is deprecated.  Use ccms_pro-msg:Energy_Storage_Voltage instead.")
  (Energy_Storage_Voltage m))

(cl:ensure-generic-function 'Energy_Storage_Current-val :lambda-list '(m))
(cl:defmethod Energy_Storage_Current-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Energy_Storage_Current-val is deprecated.  Use ccms_pro-msg:Energy_Storage_Current instead.")
  (Energy_Storage_Current m))

(cl:ensure-generic-function 'Energy_Storage_Temperature-val :lambda-list '(m))
(cl:defmethod Energy_Storage_Temperature-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Energy_Storage_Temperature-val is deprecated.  Use ccms_pro-msg:Energy_Storage_Temperature instead.")
  (Energy_Storage_Temperature m))

(cl:ensure-generic-function 'other_data-val :lambda-list '(m))
(cl:defmethod other_data-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:other_data-val is deprecated.  Use ccms_pro-msg:other_data instead.")
  (other_data m))

(cl:ensure-generic-function 'Fan_Failure-val :lambda-list '(m))
(cl:defmethod Fan_Failure-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Fan_Failure-val is deprecated.  Use ccms_pro-msg:Fan_Failure instead.")
  (Fan_Failure m))

(cl:ensure-generic-function 'Fan_State-val :lambda-list '(m))
(cl:defmethod Fan_State-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Fan_State-val is deprecated.  Use ccms_pro-msg:Fan_State instead.")
  (Fan_State m))

(cl:ensure-generic-function 'otherdata-val :lambda-list '(m))
(cl:defmethod otherdata-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:otherdata-val is deprecated.  Use ccms_pro-msg:otherdata instead.")
  (otherdata m))

(cl:ensure-generic-function 'FanAccident-val :lambda-list '(m))
(cl:defmethod FanAccident-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:FanAccident-val is deprecated.  Use ccms_pro-msg:FanAccident instead.")
  (FanAccident m))

(cl:ensure-generic-function 'Fandata-val :lambda-list '(m))
(cl:defmethod Fandata-val ((m <UnpackingCanData6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Fandata-val is deprecated.  Use ccms_pro-msg:Fandata instead.")
  (Fandata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnpackingCanData6>) ostream)
  "Serializes a message object of type '<UnpackingCanData6>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Power_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Power_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Power_ID)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Energy_Storage_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Energy_Storage_Voltage)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Energy_Storage_Current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Energy_Storage_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Energy_Storage_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Fan_Failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Fan_Failure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Fan_State)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Fan_State)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'otherdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'otherdata))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'FanAccident))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'FanAccident))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Fandata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'Fandata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnpackingCanData6>) istream)
  "Deserializes a message object of type '<UnpackingCanData6>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Power_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Power_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Power_ID)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Energy_Storage_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Energy_Storage_Voltage)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Energy_Storage_Current) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Energy_Storage_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Energy_Storage_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Fan_Failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Fan_Failure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Fan_State)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Fan_State)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'otherdata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'otherdata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'FanAccident) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'FanAccident)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Fandata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Fandata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnpackingCanData6>)))
  "Returns string type for a message object of type '<UnpackingCanData6>"
  "ccms_pro/UnpackingCanData6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnpackingCanData6)))
  "Returns string type for a message object of type 'UnpackingCanData6"
  "ccms_pro/UnpackingCanData6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnpackingCanData6>)))
  "Returns md5sum for a message object of type '<UnpackingCanData6>"
  "aa4a7278a5166952b8bdd122eb47f2f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnpackingCanData6)))
  "Returns md5sum for a message object of type 'UnpackingCanData6"
  "aa4a7278a5166952b8bdd122eb47f2f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnpackingCanData6>)))
  "Returns full string definition for message of type '<UnpackingCanData6>"
  (cl:format cl:nil "uint32 Power_ID~%time stamp~%uint16 Energy_Storage_Voltage~%int16 Energy_Storage_Current~%uint16 Energy_Storage_Temperature~%uint16 other_data~%uint16 Fan_Failure~%uint16 Fan_State~%uint64[] otherdata~%uint64[] FanAccident~%uint64[] Fandata~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnpackingCanData6)))
  "Returns full string definition for message of type 'UnpackingCanData6"
  (cl:format cl:nil "uint32 Power_ID~%time stamp~%uint16 Energy_Storage_Voltage~%int16 Energy_Storage_Current~%uint16 Energy_Storage_Temperature~%uint16 other_data~%uint16 Fan_Failure~%uint16 Fan_State~%uint64[] otherdata~%uint64[] FanAccident~%uint64[] Fandata~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnpackingCanData6>))
  (cl:+ 0
     4
     8
     2
     2
     2
     2
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'otherdata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'FanAccident) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Fandata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnpackingCanData6>))
  "Converts a ROS message object to a list"
  (cl:list 'UnpackingCanData6
    (cl:cons ':Power_ID (Power_ID msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Energy_Storage_Voltage (Energy_Storage_Voltage msg))
    (cl:cons ':Energy_Storage_Current (Energy_Storage_Current msg))
    (cl:cons ':Energy_Storage_Temperature (Energy_Storage_Temperature msg))
    (cl:cons ':other_data (other_data msg))
    (cl:cons ':Fan_Failure (Fan_Failure msg))
    (cl:cons ':Fan_State (Fan_State msg))
    (cl:cons ':otherdata (otherdata msg))
    (cl:cons ':FanAccident (FanAccident msg))
    (cl:cons ':Fandata (Fandata msg))
))
