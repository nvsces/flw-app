import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flw_app/app/router/app_router.dart';
import 'package:flw_app/app/theme/app_theme_provider_widget.dart';
import 'package:flw_app/app/theme/bloc/app_theme.dart';
import 'package:flw_app/app/theme/bloc/app_theme_bloc.dart';
import 'package:flw_app/logic/auth_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class FlwApp extends StatelessWidget {
  const FlwApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ThemebleWidget(
      themebleBuilder: (themeState) => _ThemedApp(
        appTheme: themeState,
      ),
    );
  }
}

/// Виджет добавляющий в дерево виджет-структуру, позволяющую динамически изменять тему приложения,
/// поддерживать разные локализации и форматирование приложения.
/// Изменения темы можно применять через события в [AppThemeBloc],
/// При обновлении создаться новый state, который обновит дерево виджетов и [AppTheme]
class _ThemebleWidget extends StatelessWidget {
  final Widget Function(AppTheme theme) themebleBuilder;

  const _ThemebleWidget({
    required this.themebleBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build auth');
    return ChangeNotifierProvider(
      create: (context) => AuthProvider()..checkAuth(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppThemeBloc>(
            create: (ctx) => GetIt.I.get(),
          )
        ],
        child: BlocBuilder<AppThemeBloc, AppTheme>(
          builder: (context, themeState) => AppThemeProvider(
            child: themebleBuilder(themeState),
            theme: themeState,
          ),
        ),
      ),
    );
  }
}

/// Виджет вклчюающий в дерево [MaterialApp] с корректными настройками в зависимости от темы [appTheme]
class _ThemedApp extends StatelessWidget {
  final AppTheme appTheme;

  const _ThemedApp({
    required this.appTheme,
    Key? key,
  }) : super(key: key);

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: appTheme.colorTheme.accent,
          primaryVariant: appTheme.colorTheme.accentVariant,
          onPrimary: appTheme.colorTheme.onAccent,
          secondary: appTheme.colorTheme.secondaryAccent,
          secondaryVariant: appTheme.colorTheme.secondaryAccentVariant,
          onSecondary: appTheme.colorTheme.onSecondary,
          surface: appTheme.colorTheme.backgroundSurface,
          onSurface: appTheme.colorTheme.onSurface,
          background: appTheme.colorTheme.backgroundWindowBackground,
          onBackground: appTheme.colorTheme.onBackground,
          onError: appTheme.colorTheme.onAccent,
          brightness: appTheme.colorTheme.brightness,
          error: appTheme.colorTheme.accentVariant,
        ),
        textTheme: TextTheme(
          bodyText1: appTheme.textTheme.body1Medium,
          headline1: appTheme.textTheme.h5Bold,
          headline2: appTheme.textTheme.h6Bold,
          button: appTheme.textTheme.buttonMedium,
          caption: appTheme.textTheme.caption1Medium,
          subtitle1: appTheme.textTheme.subtitle2Bold,
          subtitle2: appTheme.textTheme.subtitle2Medium,
        ),
        shadowColor: appTheme.colorTheme.onBackground,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          elevation: 8,
          modalBackgroundColor:
              appTheme.colorTheme.onBackground.withOpacity(0.3),
          modalElevation: 16,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          titleTextStyle: appTheme.textTheme.h5Medium,
        ),
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
