import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name : "id")
  int id;

  @JsonKey(name : "provider_id")
  int provider_id;

  @JsonKey(name : "service_type")
  String service_type;

  @JsonKey(name : "hours_per_day")
  String hours_per_day;

  @JsonKey(name : "job_types")
  String job_types;

  @JsonKey(name : "food_type")
  String food_type;

  @JsonKey(name : "house_size")
  String house_size;

  @JsonKey(name : "members")
  String members;

  @JsonKey(name : "user_cost")
  int user_cost;

  @JsonKey(name : "provider_salary")
  int provider_salary;

  @JsonKey(name : "start_date")
  String start_date;

  @JsonKey(name : "cancellation_time")
  String cancellation_time;

  @JsonKey(name : "cancelled_by")
  String cancelled_by;

  @JsonKey(name : "provider_name")
  String provider_name;

  @JsonKey(name : "provider_email")
  String provider_email;

  @JsonKey(name : "provider_phone")
  String provider_phone;

  @JsonKey(name : "provider_address")
  String provider_address;

  @JsonKey(name : "provider_area")
  String provider_area;

  @JsonKey(name : "provider_landmark")
  String provider_landmark;

  @JsonKey(name : "provider_city")
  String provider_city;

  @JsonKey(name : "provider_zip_code")
  String provider_zip_code;

  @JsonKey(name : "provider_latitude")
  String provider_latitude;

  @JsonKey(name : "provider_longitude")
  String provider_longitude;


  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
