// Auto-generated. Do not edit!

// (in-package qqy_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Carry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grate = null;
      this.star = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('grate')) {
        this.grate = initObj.grate
      }
      else {
        this.grate = '';
      }
      if (initObj.hasOwnProperty('star')) {
        this.star = initObj.star
      }
      else {
        this.star = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Carry
    // Serialize message field [grate]
    bufferOffset = _serializer.string(obj.grate, buffer, bufferOffset);
    // Serialize message field [star]
    bufferOffset = _serializer.int64(obj.star, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Carry
    let len;
    let data = new Carry(null);
    // Deserialize message field [grate]
    data.grate = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [star]
    data.star = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.grate);
    length += _getByteLength(object.data);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'qqy_msgs/Carry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd42e125daf9f6b149ddf8ecec0283ce3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string grate
    int64 star
    string data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Carry(null);
    if (msg.grate !== undefined) {
      resolved.grate = msg.grate;
    }
    else {
      resolved.grate = ''
    }

    if (msg.star !== undefined) {
      resolved.star = msg.star;
    }
    else {
      resolved.star = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = Carry;
