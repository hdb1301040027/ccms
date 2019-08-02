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

class UnpackingCanData2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.Module_Block_Voltage1 = null;
      this.Module_Block_Voltage2 = null;
      this.Module_Block_Voltage3 = null;
      this.Module_Block_Voltage4 = null;
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
      if (initObj.hasOwnProperty('Module_Block_Voltage1')) {
        this.Module_Block_Voltage1 = initObj.Module_Block_Voltage1
      }
      else {
        this.Module_Block_Voltage1 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage2')) {
        this.Module_Block_Voltage2 = initObj.Module_Block_Voltage2
      }
      else {
        this.Module_Block_Voltage2 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage3')) {
        this.Module_Block_Voltage3 = initObj.Module_Block_Voltage3
      }
      else {
        this.Module_Block_Voltage3 = 0;
      }
      if (initObj.hasOwnProperty('Module_Block_Voltage4')) {
        this.Module_Block_Voltage4 = initObj.Module_Block_Voltage4
      }
      else {
        this.Module_Block_Voltage4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData2
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage1]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage1, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage2]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage2, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage3]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage3, buffer, bufferOffset);
    // Serialize message field [Module_Block_Voltage4]
    bufferOffset = _serializer.uint16(obj.Module_Block_Voltage4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData2
    let len;
    let data = new UnpackingCanData2(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage1]
    data.Module_Block_Voltage1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage2]
    data.Module_Block_Voltage2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage3]
    data.Module_Block_Voltage3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Module_Block_Voltage4]
    data.Module_Block_Voltage4 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b13fc55befa7a47e2cbf6fd0477dd31f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    time stamp
    uint16 Module_Block_Voltage1
    uint16 Module_Block_Voltage2
    uint16 Module_Block_Voltage3
    uint16 Module_Block_Voltage4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData2(null);
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

    if (msg.Module_Block_Voltage1 !== undefined) {
      resolved.Module_Block_Voltage1 = msg.Module_Block_Voltage1;
    }
    else {
      resolved.Module_Block_Voltage1 = 0
    }

    if (msg.Module_Block_Voltage2 !== undefined) {
      resolved.Module_Block_Voltage2 = msg.Module_Block_Voltage2;
    }
    else {
      resolved.Module_Block_Voltage2 = 0
    }

    if (msg.Module_Block_Voltage3 !== undefined) {
      resolved.Module_Block_Voltage3 = msg.Module_Block_Voltage3;
    }
    else {
      resolved.Module_Block_Voltage3 = 0
    }

    if (msg.Module_Block_Voltage4 !== undefined) {
      resolved.Module_Block_Voltage4 = msg.Module_Block_Voltage4;
    }
    else {
      resolved.Module_Block_Voltage4 = 0
    }

    return resolved;
    }
};

module.exports = UnpackingCanData2;
