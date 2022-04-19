import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._();
  static AppBlocObserver? _singleton;
  AppBlocObserver._();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
