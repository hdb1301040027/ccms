# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ccms_pro/ModuleResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class ModuleResult(genpy.Message):
  _md5sum = "74784e2e9e832ccc2a86ae5f0682c934"
  _type = "ccms_pro/ModuleResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 modID
int16 modulehealth
time stamp
"""
  __slots__ = ['modID','modulehealth','stamp']
  _slot_types = ['int16','int16','time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       modID,modulehealth,stamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ModuleResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.modID is None:
        self.modID = 0
      if self.modulehealth is None:
        self.modulehealth = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
    else:
      self.modID = 0
      self.modulehealth = 0
      self.stamp = genpy.Time()

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
      buff.write(_get_struct_2h2I().pack(_x.modID, _x.modulehealth, _x.stamp.secs, _x.stamp.nsecs))
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
      end += 12
      (_x.modID, _x.modulehealth, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_2h2I().unpack(str[start:end])
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
      buff.write(_get_struct_2h2I().pack(_x.modID, _x.modulehealth, _x.stamp.secs, _x.stamp.nsecs))
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
      end += 12
      (_x.modID, _x.modulehealth, _x.stamp.secs, _x.stamp.nsecs,) = _get_struct_2h2I().unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2h2I = None
def _get_struct_2h2I():
    global _struct_2h2I
    if _struct_2h2I is None:
        _struct_2h2I = struct.Struct("<2h2I")
    return _struct_2h2I
