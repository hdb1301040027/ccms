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

class UnpackingCanData5 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.Balanced_data_number = null;
      this.Modules_Above_Threshold_Voltage = null;
      this.Moduel_Average_Voltage = null;
      this.Module_Voltage_Threshold = null;
      this.Minimum_Module_Voltage = null;
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
      if (initObj.hasOwnProperty('Balanced_data_number')) {
        this.Balanced_data_number = initObj.Balanced_data_number
      }
      else {
        this.Balanced_data_number = 0;
      }
      if (initObj.hasOwnProperty('Modules_Above_Threshold_Voltage')) {
        this.Modules_Above_Threshold_Voltage = initObj.Modules_Above_Threshold_Voltage
      }
      else {
        this.Modules_Above_Threshold_Voltage = 0;
      }
      if (initObj.hasOwnProperty('Moduel_Average_Voltage')) {
        this.Moduel_Average_Voltage = initObj.Moduel_Average_Voltage
      }
      else {
        this.Moduel_Average_Voltage = 0;
      }
      if (initObj.hasOwnProperty('Module_Voltage_Threshold')) {
        this.Module_Voltage_Threshold = initObj.Module_Voltage_Threshold
      }
      else {
        this.Module_Voltage_Threshold = 0;
      }
      if (initObj.hasOwnProperty('Minimum_Module_Voltage')) {
        this.Minimum_Module_Voltage = initObj.Minimum_Module_Voltage
      }
      else {
        this.Minimum_Module_Voltage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData5
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Balanced_data_number]
    bufferOffset = _serializer.uint16(obj.Balanced_data_number, buffer, bufferOffset);
    // Serialize message field [Modules_Above_Threshold_Voltage]
    bufferOffset = _serializer.uint16(obj.Modules_Above_Threshold_Voltage, buffer, bufferOffset);
    // Serialize message field [Moduel_Average_Voltage]
    bufferOffset = _serializer.uint16(obj.Moduel_Average_Voltage, buffer, bufferOffset);
    // Serialize message field [Module_Voltage_Threshold]
    bufferOffset = _serializer.uint16(obj.Module_Voltage_Threshold, buffer, bufferOffset);
    // Serialize message field [Minimum_Module_Voltage]
    bufferOffset = _serializer.uint16(obj.Minimum_Module_Voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData5
    let len;
    let data = new UnpackingCanData5(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Balanced_data_number]
    data.Balanced_data_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Modules_Above_Threshold_Voltage]
    data.Modules_Above_Threshold_Voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Moduel_Average_Voltage]
    data.Moduel_Average_Voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Voltage_Threshold]
    data.Module_Voltage_Threshold = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Minimum_Module_Voltage]
    data.Minimum_Module_Voltage = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData5';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dad6dfeec14d9e6f97f8da55bee54242';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    time stamp
    uint16 Balanced_data_number
    uint16 Modules_Above_Threshold_Voltage
    uint16 Moduel_Average_Voltage
    uint16 Module_Voltage_Threshold
    uint16 Minimum_Module_Voltage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData5(null);
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

    if (msg.Balanced_data_number !== undefined) {
      resolved.Balanced_data_number = msg.Balanced_data_number;
    }
    else {
      resolved.Balanced_data_number = 0
    }

    if (msg.Modules_Above_Threshold_Voltage !== undefined) {
      resolved.Modules_Above_Threshold_Voltage = msg.Modules_Above_Threshold_Voltage;
    }
    else {
      resolved.Modules_Above_Threshold_Voltage = 0
    }

    if (msg.Moduel_Average_Voltage !== undefined) {
      resolved.Moduel_Average_Voltage = msg.Moduel_Average_Voltage;
    }
    else {
      resolved.Moduel_Average_Voltage = 0
    }

    if (msg.Module_Voltage_Threshold !== undefined) {
      resolved.Module_Voltage_Threshold = msg.Module_Voltage_Threshold;
    }
    else {
      resolved.Module_Voltage_Threshold = 0
    }

    if (msg.Minimum_Module_Voltage !== undefined) {
      resolved.Minimum_Module_Voltage = msg.Minimum_Module_Voltage;
    }
    else {
      resolved.Minimum_Module_Voltage = 0
    }

    return resolved;
    }
};

module.exports = UnpackingCanData5;
