import 'package:bloc/bloc.dart';
import 'package:flw_app/profile/data/profile_repository_api.dart';
import 'package:flw_app/profile/domain/model/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const ProfileEvent._();

  const factory ProfileEvent.read() = ReadProfileEvent;

  const factory ProfileEvent.update() = UpdateProfileEvent;
}

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState.initial() = InitialProfileState;

  const factory ProfileState.loading() = LoadingProfileState;

  const factory ProfileState.loaded(ProfileModel result) = LoadedProfileState;

  const factory ProfileState.failure() = FailureProfileState;
}

@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const InitialProfileState()) {
    on<ReadProfileEvent>(_read);
    on<UpdateProfileEvent>(_update);
  }

  Future<void> _read(
      ReadProfileEvent event, Emitter<ProfileState> emitter) async {
    emitter(const LoadingProfileState());
    final repo = ProfileRepositoryApi();
    final profile = await repo.fetchInfo();
    emitter(LoadedProfileState(profile));
  }

  Future<void> _update(
      UpdateProfileEvent event, Emitter<ProfileState> emit) async {
    // ...
  }
}
