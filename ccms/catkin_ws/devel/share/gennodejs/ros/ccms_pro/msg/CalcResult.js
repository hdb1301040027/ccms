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

class CalcResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Rresult = null;
      this.Cresult = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('Rresult')) {
        this.Rresult = initObj.Rresult
      }
      else {
        this.Rresult = [];
      }
      if (initObj.hasOwnProperty('Cresult')) {
        this.Cresult = initObj.Cresult
      }
      else {
        this.Cresult = [];
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalcResult
    // Serialize message field [Rresult]
    bufferOffset = _arraySerializer.uint64(obj.Rresult, buffer, bufferOffset, null);
    // Serialize message field [Cresult]
    bufferOffset = _arraySerializer.uint64(obj.Cresult, buffer, bufferOffset, null);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalcResult
    let len;
    let data = new CalcResult(null);
    // Deserialize message field [Rresult]
    data.Rresult = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [Cresult]
    data.Cresult = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.Rresult.length;
    length += 8 * object.Cresult.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/CalcResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70e22a0b756eec76246b47243b5ea1f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64[] Rresult
    uint64[] Cresult
    time stamp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalcResult(null);
    if (msg.Rresult !== undefined) {
      resolved.Rresult = msg.Rresult;
    }
    else {
      resolved.Rresult = []
    }

    if (msg.Cresult !== undefined) {
      resolved.Cresult = msg.Cresult;
    }
    else {
      resolved.Cresult = []
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = CalcResult;
