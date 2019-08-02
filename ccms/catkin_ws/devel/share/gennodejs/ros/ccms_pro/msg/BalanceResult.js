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

class BalanceResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.balancestate = null;
      this.modID = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('balancestate')) {
        this.balancestate = initObj.balancestate
      }
      else {
        this.balancestate = 0;
      }
      if (initObj.hasOwnProperty('modID')) {
        this.modID = initObj.modID
      }
      else {
        this.modID = 0;
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
    // Serializes a message object of type BalanceResult
    // Serialize message field [balancestate]
    bufferOffset = _serializer.int16(obj.balancestate, buffer, bufferOffset);
    // Serialize message field [modID]
    bufferOffset = _serializer.int16(obj.modID, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceResult
    let len;
    let data = new BalanceResult(null);
    // Deserialize message field [balancestate]
    data.balancestate = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [modID]
    data.modID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/BalanceResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d0a672bc2e43f660b2b92e9da0e2b66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 balancestate
    int16 modID
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BalanceResult(null);
    if (msg.balancestate !== undefined) {
      resolved.balancestate = msg.balancestate;
    }
    else {
      resolved.balancestate = 0
    }

    if (msg.modID !== undefined) {
      resolved.modID = msg.modID;
    }
    else {
      resolved.modID = 0
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

module.exports = BalanceResult;
