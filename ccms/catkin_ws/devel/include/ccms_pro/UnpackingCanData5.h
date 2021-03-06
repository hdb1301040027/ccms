// Generated by gencpp from file ccms_pro/UnpackingCanData5.msg
// DO NOT EDIT!


#ifndef CCMS_PRO_MESSAGE_UNPACKINGCANDATA5_H
#define CCMS_PRO_MESSAGE_UNPACKINGCANDATA5_H


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
struct UnpackingCanData5_
{
  typedef UnpackingCanData5_<ContainerAllocator> Type;

  UnpackingCanData5_()
    : id(0)
    , stamp()
    , Balanced_data_number(0)
    , Modules_Above_Threshold_Voltage(0)
    , Moduel_Average_Voltage(0)
    , Module_Voltage_Threshold(0)
    , Minimum_Module_Voltage(0)  {
    }
  UnpackingCanData5_(const ContainerAllocator& _alloc)
    : id(0)
    , stamp()
    , Balanced_data_number(0)
    , Modules_Above_Threshold_Voltage(0)
    , Moduel_Average_Voltage(0)
    , Module_Voltage_Threshold(0)
    , Minimum_Module_Voltage(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint16_t _Balanced_data_number_type;
  _Balanced_data_number_type Balanced_data_number;

   typedef uint16_t _Modules_Above_Threshold_Voltage_type;
  _Modules_Above_Threshold_Voltage_type Modules_Above_Threshold_Voltage;

   typedef uint16_t _Moduel_Average_Voltage_type;
  _Moduel_Average_Voltage_type Moduel_Average_Voltage;

   typedef uint16_t _Module_Voltage_Threshold_type;
  _Module_Voltage_Threshold_type Module_Voltage_Threshold;

   typedef uint16_t _Minimum_Module_Voltage_type;
  _Minimum_Module_Voltage_type Minimum_Module_Voltage;





  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> const> ConstPtr;

}; // struct UnpackingCanData5_

typedef ::ccms_pro::UnpackingCanData5_<std::allocator<void> > UnpackingCanData5;

typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData5 > UnpackingCanData5Ptr;
typedef boost::shared_ptr< ::ccms_pro::UnpackingCanData5 const> UnpackingCanData5ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ccms_pro::UnpackingCanData5_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dad6dfeec14d9e6f97f8da55bee54242";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData5_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdad6dfeec14d9e6fULL;
  static const uint64_t static_value2 = 0x97f8da55bee54242ULL;
};

template<class ContainerAllocator>
struct DataType< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccms_pro/UnpackingCanData5";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData5_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 id\n\
time stamp\n\
uint16 Balanced_data_number\n\
uint16 Modules_Above_Threshold_Voltage\n\
uint16 Moduel_Average_Voltage\n\
uint16 Module_Voltage_Threshold\n\
uint16 Minimum_Module_Voltage\n\
";
  }

  static const char* value(const ::ccms_pro::UnpackingCanData5_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.stamp);
      stream.next(m.Balanced_data_number);
      stream.next(m.Modules_Above_Threshold_Voltage);
      stream.next(m.Moduel_Average_Voltage);
      stream.next(m.Module_Voltage_Threshold);
      stream.next(m.Minimum_Module_Voltage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UnpackingCanData5_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ccms_pro::UnpackingCanData5_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ccms_pro::UnpackingCanData5_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "Balanced_data_number: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Balanced_data_number);
    s << indent << "Modules_Above_Threshold_Voltage: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Modules_Above_Threshold_Voltage);
    s << indent << "Moduel_Average_Voltage: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Moduel_Average_Voltage);
    s << indent << "Module_Voltage_Threshold: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Module_Voltage_Threshold);
    s << indent << "Minimum_Module_Voltage: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Minimum_Module_Voltage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CCMS_PRO_MESSAGE_UNPACKINGCANDATA5_H
