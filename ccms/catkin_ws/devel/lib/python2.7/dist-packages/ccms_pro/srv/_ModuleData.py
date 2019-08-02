# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ccms_pro/ModuleDataRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ModuleDataRequest(genpy.Message):
  _md5sum = "141a9d2900bbeb91e25550df5cf06b14"
  _type = "ccms_pro/ModuleDataRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint64 ErrorTypeID
uint64 powerID
uint64 moduleID
uint64 blockID
float64 StartStamp
float64 EndStamp
"""
  __slots__ = ['ErrorTypeID','powerID','moduleID','blockID','StartStamp','EndStamp']
  _slot_types = ['uint64','uint64','uint64','uint64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ErrorTypeID,powerID,moduleID,blockID,StartStamp,EndStamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ModuleDataRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ErrorTypeID is None:
        self.ErrorTypeID = 0
      if self.powerID is None:
        self.powerID = 0
      if self.moduleID is None:
        self.moduleID = 0
      if self.blockID is None:
        self.blockID = 0
      if self.StartStamp is None:
        self.StartStamp = 0.
      if self.EndStamp is None:
        self.EndStamp = 0.
    else:
      self.ErrorTypeID = 0
      self.powerID = 0
      self.moduleID = 0
      self.blockID = 0
      self.StartStamp = 0.
      self.EndStamp = 0.

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
      buff.write(_get_struct_4Q2d().pack(_x.ErrorTypeID, _x.powerID, _x.moduleID, _x.blockID, _x.StartStamp, _x.EndStamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.ErrorTypeID, _x.powerID, _x.moduleID, _x.blockID, _x.StartStamp, _x.EndStamp,) = _get_struct_4Q2d().unpack(str[start:end])
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
      buff.write(_get_struct_4Q2d().pack(_x.ErrorTypeID, _x.powerID, _x.moduleID, _x.blockID, _x.StartStamp, _x.EndStamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.ErrorTypeID, _x.powerID, _x.moduleID, _x.blockID, _x.StartStamp, _x.EndStamp,) = _get_struct_4Q2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4Q2d = None
def _get_struct_4Q2d():
    global _struct_4Q2d
    if _struct_4Q2d is None:
        _struct_4Q2d = struct.Struct("<4Q2d")
    return _struct_4Q2d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ccms_pro/ModuleDataResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ModuleDataResponse(genpy.Message):
  _md5sum = "8539b3fe1930eae836cb2fe27dda036b"
  _type = "ccms_pro/ModuleDataResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64[] HEnergy
float64[] HModule
float64[] HBlock
float64[] HModule_Average
float64[] HError



"""
  __slots__ = ['HEnergy','HModule','HBlock','HModule_Average','HError']
  _slot_types = ['float64[]','float64[]','float64[]','float64[]','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       HEnergy,HModule,HBlock,HModule_Average,HError

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ModuleDataResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.HEnergy is None:
        self.HEnergy = []
      if self.HModule is None:
        self.HModule = []
      if self.HBlock is None:
        self.HBlock = []
      if self.HModule_Average is None:
        self.HModule_Average = []
      if self.HError is None:
        self.HError = []
    else:
      self.HEnergy = []
      self.HModule = []
      self.HBlock = []
      self.HModule_Average = []
      self.HError = []

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
      length = len(self.HEnergy)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.HEnergy))
      length = len(self.HModule)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.HModule))
      length = len(self.HBlock)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.HBlock))
      length = len(self.HModule_Average)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.HModule_Average))
      length = len(self.HError)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.HError))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HEnergy = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HModule = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HBlock = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HModule_Average = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HError = struct.unpack(pattern, str[start:end])
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
      length = len(self.HEnergy)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.HEnergy.tostring())
      length = len(self.HModule)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.HModule.tostring())
      length = len(self.HBlock)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.HBlock.tostring())
      length = len(self.HModule_Average)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.HModule_Average.tostring())
      length = len(self.HError)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.HError.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HEnergy = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HModule = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HBlock = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HModule_Average = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.HError = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class ModuleData(object):
  _type          = 'ccms_pro/ModuleData'
  _md5sum = '2168a7456167e874f53072b67d551079'
  _request_class  = ModuleDataRequest
  _response_class = ModuleDataResponse
