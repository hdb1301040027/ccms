// Generated by gencpp from file ccms_pro/UnpackingCanData3.msg
// DO NOT EDIT!


#ifndef CCMS_PRO_MESSAGE_UNPACKINGCANDATA3_H
#define CCMS_PRO_MESSAGE_UNPACKINGCANDATA3_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ccms_pro
{
template <class ContainerAllocator>
struct UnpackingCanData3_
{
  typedef UnpackingCanData3_<ContainerAllocator> Type;

  UnpackingCanData3_()
    : id(0)
    , stamp()
    , Module_Block_Voltage5(0)
    , Module_Block_Voltage6(0)
    , Module_Block_Voltage7(0)
    , Module_Block_Voltage8(0)  {
    }
  UnpackingCanData3_(const ContainerAllocator& _alloc)
    : id(0)
    , stamp()
    , Module_Block_Voltage5(0)
    , Module_Block_Voltage6(0)
    , Module_Block_Voltage7(0)
    , Module_Block_Voltage8(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint16_t _Module_Block_Voltage5_type;
  _Module_Block_Voltage5_type Module_Block_Voltage5;

   typedef uint16_t _Module_Block_Voltage6_type;
  _Module_Block_Voltage6_type Module_Block_Voltage6;

   typedef uint16_t _Module_Block_Voltage7_type;
  _Module_Block_Voltage7_type Module_Block_Voltage7;

   typedef uint16_t _Module_Block_Voltage8_type;
  _Module_Block_Voltage8_type Module_Block_Voltage8;





  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> const> ConstPtr;

}; // struct UnpackingCanData3_

typedef ::ccms_pro::UnpackingCanData3_<std::allocator<void> > UnpackingCanData3;

typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData3 > UnpackingCanData3Ptr;
typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData3 const> UnpackingCanData3ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ccms_pro::UnpackingCanData3_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ccms_pro

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ccms_pro': ['/home/ubuntu/ccms/catkin_ws/src/ccms_pro/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "954a4b29f81dafd5ab55187f583519a1";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData3_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x954a4b29f81dafd5ULL;
  static const uint64_t static_value2 = 0xab55187f583519a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccms_pro/UnpackingCanData3";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData3_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 id\n\
time stamp\n\
uint16 Module_Block_Voltage5\n\
uint16 Module_Block_Voltage6\n\
uint16 Module_Block_Voltage7\n\
uint16 Module_Block_Voltage8\n\
";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData3_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.stamp);
      stream.next(m.Module_Block_Voltage5);
      stream.next(m.Module_Block_Voltage6);
      stream.next(m.Module_Block_Voltage7);
      stream.next(m.Module_Block_Voltage8);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UnpackingCanData3_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ccms_pro::UnpackingCanData3_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ccms_pro::UnpackingCanData3_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "Module_Block_Voltage5: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage5);
    s << indent << "Module_Block_Voltage6: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage6);
    s << indent << "Module_Block_Voltage7: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage7);
    s << indent << "Module_Block_Voltage8: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage8);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CCMS_PRO_MESSAGE_UNPACKINGCANDATA3_H
