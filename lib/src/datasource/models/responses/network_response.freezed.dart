// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResponse<D, E> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<D, E> value) success,
    required TResult Function(_Error<D, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<D, E> value)? success,
    TResult? Function(_Error<D, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<D, E> value)? success,
    TResult Function(_Error<D, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<D, E, $Res> {
  factory $NetworkResponseCopyWith(NetworkResponse<D, E> value,
          $Res Function(NetworkResponse<D, E>) then) =
      _$NetworkResponseCopyWithImpl<D, E, $Res, NetworkResponse<D, E>>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<D, E, $Res,
        $Val extends NetworkResponse<D, E>>
    implements $NetworkResponseCopyWith<D, E, $Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<D, E, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<D, E> value, $Res Function(_$_Success<D, E>) then) =
      __$$_SuccessCopyWithImpl<D, E, $Res>;
  @useResult
  $Res call({D data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<D, E, $Res>
    extends _$NetworkResponseCopyWithImpl<D, E, $Res, _$_Success<D, E>>
    implements _$$_SuccessCopyWith<D, E, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<D, E> _value, $Res Function(_$_Success<D, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<D, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as D,
    ));
  }
}

/// @nodoc

class _$_Success<D, E> implements _Success<D, E> {
  _$_Success(this.data);

  @override
  final D data;

  @override
  String toString() {
    return 'NetworkResponse<$D, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<D, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<D, E, _$_Success<D, E>> get copyWith =>
      __$$_SuccessCopyWithImpl<D, E, _$_Success<D, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<D, E> value) success,
    required TResult Function(_Error<D, E> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<D, E> value)? success,
    TResult? Function(_Error<D, E> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<D, E> value)? success,
    TResult Function(_Error<D, E> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<D, E> implements NetworkResponse<D, E> {
  factory _Success(final D data) = _$_Success<D, E>;

  D get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<D, E, _$_Success<D, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<D, E, $Res> {
  factory _$$_ErrorCopyWith(
          _$_Error<D, E> value, $Res Function(_$_Error<D, E>) then) =
      __$$_ErrorCopyWithImpl<D, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<D, E, $Res>
    extends _$NetworkResponseCopyWithImpl<D, E, $Res, _$_Error<D, E>>
    implements _$$_ErrorCopyWith<D, E, $Res> {
  __$$_ErrorCopyWithImpl(
      _$_Error<D, E> _value, $Res Function(_$_Error<D, E>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error<D, E>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$_Error<D, E> implements _Error<D, E> {
  _$_Error(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'NetworkResponse<$D, $E>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error<D, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<D, E, _$_Error<D, E>> get copyWith =>
      __$$_ErrorCopyWithImpl<D, E, _$_Error<D, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(D data) success,
    required TResult Function(E error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(D data)? success,
    TResult? Function(E error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(D data)? success,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<D, E> value) success,
    required TResult Function(_Error<D, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<D, E> value)? success,
    TResult? Function(_Error<D, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<D, E> value)? success,
    TResult Function(_Error<D, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<D, E> implements NetworkResponse<D, E> {
  factory _Error(final E error) = _$_Error<D, E>;

  E get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<D, E, _$_Error<D, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
