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

class UnpackingCanData4 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.stamp = null;
      this.Undervoltage_Warning = null;
      this.Internal_Resistance_Abnormality = null;
      this.other_data = null;
      this.Voltage_Equalization_State = null;
      this.Undervoltage_Alarm = null;
      this.Low_Voltage_Alarm = null;
      this.Software_version_Number = null;
      this.Software_Minor_version_Number = null;
      this.undervolt_warning = null;
      this.resistance_abnormality = null;
      this.Other_data = null;
      this.voltage_equal_state = null;
      this.undervolt_alarm = null;
      this.low_volt_alarm = null;
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
      if (initObj.hasOwnProperty('Undervoltage_Warning')) {
        this.Undervoltage_Warning = initObj.Undervoltage_Warning
      }
      else {
        this.Undervoltage_Warning = 0;
      }
      if (initObj.hasOwnProperty('Internal_Resistance_Abnormality')) {
        this.Internal_Resistance_Abnormality = initObj.Internal_Resistance_Abnormality
      }
      else {
        this.Internal_Resistance_Abnormality = 0;
      }
      if (initObj.hasOwnProperty('other_data')) {
        this.other_data = initObj.other_data
      }
      else {
        this.other_data = 0;
      }
      if (initObj.hasOwnProperty('Voltage_Equalization_State')) {
        this.Voltage_Equalization_State = initObj.Voltage_Equalization_State
      }
      else {
        this.Voltage_Equalization_State = 0;
      }
      if (initObj.hasOwnProperty('Undervoltage_Alarm')) {
        this.Undervoltage_Alarm = initObj.Undervoltage_Alarm
      }
      else {
        this.Undervoltage_Alarm = 0;
      }
      if (initObj.hasOwnProperty('Low_Voltage_Alarm')) {
        this.Low_Voltage_Alarm = initObj.Low_Voltage_Alarm
      }
      else {
        this.Low_Voltage_Alarm = 0;
      }
      if (initObj.hasOwnProperty('Software_version_Number')) {
        this.Software_version_Number = initObj.Software_version_Number
      }
      else {
        this.Software_version_Number = 0;
      }
      if (initObj.hasOwnProperty('Software_Minor_version_Number')) {
        this.Software_Minor_version_Number = initObj.Software_Minor_version_Number
      }
      else {
        this.Software_Minor_version_Number = 0;
      }
      if (initObj.hasOwnProperty('undervolt_warning')) {
        this.undervolt_warning = initObj.undervolt_warning
      }
      else {
        this.undervolt_warning = [];
      }
      if (initObj.hasOwnProperty('resistance_abnormality')) {
        this.resistance_abnormality = initObj.resistance_abnormality
      }
      else {
        this.resistance_abnormality = [];
      }
      if (initObj.hasOwnProperty('Other_data')) {
        this.Other_data = initObj.Other_data
      }
      else {
        this.Other_data = [];
      }
      if (initObj.hasOwnProperty('voltage_equal_state')) {
        this.voltage_equal_state = initObj.voltage_equal_state
      }
      else {
        this.voltage_equal_state = [];
      }
      if (initObj.hasOwnProperty('undervolt_alarm')) {
        this.undervolt_alarm = initObj.undervolt_alarm
      }
      else {
        this.undervolt_alarm = [];
      }
      if (initObj.hasOwnProperty('low_volt_alarm')) {
        this.low_volt_alarm = initObj.low_volt_alarm
      }
      else {
        this.low_volt_alarm = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UnpackingCanData4
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Undervoltage_Warning]
    bufferOffset = _serializer.uint16(obj.Undervoltage_Warning, buffer, bufferOffset);
    // Serialize message field [Internal_Resistance_Abnormality]
    bufferOffset = _serializer.uint16(obj.Internal_Resistance_Abnormality, buffer, bufferOffset);
    // Serialize message field [other_data]
    bufferOffset = _serializer.uint16(obj.other_data, buffer, bufferOffset);
    // Serialize message field [Voltage_Equalization_State]
    bufferOffset = _serializer.uint16(obj.Voltage_Equalization_State, buffer, bufferOffset);
    // Serialize message field [Undervoltage_Alarm]
    bufferOffset = _serializer.uint16(obj.Undervoltage_Alarm, buffer, bufferOffset);
    // Serialize message field [Low_Voltage_Alarm]
    bufferOffset = _serializer.uint16(obj.Low_Voltage_Alarm, buffer, bufferOffset);
    // Serialize message field [Software_version_Number]
    bufferOffset = _serializer.uint16(obj.Software_version_Number, buffer, bufferOffset);
    // Serialize message field [Software_Minor_version_Number]
    bufferOffset = _serializer.uint16(obj.Software_Minor_version_Number, buffer, bufferOffset);
    // Serialize message field [undervolt_warning]
    bufferOffset = _arraySerializer.uint64(obj.undervolt_warning, buffer, bufferOffset, null);
    // Serialize message field [resistance_abnormality]
    bufferOffset = _arraySerializer.uint64(obj.resistance_abnormality, buffer, bufferOffset, null);
    // Serialize message field [Other_data]
    bufferOffset = _arraySerializer.uint64(obj.Other_data, buffer, bufferOffset, null);
    // Serialize message field [voltage_equal_state]
    bufferOffset = _arraySerializer.uint64(obj.voltage_equal_state, buffer, bufferOffset, null);
    // Serialize message field [undervolt_alarm]
    bufferOffset = _arraySerializer.uint64(obj.undervolt_alarm, buffer, bufferOffset, null);
    // Serialize message field [low_volt_alarm]
    bufferOffset = _arraySerializer.uint64(obj.low_volt_alarm, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UnpackingCanData4
    let len;
    let data = new UnpackingCanData4(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Undervoltage_Warning]
    data.Undervoltage_Warning = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Internal_Resistance_Abnormality]
    data.Internal_Resistance_Abnormality = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [other_data]
    data.other_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Voltage_Equalization_State]
    data.Voltage_Equalization_State = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Undervoltage_Alarm]
    data.Undervoltage_Alarm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Low_Voltage_Alarm]
    data.Low_Voltage_Alarm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Software_version_Number]
    data.Software_version_Number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Software_Minor_version_Number]
    data.Software_Minor_version_Number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [undervolt_warning]
    data.undervolt_warning = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [resistance_abnormality]
    data.resistance_abnormality = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [Other_data]
    data.Other_data = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [voltage_equal_state]
    data.voltage_equal_state = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [undervolt_alarm]
    data.undervolt_alarm = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [low_volt_alarm]
    data.low_volt_alarm = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.undervolt_warning.length;
    length += 8 * object.resistance_abnormality.length;
    length += 8 * object.Other_data.length;
    length += 8 * object.voltage_equal_state.length;
    length += 8 * object.undervolt_alarm.length;
    length += 8 * object.low_volt_alarm.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ccms_pro/UnpackingCanData4';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a980592c413b8d0742886b4d0e323c8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    time stamp
    uint16 Undervoltage_Warning
    uint16 Internal_Resistance_Abnormality
    uint16 other_data
    uint16 Voltage_Equalization_State
    uint16 Undervoltage_Alarm
    uint16 Low_Voltage_Alarm
    uint16 Software_version_Number
    uint16 Software_Minor_version_Number
    uint64[] undervolt_warning
    uint64[] resistance_abnormality
    uint64[] Other_data
    uint64[] voltage_equal_state
    uint64[] undervolt_alarm
    uint64[] low_volt_alarm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UnpackingCanData4(null);
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

    if (msg.Undervoltage_Warning !== undefined) {
      resolved.Undervoltage_Warning = msg.Undervoltage_Warning;
    }
    else {
      resolved.Undervoltage_Warning = 0
    }

    if (msg.Internal_Resistance_Abnormality !== undefined) {
      resolved.Internal_Resistance_Abnormality = msg.Internal_Resistance_Abnormality;
    }
    else {
      resolved.Internal_Resistance_Abnormality = 0
    }

    if (msg.other_data !== undefined) {
      resolved.other_data = msg.other_data;
    }
    else {
      resolved.other_data = 0
    }

    if (msg.Voltage_Equalization_State !== undefined) {
      resolved.Voltage_Equalization_State = msg.Voltage_Equalization_State;
    }
    else {
      resolved.Voltage_Equalization_State = 0
    }

    if (msg.Undervoltage_Alarm !== undefined) {
      resolved.Undervoltage_Alarm = msg.Undervoltage_Alarm;
    }
    else {
      resolved.Undervoltage_Alarm = 0
    }

    if (msg.Low_Voltage_Alarm !== undefined) {
      resolved.Low_Voltage_Alarm = msg.Low_Voltage_Alarm;
    }
    else {
      resolved.Low_Voltage_Alarm = 0
    }

    if (msg.Software_version_Number !== undefined) {
      resolved.Software_version_Number = msg.Software_version_Number;
    }
    else {
      resolved.Software_version_Number = 0
    }

    if (msg.Software_Minor_version_Number !== undefined) {
      resolved.Software_Minor_version_Number = msg.Software_Minor_version_Number;
    }
    else {
      resolved.Software_Minor_version_Number = 0
    }

    if (msg.undervolt_warning !== undefined) {
      resolved.undervolt_warning = msg.undervolt_warning;
    }
    else {
      resolved.undervolt_warning = []
    }

    if (msg.resistance_abnormality !== undefined) {
      resolved.resistance_abnormality = msg.resistance_abnormality;
    }
    else {
      resolved.resistance_abnormality = []
    }

    if (msg.Other_data !== undefined) {
      resolved.Other_data = msg.Other_data;
    }
    else {
      resolved.Other_data = []
    }

    if (msg.voltage_equal_state !== undefined) {
      resolved.voltage_equal_state = msg.voltage_equal_state;
    }
    else {
      resolved.voltage_equal_state = []
    }

    if (msg.undervolt_alarm !== undefined) {
      resolved.undervolt_alarm = msg.undervolt_alarm;
    }
    else {
      resolved.undervolt_alarm = []
    }

    if (msg.low_volt_alarm !== undefined) {
      resolved.low_volt_alarm = msg.low_volt_alarm;
    }
    else {
      resolved.low_volt_alarm = []
    }

    return resolved;
    }
};

module.exports = UnpackingCanData4;
