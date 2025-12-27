// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyListing _$CompanyListingFromJson(Map<String, dynamic> json) =>
    _CompanyListing(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      exchange: json['exchange'] as String,
    );

Map<String, dynamic> _$CompanyListingToJson(_CompanyListing instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'exchange': instance.exchange,
    };
