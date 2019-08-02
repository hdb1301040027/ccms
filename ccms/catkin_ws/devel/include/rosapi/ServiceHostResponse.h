// Generated by gencpp from file rosapi/ServiceHostResponse.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_SERVICEHOSTRESPONSE_H
#define ROSAPI_MESSAGE_SERVICEHOSTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosapi
{
template <class ContainerAllocator>
struct ServiceHostResponse_
{
  typedef ServiceHostResponse_<ContainerAllocator> Type;

  ServiceHostResponse_()
    : host()  {
    }
  ServiceHostResponse_(const ContainerAllocator& _alloc)
    : host(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _host_type;
  _host_type host;





  typedef boost::shared_ptr< ::rosapi::ServiceHostResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosapi::ServiceHostResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ServiceHostResponse_

typedef ::rosapi::ServiceHostResponse_<std::allocator<void> > ServiceHostResponse;

typedef boost::shared_ptr< ::rosapi::ServiceHostResponse > ServiceHostResponsePtr;
typedef boost::shared_ptr< ::rosapi::ServiceHostResponse const> ServiceHostResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosapi::ServiceHostResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosapi::ServiceHostResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosapi

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rosapi': ['/home/ubuntu/ccms/catkin_ws/src/rosbridge_suite/rosapi/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServiceHostResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServiceHostResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServiceHostResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "092ff9f63242a37704ce411703ec5eaf";
  }

  static const char* value(const ::rosapi::ServiceHostResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x092ff9f63242a377ULL;
  static const uint64_t static_value2 = 0x04ce411703ec5eafULL;
};

template<class ContainerAllocator>
struct DataType< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosapi/ServiceHostResponse";
  }

  static const char* value(const ::rosapi::ServiceHostResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string host\n\
";
  }

  static const char* value(const ::rosapi::ServiceHostResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.host);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServiceHostResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosapi::ServiceHostResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosapi::ServiceHostResponse_<ContainerAllocator>& v)
  {
    s << indent << "host: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.host);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSAPI_MESSAGE_SERVICEHOSTRESPONSE_H
