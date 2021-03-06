# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ccms_pro/UnpackingCanData6.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class UnpackingCanData6(genpy.Message):
  _md5sum = "aa4a7278a5166952b8bdd122eb47f2f6"
  _type = "ccms_pro/UnpackingCanData6"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 Power_ID
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

"""
  __slots__ = ['Power_ID','stamp','Energy_Storage_Voltage','Energy_Storage_Current','Energy_Storage_Temperature','other_data','Fan_Failure','Fan_State','otherdata','FanAccident','Fandata']
  _slot_types = ['uint32','time','uint16','int16','uint16','uint16','uint16','uint16','uint64[]','uint64[]','uint64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Power_ID,stamp,Energy_Storage_Voltage,Energy_Storage_Current,Energy_Storage_Temperature,other_data,Fan_Failure,Fan_State,otherdata,FanAccident,Fandata

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UnpackingCanData6, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Power_ID is None:
        self.Power_ID = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.Energy_Storage_Voltage is None:
        self.Energy_Storage_Voltage = 0
      if self.Energy_Storage_Current is None:
        self.Energy_Storage_Current = 0
      if self.Energy_Storage_Temperature is None:
        self.Energy_Storage_Temperature = 0
      if self.other_data is None:
        self.other_data = 0
      if self.Fan_Failure is None:
        self.Fan_Failure = 0
      if self.Fan_State is None:
        self.Fan_State = 0
      if self.otherdata is None:
        self.otherdata = []
      if self.FanAccident is None:
        self.FanAccident = []
      if self.Fandata is None:
        self.Fandata = []
    else:
      self.Power_ID = 0
      self.stamp = genpy.Time()
      self.Energy_Storage_Voltage = 0
      self.Energy_Storage_Current = 0
      self.Energy_Storage_Temperature = 0
      self.other_data = 0
      self.Fan_Failure = 0
      self.Fan_State = 0
      self.otherdata = []
      self.FanAccident = []
      self.Fandata = []

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
      buff.write(_get_struct_3IHh4H().pack(_x.Power_ID, _x.stamp.secs, _x.stamp.nsecs, _x.Energy_Storage_Voltage, _x.Energy_Storage_Current, _x.Energy_Storage_Temperature, _x.other_data, _x.Fan_Failure, _x.Fan_State))
      length = len(self.otherdata)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(struct.pack(pattern, *self.otherdata))
      length = len(self.FanAccident)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(struct.pack(pattern, *self.FanAccident))
      length = len(self.Fandata)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(struct.pack(pattern, *self.Fandata))
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
      end += 24
      (_x.Power_ID, _x.stamp.secs, _x.stamp.nsecs, _x.Energy_Storage_Voltage, _x.Energy_Storage_Current, _x.Energy_Storage_Temperature, _x.other_data, _x.Fan_Failure, _x.Fan_State,) = _get_struct_3IHh4H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.otherdata = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.FanAccident = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.Fandata = struct.unpack(pattern, str[start:end])
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
      buff.write(_get_struct_3IHh4H().pack(_x.Power_ID, _x.stamp.secs, _x.stamp.nsecs, _x.Energy_Storage_Voltage, _x.Energy_Storage_Current, _x.Energy_Storage_Temperature, _x.other_data, _x.Fan_Failure, _x.Fan_State))
      length = len(self.otherdata)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(self.otherdata.tostring())
      length = len(self.FanAccident)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(self.FanAccident.tostring())
      length = len(self.Fandata)
      buff.write(_struct_I.pack(length))
      pattern = '<%sQ'%length
      buff.write(self.Fandata.tostring())
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
      end += 24
      (_x.Power_ID, _x.stamp.secs, _x.stamp.nsecs, _x.Energy_Storage_Voltage, _x.Energy_Storage_Current, _x.Energy_Storage_Temperature, _x.other_data, _x.Fan_Failure, _x.Fan_State,) = _get_struct_3IHh4H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.otherdata = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.FanAccident = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sQ'%length
      start = end
      end += struct.calcsize(pattern)
      self.Fandata = numpy.frombuffer(str[start:end], dtype=numpy.uint64, count=length)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3IHh4H = None
def _get_struct_3IHh4H():
    global _struct_3IHh4H
    if _struct_3IHh4H is None:
        _struct_3IHh4H = struct.Struct("<3IHh4H")
    return _struct_3IHh4H
