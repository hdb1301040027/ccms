; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude HistoryMsg.msg.html

(cl:defclass <HistoryMsg> (roslisp-msg-protocol:ros-message)
  ((Error_Type_Number
    :reader Error_Type_Number
    :initarg :Error_Type_Number
    :type cl:integer
    :initform 0)
   (Power_Number
    :reader Power_Number
    :initarg :Power_Number
    :type cl:integer
    :initform 0)
   (Module_Number
    :reader Module_Number
    :initarg :Module_Number
    :type cl:integer
    :initform 0)
   (Block_Number
    :reader Block_Number
    :initarg :Block_Number
    :type cl:integer
    :initform 0)
   (StartTime
    :reader StartTime
    :initarg :StartTime
    :type cl:integer
    :initform 0)
   (EndTime
    :reader EndTime
    :initarg :EndTime
    :type cl:integer
    :initform 0))
)

(cl:defclass HistoryMsg (<HistoryMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HistoryMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HistoryMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<HistoryMsg> is deprecated: use ccms_pro-msg:HistoryMsg instead.")))

(cl:ensure-generic-function 'Error_Type_Number-val :lambda-list '(m))
(cl:defmethod Error_Type_Number-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Error_Type_Number-val is deprecated.  Use ccms_pro-msg:Error_Type_Number instead.")
  (Error_Type_Number m))

(cl:ensure-generic-function 'Power_Number-val :lambda-list '(m))
(cl:defmethod Power_Number-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Power_Number-val is deprecated.  Use ccms_pro-msg:Power_Number instead.")
  (Power_Number m))

(cl:ensure-generic-function 'Module_Number-val :lambda-list '(m))
(cl:defmethod Module_Number-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Number-val is deprecated.  Use ccms_pro-msg:Module_Number instead.")
  (Module_Number m))

(cl:ensure-generic-function 'Block_Number-val :lambda-list '(m))
(cl:defmethod Block_Number-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Block_Number-val is deprecated.  Use ccms_pro-msg:Block_Number instead.")
  (Block_Number m))

(cl:ensure-generic-function 'StartTime-val :lambda-list '(m))
(cl:defmethod StartTime-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:StartTime-val is deprecated.  Use ccms_pro-msg:StartTime instead.")
  (StartTime m))

(cl:ensure-generic-function 'EndTime-val :lambda-list '(m))
(cl:defmethod EndTime-val ((m <HistoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:EndTime-val is deprecated.  Use ccms_pro-msg:EndTime instead.")
  (EndTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HistoryMsg>) ostream)
  "Serializes a message object of type '<HistoryMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Error_Type_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Power_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Module_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Block_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'StartTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'EndTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'EndTime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HistoryMsg>) istream)
  "Deserializes a message object of type '<HistoryMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Error_Type_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Power_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Module_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'Block_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'StartTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'EndTime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HistoryMsg>)))
  "Returns string type for a message object of type '<HistoryMsg>"
  "ccms_pro/HistoryMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HistoryMsg)))
  "Returns string type for a message object of type 'HistoryMsg"
  "ccms_pro/HistoryMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HistoryMsg>)))
  "Returns md5sum for a message object of type '<HistoryMsg>"
  "96fa6e4eb46c88db4088ee987f3ac04d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HistoryMsg)))
  "Returns md5sum for a message object of type 'HistoryMsg"
  "96fa6e4eb46c88db4088ee987f3ac04d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HistoryMsg>)))
  "Returns full string definition for message of type '<HistoryMsg>"
  (cl:format cl:nil "uint64 Error_Type_Number~%uint64 Power_Number~%uint64 Module_Number~%uint64 Block_Number~%uint64 StartTime~%uint64 EndTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HistoryMsg)))
  "Returns full string definition for message of type 'HistoryMsg"
  (cl:format cl:nil "uint64 Error_Type_Number~%uint64 Power_Number~%uint64 Module_Number~%uint64 Block_Number~%uint64 StartTime~%uint64 EndTime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HistoryMsg>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HistoryMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HistoryMsg
    (cl:cons ':Error_Type_Number (Error_Type_Number msg))
    (cl:cons ':Power_Number (Power_Number msg))
    (cl:cons ':Module_Number (Module_Number msg))
    (cl:cons ':Block_Number (Block_Number msg))
    (cl:cons ':StartTime (StartTime msg))
    (cl:cons ':EndTime (EndTime msg))
))
