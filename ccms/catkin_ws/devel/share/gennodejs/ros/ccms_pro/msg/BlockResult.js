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

class BlockResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modID = null;
      this.blockhealths = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('modID')) {
        this.modID = initObj.modID
      }
      else {
        this.modID = 0;
      }
      if (initObj.hasOwnProperty('blockhealths')) {
        this.blockhealths = initObj.blockhealths
      }
      else {
        this.blockhealths = [];
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
    // Serializes a message object of type BlockResult
    // Serialize message field [modID]
    bufferOffset = _serializer.int16(obj.modID, buffer, bufferOffset);
    // Serialize message field [blockhealths]
    bufferOffset = _arraySerializer.uint16(obj.blockhealths, buffer, bufferOffset, null);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BlockResult
    let len;
    let data = new BlockResult(null);
    // Deserialize message field [modID]
    data.modID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [blockhealths]
    data.blockhealths = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.blockhealths.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/BlockResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19c5aed4873df3f3779e740af6923032';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 modID
    uint16[] blockhealths 
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BlockResult(null);
    if (msg.modID !== undefined) {
      resolved.modID = msg.modID;
    }
    else {
      resolved.modID = 0
    }

    if (msg.blockhealths !== undefined) {
      resolved.blockhealths = msg.blockhealths;
    }
    else {
      resolved.blockhealths = []
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

module.exports = BlockResult;
