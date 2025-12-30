// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intraday_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntradayInfoDtoImpl _$$IntradayInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$IntradayInfoDtoImpl(
      timestamp: json['timestamp'] as String,
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$IntradayInfoDtoImplToJson(
        _$IntradayInfoDtoImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'close': instance.close,
    };
