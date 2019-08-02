; Auto-generated. Do not edit!


(cl:in-package ccms_pro-msg)


;//! \htmlinclude UnpackingCanData1.msg.html

(cl:defclass <UnpackingCanData1> (roslisp-msg-protocol:ros-message)
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
   (Module_Voltage
    :reader Module_Voltage
    :initarg :Module_Voltage
    :type cl:fixnum
    :initform 0)
   (Module_Capacitance_Temperature
    :reader Module_Capacitance_Temperature
    :initarg :Module_Capacitance_Temperature
    :type cl:fixnum
    :initform 0)
   (Module_Board_Temperature
    :reader Module_Board_Temperature
    :initarg :Module_Board_Temperature
    :type cl:fixnum
    :initform 0)
   (Module_Voltage_Overvoltage_Abnormal
    :reader Module_Voltage_Overvoltage_Abnormal
    :initarg :Module_Voltage_Overvoltage_Abnormal
    :type cl:fixnum
    :initform 0)
   (Module_Capacity_Abnormal
    :reader Module_Capacity_Abnormal
    :initarg :Module_Capacity_Abnormal
    :type cl:fixnum
    :initform 0)
   (other_data
    :reader other_data
    :initarg :other_data
    :type cl:fixnum
    :initform 0)
   (Module_Voltage_Overvoltage_Warming
    :reader Module_Voltage_Overvoltage_Warming
    :initarg :Module_Voltage_Overvoltage_Warming
    :type cl:fixnum
    :initform 0)
   (module_overvolt_abnormal
    :reader module_overvolt_abnormal
    :initarg :module_overvolt_abnormal
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (module_capacity_abnormal
    :reader module_capacity_abnormal
    :initarg :module_capacity_abnormal
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (other_data_bit
    :reader other_data_bit
    :initarg :other_data_bit
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (module_overvolt_warming
    :reader module_overvolt_warming
    :initarg :module_overvolt_warming
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass UnpackingCanData1 (<UnpackingCanData1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnpackingCanData1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnpackingCanData1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ccms_pro-msg:<UnpackingCanData1> is deprecated: use ccms_pro-msg:UnpackingCanData1 instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:id-val is deprecated.  Use ccms_pro-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:stamp-val is deprecated.  Use ccms_pro-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'Module_Voltage-val :lambda-list '(m))
(cl:defmethod Module_Voltage-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Voltage-val is deprecated.  Use ccms_pro-msg:Module_Voltage instead.")
  (Module_Voltage m))

(cl:ensure-generic-function 'Module_Capacitance_Temperature-val :lambda-list '(m))
(cl:defmethod Module_Capacitance_Temperature-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Capacitance_Temperature-val is deprecated.  Use ccms_pro-msg:Module_Capacitance_Temperature instead.")
  (Module_Capacitance_Temperature m))

(cl:ensure-generic-function 'Module_Board_Temperature-val :lambda-list '(m))
(cl:defmethod Module_Board_Temperature-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Board_Temperature-val is deprecated.  Use ccms_pro-msg:Module_Board_Temperature instead.")
  (Module_Board_Temperature m))

(cl:ensure-generic-function 'Module_Voltage_Overvoltage_Abnormal-val :lambda-list '(m))
(cl:defmethod Module_Voltage_Overvoltage_Abnormal-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Voltage_Overvoltage_Abnormal-val is deprecated.  Use ccms_pro-msg:Module_Voltage_Overvoltage_Abnormal instead.")
  (Module_Voltage_Overvoltage_Abnormal m))

(cl:ensure-generic-function 'Module_Capacity_Abnormal-val :lambda-list '(m))
(cl:defmethod Module_Capacity_Abnormal-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Capacity_Abnormal-val is deprecated.  Use ccms_pro-msg:Module_Capacity_Abnormal instead.")
  (Module_Capacity_Abnormal m))

(cl:ensure-generic-function 'other_data-val :lambda-list '(m))
(cl:defmethod other_data-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:other_data-val is deprecated.  Use ccms_pro-msg:other_data instead.")
  (other_data m))

(cl:ensure-generic-function 'Module_Voltage_Overvoltage_Warming-val :lambda-list '(m))
(cl:defmethod Module_Voltage_Overvoltage_Warming-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:Module_Voltage_Overvoltage_Warming-val is deprecated.  Use ccms_pro-msg:Module_Voltage_Overvoltage_Warming instead.")
  (Module_Voltage_Overvoltage_Warming m))

(cl:ensure-generic-function 'module_overvolt_abnormal-val :lambda-list '(m))
(cl:defmethod module_overvolt_abnormal-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:module_overvolt_abnormal-val is deprecated.  Use ccms_pro-msg:module_overvolt_abnormal instead.")
  (module_overvolt_abnormal m))

(cl:ensure-generic-function 'module_capacity_abnormal-val :lambda-list '(m))
(cl:defmethod module_capacity_abnormal-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:module_capacity_abnormal-val is deprecated.  Use ccms_pro-msg:module_capacity_abnormal instead.")
  (module_capacity_abnormal m))

(cl:ensure-generic-function 'other_data_bit-val :lambda-list '(m))
(cl:defmethod other_data_bit-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:other_data_bit-val is deprecated.  Use ccms_pro-msg:other_data_bit instead.")
  (other_data_bit m))

(cl:ensure-generic-function 'module_overvolt_warming-val :lambda-list '(m))
(cl:defmethod module_overvolt_warming-val ((m <UnpackingCanData1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ccms_pro-msg:module_overvolt_warming-val is deprecated.  Use ccms_pro-msg:module_overvolt_warming instead.")
  (module_overvolt_warming m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnpackingCanData1>) ostream)
  "Serializes a message object of type '<UnpackingCanData1>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Capacitance_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Capacitance_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Board_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Board_Temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Overvoltage_Abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Overvoltage_Abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Capacity_Abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Capacity_Abnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Overvoltage_Warming)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Overvoltage_Warming)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'module_overvolt_abnormal))))
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
   (cl:slot-value msg 'module_overvolt_abnormal))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'module_capacity_abnormal))))
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
   (cl:slot-value msg 'module_capacity_abnormal))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'other_data_bit))))
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
   (cl:slot-value msg 'other_data_bit))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'module_overvolt_warming))))
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
   (cl:slot-value msg 'module_overvolt_warming))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnpackingCanData1>) istream)
  "Deserializes a message object of type '<UnpackingCanData1>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Capacitance_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Capacitance_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Board_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Board_Temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Overvoltage_Abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Overvoltage_Abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Capacity_Abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Capacity_Abnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'other_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'other_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Module_Voltage_Overvoltage_Warming)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Module_Voltage_Overvoltage_Warming)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'module_overvolt_abnormal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'module_overvolt_abnormal)))
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
  (cl:setf (cl:slot-value msg 'module_capacity_abnormal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'module_capacity_abnormal)))
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
  (cl:setf (cl:slot-value msg 'other_data_bit) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'other_data_bit)))
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
  (cl:setf (cl:slot-value msg 'module_overvolt_warming) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'module_overvolt_warming)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnpackingCanData1>)))
  "Returns string type for a message object of type '<UnpackingCanData1>"
  "ccms_pro/UnpackingCanData1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnpackingCanData1)))
  "Returns string type for a message object of type 'UnpackingCanData1"
  "ccms_pro/UnpackingCanData1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnpackingCanData1>)))
  "Returns md5sum for a message object of type '<UnpackingCanData1>"
  "466f14cb02ad2e790738228bd131528b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnpackingCanData1)))
  "Returns md5sum for a message object of type 'UnpackingCanData1"
  "466f14cb02ad2e790738228bd131528b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnpackingCanData1>)))
  "Returns full string definition for message of type '<UnpackingCanData1>"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Voltage                                  ~%uint16 Module_Capacitance_Temperature                        ~%uint16 Module_Board_Temperature~%uint16 Module_Voltage_Overvoltage_Abnormal~%uint16 Module_Capacity_Abnormal~%uint16 other_data~%uint16 Module_Voltage_Overvoltage_Warming                          ~%uint64[] module_overvolt_abnormal~%uint64[] module_capacity_abnormal~%uint64[] other_data_bit~%uint64[] module_overvolt_warming~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnpackingCanData1)))
  "Returns full string definition for message of type 'UnpackingCanData1"
  (cl:format cl:nil "uint32 id~%time stamp~%uint16 Module_Voltage                                  ~%uint16 Module_Capacitance_Temperature                        ~%uint16 Module_Board_Temperature~%uint16 Module_Voltage_Overvoltage_Abnormal~%uint16 Module_Capacity_Abnormal~%uint16 other_data~%uint16 Module_Voltage_Overvoltage_Warming                          ~%uint64[] module_overvolt_abnormal~%uint64[] module_capacity_abnormal~%uint64[] other_data_bit~%uint64[] module_overvolt_warming~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnpackingCanData1>))
  (cl:+ 0
     4
     8
     2
     2
     2
     2
     2
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'module_overvolt_abnormal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'module_capacity_abnormal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'other_data_bit) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'module_overvolt_warming) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnpackingCanData1>))
  "Converts a ROS message object to a list"
  (cl:list 'UnpackingCanData1
    (cl:cons ':id (id msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':Module_Voltage (Module_Voltage msg))
    (cl:cons ':Module_Capacitance_Temperature (Module_Capacitance_Temperature msg))
    (cl:cons ':Module_Board_Temperature (Module_Board_Temperature msg))
    (cl:cons ':Module_Voltage_Overvoltage_Abnormal (Module_Voltage_Overvoltage_Abnormal msg))
    (cl:cons ':Module_Capacity_Abnormal (Module_Capacity_Abnormal msg))
    (cl:cons ':other_data (other_data msg))
    (cl:cons ':Module_Voltage_Overvoltage_Warming (Module_Voltage_Overvoltage_Warming msg))
    (cl:cons ':module_overvolt_abnormal (module_overvolt_abnormal msg))
    (cl:cons ':module_capacity_abnormal (module_capacity_abnormal msg))
    (cl:cons ':other_data_bit (other_data_bit msg))
    (cl:cons ':module_overvolt_warming (module_overvolt_warming msg))
))
