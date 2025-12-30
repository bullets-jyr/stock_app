// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intraday_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IntradayInfoImpl _$$IntradayInfoImplFromJson(Map<String, dynamic> json) =>
    _$IntradayInfoImpl(
      date: DateTime.parse(json['date'] as String),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$IntradayInfoImplToJson(_$IntradayInfoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'close': instance.close,
    };
