import 'package:bloc/bloc.dart';
import 'package:flw_app/home/data/home_repository.dart';
import 'package:flw_app/home/domain/models/trip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const HomeEvent._();

  const factory HomeEvent.read() = ReadHomeEvent;
}

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial() = InitialHomeState;

  const factory HomeState.loading() = LoadingHomeState;

  const factory HomeState.loaded(List<Trip> result) = LoadedHomeState;

  const factory HomeState.failure() = FailureHomeState;
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const InitialHomeState()) {
    on<ReadHomeEvent>(_read);
  }

  Future<void> _read(ReadHomeEvent event, Emitter<HomeState> emitter) async {
    emitter(LoadingHomeState());
    final repo = HomeRepository();
    final data = await repo.getAllTrips();
    emitter(LoadedHomeState(data));
  }
}
