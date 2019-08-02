// Generated by gencpp from file ccms_pro/UnpackingCanData2.msg
// DO NOT EDIT!


#ifndef CCMS_PRO_MESSAGE_UNPACKINGCANDATA2_H
#define CCMS_PRO_MESSAGE_UNPACKINGCANDATA2_H


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
struct UnpackingCanData2_
{
  typedef UnpackingCanData2_<ContainerAllocator> Type;

  UnpackingCanData2_()
    : id(0)
    , stamp()
    , Module_Block_Voltage1(0)
    , Module_Block_Voltage2(0)
    , Module_Block_Voltage3(0)
    , Module_Block_Voltage4(0)  {
    }
  UnpackingCanData2_(const ContainerAllocator& _alloc)
    : id(0)
    , stamp()
    , Module_Block_Voltage1(0)
    , Module_Block_Voltage2(0)
    , Module_Block_Voltage3(0)
    , Module_Block_Voltage4(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint16_t _Module_Block_Voltage1_type;
  _Module_Block_Voltage1_type Module_Block_Voltage1;

   typedef uint16_t _Module_Block_Voltage2_type;
  _Module_Block_Voltage2_type Module_Block_Voltage2;

   typedef uint16_t _Module_Block_Voltage3_type;
  _Module_Block_Voltage3_type Module_Block_Voltage3;

   typedef uint16_t _Module_Block_Voltage4_type;
  _Module_Block_Voltage4_type Module_Block_Voltage4;





  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> const> ConstPtr;

}; // struct UnpackingCanData2_

typedef ::ccms_pro::UnpackingCanData2_<std::allocator<void> > UnpackingCanData2;

typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData2 > UnpackingCanData2Ptr;
typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData2 const> UnpackingCanData2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ccms_pro::UnpackingCanData2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b13fc55befa7a47e2cbf6fd0477dd31f";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb13fc55befa7a47eULL;
  static const uint64_t static_value2 = 0x2cbf6fd0477dd31fULL;
};

template<class ContainerAllocator>
struct DataType< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccms_pro/UnpackingCanData2";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 id\n\
time stamp\n\
uint16 Module_Block_Voltage1\n\
uint16 Module_Block_Voltage2\n\
uint16 Module_Block_Voltage3\n\
uint16 Module_Block_Voltage4\n\
";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.stamp);
      stream.next(m.Module_Block_Voltage1);
      stream.next(m.Module_Block_Voltage2);
      stream.next(m.Module_Block_Voltage3);
      stream.next(m.Module_Block_Voltage4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UnpackingCanData2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ccms_pro::UnpackingCanData2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ccms_pro::UnpackingCanData2_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "Module_Block_Voltage1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage1);
    s << indent << "Module_Block_Voltage2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage2);
    s << indent << "Module_Block_Voltage3: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage3);
    s << indent << "Module_Block_Voltage4: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Block_Voltage4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CCMS_PRO_MESSAGE_UNPACKINGCANDATA2_H
