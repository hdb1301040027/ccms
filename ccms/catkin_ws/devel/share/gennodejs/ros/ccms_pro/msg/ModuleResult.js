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

class ModuleResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modID = null;
      this.modulehealth = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('modID')) {
        this.modID = initObj.modID
      }
      else {
        this.modID = 0;
      }
      if (initObj.hasOwnProperty('modulehealth')) {
        this.modulehealth = initObj.modulehealth
      }
      else {
        this.modulehealth = 0;
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
    // Serializes a message object of type ModuleResult
    // Serialize message field [modID]
    bufferOffset = _serializer.int16(obj.modID, buffer, bufferOffset);
    // Serialize message field [modulehealth]
    bufferOffset = _serializer.int16(obj.modulehealth, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleResult
    let len;
    let data = new ModuleResult(null);
    // Deserialize message field [modID]
    data.modID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [modulehealth]
    data.modulehealth = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/ModuleResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74784e2e9e832ccc2a86ae5f0682c934';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 modID
    int16 modulehealth
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleResult(null);
    if (msg.modID !== undefined) {
      resolved.modID = msg.modID;
    }
    else {
      resolved.modID = 0
    }

    if (msg.modulehealth !== undefined) {
      resolved.modulehealth = msg.modulehealth;
    }
    else {
      resolved.modulehealth = 0
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

module.exports = ModuleResult;
