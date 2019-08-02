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

class UnpackingCanData6 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Power_ID = null;
      this.stamp = null;
      this.Energy_Storage_Voltage = null;
      this.Energy_Storage_Current = null;
      this.Energy_Storage_Temperature = null;
      this.other_data = null;
      this.Fan_Failure = null;
      this.Fan_State = null;
      this.otherdata = null;
      this.FanAccident = null;
      this.Fandata = null;
    }
    else {
      if (initObj.hasOwnProperty('Power_ID')) {
        this.Power_ID = initObj.Power_ID
      }
      else {
        this.Power_ID = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('Energy_Storage_Voltage')) {
        this.Energy_Storage_Voltage = initObj.Energy_Storage_Voltage
      }
      else {
        this.Energy_Storage_Voltage = 0;
      }
      if (initObj.hasOwnProperty('Energy_Storage_Current')) {
        this.Energy_Storage_Current = initObj.Energy_Storage_Current
      }
      else {
        this.Energy_Storage_Current = 0;
      }
      if (initObj.hasOwnProperty('Energy_Storage_Temperature')) {
        this.Energy_Storage_Temperature = initObj.Energy_Storage_Temperature
      }
      else {
        this.Energy_Storage_Temperature = 0;
      }
      if (initObj.hasOwnProperty('other_data')) {
        this.other_data = initObj.other_data
      }
      else {
        this.other_data = 0;
      }
      if (initObj.hasOwnProperty('Fan_Failure')) {
        this.Fan_Failure = initObj.Fan_Failure
      }
      else {
        this.Fan_Failure = 0;
      }
      if (initObj.hasOwnProperty('Fan_State')) {
        this.Fan_State = initObj.Fan_State
      }
      else {
        this.Fan_State = 0;
      }
      if (initObj.hasOwnProperty('otherdata')) {
        this.otherdata = initObj.otherdata
      }
      else {
        this.otherdata = [];
      }
      if (initObj.hasOwnProperty('FanAccident')) {
        this.FanAccident = initObj.FanAccident
      }
      else {
        this.FanAccident = [];
      }
      if (initObj.hasOwnProperty('Fandata')) {
        this.Fandata = initObj.Fandata
      }
      else {
        this.Fandata = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData6
    // Serialize message field [Power_ID]
    bufferOffset = _serializer.uint32(obj.Power_ID, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Energy_Storage_Voltage]
    bufferOffset = _serializer.uint16(obj.Energy_Storage_Voltage, buffer, bufferOffset);
    // Serialize message field [Energy_Storage_Current]
    bufferOffset = _serializer.int16(obj.Energy_Storage_Current, buffer, bufferOffset);
    // Serialize message field [Energy_Storage_Temperature]
    bufferOffset = _serializer.uint16(obj.Energy_Storage_Temperature, buffer, bufferOffset);
    // Serialize message field [other_data]
    bufferOffset = _serializer.uint16(obj.other_data, buffer, bufferOffset);
    // Serialize message field [Fan_Failure]
    bufferOffset = _serializer.uint16(obj.Fan_Failure, buffer, bufferOffset);
    // Serialize message field [Fan_State]
    bufferOffset = _serializer.uint16(obj.Fan_State, buffer, bufferOffset);
    // Serialize message field [otherdata]
    bufferOffset = _arraySerializer.uint64(obj.otherdata, buffer, bufferOffset, null);
    // Serialize message field [FanAccident]
    bufferOffset = _arraySerializer.uint64(obj.FanAccident, buffer, bufferOffset, null);
    // Serialize message field [Fandata]
    bufferOffset = _arraySerializer.uint64(obj.Fandata, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData6
    let len;
    let data = new UnpackingCanData6(null);
    // Deserialize message field [Power_ID]
    data.Power_ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Energy_Storage_Voltage]
    data.Energy_Storage_Voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Energy_Storage_Current]
    data.Energy_Storage_Current = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Energy_Storage_Temperature]
    data.Energy_Storage_Temperature = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [other_data]
    data.other_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Fan_Failure]
    data.Fan_Failure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Fan_State]
    data.Fan_State = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [otherdata]
    data.otherdata = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [FanAccident]
    data.FanAccident = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [Fandata]
    data.Fandata = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.otherdata.length;
    length += 8 * object.FanAccident.length;
    length += 8 * object.Fandata.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData6';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa4a7278a5166952b8bdd122eb47f2f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 Power_ID
    time stamp
    uint16 Energy_Storage_Voltage
    int16 Energy_Storage_Current
    uint16 Energy_Storage_Temperature
    uint16 other_data
    uint16 Fan_Failure
    uint16 Fan_State
    uint64[] otherdata
    uint64[] FanAccident
    uint64[] Fandata
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData6(null);
    if (msg.Power_ID !== undefined) {
      resolved.Power_ID = msg.Power_ID;
    }
    else {
      resolved.Power_ID = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.Energy_Storage_Voltage !== undefined) {
      resolved.Energy_Storage_Voltage = msg.Energy_Storage_Voltage;
    }
    else {
      resolved.Energy_Storage_Voltage = 0
    }

    if (msg.Energy_Storage_Current !== undefined) {
      resolved.Energy_Storage_Current = msg.Energy_Storage_Current;
    }
    else {
      resolved.Energy_Storage_Current = 0
    }

    if (msg.Energy_Storage_Temperature !== undefined) {
      resolved.Energy_Storage_Temperature = msg.Energy_Storage_Temperature;
    }
    else {
      resolved.Energy_Storage_Temperature = 0
    }

    if (msg.other_data !== undefined) {
      resolved.other_data = msg.other_data;
    }
    else {
      resolved.other_data = 0
    }

    if (msg.Fan_Failure !== undefined) {
      resolved.Fan_Failure = msg.Fan_Failure;
    }
    else {
      resolved.Fan_Failure = 0
    }

    if (msg.Fan_State !== undefined) {
      resolved.Fan_State = msg.Fan_State;
    }
    else {
      resolved.Fan_State = 0
    }

    if (msg.otherdata !== undefined) {
      resolved.otherdata = msg.otherdata;
    }
    else {
      resolved.otherdata = []
    }

    if (msg.FanAccident !== undefined) {
      resolved.FanAccident = msg.FanAccident;
    }
    else {
      resolved.FanAccident = []
    }

    if (msg.Fandata !== undefined) {
      resolved.Fandata = msg.Fandata;
    }
    else {
      resolved.Fandata = []
    }

    return resolved;
    }
};

module.exports = UnpackingCanData6;
