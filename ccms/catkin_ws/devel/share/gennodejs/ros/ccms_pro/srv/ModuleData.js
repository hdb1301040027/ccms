// Auto-generated. Do not edit!

// (in-package ccms_pro.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ModuleDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ErrorTypeID = null;
      this.powerID = null;
      this.moduleID = null;
      this.blockID = null;
      this.StartStamp = null;
      this.EndStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('ErrorTypeID')) {
        this.ErrorTypeID = initObj.ErrorTypeID
      }
      else {
        this.ErrorTypeID = 0;
      }
      if (initObj.hasOwnProperty('powerID')) {
        this.powerID = initObj.powerID
      }
      else {
        this.powerID = 0;
      }
      if (initObj.hasOwnProperty('moduleID')) {
        this.moduleID = initObj.moduleID
      }
      else {
        this.moduleID = 0;
      }
      if (initObj.hasOwnProperty('blockID')) {
        this.blockID = initObj.blockID
      }
      else {
        this.blockID = 0;
      }
      if (initObj.hasOwnProperty('StartStamp')) {
        this.StartStamp = initObj.StartStamp
      }
      else {
        this.StartStamp = 0.0;
      }
      if (initObj.hasOwnProperty('EndStamp')) {
        this.EndStamp = initObj.EndStamp
      }
      else {
        this.EndStamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleDataRequest
    // Serialize message field [ErrorTypeID]
    bufferOffset = _serializer.uint64(obj.ErrorTypeID, buffer, bufferOffset);
    // Serialize message field [powerID]
    bufferOffset = _serializer.uint64(obj.powerID, buffer, bufferOffset);
    // Serialize message field [moduleID]
    bufferOffset = _serializer.uint64(obj.moduleID, buffer, bufferOffset);
    // Serialize message field [blockID]
    bufferOffset = _serializer.uint64(obj.blockID, buffer, bufferOffset);
    // Serialize message field [StartStamp]
    bufferOffset = _serializer.float64(obj.StartStamp, buffer, bufferOffset);
    // Serialize message field [EndStamp]
    bufferOffset = _serializer.float64(obj.EndStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleDataRequest
    let len;
    let data = new ModuleDataRequest(null);
    // Deserialize message field [ErrorTypeID]
    data.ErrorTypeID = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [powerID]
    data.powerID = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [moduleID]
    data.moduleID = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [blockID]
    data.blockID = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [StartStamp]
    data.StartStamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EndStamp]
    data.EndStamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ccms_pro/ModuleDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '141a9d2900bbeb91e25550df5cf06b14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 ErrorTypeID
    uint64 powerID
    uint64 moduleID
    uint64 blockID
    float64 StartStamp
    float64 EndStamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleDataRequest(null);
    if (msg.ErrorTypeID !== undefined) {
      resolved.ErrorTypeID = msg.ErrorTypeID;
    }
    else {
      resolved.ErrorTypeID = 0
    }

    if (msg.powerID !== undefined) {
      resolved.powerID = msg.powerID;
    }
    else {
      resolved.powerID = 0
    }

    if (msg.moduleID !== undefined) {
      resolved.moduleID = msg.moduleID;
    }
    else {
      resolved.moduleID = 0
    }

    if (msg.blockID !== undefined) {
      resolved.blockID = msg.blockID;
    }
    else {
      resolved.blockID = 0
    }

    if (msg.StartStamp !== undefined) {
      resolved.StartStamp = msg.StartStamp;
    }
    else {
      resolved.StartStamp = 0.0
    }

    if (msg.EndStamp !== undefined) {
      resolved.EndStamp = msg.EndStamp;
    }
    else {
      resolved.EndStamp = 0.0
    }

    return resolved;
    }
};

class ModuleDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.HEnergy = null;
      this.HModule = null;
      this.HBlock = null;
      this.HModule_Average = null;
      this.HError = null;
    }
    else {
      if (initObj.hasOwnProperty('HEnergy')) {
        this.HEnergy = initObj.HEnergy
      }
      else {
        this.HEnergy = [];
      }
      if (initObj.hasOwnProperty('HModule')) {
        this.HModule = initObj.HModule
      }
      else {
        this.HModule = [];
      }
      if (initObj.hasOwnProperty('HBlock')) {
        this.HBlock = initObj.HBlock
      }
      else {
        this.HBlock = [];
      }
      if (initObj.hasOwnProperty('HModule_Average')) {
        this.HModule_Average = initObj.HModule_Average
      }
      else {
        this.HModule_Average = [];
      }
      if (initObj.hasOwnProperty('HError')) {
        this.HError = initObj.HError
      }
      else {
        this.HError = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleDataResponse
    // Serialize message field [HEnergy]
    bufferOffset = _arraySerializer.float64(obj.HEnergy, buffer, bufferOffset, null);
    // Serialize message field [HModule]
    bufferOffset = _arraySerializer.float64(obj.HModule, buffer, bufferOffset, null);
    // Serialize message field [HBlock]
    bufferOffset = _arraySerializer.float64(obj.HBlock, buffer, bufferOffset, null);
    // Serialize message field [HModule_Average]
    bufferOffset = _arraySerializer.float64(obj.HModule_Average, buffer, bufferOffset, null);
    // Serialize message field [HError]
    bufferOffset = _arraySerializer.float64(obj.HError, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleDataResponse
    let len;
    let data = new ModuleDataResponse(null);
    // Deserialize message field [HEnergy]
    data.HEnergy = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [HModule]
    data.HModule = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [HBlock]
    data.HBlock = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [HModule_Average]
    data.HModule_Average = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [HError]
    data.HError = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.HEnergy.length;
    length += 8 * object.HModule.length;
    length += 8 * object.HBlock.length;
    length += 8 * object.HModule_Average.length;
    length += 8 * object.HError.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ccms_pro/ModuleDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8539b3fe1930eae836cb2fe27dda036b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] HEnergy
    float64[] HModule
    float64[] HBlock
    float64[] HModule_Average
    float64[] HError
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleDataResponse(null);
    if (msg.HEnergy !== undefined) {
      resolved.HEnergy = msg.HEnergy;
    }
    else {
      resolved.HEnergy = []
    }

    if (msg.HModule !== undefined) {
      resolved.HModule = msg.HModule;
    }
    else {
      resolved.HModule = []
    }

    if (msg.HBlock !== undefined) {
      resolved.HBlock = msg.HBlock;
    }
    else {
      resolved.HBlock = []
    }

    if (msg.HModule_Average !== undefined) {
      resolved.HModule_Average = msg.HModule_Average;
    }
    else {
      resolved.HModule_Average = []
    }

    if (msg.HError !== undefined) {
      resolved.HError = msg.HError;
    }
    else {
      resolved.HError = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ModuleDataRequest,
  Response: ModuleDataResponse,
  md5sum() { return '2168a7456167e874f53072b67d551079'; },
  datatype() { return 'ccms_pro/ModuleData'; }
};
