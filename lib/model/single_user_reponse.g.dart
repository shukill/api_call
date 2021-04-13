// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUserResponse _$SingleUserResponseFromJson(Map<String, dynamic> json) {
  return SingleUserResponse()
    ..user = json['132'] == null
        ? null
        : User.fromJson(json['132'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SingleUserResponseToJson(SingleUserResponse instance) =>
    <String, dynamic>{
      '132': instance.user,
    };
