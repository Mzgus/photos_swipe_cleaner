// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthAlbum {
  DateTime get date =>
      throw _privateConstructorUsedError; // ex: 2025-08-01, on utilise que le mois/année
  int get assetCount => throw _privateConstructorUsedError;
  List<AssetEntity> get assets => throw _privateConstructorUsedError;

  /// Create a copy of MonthAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthAlbumCopyWith<MonthAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthAlbumCopyWith<$Res> {
  factory $MonthAlbumCopyWith(
          MonthAlbum value, $Res Function(MonthAlbum) then) =
      _$MonthAlbumCopyWithImpl<$Res, MonthAlbum>;
  @useResult
  $Res call({DateTime date, int assetCount, List<AssetEntity> assets});
}

/// @nodoc
class _$MonthAlbumCopyWithImpl<$Res, $Val extends MonthAlbum>
    implements $MonthAlbumCopyWith<$Res> {
  _$MonthAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? assetCount = null,
    Object? assets = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assetCount: null == assetCount
          ? _value.assetCount
          : assetCount // ignore: cast_nullable_to_non_nullable
              as int,
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthAlbumImplCopyWith<$Res>
    implements $MonthAlbumCopyWith<$Res> {
  factory _$$MonthAlbumImplCopyWith(
          _$MonthAlbumImpl value, $Res Function(_$MonthAlbumImpl) then) =
      __$$MonthAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, int assetCount, List<AssetEntity> assets});
}

/// @nodoc
class __$$MonthAlbumImplCopyWithImpl<$Res>
    extends _$MonthAlbumCopyWithImpl<$Res, _$MonthAlbumImpl>
    implements _$$MonthAlbumImplCopyWith<$Res> {
  __$$MonthAlbumImplCopyWithImpl(
      _$MonthAlbumImpl _value, $Res Function(_$MonthAlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? assetCount = null,
    Object? assets = null,
  }) {
    return _then(_$MonthAlbumImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      assetCount: null == assetCount
          ? _value.assetCount
          : assetCount // ignore: cast_nullable_to_non_nullable
              as int,
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<AssetEntity>,
    ));
  }
}

/// @nodoc

class _$MonthAlbumImpl implements _MonthAlbum {
  const _$MonthAlbumImpl(
      {required this.date,
      required this.assetCount,
      required final List<AssetEntity> assets})
      : _assets = assets;

  @override
  final DateTime date;
// ex: 2025-08-01, on utilise que le mois/année
  @override
  final int assetCount;
  final List<AssetEntity> _assets;
  @override
  List<AssetEntity> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  String toString() {
    return 'MonthAlbum(date: $date, assetCount: $assetCount, assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthAlbumImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.assetCount, assetCount) ||
                other.assetCount == assetCount) &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, assetCount,
      const DeepCollectionEquality().hash(_assets));

  /// Create a copy of MonthAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthAlbumImplCopyWith<_$MonthAlbumImpl> get copyWith =>
      __$$MonthAlbumImplCopyWithImpl<_$MonthAlbumImpl>(this, _$identity);
}

abstract class _MonthAlbum implements MonthAlbum {
  const factory _MonthAlbum(
      {required final DateTime date,
      required final int assetCount,
      required final List<AssetEntity> assets}) = _$MonthAlbumImpl;

  @override
  DateTime get date; // ex: 2025-08-01, on utilise que le mois/année
  @override
  int get assetCount;
  @override
  List<AssetEntity> get assets;

  /// Create a copy of MonthAlbum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthAlbumImplCopyWith<_$MonthAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
