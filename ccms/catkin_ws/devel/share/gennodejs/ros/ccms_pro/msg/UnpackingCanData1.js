// Auto-generated. Do not edit!

// (in-package ccms_pro.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UnpackingCanData1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.Module_Voltage = null;
      this.Module_Capacitance_Temperature = null;
      this.Module_Board_Temperature = null;
      this.Module_Voltage_Overvoltage_Abnormal = null;
      this.Module_Capacity_Abnormal = null;
      this.other_data = null;
      this.Module_Voltage_Overvoltage_Warming = null;
      this.module_overvolt_abnormal = null;
      this.module_capacity_abnormal = null;
      this.other_data_bit = null;
      this.module_overvolt_warming = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('Module_Voltage')) {
        this.Module_Voltage = initObj.Module_Voltage
      }
      else {
        this.Module_Voltage = 0;
      }
      if (initObj.hasOwnProperty('Module_Capacitance_Temperature')) {
        this.Module_Capacitance_Temperature = initObj.Module_Capacitance_Temperature
      }
      else {
        this.Module_Capacitance_Temperature = 0;
      }
      if (initObj.hasOwnProperty('Module_Board_Temperature')) {
        this.Module_Board_Temperature = initObj.Module_Board_Temperature
      }
      else {
        this.Module_Board_Temperature = 0;
      }
      if (initObj.hasOwnProperty('Module_Voltage_Overvoltage_Abnormal')) {
        this.Module_Voltage_Overvoltage_Abnormal = initObj.Module_Voltage_Overvoltage_Abnormal
      }
      else {
        this.Module_Voltage_Overvoltage_Abnormal = 0;
      }
      if (initObj.hasOwnProperty('Module_Capacity_Abnormal')) {
        this.Module_Capacity_Abnormal = initObj.Module_Capacity_Abnormal
      }
      else {
        this.Module_Capacity_Abnormal = 0;
      }
      if (initObj.hasOwnProperty('other_data')) {
        this.other_data = initObj.other_data
      }
      else {
        this.other_data = 0;
      }
      if (initObj.hasOwnProperty('Module_Voltage_Overvoltage_Warming')) {
        this.Module_Voltage_Overvoltage_Warming = initObj.Module_Voltage_Overvoltage_Warming
      }
      else {
        this.Module_Voltage_Overvoltage_Warming = 0;
      }
      if (initObj.hasOwnProperty('module_overvolt_abnormal')) {
        this.module_overvolt_abnormal = initObj.module_overvolt_abnormal
      }
      else {
        this.module_overvolt_abnormal = [];
      }
      if (initObj.hasOwnProperty('module_capacity_abnormal')) {
        this.module_capacity_abnormal = initObj.module_capacity_abnormal
      }
      else {
        this.module_capacity_abnormal = [];
      }
      if (initObj.hasOwnProperty('other_data_bit')) {
        this.other_data_bit = initObj.other_data_bit
      }
      else {
        this.other_data_bit = [];
      }
      if (initObj.hasOwnProperty('module_overvolt_warming')) {
        this.module_overvolt_warming = initObj.module_overvolt_warming
      }
      else {
        this.module_overvolt_warming = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData1
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Module_Voltage]
    bufferOffset = _serializer.uint16(obj.Module_Voltage, buffer, bufferOffset);
    // Serialize message field [Module_Capacitance_Temperature]
    bufferOffset = _serializer.uint16(obj.Module_Capacitance_Temperature, buffer, bufferOffset);
    // Serialize message field [Module_Board_Temperature]
    bufferOffset = _serializer.uint16(obj.Module_Board_Temperature, buffer, bufferOffset);
    // Serialize message field [Module_Voltage_Overvoltage_Abnormal]
    bufferOffset = _serializer.uint16(obj.Module_Voltage_Overvoltage_Abnormal, buffer, bufferOffset);
    // Serialize message field [Module_Capacity_Abnormal]
    bufferOffset = _serializer.uint16(obj.Module_Capacity_Abnormal, buffer, bufferOffset);
    // Serialize message field [other_data]
    bufferOffset = _serializer.uint16(obj.other_data, buffer, bufferOffset);
    // Serialize message field [Module_Voltage_Overvoltage_Warming]
    bufferOffset = _serializer.uint16(obj.Module_Voltage_Overvoltage_Warming, buffer, bufferOffset);
    // Serialize message field [module_overvolt_abnormal]
    bufferOffset = _arraySerializer.uint64(obj.module_overvolt_abnormal, buffer, bufferOffset, null);
    // Serialize message field [module_capacity_abnormal]
    bufferOffset = _arraySerializer.uint64(obj.module_capacity_abnormal, buffer, bufferOffset, null);
    // Serialize message field [other_data_bit]
    bufferOffset = _arraySerializer.uint64(obj.other_data_bit, buffer, bufferOffset, null);
    // Serialize message field [module_overvolt_warming]
    bufferOffset = _arraySerializer.uint64(obj.module_overvolt_warming, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData1
    let len;
    let data = new UnpackingCanData1(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Module_Voltage]
    data.Module_Voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Capacitance_Temperature]
    data.Module_Capacitance_Temperature = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Board_Temperature]
    data.Module_Board_Temperature = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Voltage_Overvoltage_Abnormal]
    data.Module_Voltage_Overvoltage_Abnormal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Capacity_Abnormal]
    data.Module_Capacity_Abnormal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [other_data]
    data.other_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Voltage_Overvoltage_Warming]
    data.Module_Voltage_Overvoltage_Warming = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [module_overvolt_abnormal]
    data.module_overvolt_abnormal = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [module_capacity_abnormal]
    data.module_capacity_abnormal = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [other_data_bit]
    data.other_data_bit = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [module_overvolt_warming]
    data.module_overvolt_warming = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.module_overvolt_abnormal.length;
    length += 8 * object.module_capacity_abnormal.length;
    length += 8 * object.other_data_bit.length;
    length += 8 * object.module_overvolt_warming.length;
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '466f14cb02ad2e790738228bd131528b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    time stamp
    uint16 Module_Voltage                                  
    uint16 Module_Capacitance_Temperature                        
    uint16 Module_Board_Temperature
    uint16 Module_Voltage_Overvoltage_Abnormal
    uint16 Module_Capacity_Abnormal
    uint16 other_data
    uint16 Module_Voltage_Overvoltage_Warming                          
    uint64[] module_overvolt_abnormal
    uint64[] module_capacity_abnormal
    uint64[] other_data_bit
    uint64[] module_overvolt_warming
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData1(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.Module_Voltage !== undefined) {
      resolved.Module_Voltage = msg.Module_Voltage;
    }
    else {
      resolved.Module_Voltage = 0
    }

    if (msg.Module_Capacitance_Temperature !== undefined) {
      resolved.Module_Capacitance_Temperature = msg.Module_Capacitance_Temperature;
    }
    else {
      resolved.Module_Capacitance_Temperature = 0
    }

    if (msg.Module_Board_Temperature !== undefined) {
      resolved.Module_Board_Temperature = msg.Module_Board_Temperature;
    }
    else {
      resolved.Module_Board_Temperature = 0
    }

    if (msg.Module_Voltage_Overvoltage_Abnormal !== undefined) {
      resolved.Module_Voltage_Overvoltage_Abnormal = msg.Module_Voltage_Overvoltage_Abnormal;
    }
    else {
      resolved.Module_Voltage_Overvoltage_Abnormal = 0
    }

    if (msg.Module_Capacity_Abnormal !== undefined) {
      resolved.Module_Capacity_Abnormal = msg.Module_Capacity_Abnormal;
    }
    else {
      resolved.Module_Capacity_Abnormal = 0
    }

    if (msg.other_data !== undefined) {
      resolved.other_data = msg.other_data;
    }
    else {
      resolved.other_data = 0
    }

    if (msg.Module_Voltage_Overvoltage_Warming !== undefined) {
      resolved.Module_Voltage_Overvoltage_Warming = msg.Module_Voltage_Overvoltage_Warming;
    }
    else {
      resolved.Module_Voltage_Overvoltage_Warming = 0
    }

    if (msg.module_overvolt_abnormal !== undefined) {
      resolved.module_overvolt_abnormal = msg.module_overvolt_abnormal;
    }
    else {
      resolved.module_overvolt_abnormal = []
    }

    if (msg.module_capacity_abnormal !== undefined) {
      resolved.module_capacity_abnormal = msg.module_capacity_abnormal;
    }
    else {
      resolved.module_capacity_abnormal = []
    }

    if (msg.other_data_bit !== undefined) {
      resolved.other_data_bit = msg.other_data_bit;
    }
    else {
      resolved.other_data_bit = []
    }

    if (msg.module_overvolt_warming !== undefined) {
      resolved.module_overvolt_warming = msg.module_overvolt_warming;
    }
    else {
      resolved.module_overvolt_warming = []
    }

    return resolved;
    }
};

module.exports = UnpackingCanData1;
