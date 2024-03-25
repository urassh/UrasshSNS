// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../signup_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showProgress,
    required TResult Function() hideProgress,
    required TResult Function(SocialUser user) complete,
    required TResult Function(Exception exception) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showProgress,
    TResult? Function()? hideProgress,
    TResult? Function(SocialUser user)? complete,
    TResult? Function(Exception exception)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showProgress,
    TResult Function()? hideProgress,
    TResult Function(SocialUser user)? complete,
    TResult Function(Exception exception)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_HideProgress value) hideProgress,
    required TResult Function(_CompleteSignup value) complete,
    required TResult Function(_FailedSignup value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowProgress value)? showProgress,
    TResult? Function(_HideProgress value)? hideProgress,
    TResult? Function(_CompleteSignup value)? complete,
    TResult? Function(_FailedSignup value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_HideProgress value)? hideProgress,
    TResult Function(_CompleteSignup value)? complete,
    TResult Function(_FailedSignup value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupPageEventCopyWith<$Res> {
  factory $SignupPageEventCopyWith(
          SignupPageEvent value, $Res Function(SignupPageEvent) then) =
      _$SignupPageEventCopyWithImpl<$Res, SignupPageEvent>;
}

/// @nodoc
class _$SignupPageEventCopyWithImpl<$Res, $Val extends SignupPageEvent>
    implements $SignupPageEventCopyWith<$Res> {
  _$SignupPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowProgressImplCopyWith<$Res> {
  factory _$$ShowProgressImplCopyWith(
          _$ShowProgressImpl value, $Res Function(_$ShowProgressImpl) then) =
      __$$ShowProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowProgressImplCopyWithImpl<$Res>
    extends _$SignupPageEventCopyWithImpl<$Res, _$ShowProgressImpl>
    implements _$$ShowProgressImplCopyWith<$Res> {
  __$$ShowProgressImplCopyWithImpl(
      _$ShowProgressImpl _value, $Res Function(_$ShowProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowProgressImpl implements _ShowProgress {
  const _$ShowProgressImpl();

  @override
  String toString() {
    return 'SignupPageEvent.showProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showProgress,
    required TResult Function() hideProgress,
    required TResult Function(SocialUser user) complete,
    required TResult Function(Exception exception) failed,
  }) {
    return showProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showProgress,
    TResult? Function()? hideProgress,
    TResult? Function(SocialUser user)? complete,
    TResult? Function(Exception exception)? failed,
  }) {
    return showProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showProgress,
    TResult Function()? hideProgress,
    TResult Function(SocialUser user)? complete,
    TResult Function(Exception exception)? failed,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_HideProgress value) hideProgress,
    required TResult Function(_CompleteSignup value) complete,
    required TResult Function(_FailedSignup value) failed,
  }) {
    return showProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowProgress value)? showProgress,
    TResult? Function(_HideProgress value)? hideProgress,
    TResult? Function(_CompleteSignup value)? complete,
    TResult? Function(_FailedSignup value)? failed,
  }) {
    return showProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_HideProgress value)? hideProgress,
    TResult Function(_CompleteSignup value)? complete,
    TResult Function(_FailedSignup value)? failed,
    required TResult orElse(),
  }) {
    if (showProgress != null) {
      return showProgress(this);
    }
    return orElse();
  }
}

abstract class _ShowProgress implements SignupPageEvent {
  const factory _ShowProgress() = _$ShowProgressImpl;
}

/// @nodoc
abstract class _$$HideProgressImplCopyWith<$Res> {
  factory _$$HideProgressImplCopyWith(
          _$HideProgressImpl value, $Res Function(_$HideProgressImpl) then) =
      __$$HideProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideProgressImplCopyWithImpl<$Res>
    extends _$SignupPageEventCopyWithImpl<$Res, _$HideProgressImpl>
    implements _$$HideProgressImplCopyWith<$Res> {
  __$$HideProgressImplCopyWithImpl(
      _$HideProgressImpl _value, $Res Function(_$HideProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideProgressImpl implements _HideProgress {
  const _$HideProgressImpl();

  @override
  String toString() {
    return 'SignupPageEvent.hideProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showProgress,
    required TResult Function() hideProgress,
    required TResult Function(SocialUser user) complete,
    required TResult Function(Exception exception) failed,
  }) {
    return hideProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showProgress,
    TResult? Function()? hideProgress,
    TResult? Function(SocialUser user)? complete,
    TResult? Function(Exception exception)? failed,
  }) {
    return hideProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showProgress,
    TResult Function()? hideProgress,
    TResult Function(SocialUser user)? complete,
    TResult Function(Exception exception)? failed,
    required TResult orElse(),
  }) {
    if (hideProgress != null) {
      return hideProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_HideProgress value) hideProgress,
    required TResult Function(_CompleteSignup value) complete,
    required TResult Function(_FailedSignup value) failed,
  }) {
    return hideProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowProgress value)? showProgress,
    TResult? Function(_HideProgress value)? hideProgress,
    TResult? Function(_CompleteSignup value)? complete,
    TResult? Function(_FailedSignup value)? failed,
  }) {
    return hideProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_HideProgress value)? hideProgress,
    TResult Function(_CompleteSignup value)? complete,
    TResult Function(_FailedSignup value)? failed,
    required TResult orElse(),
  }) {
    if (hideProgress != null) {
      return hideProgress(this);
    }
    return orElse();
  }
}

abstract class _HideProgress implements SignupPageEvent {
  const factory _HideProgress() = _$HideProgressImpl;
}

/// @nodoc
abstract class _$$CompleteSignupImplCopyWith<$Res> {
  factory _$$CompleteSignupImplCopyWith(_$CompleteSignupImpl value,
          $Res Function(_$CompleteSignupImpl) then) =
      __$$CompleteSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialUser user});

  $SocialUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CompleteSignupImplCopyWithImpl<$Res>
    extends _$SignupPageEventCopyWithImpl<$Res, _$CompleteSignupImpl>
    implements _$$CompleteSignupImplCopyWith<$Res> {
  __$$CompleteSignupImplCopyWithImpl(
      _$CompleteSignupImpl _value, $Res Function(_$CompleteSignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CompleteSignupImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SocialUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SocialUserCopyWith<$Res> get user {
    return $SocialUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CompleteSignupImpl implements _CompleteSignup {
  const _$CompleteSignupImpl(this.user);

  @override
  final SocialUser user;

  @override
  String toString() {
    return 'SignupPageEvent.complete(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteSignupImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteSignupImplCopyWith<_$CompleteSignupImpl> get copyWith =>
      __$$CompleteSignupImplCopyWithImpl<_$CompleteSignupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showProgress,
    required TResult Function() hideProgress,
    required TResult Function(SocialUser user) complete,
    required TResult Function(Exception exception) failed,
  }) {
    return complete(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showProgress,
    TResult? Function()? hideProgress,
    TResult? Function(SocialUser user)? complete,
    TResult? Function(Exception exception)? failed,
  }) {
    return complete?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showProgress,
    TResult Function()? hideProgress,
    TResult Function(SocialUser user)? complete,
    TResult Function(Exception exception)? failed,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_HideProgress value) hideProgress,
    required TResult Function(_CompleteSignup value) complete,
    required TResult Function(_FailedSignup value) failed,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowProgress value)? showProgress,
    TResult? Function(_HideProgress value)? hideProgress,
    TResult? Function(_CompleteSignup value)? complete,
    TResult? Function(_FailedSignup value)? failed,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_HideProgress value)? hideProgress,
    TResult Function(_CompleteSignup value)? complete,
    TResult Function(_FailedSignup value)? failed,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _CompleteSignup implements SignupPageEvent {
  const factory _CompleteSignup(final SocialUser user) = _$CompleteSignupImpl;

  SocialUser get user;
  @JsonKey(ignore: true)
  _$$CompleteSignupImplCopyWith<_$CompleteSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedSignupImplCopyWith<$Res> {
  factory _$$FailedSignupImplCopyWith(
          _$FailedSignupImpl value, $Res Function(_$FailedSignupImpl) then) =
      __$$FailedSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$FailedSignupImplCopyWithImpl<$Res>
    extends _$SignupPageEventCopyWithImpl<$Res, _$FailedSignupImpl>
    implements _$$FailedSignupImplCopyWith<$Res> {
  __$$FailedSignupImplCopyWithImpl(
      _$FailedSignupImpl _value, $Res Function(_$FailedSignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$FailedSignupImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$FailedSignupImpl implements _FailedSignup {
  const _$FailedSignupImpl(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'SignupPageEvent.failed(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedSignupImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedSignupImplCopyWith<_$FailedSignupImpl> get copyWith =>
      __$$FailedSignupImplCopyWithImpl<_$FailedSignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showProgress,
    required TResult Function() hideProgress,
    required TResult Function(SocialUser user) complete,
    required TResult Function(Exception exception) failed,
  }) {
    return failed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showProgress,
    TResult? Function()? hideProgress,
    TResult? Function(SocialUser user)? complete,
    TResult? Function(Exception exception)? failed,
  }) {
    return failed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showProgress,
    TResult Function()? hideProgress,
    TResult Function(SocialUser user)? complete,
    TResult Function(Exception exception)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowProgress value) showProgress,
    required TResult Function(_HideProgress value) hideProgress,
    required TResult Function(_CompleteSignup value) complete,
    required TResult Function(_FailedSignup value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowProgress value)? showProgress,
    TResult? Function(_HideProgress value)? hideProgress,
    TResult? Function(_CompleteSignup value)? complete,
    TResult? Function(_FailedSignup value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowProgress value)? showProgress,
    TResult Function(_HideProgress value)? hideProgress,
    TResult Function(_CompleteSignup value)? complete,
    TResult Function(_FailedSignup value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedSignup implements SignupPageEvent {
  const factory _FailedSignup(final Exception exception) = _$FailedSignupImpl;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$FailedSignupImplCopyWith<_$FailedSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
