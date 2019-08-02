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

class BatteryResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.batteryID = null;
      this.batteryhealth = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('batteryID')) {
        this.batteryID = initObj.batteryID
      }
      else {
        this.batteryID = 0;
      }
      if (initObj.hasOwnProperty('batteryhealth')) {
        this.batteryhealth = initObj.batteryhealth
      }
      else {
        this.batteryhealth = 0;
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
    // Serializes a message object of type BatteryResult
    // Serialize message field [batteryID]
    bufferOffset = _serializer.int16(obj.batteryID, buffer, bufferOffset);
    // Serialize message field [batteryhealth]
    bufferOffset = _serializer.int16(obj.batteryhealth, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryResult
    let len;
    let data = new BatteryResult(null);
    // Deserialize message field [batteryID]
    data.batteryID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [batteryhealth]
    data.batteryhealth = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/BatteryResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e42e7886af1941bd1e452f49878265cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 batteryID
    int16 batteryhealth 
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryResult(null);
    if (msg.batteryID !== undefined) {
      resolved.batteryID = msg.batteryID;
    }
    else {
      resolved.batteryID = 0
    }

    if (msg.batteryhealth !== undefined) {
      resolved.batteryhealth = msg.batteryhealth;
    }
    else {
      resolved.batteryhealth = 0
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

module.exports = BatteryResult;
