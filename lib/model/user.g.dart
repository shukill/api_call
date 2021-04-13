// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as int
    ..provider_id = json['provider_id'] as int
    ..service_type = json['service_type'] as String
    ..hours_per_day = json['hours_per_day'] as String
    ..job_types = json['job_types'] as String
    ..food_type = json['food_type'] as String
    ..house_size = json['house_size'] as String
    ..members = json['members'] as String
    ..user_cost = json['user_cost'] as int
    ..provider_salary = json['provider_salary'] as int
    ..start_date = json['start_date'] as String
    ..cancellation_time = json['cancellation_time'] as String
    ..cancelled_by = json['cancelled_by'] as String
    ..provider_name = json['provider_name'] as String
    ..provider_email = json['provider_email'] as String
    ..provider_phone = json['provider_phone'] as String
    ..provider_address = json['provider_address'] as String
    ..provider_area = json['provider_area'] as String
    ..provider_landmark = json['provider_landmark'] as String
    ..provider_city = json['provider_city'] as String
    ..provider_zip_code = json['provider_zip_code'] as String
    ..provider_latitude = json['provider_latitude'] as String
    ..provider_longitude = json['provider_longitude'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'provider_id': instance.provider_id,
      'service_type': instance.service_type,
      'hours_per_day': instance.hours_per_day,
      'job_types': instance.job_types,
      'food_type': instance.food_type,
      'house_size': instance.house_size,
      'members': instance.members,
      'user_cost': instance.user_cost,
      'provider_salary': instance.provider_salary,
      'start_date': instance.start_date,
      'cancellation_time': instance.cancellation_time,
      'cancelled_by': instance.cancelled_by,
      'provider_name': instance.provider_name,
      'provider_email': instance.provider_email,
      'provider_phone': instance.provider_phone,
      'provider_address': instance.provider_address,
      'provider_area': instance.provider_area,
      'provider_landmark': instance.provider_landmark,
      'provider_city': instance.provider_city,
      'provider_zip_code': instance.provider_zip_code,
      'provider_latitude': instance.provider_latitude,
      'provider_longitude': instance.provider_longitude,
    };
