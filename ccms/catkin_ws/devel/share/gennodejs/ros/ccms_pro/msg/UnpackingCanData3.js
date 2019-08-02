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

class UnpackingCanData3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.Module_Block_Voltage5 = null;
      this.Module_Block_Voltage6 = null;
      this.Module_Block_Voltage7 = null;
      this.Module_Block_Voltage8 = null;
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
      if (initObj.hasOwnProperty('Module_Block_Voltage5')) {
        this.Module_Block_Voltage5 = initObj.Module_Block_Voltage5
      }
      else {
        this.Module_Block_Voltage5 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage6')) {
        this.Module_Block_Voltage6 = initObj.Module_Block_Voltage6
      }
      else {
        this.Module_Block_Voltage6 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage7')) {
        this.Module_Block_Voltage7 = initObj.Module_Block_Voltage7
      }
      else {
        this.Module_Block_Voltage7 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage8')) {
        this.Module_Block_Voltage8 = initObj.Module_Block_Voltage8
      }
      else {
        this.Module_Block_Voltage8 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData3
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage5]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage5, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage6]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage6, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage7]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage7, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage8]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData3
    let len;
    let data = new UnpackingCanData3(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage5]
    data.Module_Block_Voltage5 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage6]
    data.Module_Block_Voltage6 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage7]
    data.Module_Block_Voltage7 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage8]
    data.Module_Block_Voltage8 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '954a4b29f81dafd5ab55187f583519a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    time stamp
    uint16 Module_Block_Voltage5
    uint16 Module_Block_Voltage6
    uint16 Module_Block_Voltage7
    uint16 Module_Block_Voltage8
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData3(null);
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

    if (msg.Module_Block_Voltage5 !== undefined) {
      resolved.Module_Block_Voltage5 = msg.Module_Block_Voltage5;
    }
    else {
      resolved.Module_Block_Voltage5 = 0
    }

    if (msg.Module_Block_Voltage6 !== undefined) {
      resolved.Module_Block_Voltage6 = msg.Module_Block_Voltage6;
    }
    else {
      resolved.Module_Block_Voltage6 = 0
    }

    if (msg.Module_Block_Voltage7 !== undefined) {
      resolved.Module_Block_Voltage7 = msg.Module_Block_Voltage7;
    }
    else {
      resolved.Module_Block_Voltage7 = 0
    }

    if (msg.Module_Block_Voltage8 !== undefined) {
      resolved.Module_Block_Voltage8 = msg.Module_Block_Voltage8;
    }
    else {
      resolved.Module_Block_Voltage8 = 0
    }

    return resolved;
    }
};

module.exports = UnpackingCanData3;
