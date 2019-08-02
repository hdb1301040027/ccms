// Generated by gencpp from file rosapi/ServicesRequest.msg
// DO NOT EDIT!


#ifndef ROSAPI_MESSAGE_SERVICESREQUEST_H
#define ROSAPI_MESSAGE_SERVICESREQUEST_H


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
struct ServicesRequest_
{
  typedef ServicesRequest_<ContainerAllocator> Type;

  ServicesRequest_()
    {
    }
  ServicesRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::rosapi::ServicesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosapi::ServicesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServicesRequest_

typedef ::rosapi::ServicesRequest_<std::allocator<void> > ServicesRequest;

typedef boost::shared_ptr< ::rosapi::ServicesRequest > ServicesRequestPtr;
typedef boost::shared_ptr< ::rosapi::ServicesRequest const> ServicesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosapi::ServicesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosapi::ServicesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosapi

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rosapi': ['/home/ubuntu/ccms/catkin_ws/src/rosbridge_suite/rosapi/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServicesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosapi::ServicesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServicesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosapi::ServicesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServicesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosapi::ServicesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosapi::ServicesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::rosapi::ServicesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::rosapi::ServicesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosapi/ServicesRequest";
  }

  static const char* value(const ::rosapi::ServicesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosapi::ServicesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::rosapi::ServicesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosapi::ServicesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServicesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosapi::ServicesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::rosapi::ServicesRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROSAPI_MESSAGE_SERVICESREQUEST_H
