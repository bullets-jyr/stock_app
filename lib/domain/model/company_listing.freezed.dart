// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyListing {

 String get symbol; String get name; String get exchange;
/// Create a copy of CompanyListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyListingCopyWith<CompanyListing> get copyWith => _$CompanyListingCopyWithImpl<CompanyListing>(this as CompanyListing, _$identity);

  /// Serializes this CompanyListing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyListing&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,name,exchange);

@override
String toString() {
  return 'CompanyListing(symbol: $symbol, name: $name, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class $CompanyListingCopyWith<$Res>  {
  factory $CompanyListingCopyWith(CompanyListing value, $Res Function(CompanyListing) _then) = _$CompanyListingCopyWithImpl;
@useResult
$Res call({
 String symbol, String name, String exchange
});




}
/// @nodoc
class _$CompanyListingCopyWithImpl<$Res>
    implements $CompanyListingCopyWith<$Res> {
  _$CompanyListingCopyWithImpl(this._self, this._then);

  final CompanyListing _self;
  final $Res Function(CompanyListing) _then;

/// Create a copy of CompanyListing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? name = null,Object? exchange = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyListing].
extension CompanyListingPatterns on CompanyListing {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyListing() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyListing value)  $default,){
final _that = this;
switch (_that) {
case _CompanyListing():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyListing value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyListing() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String name,  String exchange)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyListing() when $default != null:
return $default(_that.symbol,_that.name,_that.exchange);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String name,  String exchange)  $default,) {final _that = this;
switch (_that) {
case _CompanyListing():
return $default(_that.symbol,_that.name,_that.exchange);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String name,  String exchange)?  $default,) {final _that = this;
switch (_that) {
case _CompanyListing() when $default != null:
return $default(_that.symbol,_that.name,_that.exchange);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyListing implements CompanyListing {
  const _CompanyListing({required this.symbol, required this.name, required this.exchange});
  factory _CompanyListing.fromJson(Map<String, dynamic> json) => _$CompanyListingFromJson(json);

@override final  String symbol;
@override final  String name;
@override final  String exchange;

/// Create a copy of CompanyListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyListingCopyWith<_CompanyListing> get copyWith => __$CompanyListingCopyWithImpl<_CompanyListing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyListing&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.name, name) || other.name == name)&&(identical(other.exchange, exchange) || other.exchange == exchange));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,name,exchange);

@override
String toString() {
  return 'CompanyListing(symbol: $symbol, name: $name, exchange: $exchange)';
}


}

/// @nodoc
abstract mixin class _$CompanyListingCopyWith<$Res> implements $CompanyListingCopyWith<$Res> {
  factory _$CompanyListingCopyWith(_CompanyListing value, $Res Function(_CompanyListing) _then) = __$CompanyListingCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String name, String exchange
});




}
/// @nodoc
class __$CompanyListingCopyWithImpl<$Res>
    implements _$CompanyListingCopyWith<$Res> {
  __$CompanyListingCopyWithImpl(this._self, this._then);

  final _CompanyListing _self;
  final $Res Function(_CompanyListing) _then;

/// Create a copy of CompanyListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? name = null,Object? exchange = null,}) {
  return _then(_CompanyListing(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
