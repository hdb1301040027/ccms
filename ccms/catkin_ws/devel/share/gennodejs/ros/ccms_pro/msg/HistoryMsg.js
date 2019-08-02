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

class HistoryMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Error_Type_Number = null;
      this.Power_Number = null;
      this.Module_Number = null;
      this.Block_Number = null;
      this.StartTime = null;
      this.EndTime = null;
    }
    else {
      if (initObj.hasOwnProperty('Error_Type_Number')) {
        this.Error_Type_Number = initObj.Error_Type_Number
      }
      else {
        this.Error_Type_Number = 0;
      }
      if (initObj.hasOwnProperty('Power_Number')) {
        this.Power_Number = initObj.Power_Number
      }
      else {
        this.Power_Number = 0;
      }
      if (initObj.hasOwnProperty('Module_Number')) {
        this.Module_Number = initObj.Module_Number
      }
      else {
        this.Module_Number = 0;
      }
      if (initObj.hasOwnProperty('Block_Number')) {
        this.Block_Number = initObj.Block_Number
      }
      else {
        this.Block_Number = 0;
      }
      if (initObj.hasOwnProperty('StartTime')) {
        this.StartTime = initObj.StartTime
      }
      else {
        this.StartTime = 0;
      }
      if (initObj.hasOwnProperty('EndTime')) {
        this.EndTime = initObj.EndTime
      }
      else {
        this.EndTime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HistoryMsg
    // Serialize message field [Error_Type_Number]
    bufferOffset = _serializer.uint64(obj.Error_Type_Number, buffer, bufferOffset);
    // Serialize message field [Power_Number]
    bufferOffset = _serializer.uint64(obj.Power_Number, buffer, bufferOffset);
    // Serialize message field [Module_Number]
    bufferOffset = _serializer.uint64(obj.Module_Number, buffer, bufferOffset);
    // Serialize message field [Block_Number]
    bufferOffset = _serializer.uint64(obj.Block_Number, buffer, bufferOffset);
    // Serialize message field [StartTime]
    bufferOffset = _serializer.uint64(obj.StartTime, buffer, bufferOffset);
    // Serialize message field [EndTime]
    bufferOffset = _serializer.uint64(obj.EndTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HistoryMsg
    let len;
    let data = new HistoryMsg(null);
    // Deserialize message field [Error_Type_Number]
    data.Error_Type_Number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [Power_Number]
    data.Power_Number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [Module_Number]
    data.Module_Number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [Block_Number]
    data.Block_Number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [StartTime]
    data.StartTime = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [EndTime]
    data.EndTime = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/HistoryMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96fa6e4eb46c88db4088ee987f3ac04d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 Error_Type_Number
    uint64 Power_Number
    uint64 Module_Number
    uint64 Block_Number
    uint64 StartTime
    uint64 EndTime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HistoryMsg(null);
    if (msg.Error_Type_Number !== undefined) {
      resolved.Error_Type_Number = msg.Error_Type_Number;
    }
    else {
      resolved.Error_Type_Number = 0
    }

    if (msg.Power_Number !== undefined) {
      resolved.Power_Number = msg.Power_Number;
    }
    else {
      resolved.Power_Number = 0
    }

    if (msg.Module_Number !== undefined) {
      resolved.Module_Number = msg.Module_Number;
    }
    else {
      resolved.Module_Number = 0
    }

    if (msg.Block_Number !== undefined) {
      resolved.Block_Number = msg.Block_Number;
    }
    else {
      resolved.Block_Number = 0
    }

    if (msg.StartTime !== undefined) {
      resolved.StartTime = msg.StartTime;
    }
    else {
      resolved.StartTime = 0
    }

    if (msg.EndTime !== undefined) {
      resolved.EndTime = msg.EndTime;
    }
    else {
      resolved.EndTime = 0
    }

    return resolved;
    }
};

module.exports = HistoryMsg;
