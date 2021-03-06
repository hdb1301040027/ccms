// Generated by gencpp from file ccms_pro/ModuleData.msg
// DO NOT EDIT!


#ifndef CCMS_PRO_MESSAGE_MODULEDATA_H
#define CCMS_PRO_MESSAGE_MODULEDATA_H

#include <ros/service_traits.h>


#include <ccms_pro/ModuleDataRequest.h>
#include <ccms_pro/ModuleDataResponse.h>


namespace ccms_pro
{

struct ModuleData
{

typedef ModuleDataRequest Request;
typedef ModuleDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ModuleData
} // namespace ccms_pro


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ccms_pro::ModuleData > {
  static const char* value()
  {
    return "2168a7456167e874f53072b67d551079";
  }

  static const char* value(const ::ccms_pro::ModuleData&) { return value(); }
};

template<>
struct DataType< ::ccms_pro::ModuleData > {
  static const char* value()
  {
    return "ccms_pro/ModuleData";
  }

  static const char* value(const ::ccms_pro::ModuleData&) { return value(); }
};


// service_traits::MD5Sum< ::ccms_pro::ModuleDataRequest> should match 
// service_traits::MD5Sum< ::ccms_pro::ModuleData > 
template<>
struct MD5Sum< ::ccms_pro::ModuleDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ccms_pro::ModuleData >::value();
  }
  static const char* value(const ::ccms_pro::ModuleDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ccms_pro::ModuleDataRequest> should match 
// service_traits::DataType< ::ccms_pro::ModuleData > 
template<>
struct DataType< ::ccms_pro::ModuleDataRequest>
{
  static const char* value()
  {
    return DataType< ::ccms_pro::ModuleData >::value();
  }
  static const char* value(const ::ccms_pro::ModuleDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ccms_pro::ModuleDataResponse> should match 
// service_traits::MD5Sum< ::ccms_pro::ModuleData > 
template<>
struct MD5Sum< ::ccms_pro::ModuleDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ccms_pro::ModuleData >::value();
  }
  static const char* value(const ::ccms_pro::ModuleDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ccms_pro::ModuleDataResponse> should match 
// service_traits::DataType< ::ccms_pro::ModuleData > 
template<>
struct DataType< ::ccms_pro::ModuleDataResponse>
{
  static const char* value()
  {
    return DataType< ::ccms_pro::ModuleData >::value();
  }
  static const char* value(const ::ccms_pro::ModuleDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CCMS_PRO_MESSAGE_MODULEDATA_H
