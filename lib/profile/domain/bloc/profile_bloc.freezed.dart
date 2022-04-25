// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  ReadProfileEvent read() {
    return const ReadProfileEvent();
  }

  UpdateProfileEvent update() {
    return const UpdateProfileEvent();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadProfileEvent value) read,
    required TResult Function(UpdateProfileEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class $ReadProfileEventCopyWith<$Res> {
  factory $ReadProfileEventCopyWith(
          ReadProfileEvent value, $Res Function(ReadProfileEvent) then) =
      _$ReadProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $ReadProfileEventCopyWith<$Res> {
  _$ReadProfileEventCopyWithImpl(
      ReadProfileEvent _value, $Res Function(ReadProfileEvent) _then)
      : super(_value, (v) => _then(v as ReadProfileEvent));

  @override
  ReadProfileEvent get _value => super._value as ReadProfileEvent;
}

/// @nodoc

class _$ReadProfileEvent extends ReadProfileEvent {
  const _$ReadProfileEvent() : super._();

  @override
  String toString() {
    return 'ProfileEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadProfileEvent value) read,
    required TResult Function(UpdateProfileEvent value) update,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadProfileEvent extends ProfileEvent {
  const factory ReadProfileEvent() = _$ReadProfileEvent;
  const ReadProfileEvent._() : super._();
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(
      UpdateProfileEvent _value, $Res Function(UpdateProfileEvent) _then)
      : super(_value, (v) => _then(v as UpdateProfileEvent));

  @override
  UpdateProfileEvent get _value => super._value as UpdateProfileEvent;
}

/// @nodoc

class _$UpdateProfileEvent extends UpdateProfileEvent {
  const _$UpdateProfileEvent() : super._();

  @override
  String toString() {
    return 'ProfileEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadProfileEvent value) read,
    required TResult Function(UpdateProfileEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadProfileEvent value)? read,
    TResult Function(UpdateProfileEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent extends ProfileEvent {
  const factory UpdateProfileEvent() = _$UpdateProfileEvent;
  const UpdateProfileEvent._() : super._();
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  InitialProfileState initial() {
    return const InitialProfileState();
  }

  LoadingProfileState loading() {
    return const LoadingProfileState();
  }

  LoadedProfileState loaded(ProfileModel result) {
    return LoadedProfileState(
      result,
    );
  }

  FailureProfileState failure() {
    return const FailureProfileState();
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel result) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LoadedProfileState value) loaded,
    required TResult Function(FailureProfileState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $InitialProfileStateCopyWith<$Res> {
  factory $InitialProfileStateCopyWith(
          InitialProfileState value, $Res Function(InitialProfileState) then) =
      _$InitialProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $InitialProfileStateCopyWith<$Res> {
  _$InitialProfileStateCopyWithImpl(
      InitialProfileState _value, $Res Function(InitialProfileState) _then)
      : super(_value, (v) => _then(v as InitialProfileState));

  @override
  InitialProfileState get _value => super._value as InitialProfileState;
}

/// @nodoc

class _$InitialProfileState extends InitialProfileState {
  const _$InitialProfileState() : super._();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel result) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LoadedProfileState value) loaded,
    required TResult Function(FailureProfileState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProfileState extends ProfileState {
  const factory InitialProfileState() = _$InitialProfileState;
  const InitialProfileState._() : super._();
}

/// @nodoc
abstract class $LoadingProfileStateCopyWith<$Res> {
  factory $LoadingProfileStateCopyWith(
          LoadingProfileState value, $Res Function(LoadingProfileState) then) =
      _$LoadingProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadingProfileStateCopyWith<$Res> {
  _$LoadingProfileStateCopyWithImpl(
      LoadingProfileState _value, $Res Function(LoadingProfileState) _then)
      : super(_value, (v) => _then(v as LoadingProfileState));

  @override
  LoadingProfileState get _value => super._value as LoadingProfileState;
}

/// @nodoc

class _$LoadingProfileState extends LoadingProfileState {
  const _$LoadingProfileState() : super._();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel result) loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LoadedProfileState value) loaded,
    required TResult Function(FailureProfileState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProfileState extends ProfileState {
  const factory LoadingProfileState() = _$LoadingProfileState;
  const LoadingProfileState._() : super._();
}

/// @nodoc
abstract class $LoadedProfileStateCopyWith<$Res> {
  factory $LoadedProfileStateCopyWith(
          LoadedProfileState value, $Res Function(LoadedProfileState) then) =
      _$LoadedProfileStateCopyWithImpl<$Res>;
  $Res call({ProfileModel result});
}

/// @nodoc
class _$LoadedProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $LoadedProfileStateCopyWith<$Res> {
  _$LoadedProfileStateCopyWithImpl(
      LoadedProfileState _value, $Res Function(LoadedProfileState) _then)
      : super(_value, (v) => _then(v as LoadedProfileState));

  @override
  LoadedProfileState get _value => super._value as LoadedProfileState;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(LoadedProfileState(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }
}

/// @nodoc

class _$LoadedProfileState extends LoadedProfileState {
  const _$LoadedProfileState(this.result) : super._();

  @override
  final ProfileModel result;

  @override
  String toString() {
    return 'ProfileState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedProfileState &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $LoadedProfileStateCopyWith<LoadedProfileState> get copyWith =>
      _$LoadedProfileStateCopyWithImpl<LoadedProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel result) loaded,
    required TResult Function() failure,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LoadedProfileState value) loaded,
    required TResult Function(FailureProfileState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProfileState extends ProfileState {
  const factory LoadedProfileState(ProfileModel result) = _$LoadedProfileState;
  const LoadedProfileState._() : super._();

  ProfileModel get result;
  @JsonKey(ignore: true)
  $LoadedProfileStateCopyWith<LoadedProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureProfileStateCopyWith<$Res> {
  factory $FailureProfileStateCopyWith(
          FailureProfileState value, $Res Function(FailureProfileState) then) =
      _$FailureProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $FailureProfileStateCopyWith<$Res> {
  _$FailureProfileStateCopyWithImpl(
      FailureProfileState _value, $Res Function(FailureProfileState) _then)
      : super(_value, (v) => _then(v as FailureProfileState));

  @override
  FailureProfileState get _value => super._value as FailureProfileState;
}

/// @nodoc

class _$FailureProfileState extends FailureProfileState {
  const _$FailureProfileState() : super._();

  @override
  String toString() {
    return 'ProfileState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailureProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProfileModel result) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProfileModel result)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProfileState value) initial,
    required TResult Function(LoadingProfileState value) loading,
    required TResult Function(LoadedProfileState value) loaded,
    required TResult Function(FailureProfileState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProfileState value)? initial,
    TResult Function(LoadingProfileState value)? loading,
    TResult Function(LoadedProfileState value)? loaded,
    TResult Function(FailureProfileState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureProfileState extends ProfileState {
  const factory FailureProfileState() = _$FailureProfileState;
  const FailureProfileState._() : super._();
}
