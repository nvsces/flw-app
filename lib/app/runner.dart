import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flw_app/app/bloc_observer.dart';
import 'package:flw_app/app/runner.config.dart';
import 'package:get_it/get_it.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as concurrency;

import 'flw_app.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)

/// В Runner мы иницируем Flutter движок
class Runner {
  static Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp();
    LicenseRegistry.addLicense(() async* {
      /// требуется для использования google fonts
      /// https://pub.dev/packages/google_fonts
      final license = await rootBundle.loadString('google_fonts/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
    await $initGetIt(
      GetIt.instance,
    );
    runZonedGuarded<void>(
      () {
        BlocOverrides.runZoned(
          () => runApp(FlwApp()),
          blocObserver: AppBlocObserver.instance(),
          eventTransformer: concurrency.sequential<Object?>(),
        );
      },
      (error, stackTrace) {},
    );
  }
}
