# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ccms_pro/UnpackingCanData3.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class UnpackingCanData3(genpy.Message):
  _md5sum = "954a4b29f81dafd5ab55187f583519a1"
  _type = "ccms_pro/UnpackingCanData3"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 id
time stamp
uint16 Module_Block_Voltage5
uint16 Module_Block_Voltage6
uint16 Module_Block_Voltage7
uint16 Module_Block_Voltage8
"""
  __slots__ = ['id','stamp','Module_Block_Voltage5','Module_Block_Voltage6','Module_Block_Voltage7','Module_Block_Voltage8']
  _slot_types = ['uint32','time','uint16','uint16','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,stamp,Module_Block_Voltage5,Module_Block_Voltage6,Module_Block_Voltage7,Module_Block_Voltage8

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UnpackingCanData3, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.Module_Block_Voltage5 is None:
        self.Module_Block_Voltage5 = 0
      if self.Module_Block_Voltage6 is None:
        self.Module_Block_Voltage6 = 0
      if self.Module_Block_Voltage7 is None:
        self.Module_Block_Voltage7 = 0
      if self.Module_Block_Voltage8 is None:
        self.Module_Block_Voltage8 = 0
    else:
      self.id = 0
      self.stamp = genpy.Time()
      self.Module_Block_Voltage5 = 0
      self.Module_Block_Voltage6 = 0
      self.Module_Block_Voltage7 = 0
      self.Module_Block_Voltage8 = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I4H().pack(_x.id, _x.stamp.secs, _x.stamp.nsecs, _x.Module_Block_Voltage5, _x.Module_Block_Voltage6, _x.Module_Block_Voltage7, _x.Module_Block_Voltage8))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.id, _x.stamp.secs, _x.stamp.nsecs, _x.Module_Block_Voltage5, _x.Module_Block_Voltage6, _x.Module_Block_Voltage7, _x.Module_Block_Voltage8,) = _get_struct_3I4H().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I4H().pack(_x.id, _x.stamp.secs, _x.stamp.nsecs, _x.Module_Block_Voltage5, _x.Module_Block_Voltage6, _x.Module_Block_Voltage7, _x.Module_Block_Voltage8))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.id, _x.stamp.secs, _x.stamp.nsecs, _x.Module_Block_Voltage5, _x.Module_Block_Voltage6, _x.Module_Block_Voltage7, _x.Module_Block_Voltage8,) = _get_struct_3I4H().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I4H = None
def _get_struct_3I4H():
    global _struct_3I4H
    if _struct_3I4H is None:
        _struct_3I4H = struct.Struct("<3I4H")
    return _struct_3I4H
